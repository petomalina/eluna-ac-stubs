---@class Guild
local Guild = {}

---Removes the specified Player from the Guild.
---@param player Player
---@param isDisbanding boolean
function Guild:DeleteMember(player, isDisbanding) end

---Disbands the Guild
function Guild:Disband() end

---Returns the Guilds current Message Of The Day
---@param guildMOTD string
---@return guildMOTD
function Guild:GetMOTD(guildMOTD) end

---Returns the Guilds name
---@param guildName string
---@return guildName
function Guild:GetName(guildName) end

---Promotes/demotes the Player to the specified rank.
---@param player Player
---@param rankId number
function Guild:SetMemberRank(player, rankId) end

---Returns Guild leader GUID
---@param leaderGUID number
---@return leaderGUID
function Guild:GetLeaderGUID(leaderGUID) end

---Returns the member count of this Guild
---@param memberCount number
---@return memberCount
function Guild:GetMemberCount(memberCount) end

---Returns the Guilds entry ID
---@param entryId number
---@return entryId
function Guild:GetId(entryId) end

---Returns a table with the Players in this Guild
---@param guildPlayers table
---@return guildPlayers
function Guild:GetMembers(guildPlayers) end

---Sends a WorldPacket to all the Players at the specified rank in the Guild
---@param packet WorldPacket
---@param rankId number
function Guild:SendPacketToRanked(packet, rankId) end

---Sets the leader of this Guild
---@param leader Player
function Guild:SetLeader(leader) end

---Adds the specified Player to the Guild at the specified rank.
---@param player Player
---@param rankId number
function Guild:AddMember(player, rankId) end

---Returns the Guilds current info
---@param guildInfo string
---@return guildInfo
function Guild:GetInfo(guildInfo) end

---Finds and returns the Guild leader by their GUID if logged in
---@param leader Player
---@return leader
function Guild:GetLeader(leader) end

---Sends a WorldPacket to all the Players in the Guild
---@param packet WorldPacket
function Guild:SendPacket(packet) end

---Sets the information of the bank tab specified
---@param tabId number
---@param info string
function Guild:SetBankTabText(tabId, info) end

return Guild
