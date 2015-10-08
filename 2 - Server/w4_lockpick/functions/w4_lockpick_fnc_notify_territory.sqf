_object = _this select 0;
_message = _this select 1;
_marker = _this select 2;

_flag = nearestObject [position _object, "Exile_Construction_Flag_Static"];
_members = _flag getVariable ["ExileTerritoryBuildRights",[]];

{
	[_object, "Lockpick in your base! Check the map!" , _marker , _x] call w4_lockpick_fnc_notify_owner;
} forEach _members;

["notify territory"] call w4_lockpick_fnc_log;
