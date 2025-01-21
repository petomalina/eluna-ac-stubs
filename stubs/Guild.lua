---@class Guild
local Guild = {}

---Adds the specified Player to the Guild at the specified rank.
---@param player Player
---@param rankId number
function Guild:AddMember(player, rankId) end

---Returns the Guilds entry ID
---@param entryId number
---@return number
function Guild:GetId(entryId) end

---Returns the Guilds current Message Of The Day
---@param guildMOTD string
---@return string
function Guild:GetMOTD(guildMOTD) end

---Returns a table with the Players in this Guild
---@param guildPlayers table
---@return table
function Guild:GetMembers(guildPlayers) end

---Returns the Guilds name
---@param guildName string
---@return string
function Guild:GetName(guildName) end

---Sends a WorldPacket to all the Players at the specified rank in the Guild
---@param packet WorldPacket
---@param rankId number
function Guild:SendPacketToRanked(packet, rankId) end

---Returns the Guilds current info
---@param guildInfo string
---@return string
function Guild:GetInfo(guildInfo) end

---Finds and returns the Guild leader by their GUID if logged in
---@param leader Player
---@return Player
function Guild:GetLeader(leader) end

---Returns the member count of this Guild
---@param memberCount number
---@return number
function Guild:GetMemberCount(memberCount) end

---Sets the information of the bank tab specified
---@param tabId number
---@param info string
function Guild:SetBankTabText(tabId, info) end

---Sets the leader of this Guild
---@param leader Player
function Guild:SetLeader(leader) end

---Promotes/demotes the Player to the specified rank.
---@param player Player
---@param rankId number
function Guild:SetMemberRank(player, rankId) end

---Removes the specified Player from the Guild.
---@param player Player
---@param isDisbanding boolean
function Guild:DeleteMember(player, isDisbanding) end

---Disbands the Guild
function Guild:Disband() end

---Returns Guild leader GUID
---@param leaderGUID number
---@return number
function Guild:GetLeaderGUID(leaderGUID) end

---Sends a WorldPacket to all the Players in the Guild
---@param packet WorldPacket
function Guild:SendPacket(packet) end

return Guild
