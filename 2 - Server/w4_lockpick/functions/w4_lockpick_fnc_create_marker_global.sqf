_object = _this select 0;

_pos = position _object;
_markerName = netId _object;
_markerText = format["%1 BEING LOCKPICKED." , typeOf(_object)];

[format ["Creating marker %1",_markerName]] call w4_lockpick_fnc_log;

_dotName = format ["dot_%1", _markerName];
_name = createMarker [_dotName, _pos];
_dotName setMarkerColor "ColorYellow";
_dotName setMarkerType "hd_warning";
_dotName setMarkerText _markerText;

[format ["Created marker %1",_markerName]] call w4_lockpick_fnc_log;

sleep 300;

deleteMarker _dotName;