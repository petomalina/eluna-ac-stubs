---@class Map
local Map = {}

---Gets the instance data table for the Map, if it exists.
---@param instance_data table
---@return table
function Map:GetInstanceData(instance_data) end

---Returns the player count currently on the Map (excluding GMs).
---@param playerCount number
---@return number
function Map:GetPlayerCount(playerCount) end

---Returns a table with all the current Players in the map
---@param team TeamId
---@param mapPlayers table
---@return table
function Map:GetPlayers(team, mapPlayers) end

---Returns true if the Map is an arena BattleGround, false otherwise.
---@param isArena boolean
---@return boolean
function Map:IsArena(isArena) end

---Returns true if the Map is a non-arena BattleGround, false otherwise.
---@param isBattleGround boolean
---@return boolean
function Map:IsBattleground(isBattleGround) end

---Saves the Map's instance data to the database.
function Map:SaveInstanceData() end

---Returns the area ID of the Map at the specified X, Y, and Z coordinates.
---@param x number
---@param y number
---@param z number
---@param phasemask number
---@param areaId number
---@return number
function Map:GetAreaId(x, y, z, phasemask, areaId) end

---Returns the difficulty of the Map.
---@param difficulty number
---@return number
function Map:GetDifficulty(difficulty) end

---Returns true if the Map has no Players, false otherwise.
---@param IsEmpty boolean
---@return boolean
function Map:IsEmpty(IsEmpty) end

---Returns true if the Map is a raid, false otherwise.
---@param isRaid boolean
---@return boolean
function Map:IsRaid(isRaid) end

---Sets the [Weather] type based on [WeatherType] and grade supplied.
---@param zone number
---@param type WeatherType
---@param grade number
function Map:SetWeather(zone, type, grade) end

---Returns the instance ID of the Map.
---@param instanceId number
---@return number
function Map:GetInstanceId(instanceId) end

---Returns the name of the Map.
---@param mapName string
---@return string
function Map:GetName(mapName) end

---Returns true if the Map is a dungeon, false otherwise.
---@param isDungeon boolean
---@return boolean
function Map:IsDungeon(isDungeon) end

---Returns true if the Map is a heroic, false otherwise.
---@param isHeroic boolean
---@return boolean
function Map:IsHeroic(isHeroic) end

---Returns the ID of the Map.
---@param mapId number
---@return number
function Map:GetMapId(mapId) end

---Returns a WorldObject by its GUID from the map if it is spawned.
---@param guid number
---@param object WorldObject
---@return WorldObject
function Map:GetWorldObject(guid, object) end

---Returns the height of the Map at the given X and Y coordinates.
---@param x number
---@param y number
---@param z number
---@return number
function Map:GetHeight(x, y, z) end

return Map
