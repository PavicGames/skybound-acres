-- Skybound Acres: Game Configuration
-- Easily adjust game balance and difficulty here

local Config = {}

-- DIFFICULTY SETTINGS
Config.DIFFICULTY = {
	EASY = {
		cropGrowthSpeed = 1.5,
		animalHappinessDecay = 0.5,
		pestChance = 0.1,
		initialMoney = 2000,
	},
	NORMAL = {
		cropGrowthSpeed = 1.0,
		animalHappinessDecay = 1.0,
		pestChance = 0.3,
		initialMoney = 1000,
	},
	HARD = {
		cropGrowthSpeed = 0.7,
		animalHappinessDecay = 1.5,
		pestChance = 0.6,
		initialMoney = 500,
	},
}

-- Default difficulty
Config.CURRENT_DIFFICULTY = Config.DIFFICULTY.NORMAL

-- FARMING BALANCE
Config.FARMING = {
	WATER_PER_SECOND = 0.5, -- How much water crops need
	FERTILIZER_BOOST = 1.5, -- Growth multiplier with fertilizer
	PEST_DAMAGE = 0.1, -- Damage per second from pests
	PEST_SPRAY_EFFECTIVENESS = 0.95, -- How well pesticide works
	SEASON_TRANSITION_TIME = 60, -- Seconds for season change
}

-- AVIATION BALANCE
Config.AVIATION = {
	FUEL_CONSUMPTION_RATE = 5, -- Fuel per second of flight
	CRASH_DAMAGE_THRESHOLD = 30, -- Speed threshold for crash damage
	REPAIR_COST_MULTIPLIER = 1.0,
	MAINTENANCE_INTERVAL = 3600, -- Seconds between required maintenance
}

-- WEATHER SYSTEM
Config.WEATHER = {
	RAIN_CROP_BOOST = 1.2, -- Crops grow faster in rain
	RAIN_FLIGHT_PENALTY = 0.8, -- Visibility reduced in rain
	SNOW_VEHICLE_PENALTY = 0.6, -- Vehicles move slower in snow
	STORM_FREQUENCY = 300, -- Average seconds between storms
}

-- NPC & MISSIONS
Config.MISSIONS = {
	DELIVERY_TIME_BONUS = 1.5, -- Reputation multiplier for early delivery
	DELIVERY_TIME_WINDOW = 600, -- Seconds to complete delivery for full reward
	MISSION_VARIETY = 5, -- Different mission types available
}

-- ECONOMY SCALING
Config.ECONOMY = {
	PRICE_VOLATILITY = 0.2, -- How much crop prices vary
	MARKET_UPDATE_TIME = 3600, -- Seconds between price updates
	INFLATION_RATE = 1.01, -- Prices increase slightly over time
}

-- PROGRESSION
Config.PROGRESSION = {
	LEVEL_CAP = 100,
	EXP_PER_CROP_HARVEST = 50,
	EXP_PER_DELIVERY = 100,
	EXP_PER_ANIMAL_CARE = 25,
}

-- DEBUG
Config.DEBUG = {
	ENABLE_CHEATS = false,
	FAST_TIME_SCALE = 1, -- 10 = 10x faster game time (for testing)
	SHOW_HITBOXES = false,
	LOG_LEVEL = "INFO", -- DEBUG, INFO, WARNING, ERROR
}

return Config
