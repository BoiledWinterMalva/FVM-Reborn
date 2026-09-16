/// version_greater(version1, version2)
/// @param {string} version1 string (e.g., "1.2.3" 或 "2.4.1-鸡年DLC")
/// @param {string} version2 string (e.g., "1.2.4")
/// @return bool
/// @description 如果 v1 > v2，返回 true。只比较前三个数字段，忽略后缀。
function version_greater(version1, version2) {
    var v1_arr = version_parse(version1);
    var v2_arr = version_parse(version2);

    for (var i = 0; i < 3; i++) {
        var num1 = v1_arr[i];
        var num2 = v2_arr[i];

        if (num1 > num2) return true;
        if (num1 < num2) return false;
    }

    return false; // 前三个数字相等
}

/// 将版本字符串解析为长度为 3 的数组 [major, minor, patch]
/// 只取前三个以 "." 分隔的组件，每个组件只提取开头的连续数字
/// 例："2.4.1-鸡年DLC" -> [2, 4, 1]
///     "1.2"          -> [1, 2, 0]
///     "1"            -> [1, 0, 0]
function version_parse(_str) {
    var _arr = [];
    var _temp = _str;

    while (array_length(_arr) < 3) {
        var _dot = string_pos(".", _temp);
        var _part;

        if (_dot > 0) {
            _part = string_copy(_temp, 1, _dot - 1);
            _temp = string_delete(_temp, 1, _dot);
        } else {
            _part = _temp;
            _temp = "";
        }

        array_push(_arr, version_extract_num(_part));

        if (_dot <= 0) break; // 没有更多 "." 了
    }

    // 不足三段补 0
    while (array_length(_arr) < 3) {
        array_push(_arr, 0);
    }

    return _arr;
}

/// 提取字符串开头连续的阿拉伯数字，遇到非数字字符就停止
/// "1-鸡年DLC" -> 1    "12abc" -> 12    "abc" -> 0
function version_extract_num(_s) {
    var _digits = "";
    var _len = string_length(_s);

    for (var i = 1; i <= _len; i++) {
        var _c = string_char_at(_s, i);
        if (_c >= "0" && _c <= "9") {
            _digits += _c;
        } else {
            break;
        }
    }

    return (_digits == "") ? 0 : real(_digits);
}
