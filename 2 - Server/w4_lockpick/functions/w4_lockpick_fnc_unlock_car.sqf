_object = _this select 0;

if(local _object)then {
	_object lock 0;
} else {
	[owner _object,"LockVehicleRequest",[_object,false]] call ExileServer_system_network_send_to;
};
_object setVariable ["ExileIsLocked", 0];

