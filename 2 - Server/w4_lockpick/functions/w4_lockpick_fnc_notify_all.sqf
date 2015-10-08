_object = _this select 0;
_message = _this select 1;
_marker = _this select 2;

["notificationRequest",["Success",[_message]]] call ExileServer_system_network_send_broadcast;

if(_marker) then {
	[_object] call w4_lockpick_fnc_create_marker_global;
};

["notify all"] call w4_lockpick_fnc_log;
