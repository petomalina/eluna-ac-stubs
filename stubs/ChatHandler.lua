---@class ChatHandler
local ChatHandler = {}

---Returns the selected Creature
---@param creature Creature
---@return creature
function ChatHandler:GetSelectedCreature(creature) end

---Checks if the current security level is lower than the specified account's level
---@param account uint32
---@param strong bool
---@param lower bool
---@return lower
function ChatHandler:HasLowerSecurityAccount(account, strong, lower) end

---Checks if the current security level is lower than the specified Player's account
---@param player Player
---@param strong bool
---@param lower bool
---@return lower
function ChatHandler:HasLowerSecurity(player, strong, lower) end

---Sends text to the chat handler
---@param text string
---@param entry number
function ChatHandler:SendSysMessage(text, entry) end

---Returns the Player associated with the handler. Returns nil in the case of a console handler
---@param player Player
---@return player
function ChatHandler:GetPlayer(player) end

---Returns the selected Unit
---@param unit Unit
---@return unit
function ChatHandler:GetSelectedUnit(unit) end

---Checks if the securityLevel is available
---@param securityLevel uint32
---@param isAvailable bool
---@return isAvailable
function ChatHandler:IsAvailable(securityLevel, isAvailable) end

---Returns true if the ChatHandler comes from the console, false if it comes from a player
---@param isConsole boolean
---@return isConsole
function ChatHandler:IsConsole(isConsole) end

---Returns the selected WorldObject
---@param object WorldObject
---@return object
function ChatHandler:GetSelectedObject(object) end

---Returns the selected Player
---@param player Player
---@return player
function ChatHandler:GetSelectedPlayer(player) end

---Returns the selected Player or the current Player if nothing is targeted or the target is not a player
---@param player Player
---@return player
function ChatHandler:GetSelectedPlayerOrSelf(player) end

---Returns true if other previously called ChatHandler methods sent an error
---@param sentErrorMessage bool
---@return sentErrorMessage
function ChatHandler:HasSentErrorMessage(sentErrorMessage) end

---Sends a message to all connected Game Masters
---@param text string
function ChatHandler:SendGlobalGMSysMessage(text) end

---Sends a message to all connected players
---@param text string
function ChatHandler:SendGlobalSysMessage(text) end

return ChatHandler
