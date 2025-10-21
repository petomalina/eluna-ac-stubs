---@meta

---@class Item : Object
Item = {}

---Returns 'true' if the Item can be traded, 'false' otherwise
---@return boolean
function Item:CanBeTraded() end

---Removes an enchant from the Item by the specified slot
---@param enchantSlot number
---@return boolean
function Item:ClearEnchantment(enchantSlot) end

---Returns the Player classes allowed to use this Item
---@return number
function Item:GetAllowableClass() end

---Returns the Player races allowed to use this Item
---@return number
function Item:GetAllowableRace() end

---Returns the bag size of this Item, 0 if Item is not a bag
---@return number
function Item:GetBagSize() end

---Returns the Items current bag slot
---@return number
function Item:GetBagSlot() end

---Returns the default purchase count of the Item
---@return number
function Item:GetBuyCount() end

---Returns the purchase price of the Item
---@return number
function Item:GetBuyPrice() end

---Returns class of the Item
---@return number
function Item:GetClass() end

---Returns the Items stack count
---@return number
function Item:GetCount() end

---Returns the display ID of the Item
---@return number
function Item:GetDisplayId() end

---Returns the Items enchantment ID by enchant slot specified
---@param enchantSlot EnchantmentSlot
---@return number
function Item:GetEnchantmentId(enchantSlot) end

---Returns the inventory type of the Item
---@return number
function Item:GetInventoryType() end

---Returns the Items level
---@return number
function Item:GetItemLevel() end

---Returns the chat link of the Item
function Item:GetItemLink() end

---Returns the item set ID of this Item
---@return number
function Item:GetItemSet() end

---Returns the ItemTemplate for this Item.
---@return ItemTemplate
function Item:GetItemTemplate() end

---Returns the Items max stack count
---@return number
function Item:GetMaxStackCount() end

---Returns the name of the Item
---@return string
function Item:GetName() end

---Returns the Player who currently owns the Item
---@return Player
function Item:GetOwner() end

---Returns the GUID of the Player who owns the specified Item.
---@param item Item
---@return number
function Item:GetOwnerGUID(item) end

---Returns the quality of the Item
---@return number
function Item:GetQuality() end

---Returns the random property ID of this Item
---@return number
function Item:GetRandomProperty() end

---Returns the random suffix ID of the specified Item.  This corresponds to the RandomSuffix field from the item's ItemTemplate, which controls the applied suffix (e.g., "of the Bear", "of the Eagle").
---@param item Item
---@return number
function Item:GetRandomSuffix(item) end

---Returns the minimum level required to use this Item
---@return number
function Item:GetRequiredLevel() end

---Returns the sell price of the Item
---@return number
function Item:GetSellPrice() end

---Returns the Items current slot
---@return number
function Item:GetSlot() end

---Returns the spell ID tied to the Item by spell index
---@param spellIndex number
---@return number
function Item:GetSpellId(spellIndex) end

---Returns the spell trigger tied to the Item by spell index
---@param spellIndex number
---@return number
function Item:GetSpellTrigger(spellIndex) end

---Returns the number of stat entries defined on the Item's ItemTemplate.  This reflects how many stat slots (e.g., Strength, Stamina, etc.) are defined for the item.
---@param item Item
---@return number
function Item:GetStatsCount(item) end

---Returns subclass of the Item
---@return number
function Item:GetSubClass() end

---Returns 'true' if the Item has the Quest specified tied to it, 'false' otherwise
---@param questId number
---@return boolean
function Item:HasQuest(questId) end

---Returns 'true' if the Item is an armor vellum, 'false' otherwise
---@return boolean
function Item:IsArmorVellum() end

---Returns 'true' if the Item is a bag, 'false' otherwise
---@return boolean
function Item:IsBag() end

---Returns 'true' if the Item is account bound, 'false' otherwise
---@return boolean
function Item:IsBoundAccountWide() end

---Returns 'true' if the Item is bound to a Player by an enchant, 'false' otehrwise
---@return boolean
function Item:IsBoundByEnchant() end

---Returns 'true' if the Item is broken, 'false' otherwise
---@return boolean
function Item:IsBroken() end

---Returns 'true' if the Item is a conjured consumable, 'false' otherwise
---@return boolean
function Item:IsConjuredConsumable() end

---Returns 'true' if the Item is a currency token, 'false' otherwise
---@return boolean
function Item:IsCurrencyToken() end

---Returns 'true' if the Item is currently equipped, 'false' otherwise
---@return boolean
function Item:IsEquipped() end

---Returns 'true' if the Item is currently in a bag, 'false' otherwise
---@return boolean
function Item:IsInBag() end

---Returns 'true' if the Item is currently in a trade window, 'false' otherwise
---@return boolean
function Item:IsInTrade() end

---Returns 'true' if the Item is locked, 'false' otherwise
---@return boolean
function Item:IsLocked() end

---Returns 'true' if the Item is not bound to the Player specified, 'false' otherwise
---@param player Player
---@return boolean
function Item:IsNotBoundToPlayer(player) end

---Returns 'true' if the Item is a not an empty bag, 'false' otherwise
---@return boolean
function Item:IsNotEmptyBag() end

---Returns 'true' if the Item is a potion, 'false' otherwise
---@return boolean
function Item:IsPotion() end

---Returns 'true' if the Item is soulbound, 'false' otherwise
---@return boolean
function Item:IsSoulBound() end

---Returns 'true' if the Item is a weapon vellum, 'false' otherwise
---@return boolean
function Item:IsWeaponVellum() end

---Saves the Item to the database
function Item:SaveToDB() end

---Sets the binding of the Item to 'true' or 'false'
---@param setBinding boolean
function Item:SetBinding(setBinding) end

---Sets the stack count of the Item
---@param count number
function Item:SetCount(count) end

---Sets the specified enchantment of the Item to the specified slot
---@param enchantId number
---@param enchantSlot number
---@return boolean
function Item:SetEnchantment(enchantId, enchantSlot) end

---Sets the Player specified as the owner of the Item
---@param player Player
function Item:SetOwner(player) end

---Sets the random properties for the Item from a given random property ID.
---@param randomPropId number
function Item:SetRandomProperty(randomPropId) end

---Sets the random suffix for the Item from a given random suffix ID.
---@param randomSuffixId number
function Item:SetRandomSuffix(randomSuffixId) end

