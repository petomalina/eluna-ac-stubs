---@class WorldPacket
local WorldPacket = {}

---Sets the opcode of the WorldPacket to the specified opcode.
---@param opcode Opcodes
function WorldPacket:SetOpcode(opcode) end

---Writes a 32-bit floating-point value to the WorldPacket.
---@param value number
function WorldPacket:WriteFloat(value) end

---Writes a string to the WorldPacket.
---@param value string
function WorldPacket:WriteString(value) end

---Writes an unsigned 32-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteULong(value) end

---Returns the size of the WorldPacket.
---@param size number
---@return number
function WorldPacket:GetSize(size) end

---Reads and returns a signed 8-bit integer value from the WorldPacket.
---@param value number
---@return number
function WorldPacket:ReadByte(value) end

---Reads and returns a single-precision floating-point value from the WorldPacket.
---@param value number
---@return number
function WorldPacket:ReadFloat(value) end

---Reads and returns a signed 32-bit integer value from the WorldPacket.
---@param value number
---@return number
function WorldPacket:ReadLong(value) end

---Writes an unsigned 64-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteGUID(value) end

---Writes a signed 32-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteLong(value) end

---Writes an unsigned 8-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteUByte(value) end

---Reads and returns a double-precision floating-point value from the WorldPacket.
---@param value number
---@return number
function WorldPacket:ReadDouble(value) end

---Reads and returns an unsigned 64-bit integer value from the WorldPacket.
---@param value number
---@return number
function WorldPacket:ReadGUID(value) end

---Reads and returns an unsigned 16-bit integer value from the WorldPacket.
---@param value number
---@return number
function WorldPacket:ReadUShort(value) end

---Writes a 64-bit floating-point value to the WorldPacket.
---@param value number
function WorldPacket:WriteDouble(value) end

---Writes an unsigned 16-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteUShort(value) end

---Returns the opcode of the WorldPacket.
---@param opcode number
---@return number
function WorldPacket:GetOpcode(opcode) end

---Reads and returns an unsigned 8-bit integer value from the WorldPacket.
---@param value number
---@return number
function WorldPacket:ReadUByte(value) end

---Reads and returns an unsigned 32-bit integer value from the WorldPacket.
---@param value number
---@return number
function WorldPacket:ReadULong(value) end

---Writes a signed 16-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteShort(value) end

---Reads and returns a signed 16-bit integer value from the WorldPacket.
---@param value number
---@return number
function WorldPacket:ReadShort(value) end

---Reads and returns a string value from the WorldPacket.
---@param value string
---@return string
function WorldPacket:ReadString(value) end

---Writes a signed 8-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteByte(value) end

return WorldPacket
