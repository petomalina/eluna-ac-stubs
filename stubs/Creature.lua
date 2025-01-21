---@class Creature : Object, WorldObject, Unit
local Creature = {}

---Returns true if the Creature is a city guard,
  and returns false otherwise.
---@param isGuard boolean
---@return isGuard
function Creature:IsGuard(isGuard) end

---Sets the Creature's death state to deathState.
---@param deathState DeathState
function Creature:SetDeathState(deathState) end

---Equips given Items to the Unit. Using 0 removes the equipped Item
---@param main_hand number
---@param off_hand number
---@param ranged number
function Creature:SetEquipmentSlots(main_hand, off_hand, ranged) end

---Sets whether the Creature is currently walking or running.
---@param enable boolean
function Creature:SetWalk(enable) end

---Returns true if the Creature can assist friend in combat against enemy,
  and returns false otherwise.
---@param friend Unit
---@param enemy Unit
---@param checkFaction boolean
---@param canAssist boolean
---@return canAssist
function Creature:CanAssistTo(friend, enemy, checkFaction, canAssist) end

---Returns the radius the Creature is permitted to wander from its
  respawn point.
---@param wanderRadius number
---@return wanderRadius
function Creature:GetWanderRadius(wanderRadius) end

---Returns true if the Creature has spellId on cooldown,
  and returns false otherwise.
---@param spellId number
---@param hasCooldown boolean
---@return hasCooldown
function Creature:HasSpellCooldown(spellId, hasCooldown) end

---Removes specified loot mode from Creature
---@param lootMode number
function Creature:RemoveLootMode(lootMode) end

---Returns the Creature's Unit flags 2.
---@param unitFlags2 UnitFlags2
---@return unitFlags2
function Creature:GetUnitFlagsTwo(unitFlags2) end

---Returns true if the Creature's rank is Boss,
  and returns false otherwise.
---@param isWorldBoss boolean
---@return isWorldBoss
function Creature:IsWorldBoss(isWorldBoss) end

---Save the Creature in the database.
function Creature:SaveToDB() end

---Sets whether the Creature gives reputation or not.
---@param disable boolean
function Creature:SetDisableReputationGain(disable) end

---Sets whether the creature is hovering / levitating or not.
---@param enable boolean
function Creature:SetHover(enable) end

---Sets whether the Creature can call nearby enemies for help in combat or not.
---@param enable boolean
function Creature:SetNoCallAssistance(enable) end

---Returns true if the Creature is the leader of a player faction,
  and returns false otherwise.
---@param isLeader boolean
---@return isLeader
function Creature:IsRacialLeader(isLeader) end

---Returns the Creature's Extra flags.
---@param extraFlags ExtraFlags
---@return extraFlags
function Creature:GetExtraFlags(extraFlags) end

---Makes the Creature able to fly if enabled.
---@param disable boolean
function Creature:SetDisableGravity(disable) end

---Sets the Creature's Unit flags2 to flags.
---@param flags UnitFlags2
function Creature:SetUnitFlagsTwo(flags) end

---Transform the Creature into another Creature.
---@param entry number
---@param dataGUIDLow number
function Creature:UpdateEntry(entry, dataGUIDLow) end

---Returns true if the Creature can move on land,
  and returns false otherwise.
---@param canWalk boolean
---@return canWalk
function Creature:CanWalk(canWalk) end

---Returns true if the Creature is set to not give reputation when killed,
  and returns false otherwise.
---@param reputationDisabled boolean
---@return reputationDisabled
function Creature:IsReputationGainDisabled(reputationDisabled) end

---Sets the position the Creature returns to when evading from combat
  or respawning.
---@param x number
---@param y number
---@param z number
---@param o number
function Creature:SetHomePosition(x, y, z, o) end

---Sets the Creature's NPC flags to flags.
---@param flags NPCFlags
function Creature:SetNPCFlags(flags) end

---Returns the delay between when the Creature dies and when its body despawns.
---@param corpseDelay number
---@return corpseDelay
function Creature:GetCorpseDelay(corpseDelay) end

---Returns true if the Creature is a civilian,
  and returns false otherwise.
---@param isCivilian boolean
---@return isCivilian
function Creature:IsCivilian(isCivilian) end

---Sets the Creature as in combat with all Players in the dungeon instance.
function Creature:SetInCombatWithZone() end

---Returns the Player that can loot this Creature.
---@param lootRecipient Player
---@return lootRecipient
function Creature:GetLootRecipient(lootRecipient) end

