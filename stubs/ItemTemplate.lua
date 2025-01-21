---@class ItemTemplate
local ItemTemplate = {}

---Returns the ItemTemplate's class.
---@param class number
---@return class
function ItemTemplate:GetClass(class) end

---Returns the minimum level required to use this ItemTemplate.
---@param requiredLevel number
---@return requiredLevel
function ItemTemplate:GetRequiredLevel(requiredLevel) end

---Returns the ItemTemplate's default purchase count.
---@param buyCount number
---@return buyCount
function ItemTemplate:GetBuyCount(buyCount) end

---Returns the ItemTemplate's purchase price.
---@param buyPrice number
---@return buyPrice
function ItemTemplate:GetBuyPrice(buyPrice) end

---Returns the ItemTemplate's extra flags.
---@param flags number
---@return flags
function ItemTemplate:GetExtraFlags(flags) end

---Returns the ItemTemplate's flags.
---@param flags number
---@return flags
function ItemTemplate:GetFlags(flags) end

---Returns the ItemTemplate's item level.
---@param itemLevel number
---@return itemLevel
function ItemTemplate:GetItemLevel(itemLevel) end

---Returns the Player classes allowed to use this ItemTemplate.
---@param allowableClass number
---@return allowableClass
function ItemTemplate:GetAllowableClass(allowableClass) end

---Returns the ItemTemplate's display ID.
---@param displayId number
---@return displayId
function ItemTemplate:GetDisplayId(displayId) end

---Returns the ItemTemplate's inventory type.
---@param inventoryType number
---@return inventoryType
function ItemTemplate:GetInventoryType(inventoryType) end

---Returns the ItemTemplate's name.
---@param name string
---@return name
function ItemTemplate:GetName(name) end

---Returns the ItemTemplate's sell price.
---@param sellPrice number
---@return sellPrice
function ItemTemplate:GetSellPrice(sellPrice) end

---Returns the ItemTemplate's subclass.
---@param subClass number
---@return subClass
function ItemTemplate:GetSubClass(subClass) end

---Returns the Player races allowed to use this ItemTemplate.
---@param allowableRace number
---@return allowableRace
function ItemTemplate:GetAllowableRace(allowableRace) end

---Returns the ItemTemplate's quality.
---@param quality number
---@return quality
function ItemTemplate:GetQuality(quality) end

---Returns the ItemTemplate's ID.
---@param itemId number
---@return itemId
function ItemTemplate:GetItemId(itemId) end

return ItemTemplate
