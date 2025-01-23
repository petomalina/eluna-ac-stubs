---@meta

---@class Map
Map = {}

---Returns the area ID of the Map at the specified X, Y, and Z coordinates.
---@param x number
---@param y number
---@param z number
---@param phasemask? number
---@return number
function Map:GetAreaId(x, y, z, phasemask) end

---Returns the difficulty of the Map.
---@return number
function Map:GetDifficulty() end

---Returns the height of the Map at the given X and Y coordinates.
---@param x number
---@param y number
---@return number
function Map:GetHeight(x, y) end

---Gets the instance data table for the Map, if it exists.
---@return table
function Map:GetInstanceData() end

---Returns the instance ID of the Map.
---@return number
function Map:GetInstanceId() end

---Returns the ID of the Map.
---@return number
function Map:GetMapId() end

---Returns the name of the Map.
---@return string
function Map:GetName() end

---Returns the player count currently on the Map (excluding GMs).
---@return number
function Map:GetPlayerCount() end

---Returns a table with all the current Players in the map
---@param team TeamId
---@return table
function Map:GetPlayers(team) end

---Returns a WorldObject by its GUID from the map if it is spawned.
---@param guid number
---@return WorldObject
function Map:GetWorldObject(guid) end

---Returns true if the Map is an arena BattleGround, false otherwise.
---@return boolean
function Map:IsArena() end

---Returns true if the Map is a non-arena BattleGround, false otherwise.
---@return boolean
function Map:IsBattleground() end

---Returns true if the Map is a dungeon, false otherwise.
---@return boolean
function Map:IsDungeon() end

---Returns true if the Map has no Players, false otherwise.
---@return boolean
function Map:IsEmpty() end

---Returns true if the Map is a heroic, false otherwise.
---@return boolean
function Map:IsHeroic() end

---Returns true if the Map is a raid, false otherwise.
---@return boolean
function Map:IsRaid() end

---Saves the Map's instance data to the database.
function Map:SaveInstanceData() end

---Sets the [Weather] type based on [WeatherType] and grade supplied.
---@param zone number
---@param type WeatherType
---@param grade number
function Map:SetWeather(zone, type, grade) end

