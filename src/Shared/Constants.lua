-- Skybound Acres: Shared Constants
-- Used across client and server

local Constants = {}

-- FARMING CONSTANTS
Constants.CROPS = {
	WHEAT = { name = "Wheat", growTime = 300, yield = 5, soilTypes = {"loam", "clay"} },
	CORN = { name = "Corn", growTime = 480, yield = 8, soilTypes = {"loam", "sandy"} },
	SOYBEAN = { name = "Soybean", growTime = 420, yield = 6, soilTypes = {"loam"} },
	CARROT = { name = "Carrot", growTime = 240, yield = 4, soilTypes = {"loam", "sandy"} },
	POTATO = { name = "Potato", growTime = 360, yield = 7, soilTypes = {"clay", "loam"} },
}

Constants.SOIL_TYPES = {
	CLAY = { name = "Clay", drainageRate = 0.3, fertility = 0.8 },
	LOAM = { name = "Loam", drainageRate = 0.5, fertility = 1.0 },
	SANDY = { name = "Sandy", drainageRate = 0.8, fertility = 0.6 },
}

Constants.ANIMALS = {
	CHICKEN = { name = "Chicken", feedCost = 2, happinessDecay = 2, productionRate = 0.5 },
	COW = { name = "Cow", feedCost = 5, happinessDecay = 1, productionRate = 1.0 },
	SHEEP = { name = "Sheep", feedCost = 3, happinessDecay = 1.5, productionRate = 0.75 },
}

Constants.SEASONS = {
	SPRING = { name = "Spring", growthMultiplier = 1.2, weatherType = "rain" },
	SUMMER = { name = "Summer", growthMultiplier = 1.5, weatherType = "sunny" },
	FALL = { name = "Fall", growthMultiplier = 0.8, weatherType = "cloudy" },
	WINTER = { name = "Winter", growthMultiplier = 0.2, weatherType = "snow" },
}

Constants.SEASON_LENGTH = 1200 -- seconds per season

-- AVIATION CONSTANTS
Constants.AIRCRAFT = {
	BUSH_PLANE = {
		name = "Bush Plane",
		components = {
			"Engine", "Wings", "Fuselage", "Landing Gear", "Cockpit", "Propeller"
		},
		maxSpeed = 60,
		cargoCapacity = 100,
		fuelCapacity = 200,
	},
	HELICOPTER = {
		name = "Helicopter",
		components = {
			"Engine", "Main Rotor", "Tail Rotor", "Fuselage", "Cockpit", "Landing Skids"
		},
		maxSpeed = 80,
		cargoCapacity = 150,
		fuelCapacity = 250,
	},
}

Constants.ATTACHMENTS = {
	CROP_SPRAYER = { name = "Crop Sprayer", weight = 50, efficiency = 1.0 },
	FERTILIZER_SPREADER = { name = "Fertilizer Spreader", weight = 60, efficiency = 0.9 },
	CARGO_HOOK = { name = "Cargo Hook", weight = 30, carryCapacity = 200 },
	ANIMAL_CARRIER = { name = "Animal Carrier", weight = 40, capacity = 10 },
}

-- ECONOMY CONSTANTS
Constants.PRICES = {
	CROP_SEEDS = 10,
	FEED = 5,
	FERTILIZER = 20,
	PESTICIDE = 15,
	LAND_PLOT = 500,
	BARN_UPGRADE = 1000,
	HANGAR = 2000,
	RUNWAY = 3000,
}

Constants.SELL_PRICES = {
	WHEAT = 50,
	CORN = 75,
	SOYBEAN = 60,
	CARROT = 40,
	POTATO = 45,
	EGGS = 30,
	MILK = 80,
	WOOL = 50,
}

-- WORLD CONSTANTS
Constants.WORLD = {
	SPAWN_LOCATION = Vector3.new(0, 50, 0),
	FARM_SIZE = 1000,
	TOWN_RADIUS = 200,
}

-- TIME CONSTANTS
Constants.GAME_DAY_LENGTH = 1200 -- 20 minutes real time = 1 game day
Constants.MILLISECONDS_PER_GAME_SECOND = 1000 / 60 -- Roblox runs at 60 FPS

-- REPUTATION CONSTANTS
Constants.REPUTATION = {
	MIN_REPUTATION = 0,
	MAX_REPUTATION = 1000,
	DEFAULT_REPUTATION = 100,
	REP_PER_DELIVERY = 50,
	REP_PER_FAILED_DELIVERY = -30,
}

return Constants