---Returns true if the Creature can start attacking specified target
---@param target Unit
---@param force boolean
function Creature:CanStartAttack(target, force) end

---Returns the Creature's cooldown for spellID.
---@param spellID number
---@param cooldown number
---@return cooldown
function Creature:GetCreatureSpellCooldownDelay(spellID, cooldown) end

---Returns true if the Creature is an invisible trigger,
  and returns false otherwise.
---@param canFly boolean
---@return canFly
function Creature:IsTrigger(canFly) end

---Sets the Creature's Unit flags to flags.
---@param flags UnitFlags
function Creature:SetUnitFlags(flags) end

---Make the Creature call for assistance in combat from other nearby Creatures.
function Creature:CallAssistance() end

---Returns the Creature's AI name.
---@param AIName string
---@return AIName
function Creature:GetAIName(AIName) end

---Returns all Units in the Creature's threat list.
---@param targets table
---@return targets
function Creature:GetAITargets(targets) end

---Returns the aggro range of the Creature for target.
---@param target Unit
---@param aggroRange number
---@return aggroRange
function Creature:GetAggroRange(target, aggroRange) end

---Returns the default movement type for this Creature.
---@param defaultMovementType MovementGeneratorType
---@return defaultMovementType
function Creature:GetDefaultMovementType(defaultMovementType) end

---Returns the current waypoint path ID of the Creature.
---@param pathId number
---@return pathId
function Creature:GetWaypointPath(pathId) end

---Returns true if the Creature can be targeted for attack,
  and returns false otherwise.
---@param mustBeDead boolean
---@param targetable boolean
---@return targetable
function Creature:IsTargetableForAttack(mustBeDead, targetable) end

---Resets Creature's loot mode to default
function Creature:ResetLootMode() end

---Returns true if the Creature can start attacking nearby hostile Units,
  and returns false otherwise.
---@param canAggro boolean
---@return canAggro
function Creature:CanAggro(canAggro) end

---Sets the Creature's ReactState to state.
---@param state ReactState
function Creature:SetReactState(state) end

---Returns true if the Creature can fly,
  and returns false otherwise.
---@param canFly boolean
---@return canFly
function Creature:CanFly(canFly) end

---Despawn this Creature.
---@param delay number
function Creature:DespawnOrUnsummon(delay) end

---Returns the current waypoint ID of the Creature.
---@param wpId number
---@return wpId
function Creature:GetCurrentWaypointId(wpId) end

---Returns the Creature's shield block value.
---@param shieldBlockValue number
---@return shieldBlockValue
function Creature:GetShieldBlockValue(shieldBlockValue) end

---Returns true if the Creature has searched for combat assistance already,
  and returns false otherwise.
---@param searchedForAssistance boolean
---@return searchedForAssistance
function Creature:HasSearchedAssistance(searchedForAssistance) end

---Make the Creature attack target.
---@param target Unit
function Creature:AttackStart(target) end

---Returns a target from the Creature's threat list based on the
  supplied arguments.
---@param targetType SelectAggroTarget
---@param playerOnly boolean
---@param position number
---@param distance number
---@param aura number
---@param target Unit
---@return target
function Creature:GetAITarget(targetType, playerOnly, position, distance, aura, target) end

---Returns the Creature's creature family ID (enumerated in CreatureFamily.dbc).
---@param creatureFamily CreatureFamily
---@return creatureFamily
function Creature:GetCreatureFamily(creatureFamily) end

---Returns true if the Creature is damaged enough for looting
---@param isDamagedEnough boolean
---@return isDamagedEnough
function Creature:IsDamageEnoughForLootingAndReward(isDamagedEnough) end

---Remove this Creature's corpse.
function Creature:RemoveCorpse() end

---Sets whether the Creature can regenerate health or not.
---@param enable boolean
function Creature:SetRegeneratingHealth(enable) end

---Returns true if the Creature can move through deep water,
  and returns false otherwise.
---@param canSwim boolean
---@return canSwim
function Creature:CanSwim(canSwim) end

---Returns the time it takes for this Creature to respawn once killed.
---@param respawnDelay number
---@return respawnDelay
function Creature:GetRespawnDelay(respawnDelay) end

function Creature:IsDungeonBoss() end

---Returns true if the Creature's rank is Elite or Rare Elite,
  and returns false otherwise.
---@param isElite boolean
---@return isElite
function Creature:IsElite(isElite) end

---Respawn this Creature.
function Creature:Respawn() end

---Sets the default movement type of the Creature.
---@param type MovementGeneratorType
function Creature:SetDefaultMovementType(type) end

