---@meta

---@class ElunaQuery
ElunaQuery = {}

---Returns the data in the specified column of the current row, casted to a boolean.
---@param column number
---@return boolean
function ElunaQuery:GetBool(column) end

---Returns the number of columns in the result set.
---@return number
function ElunaQuery:GetColumnCount() end

---Returns the data in the specified column of the current row, casted to a 64-bit floating point value.
---@param column number
---@return number
function ElunaQuery:GetDouble(column) end

---Returns the data in the specified column of the current row, casted to a 32-bit floating point value.
---@param column number
---@return number
function ElunaQuery:GetFloat(column) end

---Returns the data in the specified column of the current row, casted to a signed 16-bit integer.
---@param column number
---@return number
function ElunaQuery:GetInt16(column) end

---Returns the data in the specified column of the current row, casted to a signed 32-bit integer.
---@param column number
---@return number
function ElunaQuery:GetInt32(column) end

---Returns the data in the specified column of the current row, casted to a signed 64-bit integer.
---@param column number
---@return number
function ElunaQuery:GetInt64(column) end

---Returns the data in the specified column of the current row, casted to a signed 8-bit integer.
---@param column number
---@return number
function ElunaQuery:GetInt8(column) end

---Returns a table from the current row where keys are field names and values are the row's values.
---@return table
function ElunaQuery:GetRow() end

---Returns the number of rows in the result set.
---@return number
function ElunaQuery:GetRowCount() end

---Returns the data in the specified column of the current row, casted to a string.
---@param column number
---@return string
function ElunaQuery:GetString(column) end

---Returns the data in the specified column of the current row, casted to an unsigned 16-bit integer.
---@param column number
---@return number
function ElunaQuery:GetUInt16(column) end

---Returns the data in the specified column of the current row, casted to an unsigned 32-bit integer.
---@param column number
---@return number
function ElunaQuery:GetUInt32(column) end

---Returns the data in the specified column of the current row, casted to an unsigned 64-bit integer.
---@param column number
---@return number
function ElunaQuery:GetUInt64(column) end

---Returns the data in the specified column of the current row, casted to an unsigned 8-bit integer.
---@param column number
---@return number
function ElunaQuery:GetUInt8(column) end

---Returns true if the specified column of the current row is NULL, otherwise false.
---@param column number
---@return boolean
function ElunaQuery:IsNull(column) end

---Advances the ElunaQuery to the next row in the result set.
---@return boolean
function ElunaQuery:NextRow() end

