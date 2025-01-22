---@meta

---@class GameObject : Object, WorldObject
GameObject = {}

function GameObject:AddLoot() end

---Despawns a GameObject
function GameObject:Despawn() end

---Returns the guid of the GameObject that is used as the ID in the database
---@return number
function GameObject:GetDBTableGUIDLow() end

---Returns display ID of the GameObject
---@return number
function GameObject:GetDisplayId() end

---@alias GOState
---| 0 # GO_STATE_ACTIVE
---| 1 # GO_STATE_READY
---| 2 # GO_STATE_ACTIVE_ALTERNATIVE

-- GOState
GO_STATE_ACTIVE = 0
GO_STATE_READY = 1
GO_STATE_ACTIVE_ALTERNATIVE = 2

---Returns the state of a GameObject Below are client side [GOState]s off of 3.3.5a
---@return GOState
function GameObject:GetGoState() end

---Returns the Player that can loot the GameObject
---@return Player
function GameObject:GetLootRecipient() end

---Returns the Group that can loot the GameObject
---@return Group
function GameObject:GetLootRecipientGroup() end

---@alias LootState
---| 0 # GO_NOT_READY
---| 1 # GO_READY
---| 2 # GO_ACTIVATED
---| 3 # GO_JUST_DEACTIVATED

-- LootState
GO_NOT_READY = 0
GO_READY = 1
GO_ACTIVATED = 2
GO_JUST_DEACTIVATED = 3

---Returns the [LootState] of a GameObject Below are [LootState]s off of 3.3.5a
---@return LootState
function GameObject:GetLootState() end

---Returns 'true' if the GameObject can give the specified Quest
---@param questId number
---@return boolean
function GameObject:HasQuest(questId) end

---Returns 'true' if the GameObject is active
---@return boolean
function GameObject:IsActive() end

---Returns 'true' if the GameObject is spawned
---@return boolean
function GameObject:IsSpawned() end

---Returns 'true' if the GameObject is a transport
---@return boolean
function GameObject:IsTransport() end

---Removes GameObject from the world
---@param deleteFromDB boolean
function GameObject:RemoveFromWorld(deleteFromDB) end

---Respawns a GameObject
function GameObject:Respawn() end

---Saves GameObject to the database
function GameObject:SaveToDB() end

---Sets the state of a GameObject
---@param state GOState
function GameObject:SetGoState(state) end

---Sets the [LootState] of a GameObject Below are [LootState]s off of 3.3.5a
---@param state LootState
function GameObject:SetLootState(state) end

---Sets the respawn or despawn time for the gameobject.
---@param delay? number
function GameObject:SetRespawnTime(delay) end

---Activates a door or a button/lever
---@param delay? number
function GameObject:UseDoorOrButton(delay) end

