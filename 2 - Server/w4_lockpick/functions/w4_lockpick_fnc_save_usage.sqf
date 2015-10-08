_object = _this select 0;
_player = _this select 1;
_object_type = _this select 2;
_type = _this select 3;
//SQL1_1 = INSERT INTO lockpick SET uid = ?, object_owner = ?, territory_id = ?, position_x = ?, position_y = ? , position_z = ?, object = ?, type = ? , object_type = ? ,datetime = NOW()

_owner = _object getVariable ["ExileOwnerUID",""];
_object_owner = getPlayerUID _player;
_territory_id = 0;
_position = getPosATL _object;
_data =
[
	_owner,
	_object_owner,
	_territory_id,
	_position select 0,
	_position select 1,
	_position select 2,
	typeOf(_object),
	_type,
	_object_type
];
_extDB2Message = ["saveLockpickUsage", _data] call ExileServer_util_extDB2_createMessage;
_territoryID = _extDB2Message call ExileServer_system_database_query_insertSingle;