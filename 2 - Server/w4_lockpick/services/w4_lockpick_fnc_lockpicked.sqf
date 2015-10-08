_player = _this select 0;
_object = _this select 1;
_type = _this select 2;

[_object, _player, _type, "lockpicked"] spawn w4_lockpick_fnc_save_usage;
diag_log format ["%1 lockpicked %2 , %3", _player , _object , _type];

switch (_type) do {
	case "door": {
		[_object] spawn w4_lockpick_fnc_unlock_door;
		[_object, "Your door was open!" , false , ""] spawn w4_lockpick_fnc_notify_territory;
	};
	case "car": {
		[_object] spawn w4_lockpick_fnc_unlock_car;
	};
	case "safe": {
		[_object] spawn w4_lockpick_fnc_unlock_safe;
		[_object, "Your safe was open!", false , ""] spawn w4_lockpick_fnc_notify_territory;
	};
};
