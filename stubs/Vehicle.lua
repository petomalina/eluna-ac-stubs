---@class Vehicle
local Vehicle = {}

---Returns the Vehicle's owner
---@param owner Unit
---@return owner
function Vehicle:GetOwner(owner) end

---Returns the Vehicle's passenger in the specified seat
---@param seat number
---@param passenger Unit
---@return passenger
function Vehicle:GetPassenger(seat, passenger) end

---Returns true if the Unit passenger is on board
---@param passenger Unit
---@param isOnBoard boolean
---@return isOnBoard
function Vehicle:IsOnBoard(passenger, isOnBoard) end

---Removes Unit passenger from the Vehicle
---@param passenger Unit
function Vehicle:RemovePassenger(passenger) end

---Adds Unit passenger to a specified seat in the Vehicle
---@param passenger Unit
---@param seat number
function Vehicle:AddPassenger(passenger, seat) end

---Returns the Vehicle's entry
---@param entry number
---@return entry
function Vehicle:GetEntry(entry) end

return Vehicle