---Sets whether the Creature can search for assistance at low health or not.
---@param enable boolean
function Creature:SetNoSearchAssistance(enable) end

---Adds a loot mode to the Creature
---@param lootMode number
function Creature:AddLootMode(lootMode) end

---Returns the Creature's rank.
---@param rank Rank
---@return rank
function Creature:GetRank(rank) end

---Returns true if Creature has the specified loot mode
---@param lootMode number
---@param hasLootMode boolean
---@return hasLootMode
function Creature:HasLootMode(lootMode, hasLootMode) end

---Returns true if the Creature starts the Quest questId,
  and returns false otherwise.
---@param questId number
---@param hasQuest boolean
---@return hasQuest
function Creature:HasQuest(questId, hasQuest) end

---Returns true if the Creature can cast spellId when mind-controlled,
  and returns false otherwise.
---@param spellId number
---@param hasSpell boolean
---@return hasSpell
function Creature:HasSpell(spellId, hasSpell) end

---Make the Creature try to find a new target.
function Creature:SelectVictim() end

---Make the Creature call for help in combat from friendly Creatures within radius.
---@param radius number
function Creature:CallForHelp(radius) end

---Returns the effective aggro range of the Creature for target.
---@param target Unit
---@param attackDistance number
---@return attackDistance
function Creature:GetAttackDistance(target, attackDistance) end

---Returns the guid of the Creature that is used as the ID in the database
---@param dbguid number
---@return dbguid
function Creature:GetDBTableGUIDLow(dbguid) end

---Returns position the Creature returns to when evading from combat
  or respawning.
---@param x number
---@param y number
---@param z number
---@param o number
---@return x, y, z, o
function Creature:GetHomePosition(x, y, z, o) end

---Returns true if the Creature cannot cast spellId due to a category cooldown,
  and returns false otherwise.
---@param spellId number
---@param hasCooldown boolean
---@return hasCooldown
function Creature:HasCategoryCooldown(spellId, hasCooldown) end

---Returns true if the Creature is returning to its spawn position from combat,
  and returns false otherwise.
---@param inEvadeMode boolean
---@return inEvadeMode
function Creature:IsInEvadeMode(inEvadeMode) end

---Returns true if the Creature can regenerate health,
  and returns false otherwise.
---@param isRegenerating boolean
---@return isRegenerating
function Creature:IsRegeneratingHealth(isRegenerating) end

---Sets the time it takes for the Creature to respawn when killed.
---@param delay number
function Creature:SetRespawnDelay(delay) end

---Returns the number of Units in this Creature's threat list.
---@param targetsCount number
---@return targetsCount
function Creature:GetAITargetsCount(targetsCount) end

---Returns the Creature's script name.
---@param scriptName string
---@return scriptName
function Creature:GetScriptName(scriptName) end

---Sets whether the Creature can be aggroed.
---@param allow boolean
function Creature:SetAggroEnabled(allow) end

---Sets the distance the Creature can wander from it's spawn point.
---@param distance number
function Creature:SetWanderRadius(distance) end

function Creature:GetLootMode() end

---Returns true if the Creature will give its loot to a Player or Group,
  and returns false otherwise.
---@param hasLootRecipient boolean
---@return hasLootRecipient
function Creature:HasLootRecipient(hasLootRecipient) end

---Returns true if the Creature will give its loot to player,
  and returns false otherwise.
---@param tapped boolean
---@return tapped
function Creature:IsTappedBy(tapped) end

---Returns true if the Creature completes the Quest with the ID questID,
  and returns false otherwise.
---@param questID number
---@param completesQuest boolean
---@return completesQuest
function Creature:CanCompleteQuest(questID, completesQuest) end

---Returns the Group that can loot this Creature.
---@param lootRecipientGroup Group
---@return lootRecipientGroup
function Creature:GetLootRecipientGroup(lootRecipientGroup) end

---Returns the Creature's NPC flags.
---@param npcFlags NPCFlags
---@return npcFlags
function Creature:GetNPCFlags(npcFlags) end

---Returns the Creature's script ID.
---@param scriptID number
---@return scriptID
function Creature:GetScriptId(scriptID) end

---Returns the Creature's Unit flags.
---@param unitFlags UnitFlags
---@return unitFlags
function Creature:GetUnitFlags(unitFlags) end

---Make the Creature start following its waypoint path.
function Creature:MoveWaypoint() end

function Creature:SetLootMode() end

---Make the Creature flee combat to get assistance from a nearby friendly Creature.
function Creature:FleeToGetAssistance() end

return Creature
