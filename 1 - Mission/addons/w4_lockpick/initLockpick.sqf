/*

	Lockpick addon for Exile mod.
	Done by w4rgo for www.zombiespain.es

*/

w4_add_lockpick_actions	= compile preprocessFileLineNumbers "addons\w4_lockpick\functions\actions.sqf";
w4_lockpick_fnc_create_marker_client = compile preprocessFileLineNumbers "addons\w4_lockpick\functions\w4_lockpick_fnc_create_marker_client.sqf";
w4_lockpick_fnc_check_under_attack = compile preprocessFileLineNumbers "addons\w4_lockpick\functions\w4_lockpick_fnc_check_under_attack.sqf";

/*******************************************************************
					        CONFIGURATION
*******************************************************************/
//CHANCES
w4_lockpick_vehicle_chance = 70;
w4_lockpick_safe_chance = 40;
w4_lockpick_door_chance = 40;

//TIMES
w4_lockpick_vehicle_time = 30;
w4_lockpick_safe_time = 2;
w4_lockpick_door_time = 30;
//CLASSNAMES
w4_lockpick_classname = "MineDetector";
w4_lockpick_door_classnames = ["Exile_Construction_WoodGate_Static","Exile_Construction_WoodDoor_Static","Exile_Construction_WoodDoor_Reinforced_Static", "Exile_Construction_WoodGate_Reinforced_Static"];
w4_lockpick_safe_classnames = ["Exile_Container_Safe"];

/*******************************************************************
						END CONFIGURATION
*******************************************************************/

w4_lockpick_using = false;

[] execVM "addons\w4_lockpick\initCustomActions.sqf";