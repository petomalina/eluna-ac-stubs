---@class Item : Object
local Item = {}

---Returns the Items enchantment ID by enchant slot specified
---@param enchantSlot EnchantmentSlot
---@param enchantId number
---@return enchantId
function Item:GetEnchantmentId(enchantSlot, enchantId) end

---Returns 'true' if the Item is currently in a bag, 'false' otherwise
---@param isInBag boolean
---@return isInBag
function Item:IsInBag(isInBag) end

---Returns the Player races allowed to use this Item
---@param allowableRace number
---@return allowableRace
function Item:GetAllowableRace(allowableRace) end

---Returns the Items max stack count
---@param maxCount number
---@return maxCount
function Item:GetMaxStackCount(maxCount) end

---Returns the name of the Item
---@param name string
---@return name
function Item:GetName(name) end

---Returns the quality of the Item
---@param quality number
---@return quality
function Item:GetQuality(quality) end

function Item:GetRandomSuffix() end

---Returns the sell price of the Item
---@param price number
---@return price
function Item:GetSellPrice(price) end

---Returns 'true' if the Item is bound to a Player by an enchant, 'false' otehrwise
---@param isBoundByEnchant boolean
---@return isBoundByEnchant
function Item:IsBoundByEnchant(isBoundByEnchant) end

---Returns the display ID of the Item
---@param displayId number
---@return displayId
function Item:GetDisplayId(displayId) end

---Returns the minimum level required to use this Item
---@param requiredLevel number
---@return requiredLevel
function Item:GetRequiredLevel(requiredLevel) end

---Returns the Items current slot
---@param slot number
---@return slot
function Item:GetSlot(slot) end

---Sets the stack count of the Item
---@param count number
function Item:SetCount(count) end

---Returns the chat link of the Item
---@param locale LocaleConstant
---@param itemLink string
---@return itemLink
function Item:GetItemLink(locale, itemLink) end

function Item:GetStatsCount() end

---Returns 'true' if the Item is currently equipped, 'false' otherwise
---@param isEquipped boolean
---@return isEquipped
function Item:IsEquipped(isEquipped) end

---Saves the Item to the database
function Item:SaveToDB() end

---Removes an enchant from the Item by the specified slot
---@param enchantSlot number
---@param enchantmentRemoved boolean
---@return enchantmentRemoved
function Item:ClearEnchantment(enchantSlot, enchantmentRemoved) end

---Returns the item set ID of this Item
---@param itemSetId number
---@return itemSetId
function Item:GetItemSet(itemSetId) end

---Returns 'true' if the Item is soulbound, 'false' otherwise
---@param isSoulBound boolean
---@return isSoulBound
function Item:IsSoulBound(isSoulBound) end

---Sets the Player specified as the owner of the Item
---@param player Player
function Item:SetOwner(player) end

---Returns the Items current bag slot
---@param bagSlot number
---@return bagSlot
function Item:GetBagSlot(bagSlot) end

---Returns 'true' if the Item is account bound, 'false' otherwise
---@param isAccountBound boolean
---@return isAccountBound
function Item:IsBoundAccountWide(isAccountBound) end

---Sets the specified enchantment of the Item to the specified slot
---@param enchantId number
---@param enchantSlot number
---@param enchantmentSuccess boolean
---@return enchantmentSuccess
function Item:SetEnchantment(enchantId, enchantSlot, enchantmentSuccess) end

---Returns the Items stack count
---@param count number
---@return count
function Item:GetCount(count) end

---Returns 'true' if the Item is broken, 'false' otherwise
---@param isBroken boolean
---@return isBroken
function Item:IsBroken(isBroken) end

---Returns 'true' if the Item is a potion, 'false' otherwise
---@param isPotion boolean
---@return isPotion
function Item:IsPotion(isPotion) end

---Returns 'true' if the Item can be traded, 'false' otherwise
---@param isTradeable boolean
---@return isTradeable
function Item:CanBeTraded(isTradeable) end

