---@meta

---@class Transport : Object, WorldObject, GameObject
Transport = {}

---Adds a WorldObject as a passenger to the Transport
---@param passenger WorldObject
---@param withAll? boolean
function Transport:AddPassenger(passenger, withAll) end

---Enables or disables movement on the Transport
---@param enabled boolean
function Transport:EnableMovement(enabled) end

---Returns a table of all passengers on the Transport
---@return table
function Transport:GetPassengers() end

---Returns 'true' if the Transport is a MotionTransport (moving transport such as a boat or zeppelin)
---@return boolean
function Transport:IsMotionTransport() end

---Removes a WorldObject passenger from the Transport
---@param passenger WorldObject
---@param withAll? boolean
function Transport:RemovePassenger(passenger, withAll) end

