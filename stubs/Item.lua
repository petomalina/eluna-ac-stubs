---@class Item : Object
local Item = {}

---Returns the Items max stack count
---@param maxCount number
---@return number
function Item:GetMaxStackCount(maxCount) end

---Returns 'true' if the Item is a currency token, 'false' otherwise
---@param isCurrencyToken boolean
---@return boolean
function Item:IsCurrencyToken(isCurrencyToken) end

---Returns the Items level
---@param itemLevel number
---@return number
function Item:GetItemLevel(itemLevel) end

---Returns 'true' if the Item is currently equipped, 'false' otherwise
---@param isEquipped boolean
---@return boolean
function Item:IsEquipped(isEquipped) end

---Returns 'true' if the Item is currently in a bag, 'false' otherwise
---@param isInBag boolean
---@return boolean
function Item:IsInBag(isInBag) end

---Sets the Player specified as the owner of the Item
---@param player Player
function Item:SetOwner(player) end

---Removes an enchant from the Item by the specified slot
---@param enchantSlot number
---@param enchantmentRemoved boolean
---@return boolean
function Item:ClearEnchantment(enchantSlot, enchantmentRemoved) end

---Returns the display ID of the Item
---@param displayId number
---@return number
function Item:GetDisplayId(displayId) end

---Returns subclass of the Item
---@param subClass number
---@return number
function Item:GetSubClass(subClass) end

---Returns the spell trigger tied to the Item by spell index
---@param spellIndex number
---@param spellTrigger number
---@return number
function Item:GetSpellTrigger(spellIndex, spellTrigger) end

---Returns 'true' if the Item is broken, 'false' otherwise
---@param isBroken boolean
---@return boolean
function Item:IsBroken(isBroken) end

---Returns 'true' if the Item is a conjured consumable, 'false' otherwise
---@param isConjuredConsumable boolean
---@return boolean
function Item:IsConjuredConsumable(isConjuredConsumable) end

---Returns the name of the Item
---@param name string
---@return string
function Item:GetName(name) end

---Returns 'true' if the Item is a bag, 'false' otherwise
---@param isBag boolean
---@return boolean
function Item:IsBag(isBag) end

---Saves the Item to the database
function Item:SaveToDB() end

---Sets the binding of the Item to 'true' or 'false'
---@param setBinding boolean
function Item:SetBinding(setBinding) end

---Returns the default purchase count of the Item
---@param count number
---@return number
function Item:GetBuyCount(count) end

---Returns the Items enchantment ID by enchant slot specified
---@param enchantSlot EnchantmentSlot
---@param enchantId number
---@return number
function Item:GetEnchantmentId(enchantSlot, enchantId) end

---Returns the random property ID of this Item
---@param randomPropertyId number
---@return number
function Item:GetRandomProperty(randomPropertyId) end

---Returns 'true' if the Item is account bound, 'false' otherwise
---@param isAccountBound boolean
---@return boolean
function Item:IsBoundAccountWide(isAccountBound) end

---Returns 'true' if the Item is currently in a trade window, 'false' otherwise
---@param isInTrade boolean
---@return boolean
function Item:IsInTrade(isInTrade) end

---Returns 'true' if the Item is locked, 'false' otherwise
---@param isLocked boolean
---@return boolean
function Item:IsLocked(isLocked) end

---Returns the Player classes allowed to use this Item
---@param allowableClass number
---@return number
function Item:GetAllowableClass(allowableClass) end

---Returns class of the Item
---@param class number
---@return number
function Item:GetClass(class) end

---Returns the quality of the Item
---@param quality number
---@return number
function Item:GetQuality(quality) end

---Returns 'true' if the Item is an armor vellum, 'false' otherwise
---@param isArmorVellum boolean
---@return boolean
function Item:IsArmorVellum(isArmorVellum) end

---Returns 'true' if the Item is not bound to the Player specified, 'false' otherwise
---@param player Player
---@param isNotBound boolean
---@return boolean
function Item:IsNotBoundToPlayer(player, isNotBound) end

function Item:GetOwnerGUID() end

---Returns the spell ID tied to the Item by spell index
---@param spellIndex number
---@param spellId number
---@return number
function Item:GetSpellId(spellIndex, spellId) end

---Returns 'true' if the Item is bound to a Player by an enchant, 'false' otehrwise
---@param isBoundByEnchant boolean
---@return boolean
function Item:IsBoundByEnchant(isBoundByEnchant) end

---Returns 'true' if the Item is soulbound, 'false' otherwise
---@param isSoulBound boolean
---@return boolean
function Item:IsSoulBound(isSoulBound) end

---Sets the specified enchantment of the Item to the specified slot
---@param enchantId number
---@param enchantSlot number
---@param enchantmentSuccess boolean
---@return boolean
function Item:SetEnchantment(enchantId, enchantSlot, enchantmentSuccess) end

---Returns the inventory type of the Item
---@param inventoryType number
---@return number
function Item:GetInventoryType(inventoryType) end

---Returns the chat link of the Item
---@param locale LocaleConstant
---@param itemLink string
---@return string
function Item:GetItemLink(locale, itemLink) end

---Returns the Items stack count
---@param count number
---@return number
function Item:GetCount(count) end

---Returns 'true' if the Item is a not an empty bag, 'false' otherwise
---@param isNotEmptyBag boolean
---@return boolean
function Item:IsNotEmptyBag(isNotEmptyBag) end

function Item:GetStatsCount() end

---Returns the purchase price of the Item
---@param price number
---@return number
function Item:GetBuyPrice(price) end

---Returns the ItemTemplate for this Item.
---@param itemTemplate ItemTemplate
---@return ItemTemplate
function Item:GetItemTemplate(itemTemplate) end

---Returns the minimum level required to use this Item
---@param requiredLevel number
---@return number
function Item:GetRequiredLevel(requiredLevel) end

function Item:GetRandomSuffix() end

---Returns the sell price of the Item
---@param price number
---@return number
function Item:GetSellPrice(price) end

---Returns 'true' if the Item has the Quest specified tied to it, 'false' otherwise
---@param questId number
---@param hasQuest boolean
---@return boolean
function Item:HasQuest(questId, hasQuest) end

---Sets the stack count of the Item
---@param count number
function Item:SetCount(count) end

---Returns the item set ID of this Item
---@param itemSetId number
---@return number
function Item:GetItemSet(itemSetId) end

---Returns the Player who currently owns the Item
---@param player Player
---@return Player
function Item:GetOwner(player) end

---Returns the Items current bag slot
---@param bagSlot number
---@return number
function Item:GetBagSlot(bagSlot) end

---Returns the Items current slot
---@param slot number
---@return number
function Item:GetSlot(slot) end

---Returns 'true' if the Item is a potion, 'false' otherwise
---@param isPotion boolean
---@return boolean
function Item:IsPotion(isPotion) end

---Returns 'true' if the Item is a weapon vellum, 'false' otherwise
---@param isWeaponVellum boolean
---@return boolean
function Item:IsWeaponVellum(isWeaponVellum) end

---Returns 'true' if the Item can be traded, 'false' otherwise
---@param isTradeable boolean
---@return boolean
function Item:CanBeTraded(isTradeable) end

---Returns the Player races allowed to use this Item
---@param allowableRace number
---@return number
function Item:GetAllowableRace(allowableRace) end

---Returns the bag size of this Item, 0 if Item is not a bag
---@param bagSize number
---@return number
function Item:GetBagSize(bagSize) end

return Item
