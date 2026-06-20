---@meta

---@class Pet : Object, WorldObject, Unit
Pet = {}

---Adds a spell to the Pet's spellbook.
---@param spellId number
---@param active ActiveStates
---@param state PetSpellState
---@param type PetSpellType
---@return boolean
function Pet:AddSpell(spellId, active, state, type) end

---Queues a spell to be cast when the Pet becomes available.
---@param spellId number
---@param target Unit
---@param isPositive? boolean
function Pet:CastWhenWillAvailable(spellId, target, isPositive) end

---Cleans up the Pet's action bar, removing invalid spells.
function Pet:CleanupActionBar() end

---Clears any queued spell that was set to cast when available.
function Pet:ClearCastWhenWillAvailable() end

---Creates the Pet's base stats and properties from an existing Creature.
---@param creature Creature
---@return boolean
function Pet:CreateBaseAtCreature(creature) end

---Generates action bar data for the Pet.
---@return string
function Pet:GenerateActionBarData() end

---Returns the aura update mask for raid members.
---@return number
function Pet:GetAuraUpdateMaskForRaid() end

---Returns the food benefit level for an item of the specified level.
---@param itemLevel number
---@return number
function Pet:GetCurrentFoodBenefitLevel(itemLevel) end

---Returns the Pet's remaining duration in milliseconds.
---@return number
function Pet:GetDuration() end

---Returns the number of unspent talent points the Pet has.
---@return number
function Pet:GetFreeTalentPoints() end

---Returns the Pet's current happiness state.
---@return HappinessState
function Pet:GetHappinessState() end

---Returns the maximum number of talent points available at the specified level.
---@param level number
---@return number
function Pet:GetMaxTalentPointsForLevel(level) end

---Returns the Player who owns this Pet.
---@return Player
function Pet:GetOwner() end

---Returns the auto-spell at the specified position.
---@param pos number
---@return number
function Pet:GetPetAutoSpellOnPos(pos) end

---Returns the number of auto-spells the Pet has.
---@return number
function Pet:GetPetAutoSpellSize() end

---Returns the Pet's type.
---@return PetType
function Pet:GetPetType() end

---Returns the number of talents the Pet has used.
---@return number
function Pet:GetUsedTalentCount() end

---Sets the Pet's level directly.
---@param level number
function Pet:GivePetLevel(level) end

---Gives experience points to the Pet.
---@param xp number
function Pet:GivePetXP(xp) end

---Returns true if the Pet has a temporary spell queued, returns false otherwise.
---@return boolean
function Pet:HasTempSpell() end

---Returns true if the Pet can eat the specified Item, returns false otherwise.
---@param item Item
---@return boolean
function Pet:HaveInDiet(item) end

---Initializes level-up spells for the Pet's current level.
function Pet:InitLevelupSpellsForLevel() end

---Initializes the Pet's creation spells.
function Pet:InitPetCreateSpells() end

---Initializes talents for the Pet's current level.
function Pet:InitTalentForLevel() end

---Returns true if the Pet is currently being loaded from the database, returns false otherwise.
---@return boolean
function Pet:IsBeingLoaded() end

---Returns true if the Pet is controlled by a player, returns false otherwise.
---@return boolean
function Pet:IsControlled() end

---Returns true if the Pet is a permanent pet for the specified Player, returns false otherwise.
---@param owner Player
---@return boolean
function Pet:IsPermanentPetFor(owner) end

---Returns true if the Pet is marked as removed, returns false otherwise.
---@return boolean
function Pet:IsRemoved() end

---Returns true if the Pet is temporarily summoned, returns false otherwise.
---@return boolean
function Pet:IsTemporarySummoned() end

---Makes the Pet learn all passive spells it should know.
function Pet:LearnPetPassives() end

---Makes the Pet learn a spell.
---@param spellId number
---@return boolean
function Pet:LearnSpell(spellId) end

---Makes the Pet learn the highest available rank of a spell.
---@param spellId number
function Pet:LearnSpellHighRank(spellId) end

---Removes the Pet from the world.
---@param mode PetSaveMode
---@param returnReagent? boolean
function Pet:Remove(mode, returnReagent) end

---Removes a spell from the Pet's spellbook.
---@param spellId number
---@param learnPrev boolean
---@param clearAb boolean
---@return boolean
function Pet:RemoveSpell(spellId, learnPrev, clearAb) end

---Resets the aura update mask for raid members.
function Pet:ResetAuraUpdateMaskForRaid() end

---Resets all of the Pet's talents.
---@return boolean
function Pet:ResetTalents() end

---Saves the Pet to the database.
---@param mode PetSaveMode
function Pet:SavePetToDB(mode) end

---Sets an aura slot in the raid update mask.
---@param slot number
function Pet:SetAuraUpdateMaskForRaid(slot) end

---Sets the Pet's duration in milliseconds.
---@param duration number
function Pet:SetDuration(duration) end

---Sets the number of unspent talent points for the Pet.
---@param points number
function Pet:SetFreeTalentPoints(points) end

---Sets the Pet's type.
---@param petType PetType
function Pet:SetPetType(petType) end

---Sets whether the Pet is marked as removed.
---@param removed boolean
function Pet:SetRemoved(removed) end

---Sets the number of talents the Pet has used.
---@param count number
function Pet:SetUsedTalentCount(count) end

---Synchronizes the Pet's level with its owner's level.
function Pet:SynchronizeLevelWithOwner() end

---Toggles autocast on or off for the specified spell.
---@param spellId number
---@param apply boolean
function Pet:ToggleAutocast(spellId, apply) end

---Makes the Pet unlearn a spell.
---@param spellId number
---@param learnPrev boolean
---@param clearAb boolean
---@return boolean
function Pet:UnlearnSpell(spellId, learnPrev, clearAb) end

