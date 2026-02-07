/// @function delta_clock(value, is_duration, use_frames)
/// @description Scales a value based on delta_time.
/// @param {Real} value        The amount to scale (e.g., speed or duration).
/// @param {Bool} is_duration  If true, returns increment to reach 1 over 'value' time. If false, multiplies value by delta.
/// @param {Bool} use_frames   If true, scales relative to game speed (60FPS). If false, scales relative to real seconds.
function delta_clock(value, is_duration = false, use_frames = false) {
    gml_pragma("forceinline");
    
    var _dt = delta_time;
    var _scale_base;

    if (use_frames) {
        _scale_base = game_get_speed(gamespeed_microseconds);
    } else {
        _scale_base = 1000000; 
    }

    var _ratio = _dt / _scale_base;

    if (is_duration) {
        return _ratio / value;
    } else {
        return value * _ratio;
    }
}