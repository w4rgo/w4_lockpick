_player = _this select 0;
_object = _this select 1;
_type = _this select 2;

[_object, _player, _type, "attempt"] spawn w4_lockpick_fnc_save_usage;
diag_log format ["%1 attempted lockpick %2 , %3", _player , _object , _type];


switch (_type) do {
	case "door": {
		[_object, "Lockpick in your base! Check the map!", true ] spawn w4_lockpick_fnc_notify_territory;
	};
	case "car": {
		[_object, "Car being lockpicked! Check the map!", true ] spawn w4_lockpick_fnc_notify_all;
	};
	case "safe": {
		[_object, "Lockpick in your base! Check the map!", true] spawn w4_lockpick_fnc_notify_territory;
	};
};

