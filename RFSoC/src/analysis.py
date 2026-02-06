# ============================================================================ #
# analysis.py
# Signal processing functions and commands.
# James Burgoyne jburgoyne@phas.ubc.ca 
# CCAT Prime 2023  

# Edited by Matt for testing with gen2 readout in Feb 2026
# ============================================================================ #

SWEEP_STEPS = 500

# ============================================================================ #
# _butterFilter
def _butterFilter(y, x, btype, cutoff_freqs, order=3, x_time=False):
    '''Butterworth digital and analog filter.
    
    x, y: (1D array of floats) The data.
    btype: (str) {'lowpass', 'highpass', 'bandpass', 'bandstop'}.
    cutoff_freq: (float or 2-tuple of floats) The cutoff frequencies.
    order: (int) Filter order.
    x_time: (bool) x axis is time (default is frequency).
    '''

    import numpy as np
    from scipy.signal import butter, filtfilt

    fs = np.abs(x[1] - x[0])
    nyquist = 0.5*fs
    normal_cutoff = cutoff_freqs / nyquist
    b, a = butter(order, normal_cutoff, btype=btype, fs=fs)
    filtered_data = filtfilt(b, a, y)

    return filtered_data


# ============================================================================ #
# _stitchS21m
def _stitchS21m(S21m, bw=500, sw=100):
    """Shift S21 mags so the sweep channel bin ends align.

    S21m: (array of floats) 1D array of S21 complex modulus.
    bw:   (int) Width of the stitch bins.
    sw:   (int) Width of slice (at ends) of each stitch bin to take median.
    """
    
    import numpy as np
    
    a = S21m.reshape(-1, bw)               # reshape into bins
    
    meds_i = np.median(a[:,:sw], axis=1)   # medians on left
    meds_f = np.median(a[:,-sw:], axis=-1) # medians on right
    
    f = meds_i[1:] - meds_f[:-1]           # bin power misalignment
    f = np.pad(f, (1, 0), mode='constant') # 1st bin -> 0 misalignment
    f = np.cumsum(f)                       # misalignments are cumulative
    f = f.reshape((a.shape[0],1))          # reshape for matrix addition
    a_n = a - f                            # misalignment correction (stitch)
    
    return a_n.flatten()                   # reshape to 1D and return


# ============================================================================ #
# _findResonators_alt
def _findResonators_alt(
        f, Z, 
        peak_prom_std=15, 
        peak_prom_db=0, 
        peak_dis=500, 
        width_min=5, 
        width_max=1000,
        stitch=True, 
        stitch_sw=100, 
        remove_cont=True, 
        continuum_wn=300, 
        remove_noise=True, 
        noise_wn=30_000,
        stitch_bw=None
    ):
    '''
    
    f:   (1D array of floats) Frequency of S21 samples.
    Z: (1D array of complex) Forward transmission S_21 as complex.
    peak_prom_std: (float) Peak height from surroundings, in noise std multiples.
                    Uses larger of peak_prom_db or peak_prom_std.
    peak_prom_db:  (float) Peak height from surroundings, in Db.
                    Uses larger of peak_prom_db or peak_prom_std.
    peak_dis:      (int) Min distance between peaks [bins].
    width_min      (int) Peak width minimum. [bins]
    width_max      (int) Peak width maximum. [bins]
    stitch:        (bool) Whether to stitch (comb discontinuities).
    stitch_sw:     (int) Discontinuity edge size for alignment [bins].
    remove_cont:   (bool) Whether to subtract the continuum.
    continuum_wn:  (int) Continuum filter cutoff frequency [Hz].
    remove_noise:  (bool) Whether to subtract noise.
    noise_wn:      (int) Noise filter cutoff frequency [Hz].
    stitch_bw:     (int) Bins width of the stitch channels.
    '''
    
    from scipy.signal import find_peaks
    import numpy as np
    
    # type enforcement
    # required since parameters can get passed as strings
    peak_prom_std = float(peak_prom_std)
    peak_prom_db  = float(peak_prom_db)
    peak_dis      = int(peak_dis)
    peak_width    = (int(width_min), int(width_max))
    stitch_sw     = int(stitch_sw)
    continuum_wn  = int(continuum_wn)
    noise_wn      = int(noise_wn)

    try:
        stitch_bw = int(stitch_bw)
    except:
        stitch_bw = SWEEP_STEPS # bins bw <- steps
    
    x = f
    y = np.abs(Z)
    
    # convert Db input to linear
    peak_prom_lin = np.amax(y)*(1 - 10**(-peak_prom_db/20))
    
    # stitch discontinuities
    if stitch:
        y = _stitchS21m(y, bw=stitch_bw, sw=stitch_sw)
        
    # remove continuum
    if remove_cont:
        y -= _butterFilter(y, x, 'low', continuum_wn, order=3)
        
    # remove noise
    y_noise = _butterFilter(y, x, 'high', noise_wn, order=3)
    noise_std = np.std(y_noise)
    if remove_noise:
        y -= y_noise
        
    # prominence
    prom = max(peak_prom_std*noise_std, peak_prom_lin)
    
    # find peaks
    i_peaks, peak_properties = find_peaks(
        x=-y, prominence=prom, distance=peak_dis, width=peak_width) 
        
    f_res = f[i_peaks]

    return f_res


