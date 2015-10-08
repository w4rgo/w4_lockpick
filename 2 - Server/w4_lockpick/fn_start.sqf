diag_log format ["[W4LOCKPICK] Loading W4rgo Lockpick"];

//Services: This are called from the client with remoteExec
w4_lockpick_fnc_lockpick_attempt	= compile preprocessFileLineNumbers "\x\addons\w4lockpick\services\w4_lockpick_fnc_lockpick_attempt.sqf";
w4_lockpick_fnc_lockpicked 		= compile preprocessFileLineNumbers "\x\addons\w4lockpick\services\w4_lockpick_fnc_lockpicked.sqf";
w4_lockpick_fnc_lockpick_failed  = compile preprocessFileLineNumbers "\x\addons\w4lockpick\services\w4_lockpick_fnc_lockpick_failed.sqf";

//Functions: This are called within the server.
w4_lockpick_fnc_notify_territory = compile preprocessFileLineNumbers "\x\addons\w4lockpick\functions\w4_lockpick_fnc_notify_territory.sqf";
w4_lockpick_fnc_notify_owner = compile preprocessFileLineNumbers "\x\addons\w4lockpick\functions\w4_lockpick_fnc_notify_owner.sqf";
w4_lockpick_fnc_notify_all   = compile preprocessFileLineNumbers "\x\addons\w4lockpick\functions\w4_lockpick_fnc_notify_all.sqf";
w4_lockpick_fnc_create_marker_global = compile preprocessFileLineNumbers "\x\addons\w4lockpick\functions\w4_lockpick_fnc_create_marker_global.sqf";
w4_lockpick_fnc_create_marker_local = compile preprocessFileLineNumbers "\x\addons\w4lockpick\functions\w4_lockpick_fnc_create_marker_local.sqf";
w4_lockpick_fnc_unlock_door = compile preprocessFileLineNumbers "\x\addons\w4lockpick\functions\w4_lockpick_fnc_unlock_door.sqf";
w4_lockpick_fnc_unlock_car = compile preprocessFileLineNumbers "\x\addons\w4lockpick\functions\w4_lockpick_fnc_unlock_car.sqf";
w4_lockpick_fnc_unlock_safe = compile preprocessFileLineNumbers "\x\addons\w4lockpick\functions\w4_lockpick_fnc_unlock_safe.sqf";
w4_lockpick_fnc_prevent_building = compile preprocessFileLineNumbers "\x\addons\w4lockpick\functions\w4_lockpick_fnc_prevent_building.sqf";
w4_lockpick_fnc_save_usage = compile preprocessFileLineNumbers "\x\addons\w4lockpick\functions\w4_lockpick_fnc_save_usage.sqf";

//debug

w4_lockpick_debug = true;
w4_lockpick_fnc_log = compile preprocessFileLineNumbers "\x\addons\w4lockpick\functions\w4_lockpick_fnc_log.sqf";

diag_log format ["[W4LOCKPICK] Loadeded W4rgo Lockpick"];
