---@meta

---@class Vehicle
Vehicle = {}

---Adds Unit passenger to a specified seat in the Vehicle
---@param passenger Unit
---@param seat number
function Vehicle:AddPassenger(passenger, seat) end

---Returns the Vehicle's entry
---@return number
function Vehicle:GetEntry() end

---Returns the Vehicle's owner
---@return Unit
function Vehicle:GetOwner() end

---Returns the Vehicle's passenger in the specified seat
---@param seat number
---@return Unit
function Vehicle:GetPassenger(seat) end

---Returns true if the Unit passenger is on board
---@param passenger Unit
---@return boolean
function Vehicle:IsOnBoard(passenger) end

---Removes Unit passenger from the Vehicle
---@param passenger Unit
function Vehicle:RemovePassenger(passenger) end