# ============================================================================ #
# _findResonatorsVna
def _findResonatorsVna(
        f, Z, 
        peak_prom_std  = 15, 
        peak_prom_db   = 0, 
        peak_dis       = 500, 
        width_min      = 2, 
        width_max      = 1000,
        stitch         = True, 
        stitch_sw      = 100, 
        remove_cont    = True, 
        continuum_wn   = 300, 
        remove_noise   = True, 
        noise_wn       = 30_000,
        stitch_bw      = None,
        peak_dis_hz    = 0,
        width_min_hz   = 0,
        width_max_hz   = 0,
        peak_prom_auto = False,
        wlen           = None,
        min_shelf_len  = 1, 
        min_prom       = 1, 
        max_prom       = 100,
        shelf_thresh   = 1
    ):
    '''
    f:             (1D array of floats) Frequency of S21 samples.
    Z:             (1D array of complex) Forward transmission S_21 as complex.
    peak_prom_std: (float) Peak height from surroundings, in noise std multiples.
                    Uses larger of peak_prom_db or peak_prom_std.
    peak_prom_db:  (float) Peak height from surroundings, in Db.
                    Uses larger of peak_prom_db or peak_prom_std.
    peak_dis:      (int) Min distance between peaks [bins].
    width_min      (int) Peak width minimum. [bins]
    width_max      (int) Peak width maximum. [bins]
    stitch:        (bool) Whether to stitch (comb discontinuities).
    stitch_sw:     (int) Discontinuity edge size for alignment [bins].
    remove_cont:   (bool) Whether to subtract the continuum.
    continuum_wn:  (int) Continuum filter cutoff frequency [Hz].
    remove_noise:  (bool) Whether to subtract noise.
    noise_wn:      (int) Noise filter cutoff frequency [Hz].
    stitch_bw:     (int) Bins width of the stitch channels.
    peak_dis_hz:   (float) Min distance between peaks [Hz].
                    Overrides peak_dis.
    width_min_hz:  (float) Peak width minimum [Hz].
                    Overrides width_min.
    width_max_hz:  (float) Peak width maximum [Hz].
                    Overrides width_max.
    peak_prom_auto:(bool) Automatically determine peak prominence.
                    Overrides both peak_prom_std and peak_prom_db.
    wlen:          (int) A window that limits peak finding domain [bins].
    min_shelf_len: (float) Only used if peak_prom_auto True.
                    Required shelf length [std].
    min_prom:      (float) Only used if peak_prom_auto True.
                    Starting point in prominence space.
    max_prom:      (float) Only used if peak_prom_auto True.
                    Ending point in prominence space.
                    If not solved by here, defaults back to peak_prom_std.
    shelf_thresh:  (int) Shelf variability [# peaks].
    '''
    
    from scipy.signal import find_peaks
    import numpy as np

    hz_per_bin = np.abs(f[1] - f[0])
    
    # type enforcement
    peak_prom_std  = float(peak_prom_std)
    peak_prom_db   = float(peak_prom_db)
    peak_dis       = int(peak_dis)
    width_min      = int(width_min)
    width_max      = int(width_max)
    stitch         = bool(stitch)
    stitch_sw      = int(stitch_sw)
    remove_cont    = bool(remove_cont)
    continuum_wn   = int(continuum_wn)
    remove_noise   = bool(remove_noise)
    noise_wn       = int(noise_wn)
    stitch_bw      = int(stitch_bw or SWEEP_STEPS)
    peak_dis_hz    = float(peak_dis_hz)
    width_min_hz   = float(width_min_hz)
    width_max_hz   = float(width_max_hz)
    peak_prom_auto = bool(peak_prom_auto)
    wlen           = None if wlen is None else int(wlen)
    min_shelf_len  = float(min_shelf_len)
    min_prom       = float(min_prom)
    max_prom       = float(max_prom)
    shelf_thresh   = int(shelf_thresh)

    # parameter priorities
    peak_dis    = peak_dis_hz//hz_per_bin if peak_dis_hz else peak_dis
    width_min   = width_min_hz//hz_per_bin if width_min_hz else width_min
    width_max   = width_max_hz//hz_per_bin if width_max_hz else width_max
    peak_width  = (width_min, width_max)

    # initialize signal for peak finding
    x = f
    y = np.abs(Z) # using S_21 magnitude
    
    # convert prom from dB to std, choose larger
    if peak_prom_db > 0:
        peak_prom_db_std = np.amax(y)*(1 - 10**(-peak_prom_db/20))/noise_std
        peak_prom_std = max(peak_prom_std, peak_prom_db_std)
    
    # stitch discontinuities caused by tone power differences
    if stitch:
        y = _stitchS21m(y, bw=stitch_bw, sw=stitch_sw)
        
    # remove baseline/continuum
    if remove_cont:
        y -= _butterFilter(y, x, 'low', continuum_wn, order=3)
        
    # remove noise
    y_noise = _butterFilter(y, x, 'high', noise_wn, order=3)
    noise_std = np.std(y_noise)
    if remove_noise:
        y -= y_noise

    def find_peaks_prom(prom):
        i_peaks, peak_properties = find_peaks(
            x=-y, prominence=prom, distance=peak_dis, width=peak_width, wlen=wlen)
        return f[i_peaks] # f_res

    # solve for best peak prominence (overrides params)
    if peak_prom_auto:
        def bestPeakPromStd(): # uses min_shelf_len, min_prom, max_prom, shelf_thresh
            cnt_best = None # number of peaks found in current 'shelf'
            prom_best = 1 # peak_prom_std used at start of 'shelf'
            for peak_prom_std in np.linspace(min_prom, max_prom, 1000):
                cnt = len(find_peaks_prom(peak_prom_std*noise_std))
                cnt_best = cnt if cnt_best is None else cnt_best
                # if cnt == cnt_best:
                if (cnt_best - cnt) < shelf_thresh:
                    if (peak_prom_std - prom_best) > min_shelf_len:
                        return (peak_prom_std + prom_best)/2 # use middle of shelf value
                else:
                    cnt_best = cnt
                    prom_best = peak_prom_std
        peak_prom_std = bestPeakPromStd() or peak_prom_std

    return find_peaks_prom(peak_prom_std*noise_std) # f_res


# ============================================================================ #
# _findMins
def _findMins(f, Z, stitch_bw=None):
    """Find the minimum (resonator peak) in each targ bin.
    """
    
    import numpy as np

    try:
        stitch_bw = int(stitch_bw)
    except:
        stitch_bw = SWEEP_STEPS # bins bw <- steps

    m = np.abs(Z)
    
    a = m.reshape(-1, stitch_bw)               # reshape into targ bins
    f_reshaped = f.reshape(-1, stitch_bw)      # reshape into targ bins
    num_res = f_reshaped.shape[0]
    row_indices = np.arange(num_res)

    # indices of mins in each row
    col_indices = np.argmin(a, axis=1) 
    
    f_res = f_reshaped[row_indices, col_indices]

    # f_res = [
    #     f_reshaped[r][np.argmin(a, axis=1)[r]]
    #     for r in range(num_res)]

    return f_res.real
