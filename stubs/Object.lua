---@class Object
local Object = {}

---Returns the data at the specified index, casted to a unsigned 32-bit integer.
---@param index number
---@param value number
---@return number
function Object:GetUInt32Value(index, value) end

---Sets the data at the specified index to the given value, converted to a single-precision floating point value.
---@param index number
---@param value number
function Object:SetFloatValue(index, value) end

---Returns the entry of the Object.
---@param entry number
---@return number
function Object:GetEntry(entry) end

---Returns the data at the specified index and offset, casted to a signed 16-bit integer.
---@param index number
---@param offset number
---@param value number
---@return number
function Object:GetUInt16Value(index, offset, value) end

---Sets the specified flag in the data value at the specified index.
---@param index number
---@param value number
function Object:SetFlag(index, value) end

---Sets the data at the specified index to the given value, converted to a signed 16-bit integer.
---@param index number
---@param offset number
---@param value number
function Object:SetInt16Value(index, offset, value) end

---Attempts to convert the Object to a Creature.
---@param creature Creature
---@return Creature
function Object:ToCreature(creature) end

---Returns the data at the specified index and offset, casted to an unsigned 8-bit integer.
---@param index number
---@param offset number
---@param value number
---@return number
function Object:GetByteValue(index, offset, value) end

---Returns true if the Object has been added to its Map, otherwise false.
---@param inWorld boolean
---@return boolean
function Object:IsInWorld(inWorld) end

---Sets the data at the specified index and offset to the given value, converted to an unsigned 8-bit integer.
---@param index number
---@param offset number
---@param value number
function Object:SetByteValue(index, offset, value) end

---Sets the Object's scale/size to the given value.
---@param scale number
function Object:SetScale(scale) end

---Returns the scale/size of the Object.
---@param scale number
---@return number
function Object:GetScale(scale) end

---Returns the TypeId of the Object.
---@param typeID number
---@return number
function Object:GetTypeId(typeID) end

---Removes a flag from the value at the specified index.
---@param index number
---@param flag number
function Object:RemoveFlag(index, flag) end

---Sets the data at the specified index to the given value, converted to an unsigned 16-bit integer.
---@param index number
---@param offset number
---@param value number
function Object:SetUInt16Value(index, offset, value) end

---Attempts to convert the Object to a Player.
---@param player Player
---@return Player
function Object:ToPlayer(player) end

---Returns the data at the specified index, casted to a single-precision floating point value.
---@param index number
---@param value number
---@return number
function Object:GetFloatValue(index, value) end

---Returns the data at the specified index, casted to a signed 32-bit integer.
---@param index number
---@param value number
---@return number
function Object:GetInt32Value(index, value) end

---Sets the data at the specified index to the given value, converted to an unsigned 64-bit integer.
---@param index number
---@param value number
function Object:SetUInt64Value(index, value) end

---Returns true if the specified flag is set, otherwise false.
---@param index number
---@param flag number
---@param hasFlag boolean
---@return boolean
function Object:HasFlag(index, flag, hasFlag) end

---Returns 'true' if the Object is a player, 'false' otherwise.
---@param IsPlayer boolean
---@return boolean
function Object:IsPlayer(IsPlayer) end

---Attempts to convert the Object to a Corpse.
---@param corpse Corpse
---@return Corpse
function Object:ToCorpse(corpse) end

---Returns the low-part of the Object's GUID.
---@param guidLow number
---@return number
function Object:GetGUIDLow(guidLow) end

---Sets the data at the specified index to the given value, converted to a signed 32-bit integer.
---@param index number
---@param value number
function Object:SetInt32Value(index, value) end

---Returns the data at the specified index, casted to an unsigned 64-bit integer.
---@param index number
---@param value number
---@return number
function Object:GetUInt64Value(index, value) end

---Sets the data at the specified index to the given value, converted to an unsigned 32-bit integer.
---@param index number
---@param value number
function Object:UpdateUInt32Value(index, value) end

---Attempts to convert the Object to a GameObject.
---@param gameObject GameObject
---@return GameObject
function Object:ToGameObject(gameObject) end

---Attempts to convert the Object to a Unit.
---@param unit Unit
---@return Unit
function Object:ToUnit(unit) end

---Returns the GUID of the Object.
---@param guid number
---@return number
function Object:GetGUID(guid) end

---Sets the data at the specified index to the given value, converted to an unsigned 32-bit integer.
---@param index number
---@param value number
function Object:SetUInt32Value(index, value) end

return Object
