---@meta

---@class Object
Object = {}

---Returns the data at the specified index and offset, casted to an unsigned 8-bit integer.
---@param index number
---@param offset number
---@return number
function Object:GetByteValue(index, offset) end

---Returns the entry of the Object.
---@return number
function Object:GetEntry() end

---Returns the data at the specified index, casted to a single-precision floating point value.
---@param index number
---@return number
function Object:GetFloatValue(index) end

---Returns the GUID of the Object.
---@return number
function Object:GetGUID() end

---Returns the low-part of the Object's GUID.
---@return number
function Object:GetGUIDLow() end

---Returns the data at the specified index, casted to a signed 32-bit integer.
---@param index number
---@return number
function Object:GetInt32Value(index) end

---Returns the scale/size of the Object.
---@return number
function Object:GetScale() end

---Returns the TypeId of the Object.
---@return number
function Object:GetTypeId() end

---Returns the data at the specified index and offset, casted to a signed 16-bit integer.
---@param index number
---@param offset number
---@return number
function Object:GetUInt16Value(index, offset) end

---Returns the data at the specified index, casted to a unsigned 32-bit integer.
---@param index number
---@return number
function Object:GetUInt32Value(index) end

---Returns the data at the specified index, casted to an unsigned 64-bit integer.
---@param index number
---@return number
function Object:GetUInt64Value(index) end

---Returns true if the specified flag is set, otherwise false.
---@param index number
---@param flag number
---@return boolean
function Object:HasFlag(index, flag) end

---Returns true if the Object has been added to its Map, otherwise false.
---@return boolean
function Object:IsInWorld() end

---Returns 'true' if the Object is a player, 'false' otherwise.
---@return boolean
function Object:IsPlayer() end

---Removes a flag from the value at the specified index.
---@param index number
---@param flag number
function Object:RemoveFlag(index, flag) end

---Sets the data at the specified index and offset to the given value, converted to an unsigned 8-bit integer.
---@param index number
---@param offset number
---@param value number
function Object:SetByteValue(index, offset, value) end

---Sets the specified flag in the data value at the specified index.
---@param index number
---@param value number
function Object:SetFlag(index, value) end

---Sets the data at the specified index to the given value, converted to a single-precision floating point value.
---@param index number
---@param value number
function Object:SetFloatValue(index, value) end

---Sets the data at the specified index to the given value, converted to a signed 16-bit integer.
function Object:SetInt16Value() end

---Sets the data at the specified index to the given value, converted to a signed 32-bit integer.
---@param index number
---@param value number
function Object:SetInt32Value(index, value) end

---Sets the Object's scale/size to the given value.
---@param scale number
function Object:SetScale(scale) end

---Sets the data at the specified index to the given value, converted to an unsigned 16-bit integer.
---@param index number
---@param offset number
---@param value number
function Object:SetUInt16Value(index, offset, value) end

---Sets the data at the specified index to the given value, converted to an unsigned 32-bit integer.
---@param index number
---@param value number
function Object:SetUInt32Value(index, value) end

---Sets the data at the specified index to the given value, converted to an unsigned 64-bit integer.
---@param index number
---@param value number
function Object:SetUInt64Value(index, value) end

---Attempts to convert the Object to a Corpse.
---@return Corpse
function Object:ToCorpse() end

---Attempts to convert the Object to a Creature.
---@return Creature
function Object:ToCreature() end

---Attempts to convert the Object to a GameObject.
---@return GameObject
function Object:ToGameObject() end

---Attempts to convert the Object to a Player.
---@return Player
function Object:ToPlayer() end

---Attempts to convert the Object to a Unit.
---@return Unit
function Object:ToUnit() end

---Sets the data at the specified index to the given value, converted to an unsigned 32-bit integer.
---@param index number
---@param value number
function Object:UpdateUInt32Value(index, value) end

