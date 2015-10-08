_player = _this select 0;
_object = _this select 1;
_type = _this select 2;

diag_log format ["%1 failed to lockpick %2 , %3", _player , _object , _type];
[_object, _player, _type, "failed"] call w4_lockpick_fnc_save_usage;