---@class ElunaQuery
local ElunaQuery = {}

---Returns the data in the specified column of the current row, casted to a boolean.
---@param column number
---@param data boolean
---@return data
function ElunaQuery:GetBool(column, data) end

---Returns the number of columns in the result set.
---@param columnCount number
---@return columnCount
function ElunaQuery:GetColumnCount(columnCount) end

---Returns the data in the specified column of the current row, casted to a 32-bit floating point value.
---@param column number
---@param data number
---@return data
function ElunaQuery:GetFloat(column, data) end

---Returns the data in the specified column of the current row, casted to a signed 16-bit integer.
---@param column number
---@param data number
---@return data
function ElunaQuery:GetInt16(column, data) end

---Returns the data in the specified column of the current row, casted to an unsigned 16-bit integer.
---@param column number
---@param data number
---@return data
function ElunaQuery:GetUInt16(column, data) end

---Returns the data in the specified column of the current row, casted to an unsigned 64-bit integer.
---@param column number
---@param data number
---@return data
function ElunaQuery:GetUInt64(column, data) end

---Returns the data in the specified column of the current row, casted to an unsigned 8-bit integer.
---@param column number
---@param data number
---@return data
function ElunaQuery:GetUInt8(column, data) end

---Returns the data in the specified column of the current row, casted to a signed 64-bit integer.
---@param column number
---@param data number
---@return data
function ElunaQuery:GetInt64(column, data) end

---Returns the data in the specified column of the current row, casted to a signed 32-bit integer.
---@param column number
---@param data number
---@return data
function ElunaQuery:GetInt32(column, data) end

---Returns the data in the specified column of the current row, casted to a string.
---@param column number
---@param data string
---@return data
function ElunaQuery:GetString(column, data) end

---Returns true if the specified column of the current row is NULL, otherwise false.
---@param column number
---@param isNull boolean
---@return isNull
function ElunaQuery:IsNull(column, isNull) end

---Returns the data in the specified column of the current row, casted to a 64-bit floating point value.
---@param column number
---@param data number
---@return data
function ElunaQuery:GetDouble(column, data) end

---Returns the data in the specified column of the current row, casted to a signed 8-bit integer.
---@param column number
---@param data number
---@return data
function ElunaQuery:GetInt8(column, data) end

---Returns a table from the current row where keys are field names and values are the row's values.
---@param rowData table
---@return rowData
function ElunaQuery:GetRow(rowData) end

---Returns the number of rows in the result set.
---@param rowCount number
---@return rowCount
function ElunaQuery:GetRowCount(rowCount) end

---Returns the data in the specified column of the current row, casted to an unsigned 32-bit integer.
---@param column number
---@param data number
---@return data
function ElunaQuery:GetUInt32(column, data) end

---Advances the ElunaQuery to the next row in the result set.
---@param hadNextRow boolean
---@return hadNextRow
function ElunaQuery:NextRow(hadNextRow) end

return ElunaQuery
