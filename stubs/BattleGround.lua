---@meta

---@class BattleGround
BattleGround = {}

---Returns the amount of alive players in the BattleGround by the team ID.
---@param team Team
---@return number
function BattleGround:GetAlivePlayersCountByTeam(team) end

---Returns the bonus honor given by amount of kills in the specific BattleGround.
---@param kills number
---@return number
function BattleGround:GetBonusHonorFromKillCount(kills) end

---Returns the end time of the BattleGround.
---@return number
function BattleGround:GetEndTime() end

---Returns the amount of free slots for the selected team in the specific BattleGround.
---@param team Team
---@return number
function BattleGround:GetFreeSlotsForTeam(team) end

---Returns the instance ID of the BattleGround.
---@return number
function BattleGround:GetInstanceId() end

---Returns the Map of the BattleGround.
---@return Map
function BattleGround:GetMap() end

---Returns the map ID of the BattleGround.
---@return number
function BattleGround:GetMapId() end

---Returns the max allowed Player level of the specific BattleGround.
---@return number
function BattleGround:GetMaxLevel() end

---Returns the maximum allowed Player count of the specific BattleGround.
---@return number
function BattleGround:GetMaxPlayers() end

---Returns the maximum allowed Player count per team of the specific BattleGround.
---@return number
function BattleGround:GetMaxPlayersPerTeam() end

---Returns the minimum allowed Player level of the specific BattleGround.
---@return number
function BattleGround:GetMinLevel() end

---Returns the minimum allowed Player count of the specific BattleGround.
---@return number
function BattleGround:GetMinPlayers() end

---Returns the minimum allowed Player count per team of the specific BattleGround.
---@return number
function BattleGround:GetMinPlayersPerTeam() end

---Returns the name of the BattleGround.
---@return string
function BattleGround:GetName() end

---Returns the status of the specific BattleGround.
---@return BattleGroundStatus
function BattleGround:GetStatus() end

---Returns the type ID of the BattleGround.
---@return BattleGroundTypeId
function BattleGround:GetTypeId() end

---Returns the winning team of the specific BattleGround.
---@return Team
function BattleGround:GetWinner() end

