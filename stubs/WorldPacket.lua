---@meta

---@class WorldPacket
WorldPacket = {}

---Returns the opcode of the WorldPacket.
---@return number
function WorldPacket:GetOpcode() end

---Returns the size of the WorldPacket.
---@return number
function WorldPacket:GetSize() end

---Reads and returns a signed 8-bit integer value from the WorldPacket.
---@return number
function WorldPacket:ReadByte() end

---Reads and returns a double-precision floating-point value from the WorldPacket.
---@return number
function WorldPacket:ReadDouble() end

---Reads and returns a single-precision floating-point value from the WorldPacket.
---@return number
function WorldPacket:ReadFloat() end

---Reads and returns an unsigned 64-bit integer value from the WorldPacket.
---@return number
function WorldPacket:ReadGUID() end

---Reads and returns a signed 32-bit integer value from the WorldPacket.
---@return number
function WorldPacket:ReadLong() end

---Reads and returns a signed 16-bit integer value from the WorldPacket.
---@return number
function WorldPacket:ReadShort() end

---Reads and returns a string value from the WorldPacket.
---@return string
function WorldPacket:ReadString() end

---Reads and returns an unsigned 8-bit integer value from the WorldPacket.
---@return number
function WorldPacket:ReadUByte() end

---Reads and returns an unsigned 32-bit integer value from the WorldPacket.
---@return number
function WorldPacket:ReadULong() end

---Reads and returns an unsigned 16-bit integer value from the WorldPacket.
---@return number
function WorldPacket:ReadUShort() end

---Sets the opcode of the WorldPacket to the specified opcode.
---@param opcode Opcodes
function WorldPacket:SetOpcode(opcode) end

---Writes a signed 8-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteByte(value) end

---Writes a 64-bit floating-point value to the WorldPacket.
---@param value number
function WorldPacket:WriteDouble(value) end

---Writes a 32-bit floating-point value to the WorldPacket.
---@param value number
function WorldPacket:WriteFloat(value) end

---Writes an unsigned 64-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteGUID(value) end

---Writes a signed 32-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteLong(value) end

---Writes a signed 16-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteShort(value) end

---Writes a string to the WorldPacket.
---@param value string
function WorldPacket:WriteString(value) end

---Writes an unsigned 8-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteUByte(value) end

---Writes an unsigned 32-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteULong(value) end

---Writes an unsigned 16-bit integer value to the WorldPacket.
---@param value number
function WorldPacket:WriteUShort(value) end

