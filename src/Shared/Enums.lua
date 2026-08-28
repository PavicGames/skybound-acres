-- Skybound Acres: Shared Enumerations

local Enums = {}

-- CROP STATES
Enums.CropState = {
	EMPTY = "empty",
	PLANTED = "planted",
	GROWING = "growing",
	MATURE = "mature",
	HARVESTED = "harvested",
	DEAD = "dead",
}

-- ANIMAL STATES
Enums.AnimalState = {
	HAPPY = "happy",
	SATISFIED = "satisfied",
	UNHAPPY = "unhappy",
	HUNGRY = "hungry",
	SICK = "sick",
}

-- AIRCRAFT STATES
Enums.AircraftState = {
	BROKEN = "broken",
	REPAIRING = "repairing",
	NEEDS_MAINTENANCE = "needs_maintenance",
	READY = "ready",
	FLYING = "flying",
	DAMAGED = "damaged",
}

-- COMPONENT STATES
Enums.ComponentState = {
	MISSING = "missing",
	INSTALLED = "installed",
	TESTED = "tested",
	DAMAGED = "damaged",
	WORKING = "working",
}

-- WEATHER TYPES
Enums.Weather = {
	SUNNY = "sunny",
	CLOUDY = "cloudy",
	RAINY = "rainy",
	STORM = "storm",
	SNOW = "snow",
	FOG = "fog",
}

-- MISSIONS
Enums.MissionType = {
	DELIVERY = "delivery",
	CROP_DUSTING = "crop_dusting",
	EXPLORATION = "exploration",
	RESCUE = "rescue",
	FARMING = "farming",
}

Enums.MissionStatus = {
	AVAILABLE = "available",
	ACCEPTED = "accepted",
	IN_PROGRESS = "in_progress",
	COMPLETED = "completed",
	FAILED = "failed",
	REWARDED = "rewarded",
}

-- BUILDING TYPES
Enums.BuildingType = {
	FARMHOUSE = "farmhouse",
	BARN = "barn",
	HANGAR = "hangar",
	SILO = "silo",
	GREENHOUSE = "greenhouse",
	WORKSHOP = "workshop",
}

-- ATTACHMENT TYPES
Enums.AttachmentType = {
	CROP_SPRAYER = "crop_sprayer",
	FERTILIZER_SPREADER = "fertilizer_spreader",
	CARGO_HOOK = "cargo_hook",
	ANIMAL_CARRIER = "animal_carrier",
}

return Enums
