private["_value", "_nan", "_separator"];
_nan = "NotANumber"; 
_value = [_this, 0, 0, [0]] call BIS_fnc_param;
_separator = [_this, 1, "", [""]] call BIS_fnc_param;

if (_value == 0) exitWith {"0"};

private["_string_value", "_digits", "_remainder", "_sign"];
_string_value = "";
_digits = 0;
_sign = if (_value < 0) then {"-"} else {""};
_value = abs(round(_value));
while { _value >= 1 } do {
	_digits = _digits + 1;
	if ( _digits > 1 && ((_digits - 1) % 3) == 0) then {
		_string_value = _separator + _string_value;
	};
	_remainder = _value % 10;
	_string_value = str(_remainder) + _string_value;
	_value = floor(_value / 10);
};

_sign+_string_value