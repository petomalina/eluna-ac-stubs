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

---Return the created date.
---@return number
function Guild:GetCreatedDate() end

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

---Return the total bank money.
---@return number
function Guild:GetTotalBankMoney() end

---Invites Guild members to events based on level and rank filters.
---@param player Player
---@param minLevel number
---@param maxLevel number
---@param minRank number
function Guild:MassInviteToEvent(player, minLevel, maxLevel, minRank) end

---Modify the Guild bank money. You can deposit or withdraw.
---@param amount number
---@param add boolean
---@return boolean
function Guild:ModifyBankMoney(amount, add) end

---Resets the number of item withdraw in all tab's for all Guild members.
function Guild:ResetTimes() end

---Send message to Guild from specific Player.
---@param player Player
---@param officerOnly boolean
---@param msg string
---@param lang number
function Guild:SendMessage(player, officerOnly, msg, lang) end

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

---Sets the new name of the specified Guild.
---@param name string
function Guild:SetName(name) end

---Swap item from a specific tab and slot Guild bank to another one.
---@param player Player
---@param tabId number
---@param slotId number
---@param destTabId number
---@param destSlotId number
---@param splitedAmount number
function Guild:SwapItems(player, tabId, slotId, destTabId, destSlotId, splitedAmount) end

---Swap an item from a specific tab and location in the [guild] bank to the bags and locations in the inventory of a specific [player] and vice versa.
---@param player Player
---@param toChar boolean
---@param tabId number
---@param slotId number
---@param playerBag number
---@param playerSlotId number
---@param splitedAmount number
function Guild:SwapItemsWithInventory(player, toChar, tabId, slotId, playerBag, playerSlotId, splitedAmount) end

---Update Player data in Guild member list.
function Guild:UpdateMemberData() end

