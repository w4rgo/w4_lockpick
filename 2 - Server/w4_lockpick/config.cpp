class CfgPatches {
	class w4_lockpick {
		units[] = {};
		weapons[] = {};
		a3_w4lockpick_version = 1.0;
		requiredVersion = 1.36;
		requiredAddons[] = {};
	};
};
class CfgFunctions {
	class w4lockpick {
		class main {
			file = "\x\addons\w4lockpick";
			class start {
				postInit = 1;
			};
		};
	};
};