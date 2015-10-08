/*lockpick script by w4rgo from www.zombiespain.es*/
private ["_target","_objects","_lockpickChance","_diceRoll"];
_target = (_this select 3) select 0;
_type = (_this select 3) select 1;

if(w4_lockpick_using) exitWith {
	["Whoops",["You are already lockpicking!"],5] call BIS_fnc_showNotification;
};

if!(w4_lockpick_classname in items player) exitWith {
	["Whoops",["You dont have a lockpick!"],5] call BIS_fnc_showNotification;
};

_isLockedObject =_target getvariable ["ExileIsLocked",1] isEqualTo -1;
_isLockedVehicle = (locked _target) isEqualTo 2;
if!(_isLockedObject || _isLockedVehicle) exitWith {
	["Whoops",[format ["The %1 is not locked", _type]]] call BIS_fnc_showNotification;
};

_result = ["Do you really want to use the lockpick?", "Lockpick?", "Yes", "Nah"] call BIS_fnc_guiMessage;
waitUntil { !isNil "_result" };

if(_result) then {
	w4_lockpick_using = true;
	player removeItem w4_lockpick_classname;
	_diceRoll = floor(random 100);
	_chance=0;
	_time=0;
	[player, _target , _type] remoteExec ["w4_lockpick_fnc_lockpick_attempt" , 2];

	switch (_type) do {
		case "door": {
			_chance = w4_lockpick_door_chance;
			_time = w4_lockpick_door_time;
		};
		case "car": {
			_chance = w4_lockpick_vehicle_chance;
			_time = w4_lockpick_vehicle_time;
		};
		case "safe": {
			_chance = w4_lockpick_safe_chance;
			_time = w4_lockpick_safe_time;
		};
	};

	["Success",[format ["Starting to lockpick... will take %1s", _time]],5] call BIS_fnc_showNotification;
	sleep _time/2;

	["Success",[format ["Still lockpicking... will take %1s", _time/2]],5] call BIS_fnc_showNotification;
	sleep _time/2;


	if(_chance > _diceRoll) then {
		["Success",[format ["The %1 was hacked.", _type]],5] call BIS_fnc_showNotification;
		[player, _target, _type] remoteExec ["w4_lockpick_fnc_lockpicked" , 2];
	} else {
		["Whoops",[format ["The lockpick failed to open %1!", _type]],5] call BIS_fnc_showNotification;
		[player, _target, _type] remoteExec ["w4_lockpick_fnc_lockpick_failed" , 2];
	};
	w4_lockpick_using = false;
};
