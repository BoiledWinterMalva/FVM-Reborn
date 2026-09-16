// scr_audio_manager.gml

function audio_manager_init() {
    global.game_frame = 0;
    global.sfx_queue = {};
}

function audio_manager_begin_step() {
    global.game_frame++;
    global.sfx_queue = {}; // 每帧开始清空登记表
}

// 登记一个音效请求
function queue_sfx(_snd, _gain = 1, _pitch_var = 0.05) {
    var _key = string(_snd);

    if (!variable_struct_exists(global.sfx_queue, _key)) {
        global.sfx_queue[$ _key] = {
            snd: _snd,
            count: 0,
            gain: _gain,
            pitch_var: _pitch_var
        };
    }

    global.sfx_queue[$ _key].count++;
}

// 每帧结束统一播放
function audio_manager_end_step() {
    if (!variable_global_exists("sfx_queue")) {
        global.sfx_queue = {};
        return;
    }

    var _names = variable_struct_get_names(global.sfx_queue);

    for (var i = 0; i < array_length(_names); i++) {
        var _data = global.sfx_queue[$ _names[i]];

        var _pitch = random_range(
            1 - _data.pitch_var,
            1 + _data.pitch_var
        );

        var _inst = audio_play_sound(
            _data.snd,
            1,
            false,
            _data.gain,
            0,
            _pitch
        );
    }

    global.sfx_queue = {};
}