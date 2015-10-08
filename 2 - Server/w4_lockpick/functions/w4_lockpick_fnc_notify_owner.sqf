_object = _this select 0;
_message = _this select 1;
_marker = _this select 2;
_ownerUID = _this select 3;

if(_ownerUID == "") then {
	_ownerUID = _object getVariable ["ExileOwnerUID", ""];
};

_owner = objNull;
{
	if(_ownerUID isEqualTo getPlayerUID _x) then {
		_owner = _x;
	};
} forEach allPlayers;

if !(isNull _owner) then {
	[_owner,"notificationRequest",["Success", [_message]]] call ExileServer_system_network_send_to;
	if(_marker) then {
		[_owner, _object] call w4_lockpick_fnc_create_marker_local;
	};
};

["[w4lockpick] notify owner"] call w4_lockpick_fnc_log;