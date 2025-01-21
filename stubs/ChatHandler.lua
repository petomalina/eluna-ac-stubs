---@meta

---@class ChatHandler
ChatHandler = {}

---Returns the Player associated with the handler. Returns nil in the case of a console handler
---@return Player
function ChatHandler:GetPlayer() end

---Returns the selected Creature
---@return Creature
function ChatHandler:GetSelectedCreature() end

---Returns the selected WorldObject
---@return WorldObject
function ChatHandler:GetSelectedObject() end

---Returns the selected Player
---@return Player
function ChatHandler:GetSelectedPlayer() end

---Returns the selected Player or the current Player if nothing is targeted or the target is not a player
---@return Player
function ChatHandler:GetSelectedPlayerOrSelf() end

---Returns the selected Unit
---@return Unit
function ChatHandler:GetSelectedUnit() end

---Checks if the current security level is lower than the specified Player's account
---@param player Player
---@param strong? boolean
---@return boolean
function ChatHandler:HasLowerSecurity(player, strong) end

---Checks if the current security level is lower than the specified account's level
---@param account uint32
---@param strong? boolean
---@return boolean
function ChatHandler:HasLowerSecurityAccount(account, strong) end

---Returns true if other previously called ChatHandler methods sent an error
---@return boolean
function ChatHandler:HasSentErrorMessage() end

---Checks if the securityLevel is available
---@param securityLevel uint32
---@return boolean
function ChatHandler:IsAvailable(securityLevel) end

---Returns true if the ChatHandler comes from the console, false if it comes from a player
---@return boolean
function ChatHandler:IsConsole() end

---Sends a message to all connected Game Masters
---@param text string
function ChatHandler:SendGlobalGMSysMessage(text) end

---Sends a message to all connected players
---@param text string
function ChatHandler:SendGlobalSysMessage(text) end

---Sends text to the chat handler
---@param text string
---@param entry number
function ChatHandler:SendSysMessage(text, entry) end

