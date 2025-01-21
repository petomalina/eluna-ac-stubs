---@class GameObject : Object, WorldObject
local GameObject = {}

---Sets the state of a GameObject
---@param state GOState
function GameObject:SetGoState(state) end

---Sets the respawn or despawn time for the gameobject.
---@param delay number
function GameObject:SetRespawnTime(delay) end

---Despawns a GameObject
function GameObject:Despawn() end

---Returns the guid of the GameObject that is used as the ID in the database
---@param dbguid number
---@return number
function GameObject:GetDBTableGUIDLow(dbguid) end

---Returns the Group that can loot the GameObject
---@param group Group
---@return Group
function GameObject:GetLootRecipientGroup(group) end

---Returns the [LootState] of a GameObject
Below are [LootState]s off of 3.3.5a
---@param lootState LootState
---@return LootState
function GameObject:GetLootState(lootState) end

---Returns 'true' if the GameObject can give the specified Quest
---@param questId number
---@param hasQuest boolean
---@return boolean
function GameObject:HasQuest(questId, hasQuest) end

---Returns 'true' if the GameObject is active
---@param isActive boolean
---@return boolean
function GameObject:IsActive(isActive) end

function GameObject:AddLoot() end

---Returns the state of a GameObject
Below are client side [GOState]s off of 3.3.5a
---@param goState GOState
---@return GOState
function GameObject:GetGoState(goState) end

---Returns 'true' if the GameObject is spawned
---@param isSpawned boolean
---@return boolean
function GameObject:IsSpawned(isSpawned) end

---Returns 'true' if the GameObject is a transport
---@param isTransport boolean
---@return boolean
function GameObject:IsTransport(isTransport) end

---Removes GameObject from the world
---@param deleteFromDB boolean
function GameObject:RemoveFromWorld(deleteFromDB) end

---Respawns a GameObject
function GameObject:Respawn() end

---Saves GameObject to the database
function GameObject:SaveToDB() end

---Activates a door or a button/lever
---@param delay number
function GameObject:UseDoorOrButton(delay) end

---Returns display ID of the GameObject
---@param displayId number
---@return number
function GameObject:GetDisplayId(displayId) end

---Returns the Player that can loot the GameObject
---@param player Player
---@return Player
function GameObject:GetLootRecipient(player) end

---Sets the [LootState] of a GameObject
Below are [LootState]s off of 3.3.5a
---@param state LootState
function GameObject:SetLootState(state) end

return GameObject
