---@meta

---@class Loot
Loot = {}

---Adds an item to the Loot with the specified parameters.
---@param itemId number
---@param minCount number
---@param maxCount number
---@param chance number
---@param lootMode number
---@param needsQuest? boolean
---@param allowStacking? boolean
function Loot:AddItem(itemId, minCount, maxCount, chance, lootMode, needsQuest, allowStacking) end

---Adds a Player to the list of players currently looting this Loot.
---@param player Player
function Loot:AddLooter(player) end

---Clears all items and money from this Loot.
function Loot:Clear() end

---Generates a random amount of money for this Loot within the specified range.
---@param minGold number
---@param maxGold number
function Loot:GenerateMoney(minGold, maxGold) end

---Returns the container GUID that holds this loot.
---@return number
function Loot:GetContainer() end

---Returns the total number of items (regular + quest items) in this Loot.
---@return number
function Loot:GetItemCount() end

---Returns a table containing all items in this Loot.
---@return table
function Loot:GetItems() end

---Returns the Player GUID that owns this loot.
---@return number
function Loot:GetLootOwner() end

---Returns the Loot type.
---@return LootType
function Loot:GetLootType() end

---Returns the maximum loot slot index available for the specified Player.
---@param player Player
---@return number
function Loot:GetMaxSlotForPlayer(player) end

---Returns the amount of money in this Loot.
---@return number
function Loot:GetMoney() end

---Returns a table containing all quest items in this Loot.
---@return table
function Loot:GetQuestItems() end

---Returns the Player GUID that owns this loot for round robin distribution.
---@return number
function Loot:GetRoundRobinPlayer() end

---Returns the source WorldObject GUID for this loot.
---@return number
function Loot:GetSourceWorldObject() end

---Returns the number of unlooted items in this Loot.
---@return number
function Loot:GetUnlootedCount() end

---Returns true if the Loot contains the specified item, and returns false otherwise.
---@param itemId? number
---@param count? number
---@return boolean
function Loot:HasItem(itemId, count) end

---Returns true if the Loot has items available for all players and returns false otherwise.
---@return boolean
function Loot:HasItemForAll() end

---Returns true if the Loot has items that are over the group loot threshold and returns false otherwise.
---@return boolean
function Loot:HasOverThresholdItem() end

---Returns true if the Loot contains quest items and returns false otherwise.
---@return boolean
function Loot:HasQuestItems() end

---Returns true if the Loot is completely empty (no items and no money), returns false otherwise.
---@return boolean
function Loot:IsEmpty() end

---Returns true if all loot has been taken from this Loot, returns false otherwise.
---@return boolean
function Loot:IsLooted() end

---Removes the specified item from the Loot.
---@param itemId number
---@param isCountSpecified? boolean
---@param count? number
function Loot:RemoveItem(itemId, isCountSpecified, count) end

---Removes a Player from the list of players currently looting this Loot.
---@param player Player
function Loot:RemoveLooter(player) end

---Sets the container GUID that holds this loot.
---@param containerGUID number
function Loot:SetContainer(containerGUID) end

---Sets the looted status of a specific item in this Loot.
---@param itemId number
---@param count number
---@param looted? boolean
function Loot:SetItemLooted(itemId, count, looted) end

---Sets the Player GUID that owns this loot.
---@param playerGUID number
function Loot:SetLootOwner(playerGUID) end

---Sets the Loot type.
---@param lootType LootType
function Loot:SetLootType(lootType) end

---Sets the amount of money in this Loot.
---@param money number
function Loot:SetMoney(money) end

---Sets the Player GUID for round robin loot distribution.
---@param playerGUID number
function Loot:SetRoundRobinPlayer(playerGUID) end

---Sets the source WorldObject GUID for this loot.
---@param sourceGUID number
function Loot:SetSourceWorldObject(sourceGUID) end

---Sets the number of unlooted items in this Loot.
---@param count number
function Loot:SetUnlootedCount(count) end

---Updates the index of all items in this Loot to match their position in the list.
function Loot:UpdateItemIndex() end

