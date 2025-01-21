---@class BattleGround
local BattleGround = {}

---Returns the bonus honor given by amount of kills in the specific BattleGround.
---@param kills number
---@param bonusHonor number
---@return number
function BattleGround:GetBonusHonorFromKillCount(kills, bonusHonor) end

---Returns the amount of free slots for the selected team in the specific BattleGround.
---@param team Team
---@param freeSlots number
---@return number
function BattleGround:GetFreeSlotsForTeam(team, freeSlots) end

---Returns the maximum allowed Player count per team of the specific BattleGround.
---@param maxTeamPlayerCount number
---@return number
function BattleGround:GetMaxPlayersPerTeam(maxTeamPlayerCount) end

---Returns the amount of alive players in the BattleGround by the team ID.
---@param team Team
---@param count number
---@return number
function BattleGround:GetAlivePlayersCountByTeam(team, count) end

---Returns the maximum allowed Player count of the specific BattleGround.
---@param maxPlayerCount number
---@return number
function BattleGround:GetMaxPlayers(maxPlayerCount) end

---Returns the minimum allowed Player count of the specific BattleGround.
---@param minPlayerCount number
---@return number
function BattleGround:GetMinPlayers(minPlayerCount) end

---Returns the minimum allowed Player count per team of the specific BattleGround.
---@param minTeamPlayerCount number
---@return number
function BattleGround:GetMinPlayersPerTeam(minTeamPlayerCount) end

---Returns the status of the specific BattleGround.
---@param status BattleGroundStatus
---@return BattleGroundStatus
function BattleGround:GetStatus(status) end

---Returns the instance ID of the BattleGround.
---@param instanceId number
---@return number
function BattleGround:GetInstanceId(instanceId) end

---Returns the end time of the BattleGround.
---@param endTime number
---@return number
function BattleGround:GetEndTime(endTime) end

---Returns the max allowed Player level of the specific BattleGround.
---@param maxLevel number
---@return number
function BattleGround:GetMaxLevel(maxLevel) end

---Returns the minimum allowed Player level of the specific BattleGround.
---@param minLevel number
---@return number
function BattleGround:GetMinLevel(minLevel) end

---Returns the name of the BattleGround.
---@param name string
---@return string
function BattleGround:GetName(name) end

---Returns the type ID of the BattleGround.
---@param typeId BattleGroundTypeId
---@return BattleGroundTypeId
function BattleGround:GetTypeId(typeId) end

---Returns the winning team of the specific BattleGround.
---@param team Team
---@return Team
function BattleGround:GetWinner(team) end

---Returns the bracket ID of the specific BattleGround.
---@param bracketId BattleGroundBracketId
---@return BattleGroundBracketId
function BattleGround:GetBracketId(bracketId) end

---Returns the map ID of the BattleGround.
---@param mapId number
---@return number
function BattleGround:GetMapId(mapId) end

---Returns the Map of the BattleGround.
---@param map Map
---@return Map
function BattleGround:GetMap(map) end

return BattleGround
