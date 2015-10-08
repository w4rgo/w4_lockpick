private["_helipadEmpty"];

_position = _this select 0;

_helipadEmpty = "HeliHEmpty" createVehicle _position;
[format ["Spawning HeliHEmpty %1" , _helipadEmpty]] call w4_lockpick_fnc_log;
sleep 1800;

deleteVehicle _helipadEmpty;