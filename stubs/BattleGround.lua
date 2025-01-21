---@class BattleGround
local BattleGround = {}

---Returns the bonus honor given by amount of kills in the specific BattleGround.
---@param kills number
---@param bonusHonor number
---@return bonusHonor
function BattleGround:GetBonusHonorFromKillCount(kills, bonusHonor) end

---Returns the minimum allowed Player count of the specific BattleGround.
---@param minPlayerCount number
---@return minPlayerCount
function BattleGround:GetMinPlayers(minPlayerCount) end

---Returns the maximum allowed Player count per team of the specific BattleGround.
---@param maxTeamPlayerCount number
---@return maxTeamPlayerCount
function BattleGround:GetMaxPlayersPerTeam(maxTeamPlayerCount) end

---Returns the minimum allowed Player count per team of the specific BattleGround.
---@param minTeamPlayerCount number
---@return minTeamPlayerCount
function BattleGround:GetMinPlayersPerTeam(minTeamPlayerCount) end

---Returns the status of the specific BattleGround.
---@param status BattleGroundStatus
---@return status
function BattleGround:GetStatus(status) end

---Returns the winning team of the specific BattleGround.
---@param team Team
---@return team
function BattleGround:GetWinner(team) end

---Returns the bracket ID of the specific BattleGround.
---@param bracketId BattleGroundBracketId
---@return bracketId
function BattleGround:GetBracketId(bracketId) end

---Returns the amount of free slots for the selected team in the specific BattleGround.
---@param team Team
---@param freeSlots number
---@return freeSlots
function BattleGround:GetFreeSlotsForTeam(team, freeSlots) end

---Returns the map ID of the BattleGround.
---@param mapId number
---@return mapId
function BattleGround:GetMapId(mapId) end

---Returns the maximum allowed Player count of the specific BattleGround.
---@param maxPlayerCount number
---@return maxPlayerCount
function BattleGround:GetMaxPlayers(maxPlayerCount) end

---Returns the name of the BattleGround.
---@param name string
---@return name
function BattleGround:GetName(name) end

---Returns the amount of alive players in the BattleGround by the team ID.
---@param team Team
---@param count number
---@return count
function BattleGround:GetAlivePlayersCountByTeam(team, count) end

---Returns the instance ID of the BattleGround.
---@param instanceId number
---@return instanceId
function BattleGround:GetInstanceId(instanceId) end

---Returns the max allowed Player level of the specific BattleGround.
---@param maxLevel number
---@return maxLevel
function BattleGround:GetMaxLevel(maxLevel) end

---Returns the minimum allowed Player level of the specific BattleGround.
---@param minLevel number
---@return minLevel
function BattleGround:GetMinLevel(minLevel) end

---Returns the type ID of the BattleGround.
---@param typeId BattleGroundTypeId
---@return typeId
function BattleGround:GetTypeId(typeId) end

---Returns the end time of the BattleGround.
---@param endTime number
---@return endTime
function BattleGround:GetEndTime(endTime) end

---Returns the Map of the BattleGround.
---@param map Map
---@return map
function BattleGround:GetMap(map) end

return BattleGround
