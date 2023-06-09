Config = {}
Config.getCoords = false -- useful for getting adding locations, only enable this if you're getting coords - (/mycoords in chat)

Config.policeJob = "police" -- change this to the name of the police job on your server - (name, not label)
Config.amountCop = 3 -- change this to increase/decrease the amount of police needed to start the mission with difficulty 1 
Config.hideBlip = false -- change this if you want the starting location to have a blip - (true/false)
Config.cleanDead = false -- change this if you want the peds to be deleted once they die - (true/false)
Config.printRemaining = true -- change this to show the amount of remaining enemies - (true/false)
Config.useNotification = true-- change this if you want to use mythic_notify to draw notifications - (true/false)
Config.progBar = true -- change this if you want to use progressBar or not - (true/false)
Config.removeArea = true -- change this if you want the red circle to disappear once you're at the location - (true/false)
Config.useDirtyMoney = true -- change this if you want to receive dirty money for selling dog tags - (true/false)
Config.waypoint = true -- change this to set a waypoint to the spawn location once you're close enough - (true/false)
Config.blipSprite = 90 -- if hideBlip is false then change this to your preferred sprite - (list of sprites: https://wiki.gtanet.work/index.php?title=Blips)
Config.enemies = 20 -- change this to the amount of enemies you want to spawn at a location. If this is 20 then 2-4 players are recommended. Tested with 10 - (10-20 enemies recommended)
Config.enemyHealth = 500 -- change this to the amount of health you want the enemies to have - (400 is default)
Config.enemyAcc = 100 -- change this to the accuracy you want the enemies to have. Recommend increasing this based on Config.enemies - (40% is default)
Config.enemyVest = true -- change this if you want to give the enemies armor - (true/false)
Config.enemyArmor = 100 -- change this to the amount you want if enemyVest is true - (0-100%)
Config.radius = 500.0 -- change this to increase/decrease the radius of the search area. If you go below 500 you will have to change some of the spawn locations - (float value)
Config.distance = 200 -- change this to increase/decrease the distance at which the enemies spawn - (might see enemies pop in with lower values)
Config.maxDistance = 400 -- change this to increase/decrease the max. distance you can be away from the enemies before the mission fails - (Keep higher than Config.distance)
Config.boxProp = "prop_mb_crate_01b" -- change the prop that will be used as a lootable source. Adjust crate x,y,z,h accordingly - (list of props: https://plebmasters.de/?app=objects)

-- Change the weapons the peds spawn with on difficulty 1.  Make sure the weapons aren't blacklisted on your server - (List of guns: https://forum.cfx.re/t/list-of-weapon-spawn-names-after-hours/90750)
Config.difficulty1_1 = --[[ "WEAPON_CARBINERIFLE_MK2" ]] "Weapon_mg"
Config.difficulty1_2 = "WEAPON_CARBINERIFLE_MK2"
Config.difficulty1_3 = "WEAPON_CARBINERIFLE_MK2"
Config.difficulty1_4 = "WEAPON_CARBINERIFLE_MK2"
Config.difficulty1_5 = "WEAPON_CARBINERIFLE_MK2"
	
-- Change the weapons the peds spawn with on difficulty 2.
Config.difficulty2_1 = "Weapon_mg"
Config.difficulty2_2 = "WEAPON_CARBINERIFLE_MK2"
Config.difficulty2_3 = "Weapon_mg"
Config.difficulty2_4 = "WEAPON_CARBINERIFLE_MK2"
Config.difficulty2_5 = "Weapon_mg"

-- Amount of money you get for selling Dog Tags
Config.reward = 1000

Config.locations = {
	[1] = { 
		addBlip = {x = 5262.46, y = -5431.44, z = 311.09}, 			-- This changes the location of the blip on the map
		enemy = {x = 5266.64, y = -5424.73, z = 65.61},    			-- Location of enemy spawns. I recommend finding a somewhat hidden spot for the enemy spawn so you don't see them pop in
		crate = {x = 5267.49, y = -5434.65, z = 65.6, h = 231.85},  -- Location of the crates. Always include heading. Try hiding it.
		active = false, 									 			-- Don't touch this
	},
	[2] = { 
		addBlip = {x = 5580.72, y = -5217.93, z = 14.57},				
		enemy = {x = 5548.31, y = -5229.89, z = 13.73},					
		crate = {x = 5587.3, y = -5222.74, z = 14.35, h = 136.99},	
		active = false,														
	},														 
	[3] = {																	
		addBlip= {x = 5313.62, y = -5600.83, z = 64.69},				
		enemy = {x = 5308.71, y = -5594.5, z = 63.99},					
		crate = {x = 5313.62, y = -5600.83, z = 64.69, h = 128.44},		
		active = false,														
	},																			
	[4] = {
		addBlip = {x = 5104.7, y =  -5524.69, z = 54.21},
		enemy = {x = 5112.17, y = -5520.38, z = 54.18},
		crate = {x = 5104.7, y =  -5524.69, z = 54.21, h = 181.02},
		active = false,
	},
	[5] = {
		addBlip = {x = 4883.4, y = -4634.92, z = 13.84},
		enemy = {x = 4871.84, y = -4623.71, z = 15.01},
		crate = {x = 4883.4, y = -4634.92, z = 13.84, h = 349.28},
		active = false,
	},
--[[ 	[6] = {
		addBlip = {x = 2206.111, y = 3184.629, z = 54.40459},
		enemy = {x = 2056.352, y = 3192.918, z = 45.19276},
		crate = {x = 2046.71, y = 3209.054, z = 45.16854, h = 243.74},
		active = false,
	},
	[7] = {
		addBlip = {x = 1286.401, y = 2160.646, z = 81.93208},
		enemy = {x = 1118.345, y = 2092.096, z = 55.5671},
		crate = {x = 1137.049, y = 2080.074, z = 55.55048, h = 178.54},
		active = false,
	},
	[8] = {
		addBlip = {x = 1286.401, y = 2160.646, z = 81.93208},
		enemy = {x = 1568.873, y = 2159.013, z = 79.03424},
		crate = {x = 1594.236, y = 2203.711, z = 78.85307, h = 278.73},
		active = false,
	},
	[9] = {
		addBlip = {x = 1286.401, y = 2160.646, z = 81.93208},
		enemy = {x = 817.6347, y = 2140.746, z = 52.52576},
		crate = {x = 795.6965, y = 2154.537, z = 52.27758, h = 66.26},
		active = false,
	},
	[10] = {
		addBlip = {x = 533.2896, y = 1010.094, z = 214.4116},
		enemy = {x = 739.5662, y = 1284.013, z = 360.2964},
		crate = {x = 663.8605, y = 1284.961, z = 360.2962, h = 1.5},
		active = false,
	},
	[11] = {
		addBlip = {x = 533.2896, y = 1010.094, z = 214.4116},
		enemy = {x = 678.0454, y = 553.6063, z = 129.041},
		crate = {x = 625.9147, y = 558.5403, z = 130.2459, h = 34.79},
		active = false,
	},
	[12] = {
		addBlip = {x = -171.1058, y = -2394.254, z = 6.0},
		enemy = {x = 20.97028, y = -2719.686, z = 6.006582},
		crate = {x = 32.77052, y = -2692.562, z = 12.00878, h = 272.47},
		active = false,
	},
	[13] = {
		addBlip = {x = -171.1058, y = -2394.254, z = 6.0},
		enemy = {x = -115.0204, y = -2247.77, z = 7.81285},
		crate = {x = -110.0959, y = -2207.68, z = 7.811674, h = 92.17},
		active = false,
	},
	[14] = {
		addBlip = {x = -880.9732, y = -474.8594, z = 36.63977},
		enemy = {x = -1187.767, y = -500.995, z = 36.41847},
		crate = {x = -1146.154, y = -477.7785, z = 38.77817, h = 5.28},
		active = false,
	},
	[15] = {
		addBlip = {x = -1990.243, y = 580.1886, z = 117.5893},
		enemy = {x = -2269.315, y = 264.9264, z = 174.602},
		crate = {x = -2197.325, y = 245.7781, z = 174.6067, h = 295.05},
		active = false,
	},
	[16] = {
		addBlip = {x = 1720.973, y = 4667.185, z = 43.24363},
		enemy = {x = 1318.149, y = 4359.525, z = 41.08543},
		crate = {x = 1338.902, y = 4391.864, z = 44.34374, h = 81.52},
		active = false,
	},
	[17] = {
		addBlip = {x = 1679.898, y = 6421.697, z = 32.17084},
		enemy = {x = 1437.715, y = 6325.19, z = 23.96961},
		crate = {x = 1548.035, y = 6337.943, z = 24.04352, h = 246.55},
		active = false,
	}, ]]
}


