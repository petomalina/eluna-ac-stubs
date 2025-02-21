---@meta

---@class Ticket
Ticket = {}

---Adds a response to the Ticket.
---@param response string
function Ticket:AppendResponse(response) end

---Delete the Ticket response.
function Ticket:DeleteResponse() end

---Returns the assigned Player.
---@return Player
function Ticket:GetAssignedPlayer() end

---Returns the assigned guid.
---@return ObjectGUID
function Ticket:GetAssignedToGUID() end

---Return the Ticket chatlog.
---@return string
function Ticket:GetChatLog() end

---Return the Ticket id.
---@return nint3
function Ticket:GetId() end

---Returns the last modified time from the Ticket.
---@return number
function Ticket:GetLastModifiedTime() end

---Returns the message sent in the Ticket.
---@return string
function Ticket:GetMessage() end

---Return the Player from the Ticket.
---@return Player
function Ticket:GetPlayer() end

---Return the Player name from the Ticket.
---@return string
function Ticket:GetPlayerName() end

---Return the Ticket response.
---@return string
function Ticket:GetResponse() end

---Return true if the Ticket is assigned or false.
---@return boolean
function Ticket:IsAssigned() end

---Return true if the Ticket is not assigned to the GUID or false.
---@param playerGuid ui
---@return boolean
function Ticket:IsAssignedNotTo(playerGuid) end

---Return true if the Ticket is assigned to the GUID or false.
---@param playerGuid ui
---@return boolean
function Ticket:IsAssignedTo(playerGuid) end

---Returns true if the Ticket is closed or false.
---@return boolean
function Ticket:IsClosed() end

---Returns true if the Ticket is completed or false.
---@return boolean
function Ticket:IsCompleted() end

---Return true if this GUID is the same as the Player who created the Ticket or false.
---@param playerGuid ui
---@return boolean
function Ticket:IsFromPlayer(playerGuid) end

---Assign the Ticket to a player via his GUID.
---@param playerGuid ui
---@param isAdmin boolean
function Ticket:SetAssignedTo(playerGuid, isAdmin) end

---Set Ticket comment.
---@param comment string
function Ticket:SetComment(comment) end

---Set Ticket completed.
function Ticket:SetCompleted() end

---Set Ticket message.
---@param message string
function Ticket:SetMessage(message) end

---Set the new Ticket creation position.
---@param mapId number
---@param x number
---@param y number
---@param z number
function Ticket:SetPosition(mapId, x, y, z) end

---Set Ticket resolved by player via his GUID.
---@param playerGuid ui
function Ticket:SetResolvedBy(playerGuid) end

---Set Ticket is unassigned.
function Ticket:SetUnassigned() end

---Set Ticket is viewed.
function Ticket:SetViewed() end

