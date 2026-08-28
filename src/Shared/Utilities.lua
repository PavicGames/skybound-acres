-- Skybound Acres: Shared Utility Functions

local Utilities = {}

-- TABLE UTILITIES
function Utilities.MergeTable(baseTable, overrideTable)
	local result = {}
	for k, v in pairs(baseTable) do
		result[k] = v
	end
	for k, v in pairs(overrideTable) do
		result[k] = v
	end
	return result
end

function Utilities.DeepCopy(obj)
	if type(obj) ~= "table" then return obj end
	local res = {}
	for k, v in pairs(obj) do
		res[Utilities.DeepCopy(k)] = Utilities.DeepCopy(v)
	end
	return res
end

function Utilities.TableContains(tbl, value)
	for _, v in pairs(tbl) do
		if v == value then return true end
	end
	return false
end

-- MATH UTILITIES
function Utilities.Clamp(value, min, max)
	return math.max(min, math.min(max, value))
end

function Utilities.Lerp(a, b, t)
	return a + (b - a) * t
end

function Utilities.RandomRange(min, max)
	return math.random(min * 100, max * 100) / 100
end

-- STRING UTILITIES
function Utilities.FormatNumber(n)
	local formatted = tostring(n)
	while string.match(formatted, "^(-?%d+)(%d%d%d)") do
		formatted = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
	end
	return formatted
end

function Utilities.FormatTime(seconds)
	local minutes = math.floor(seconds / 60)
	local secs = seconds % 60
	return string.format("%02d:%02d", minutes, secs)
end

-- VECTOR UTILITIES
function Utilities.Distance(v1, v2)
	return (v1 - v2).Magnitude
end

function Utilities.IsWithinRange(position, center, range)
	return Utilities.Distance(position, center) <= range
end

function Utilities.DirectionTo(from, to)
	return (to - from).Unit
end

-- SIGNAL CLASS (For custom events)
local Signal = {}
Signal.__index = Signal

function Signal.new()
	local self = setmetatable({}, Signal)
	self._connections = {}
	return self
end

function Signal:Connect(callback)
	local connection = { _callback = callback, _connected = true }
	table.insert(self._connections, connection)
	
	function connection:Disconnect()
		self._connected = false
		for i, conn in pairs(self._connections) do
			if conn == self then
				table.remove(self._connections, i)
				break
			end
		end
	end
	
	return connection
end

function Signal:Fire(...)
	for _, connection in pairs(self._connections) do
		if connection._connected then
			task.spawn(connection._callback, ...)
		end
	end
end

function Signal:Wait()
	local thread = coroutine.running()
	local connection
	connection = self:Connect(function(...)
		connection:Disconnect()
		task.resume(thread, ...)
	end)
	return coroutine.yield()
end

Utilities.Signal = Signal

-- LOGGING
local LogLevels = { DEBUG = 0, INFO = 1, WARNING = 2, ERROR = 3 }

function Utilities.Log(level, message, ...)
	local args = {...}
	local formattedMessage = message
	for i, arg in pairs(args) do
		formattedMessage = string.gsub(formattedMessage, "{" .. i .. "}", tostring(arg))
	end
	
	local timestamp = os.date("%H:%M:%S")
	print(string.format("[%s] [%s] %s", timestamp, level, formattedMessage))
end

return Utilities
