---@meta

---@class ALEQuery
ALEQuery = {}

---Returns the data in the specified column of the current row, casted to a boolean.
---@param column number
---@return boolean
function ALEQuery:GetBool(column) end

---Returns the number of columns in the result set.
---@return number
function ALEQuery:GetColumnCount() end

---Returns the data in the specified column of the current row, casted to a 64-bit floating point value.
---@param column number
---@return number
function ALEQuery:GetDouble(column) end

---Returns the data in the specified column of the current row, casted to a 32-bit floating point value.
---@param column number
---@return number
function ALEQuery:GetFloat(column) end

---Returns the data in the specified column of the current row, casted to a signed 16-bit integer.
---@param column number
---@return number
function ALEQuery:GetInt16(column) end

---Returns the data in the specified column of the current row, casted to a signed 32-bit integer.
---@param column number
---@return number
function ALEQuery:GetInt32(column) end

---Returns the data in the specified column of the current row, casted to a signed 64-bit integer.
---@param column number
---@return number
function ALEQuery:GetInt64(column) end

---Returns the data in the specified column of the current row, casted to a signed 8-bit integer.
---@param column number
---@return number
function ALEQuery:GetInt8(column) end

---Returns a table from the current row where keys are field names and values are the row's values.
---@return table
function ALEQuery:GetRow() end

---Returns the number of rows in the result set.
---@return number
function ALEQuery:GetRowCount() end

---Returns the data in the specified column of the current row, casted to a string.
---@param column number
---@return string
function ALEQuery:GetString(column) end

---Returns the data in the specified column of the current row, casted to an unsigned 16-bit integer.
---@param column number
---@return number
function ALEQuery:GetUInt16(column) end

---Returns the data in the specified column of the current row, casted to an unsigned 32-bit integer.
---@param column number
---@return number
function ALEQuery:GetUInt32(column) end

---Returns the data in the specified column of the current row, casted to an unsigned 64-bit integer.
---@param column number
---@return number
function ALEQuery:GetUInt64(column) end

---Returns the data in the specified column of the current row, casted to an unsigned 8-bit integer.
---@param column number
---@return number
function ALEQuery:GetUInt8(column) end

---Returns true if the specified column of the current row is NULL, otherwise false.
---@param column number
---@return boolean
function ALEQuery:IsNull(column) end

---Advances the ALEQuery to the next row in the result set.
---@return boolean
function ALEQuery:NextRow() end

