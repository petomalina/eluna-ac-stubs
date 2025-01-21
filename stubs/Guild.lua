---@meta

---@class Guild
Guild = {}

---Adds the specified Player to the Guild at the specified rank.
---@param player Player
---@param rankId number
function Guild:AddMember(player, rankId) end

---Removes the specified Player from the Guild.
---@param player Player
---@param isDisbanding boolean
function Guild:DeleteMember(player, isDisbanding) end

---Disbands the Guild
function Guild:Disband() end

---Returns the Guilds entry ID
---@return number
function Guild:GetId() end

---Returns the Guilds current info
---@return string
function Guild:GetInfo() end

---Finds and returns the Guild leader by their GUID if logged in
---@return Player
function Guild:GetLeader() end

---Returns Guild leader GUID
---@return number
function Guild:GetLeaderGUID() end

---Returns the Guilds current Message Of The Day
---@return string
function Guild:GetMOTD() end

---Returns the member count of this Guild
---@return number
function Guild:GetMemberCount() end

---Returns a table with the Players in this Guild
---@return table
function Guild:GetMembers() end

---Returns the Guilds name
---@return string
function Guild:GetName() end

---Sends a WorldPacket to all the Players in the Guild
---@param packet WorldPacket
function Guild:SendPacket(packet) end

---Sends a WorldPacket to all the Players at the specified rank in the Guild
---@param packet WorldPacket
---@param rankId number
function Guild:SendPacketToRanked(packet, rankId) end

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