---Returns the Items level
---@param itemLevel number
---@return itemLevel
function Item:GetItemLevel(itemLevel) end

---Returns 'true' if the Item is an armor vellum, 'false' otherwise
---@param isArmorVellum boolean
---@return isArmorVellum
function Item:IsArmorVellum(isArmorVellum) end

---Returns 'true' if the Item is not bound to the Player specified, 'false' otherwise
---@param player Player
---@param isNotBound boolean
---@return isNotBound
function Item:IsNotBoundToPlayer(player, isNotBound) end

---Returns 'true' if the Item is a currency token, 'false' otherwise
---@param isCurrencyToken boolean
---@return isCurrencyToken
function Item:IsCurrencyToken(isCurrencyToken) end

---Returns 'true' if the Item is locked, 'false' otherwise
---@param isLocked boolean
---@return isLocked
function Item:IsLocked(isLocked) end

---Returns the Player classes allowed to use this Item
---@param allowableClass number
---@return allowableClass
function Item:GetAllowableClass(allowableClass) end

---Returns the ItemTemplate for this Item.
---@param itemTemplate ItemTemplate
---@return itemTemplate
function Item:GetItemTemplate(itemTemplate) end

---Returns the Player who currently owns the Item
---@param player Player
---@return player
function Item:GetOwner(player) end

---Returns 'true' if the Item has the Quest specified tied to it, 'false' otherwise
---@param questId number
---@param hasQuest boolean
---@return hasQuest
function Item:HasQuest(questId, hasQuest) end

---Returns 'true' if the Item is a weapon vellum, 'false' otherwise
---@param isWeaponVellum boolean
---@return isWeaponVellum
function Item:IsWeaponVellum(isWeaponVellum) end

---Returns the purchase price of the Item
---@param price number
---@return price
function Item:GetBuyPrice(price) end

---Returns 'true' if the Item is a bag, 'false' otherwise
---@param isBag boolean
---@return isBag
function Item:IsBag(isBag) end

---Returns the bag size of this Item, 0 if Item is not a bag
---@param bagSize number
---@return bagSize
function Item:GetBagSize(bagSize) end

---Returns the default purchase count of the Item
---@param count number
---@return count
function Item:GetBuyCount(count) end

function Item:GetOwnerGUID() end

---Returns the spell ID tied to the Item by spell index
---@param spellIndex number
---@param spellId number
---@return spellId
function Item:GetSpellId(spellIndex, spellId) end

---Returns the spell trigger tied to the Item by spell index
---@param spellIndex number
---@param spellTrigger number
---@return spellTrigger
function Item:GetSpellTrigger(spellIndex, spellTrigger) end

---Sets the binding of the Item to 'true' or 'false'
---@param setBinding boolean
function Item:SetBinding(setBinding) end

---Returns subclass of the Item
---@param subClass number
---@return subClass
function Item:GetSubClass(subClass) end

---Returns the random property ID of this Item
---@param randomPropertyId number
---@return randomPropertyId
function Item:GetRandomProperty(randomPropertyId) end

---Returns 'true' if the Item is currently in a trade window, 'false' otherwise
---@param isInTrade boolean
---@return isInTrade
function Item:IsInTrade(isInTrade) end

---Returns 'true' if the Item is a not an empty bag, 'false' otherwise
---@param isNotEmptyBag boolean
---@return isNotEmptyBag
function Item:IsNotEmptyBag(isNotEmptyBag) end

---Returns class of the Item
---@param class number
---@return class
function Item:GetClass(class) end

---Returns the inventory type of the Item
---@param inventoryType number
---@return inventoryType
function Item:GetInventoryType(inventoryType) end

---Returns 'true' if the Item is a conjured consumable, 'false' otherwise
---@param isConjuredConsumable boolean
---@return isConjuredConsumable
function Item:IsConjuredConsumable(isConjuredConsumable) end

return Item
