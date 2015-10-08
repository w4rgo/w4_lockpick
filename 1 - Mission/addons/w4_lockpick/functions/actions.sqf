_target = cursorTarget;
_removeAction = false;

_hasLockPick = 	w4_lockpick_classname in items player;
if(_hasLockPick) then {
	_isInRange = (player distance _target < 5);
	if(_isInRange) then {
		_isDoor = typeOf(_target) in w4_lockpick_door_classnames;
		_isSafe = typeOf(_target) in w4_lockpick_safe_classnames;
		_isCar = _target isKindOf("Car");

		if(_isDoor || _isCar || _isSafe) then {
			_type = "";
			if(_isDoor) then {
				_type="door";
			};
			if(_isSafe) then {
				_type="safe";
			};
			if(_isCar) then {
				_type="car";
			};

			if(lock_pick_action < 0) then {
		    	lock_pick_action = player addAction ["Lockpick", "addons\w4_lockpick\functions\useLockpick.sqf", [_target, _type]];
		    };
		} else {
			_removeAction = true;
		};
	} else {
		_removeAction = true;
	};
} else {
	_removeAction = true;
};

if(_removeAction) then {
	player removeAction lock_pick_action;
    lock_pick_action = -1;
};
