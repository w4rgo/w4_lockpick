_owner = _this select 0;
_object = _this select 1;

[_object] remoteExec ["w4_lockpick_fnc_create_marker_client" , owner _owner];

[format ["creating marker in client %1 and object %2",_owner,_object]] call w4_lockpick_fnc_log;
