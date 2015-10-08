_object = _this select 0;
_type = _this select 1;

diag_log "[w4lockpick] trying to create client marker";
_pos = position _object;
_markerName = netId _object;

_markerText = format["%1 BEING LOCKPICKED." , typeOf(_object)];

diag_log format ["[w4lockpick] Creating local marker %1",_markerName];

_dotName = format ["dot_%1", _markerName];
_name = createMarkerLocal [_dotName, _pos];
_dotName setMarkerColorLocal "ColorYellow";
_dotName setMarkerTypeLocal "hd_warning";
_dotName setMarkerTextLocal _markerText;

diag_log format ["[w4lockpick] Created local marker %1",_markerName];

sleep 300;

deleteMarker _dotName;