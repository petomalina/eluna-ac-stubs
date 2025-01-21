---@class ItemTemplate
local ItemTemplate = {}

---Returns the ItemTemplate's class.
---@param class number
---@return number
function ItemTemplate:GetClass(class) end

---Returns the ItemTemplate's sell price.
---@param sellPrice number
---@return number
function ItemTemplate:GetSellPrice(sellPrice) end

---Returns the Player races allowed to use this ItemTemplate.
---@param allowableRace number
---@return number
function ItemTemplate:GetAllowableRace(allowableRace) end

---Returns the ItemTemplate's default purchase count.
---@param buyCount number
---@return number
function ItemTemplate:GetBuyCount(buyCount) end

---Returns the ItemTemplate's name.
---@param name string
---@return string
function ItemTemplate:GetName(name) end

---Returns the ItemTemplate's item level.
---@param itemLevel number
---@return number
function ItemTemplate:GetItemLevel(itemLevel) end

---Returns the minimum level required to use this ItemTemplate.
---@param requiredLevel number
---@return number
function ItemTemplate:GetRequiredLevel(requiredLevel) end

---Returns the Player classes allowed to use this ItemTemplate.
---@param allowableClass number
---@return number
function ItemTemplate:GetAllowableClass(allowableClass) end

---Returns the ItemTemplate's purchase price.
---@param buyPrice number
---@return number
function ItemTemplate:GetBuyPrice(buyPrice) end

---Returns the ItemTemplate's flags.
---@param flags number
---@return number
function ItemTemplate:GetFlags(flags) end

---Returns the ItemTemplate's ID.
---@param itemId number
---@return number
function ItemTemplate:GetItemId(itemId) end

---Returns the ItemTemplate's quality.
---@param quality number
---@return number
function ItemTemplate:GetQuality(quality) end

---Returns the ItemTemplate's subclass.
---@param subClass number
---@return number
function ItemTemplate:GetSubClass(subClass) end

---Returns the ItemTemplate's display ID.
---@param displayId number
---@return number
function ItemTemplate:GetDisplayId(displayId) end

---Returns the ItemTemplate's extra flags.
---@param flags number
---@return number
function ItemTemplate:GetExtraFlags(flags) end

---Returns the ItemTemplate's inventory type.
---@param inventoryType number
---@return number
function ItemTemplate:GetInventoryType(inventoryType) end

return ItemTemplate
