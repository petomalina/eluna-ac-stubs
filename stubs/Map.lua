---@class Map
local Map = {}

---Returns true if the Map is a dungeon, false otherwise.
---@param isDungeon boolean
---@return isDungeon
function Map:IsDungeon(isDungeon) end

---Returns true if the Map is a raid, false otherwise.
---@param isRaid boolean
---@return isRaid
function Map:IsRaid(isRaid) end

---Returns a WorldObject by its GUID from the map if it is spawned.
---@param guid number
---@param object WorldObject
---@return object
function Map:GetWorldObject(guid, object) end

---Returns true if the Map is a non-arena BattleGround, false otherwise.
---@param isBattleGround boolean
---@return isBattleGround
function Map:IsBattleground(isBattleGround) end

---Returns true if the Map has no Players, false otherwise.
---@param IsEmpty boolean
---@return IsEmpty
function Map:IsEmpty(IsEmpty) end

---Returns the area ID of the Map at the specified X, Y, and Z coordinates.
---@param x number
---@param y number
---@param z number
---@param phasemask number
---@param areaId number
---@return areaId
function Map:GetAreaId(x, y, z, phasemask, areaId) end

---Gets the instance data table for the Map, if it exists.
---@param instance_data table
---@return instance_data
function Map:GetInstanceData(instance_data) end

---Returns a table with all the current Players in the map
---@param team TeamId
---@param mapPlayers table
---@return mapPlayers
function Map:GetPlayers(team, mapPlayers) end

---Returns true if the Map is a heroic, false otherwise.
---@param isHeroic boolean
---@return isHeroic
function Map:IsHeroic(isHeroic) end

---Sets the [Weather] type based on [WeatherType] and grade supplied.
---@param zone number
---@param type WeatherType
---@param grade number
function Map:SetWeather(zone, type, grade) end

---Returns the instance ID of the Map.
---@param instanceId number
---@return instanceId
function Map:GetInstanceId(instanceId) end

---Returns the name of the Map.
---@param mapName string
---@return mapName
function Map:GetName(mapName) end

---Returns the player count currently on the Map (excluding GMs).
---@param playerCount number
---@return playerCount
function Map:GetPlayerCount(playerCount) end

---Returns true if the Map is an arena BattleGround, false otherwise.
---@param isArena boolean
---@return isArena
function Map:IsArena(isArena) end

---Saves the Map's instance data to the database.
function Map:SaveInstanceData() end

---Returns the difficulty of the Map.
---@param difficulty number
---@return difficulty
function Map:GetDifficulty(difficulty) end

---Returns the height of the Map at the given X and Y coordinates.
---@param x number
---@param y number
---@param z number
---@return z
function Map:GetHeight(x, y, z) end

---Returns the ID of the Map.
---@param mapId number
---@return mapId
function Map:GetMapId(mapId) end

return Map
