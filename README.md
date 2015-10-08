# Lockpick system for Exile mod
## Made for www.zombiespain.es

## Motivation

Currently Exile bases, safes and cars are imposible to raid propertly. With this addon I wanted to bring to Exile Mod the posibility of raiding.

## Features
- Lockpick can open a door.
- Lockpick can open a safe.
- Lockpick can open a car.
- Configurable probabilities for doors, safes and cars independently.
- Configurable lockpick time for doors, safes and cars independently.
- When used in a safe or door , a notification will be sent to the building authorized members of the territory, and a mark will appear on their map during 5 minutes.
- When used in a car, a notification will be sent to all the server and the initial location of the car will be shown for 5 minutes.
- Lockpick usages will be saved to a database table for admin tracking of its usage. (more uses in the future).

## Planed Features
- New trader that will show the name of the people that raided you for an ammount of money.
- Email sent to the players that are under attack.

## How to install

###Step 1 - Mission addon
1. Unpack your mission.pbo.
2. Copy the addons folder from **"1 - MISSION"** and paste it inside your mission folder
3. Copy the content of the init.sqf next to the addons folder and paste it in your init.sqf, if you dont have a init.sqf then paste this one in your mission.
4. OPTIONAL - Configure the lockpick usage in **addons/w4_lockpick/initLockpick.sqf**.

###Step 2 - Server addon
1. Open the folder **"2 - SERVER"**
2. Pack the folder w4_lockpick into a pbo and paste it inside your **@ExileServer/addons** folder.

###Step 3 - Database table
1. Add the following to the bottom of your **@ExileServer\extDB\sql_custom_v2\exile.ini**

		[saveLockpickUsage]
		SQL1_1 = INSERT INTO lockpick SET uid = ?, object_owner = ?, territory_id = ?, position_x = ?, position_y = ? , position_z = ?, object = ?, type = ? , object_type = ? ,datetime = NOW()
		Number Of Inputs = 9
		SQL1_INPUTS = 1,2,3,4,5,6,7,8,9
		Return InsertID = true
2. Create the following schema on your exile database.

		DROP TABLE IF EXISTS `lockpick`;
		CREATE TABLE `lockpick` (
		  `id` int(11) NOT NULL AUTO_INCREMENT,
		  `uid` varchar(32) NOT NULL,
		  `object_owner` varchar(64) NOT NULL,
		  `territory_id` int(11) NOT NULL,
		  `position_x` double NOT NULL,
		  `position_y` double NOT NULL,
		  `position_z` double NOT NULL,
		  `object` varchar(64) NOT NULL,
		  `type` varchar(20) NOT NULL,
		  `object_type` varchar(20) NOT NULL,
		  `datetime` datetime NOT NULL,
		  PRIMARY KEY (`id`)
		) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;

## Credits
- To all the members and administration of **www.zombiespain.es**
