_object = _this select 0;
_object setVariable ["ExileIsLocked", 0 ,true];
[position _object] call w4_lockpick_fnc_prevent_building;