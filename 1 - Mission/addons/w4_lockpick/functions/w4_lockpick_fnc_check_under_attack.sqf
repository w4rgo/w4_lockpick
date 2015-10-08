_position = _this select 0;

_underAttackObjects = nearestObjects [_position, ["HeliHEmpty"], 300];

diag_log format ["found %1", count _underAttackObjects];

if(count _underAttackObjects > 0) then {
	true
} else {
	false
};
