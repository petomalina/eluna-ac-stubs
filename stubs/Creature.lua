---@meta

---@class Creature : Object, WorldObject, Unit
Creature = {}

---Adds a loot mode to the Creature
---@param lootMode number
function Creature:AddLootMode(lootMode) end

---Make the Creature attack target.
---@param target Unit
function Creature:AttackStart(target) end

---Make the Creature call for assistance in combat from other nearby Creatures.
function Creature:CallAssistance() end

---Make the Creature call for help in combat from friendly Creatures within radius.
---@param radius number
function Creature:CallForHelp(radius) end

---Returns true if the Creature can start attacking nearby hostile Units,   and returns false otherwise.
---@return boolean
function Creature:CanAggro() end

---Returns true if the Creature can assist friend in combat against enemy,   and returns false otherwise.
---@param friend Unit
---@param enemy Unit
---@param checkFaction? boolean
---@return boolean
function Creature:CanAssistTo(friend, enemy, checkFaction) end

---Returns true if the Creature completes the Quest with the ID questID,   and returns false otherwise.
---@param questID number
---@return boolean
function Creature:CanCompleteQuest(questID) end

---Returns true if the Creature can fly,   and returns false otherwise.
---@return boolean
function Creature:CanFly() end

---Returns true if the Creature can start attacking specified target
---@param target Unit
---@param force? boolean
function Creature:CanStartAttack(target, force) end

---Returns true if the Creature can move through deep water,   and returns false otherwise.
---@return boolean
function Creature:CanSwim() end

---Returns true if the Creature can move on land,   and returns false otherwise.
---@return boolean
function Creature:CanWalk() end

---Despawn this Creature.
---@param delay? number
function Creature:DespawnOrUnsummon(delay) end

---Make the Creature flee combat to get assistance from a nearby friendly Creature.
function Creature:FleeToGetAssistance() end

---Returns the Creature's AI name.
---@return string
function Creature:GetAIName() end

---@alias SelectAggroTarget
---| 0 # SELECT_TARGET_RANDOM
---| 1 # SELECT_TARGET_TOPAGGRO
---| 2 # SELECT_TARGET_BOTTOMAGGRO
---| 3 # SELECT_TARGET_NEAREST
---| 4 # SELECT_TARGET_FARTHEST

-- SelectAggroTarget
SELECT_TARGET_RANDOM = 0
SELECT_TARGET_TOPAGGRO = 1
SELECT_TARGET_BOTTOMAGGRO = 2
SELECT_TARGET_NEAREST = 3
SELECT_TARGET_FARTHEST = 4

---Returns a target from the Creature's threat list based on the   supplied arguments.
---@param targetType SelectAggroTarget
---@param playerOnly? boolean
---@param position? number
---@param distance? number
---@param aura? number
---@return Unit
function Creature:GetAITarget(targetType, playerOnly, position, distance, aura) end

---Returns all Units in the Creature's threat list.
---@return table
function Creature:GetAITargets() end

---Returns the number of Units in this Creature's threat list.
---@return number
function Creature:GetAITargetsCount() end

---Returns the aggro range of the Creature for target.
---@param target Unit
---@return number
function Creature:GetAggroRange(target) end

---Returns the delay between when the Creature dies and when its body despawns.
---@return number
function Creature:GetCorpseDelay() end

---@alias CreatureFamily
---| 0 # CREATURE_FAMILY_NONE
---| 1 # CREATURE_FAMILY_WOLF
---| 2 # CREATURE_FAMILY_CAT
---| 3 # CREATURE_FAMILY_SPIDER
---| 4 # CREATURE_FAMILY_BEAR
---| 5 # CREATURE_FAMILY_BOAR
---| 6 # CREATURE_FAMILY_CROCOLISK
---| 7 # CREATURE_FAMILY_CARRION_BIRD
---| 8 # CREATURE_FAMILY_CRAB
---| 9 # CREATURE_FAMILY_GORILLA
---| 10 # CREATURE_FAMILY_HORSE_CUSTOM
---| 11 # CREATURE_FAMILY_RAPTOR
---| 12 # CREATURE_FAMILY_TALLSTRIDER
---| 15 # CREATURE_FAMILY_FELHUNTER
---| 16 # CREATURE_FAMILY_VOIDWALKER
---| 17 # CREATURE_FAMILY_SUCCUBUS
---| 19 # CREATURE_FAMILY_DOOMGUARD
---| 20 # CREATURE_FAMILY_SCORPID
---| 21 # CREATURE_FAMILY_TURTLE
---| 23 # CREATURE_FAMILY_IMP
---| 24 # CREATURE_FAMILY_BAT
---| 25 # CREATURE_FAMILY_HYENA
---| 26 # CREATURE_FAMILY_BIRD_OF_PREY
---| 27 # CREATURE_FAMILY_WIND_SERPENT
---| 28 # CREATURE_FAMILY_REMOTE_CONTROL
---| 29 # CREATURE_FAMILY_FELGUARD
---| 30 # CREATURE_FAMILY_DRAGONHAWK
---| 31 # CREATURE_FAMILY_RAVAGER
---| 32 # CREATURE_FAMILY_WARP_STALKER
---| 33 # CREATURE_FAMILY_SPOREBAT
---| 34 # CREATURE_FAMILY_NETHER_RAY
---| 35 # CREATURE_FAMILY_SERPENT
---| 36 # CREATURE_FAMILY_SEA_LION
---| 37 # CREATURE_FAMILY_MOTH
---| 38 # CREATURE_FAMILY_CHIMAERA
---| 39 # CREATURE_FAMILY_DEVILSAUR
---| 40 # CREATURE_FAMILY_GHOUL
---| 41 # CREATURE_FAMILY_SILITHID
---| 42 # CREATURE_FAMILY_WORM
---| 43 # CREATURE_FAMILY_RHINO
---| 44 # CREATURE_FAMILY_WASP
---| 45 # CREATURE_FAMILY_CORE_HOUND
---| 46 # CREATURE_FAMILY_SPIRIT_BEAST

-- CreatureFamily
CREATURE_FAMILY_NONE = 0
CREATURE_FAMILY_WOLF = 1
CREATURE_FAMILY_CAT = 2
CREATURE_FAMILY_SPIDER = 3
CREATURE_FAMILY_BEAR = 4
CREATURE_FAMILY_BOAR = 5
CREATURE_FAMILY_CROCOLISK = 6
CREATURE_FAMILY_CARRION_BIRD = 7
CREATURE_FAMILY_CRAB = 8
CREATURE_FAMILY_GORILLA = 9
CREATURE_FAMILY_HORSE_CUSTOM = 10
CREATURE_FAMILY_RAPTOR = 11
CREATURE_FAMILY_TALLSTRIDER = 12
CREATURE_FAMILY_FELHUNTER = 15
CREATURE_FAMILY_VOIDWALKER = 16
CREATURE_FAMILY_SUCCUBUS = 17
CREATURE_FAMILY_DOOMGUARD = 19
CREATURE_FAMILY_SCORPID = 20
CREATURE_FAMILY_TURTLE = 21
CREATURE_FAMILY_IMP = 23
CREATURE_FAMILY_BAT = 24
CREATURE_FAMILY_HYENA = 25
CREATURE_FAMILY_BIRD_OF_PREY = 26
CREATURE_FAMILY_WIND_SERPENT = 27
CREATURE_FAMILY_REMOTE_CONTROL = 28
CREATURE_FAMILY_FELGUARD = 29
CREATURE_FAMILY_DRAGONHAWK = 30
CREATURE_FAMILY_RAVAGER = 31
CREATURE_FAMILY_WARP_STALKER = 32
CREATURE_FAMILY_SPOREBAT = 33
CREATURE_FAMILY_NETHER_RAY = 34
CREATURE_FAMILY_SERPENT = 35
CREATURE_FAMILY_SEA_LION = 36
CREATURE_FAMILY_MOTH = 37
CREATURE_FAMILY_CHIMAERA = 38
CREATURE_FAMILY_DEVILSAUR = 39
CREATURE_FAMILY_GHOUL = 40
CREATURE_FAMILY_SILITHID = 41
CREATURE_FAMILY_WORM = 42
CREATURE_FAMILY_RHINO = 43
CREATURE_FAMILY_WASP = 44
CREATURE_FAMILY_CORE_HOUND = 45
CREATURE_FAMILY_SPIRIT_BEAST = 46

---Returns the Creature's creature family ID (enumerated in CreatureFamily.dbc).
---@return CreatureFamily
function Creature:GetCreatureFamily() end

---Returns the Creature's cooldown for spellID.
---@param spellID number
---@return number
function Creature:GetCreatureSpellCooldownDelay(spellID) end

---Returns the current waypoint ID of the Creature.
---@return number
function Creature:GetCurrentWaypointId() end

---Returns the guid of the Creature that is used as the ID in the database
---@return number
function Creature:GetDBTableGUIDLow() end

---Returns the default movement type for this Creature.
---@return MovementGeneratorType
function Creature:GetDefaultMovementType() end

---Returns the Creature's Extra flags.
---@return ExtraFlags
function Creature:GetExtraFlags() end

---Returns position the Creature returns to when evading from combat   or respawning.
---@param x number
---@param y number
---@param z number
---@return number
function Creature:GetHomePosition(x, y, z) end

function Creature:GetLootMode() end

---Returns the Player that can loot this Creature.
---@return Player
function Creature:GetLootRecipient() end

---Returns the Group that can loot this Creature.
---@return Group
function Creature:GetLootRecipientGroup() end

---Returns the Creature's NPC flags.
---@return NPCFlags
function Creature:GetNPCFlags() end

---Returns the Creature's rank.
---@return Rank
function Creature:GetRank() end

---Returns the time it takes for this Creature to respawn once killed.
---@return number
function Creature:GetRespawnDelay() end

---Returns the Creature's script ID.
---@return number
function Creature:GetScriptId() end

---Returns the Creature's script name.
---@return string
function Creature:GetScriptName() end

---Returns the Creature's shield block value.
---@return number
function Creature:GetShieldBlockValue() end

---Returns the Creature's Unit flags.
---@return UnitFlags
function Creature:GetUnitFlags() end

---Returns the Creature's Unit flags 2.
---@return UnitFlags2
function Creature:GetUnitFlagsTwo() end

---Returns the radius the Creature is permitted to wander from its   respawn point.
---@return number
function Creature:GetWanderRadius() end

---Returns the current waypoint path ID of the Creature.
---@return number
function Creature:GetWaypointPath() end

---Returns true if the Creature cannot cast spellId due to a category cooldown,   and returns false otherwise.
---@param spellId number
---@return boolean
function Creature:HasCategoryCooldown(spellId) end

---Returns true if Creature has the specified loot mode
---@param lootMode number
---@return boolean
function Creature:HasLootMode(lootMode) end

---Returns true if the Creature will give its loot to a Player or Group,   and returns false otherwise.
---@return boolean
function Creature:HasLootRecipient() end

---Returns true if the Creature starts the Quest questId,   and returns false otherwise.
---@param questId number
---@return boolean
function Creature:HasQuest(questId) end

---Returns true if the Creature has searched for combat assistance already,   and returns false otherwise.
---@return boolean
function Creature:HasSearchedAssistance() end

---Returns true if the Creature can cast spellId when mind-controlled,   and returns false otherwise.
---@param spellId number
---@return boolean
function Creature:HasSpell(spellId) end

---Returns true if the Creature has spellId on cooldown,   and returns false otherwise.
---@param spellId number
---@return boolean
function Creature:HasSpellCooldown(spellId) end

---Returns true if the Creature is a civilian,   and returns false otherwise.
---@return boolean
function Creature:IsCivilian() end

---Returns true if the Creature is damaged enough for looting
---@return boolean
function Creature:IsDamageEnoughForLootingAndReward() end

---Returns true if the Creature's flags_extra includes Dungeon Boss (0x1000000),   and returns false otherwise.
---@return boolean
function Creature:IsDungeonBoss() end

---Returns true if the Creature's rank is Elite or Rare Elite,   and returns false otherwise.
---@return boolean
function Creature:IsElite() end

---Returns true if the Creature is a city guard,   and returns false otherwise.
---@return boolean
function Creature:IsGuard() end

---Returns true if the Creature is returning to its spawn position from combat,   and returns false otherwise.
---@return boolean
function Creature:IsInEvadeMode() end

---Returns true if the Creature is the leader of a player faction,   and returns false otherwise.
---@return boolean
function Creature:IsRacialLeader() end

---Returns true if the Creature can regenerate health,   and returns false otherwise.
---@return boolean
function Creature:IsRegeneratingHealth() end

---Returns true if the Creature is set to not give reputation when killed,   and returns false otherwise.
---@return boolean
function Creature:IsReputationGainDisabled() end

---Returns true if the Creature will give its loot to player,   and returns false otherwise.
---@return boolean
function Creature:IsTappedBy() end

---Returns true if the Creature can be targeted for attack,   and returns false otherwise.
---@param mustBeDead? boolean
---@return boolean
function Creature:IsTargetableForAttack(mustBeDead) end

---Returns true if the Creature is an invisible trigger,   and returns false otherwise.
---@return boolean
function Creature:IsTrigger() end

---Returns true if the Creature's rank is Boss,   and returns false otherwise.
---@return boolean
function Creature:IsWorldBoss() end

---Make the Creature start following its waypoint path.
function Creature:MoveWaypoint() end

---Remove this Creature's corpse.
function Creature:RemoveCorpse() end

---Removes specified loot mode from Creature
---@param lootMode number
function Creature:RemoveLootMode(lootMode) end

---Resets Creature's loot mode to default
function Creature:ResetLootMode() end

---Respawn this Creature.
function Creature:Respawn() end

---Save the Creature in the database.
function Creature:SaveToDB() end

---Make the Creature try to find a new target.
function Creature:SelectVictim() end

---Sets whether the Creature can be aggroed.
---@param allow? boolean
function Creature:SetAggroEnabled(allow) end

---Sets the Creature's death state to deathState.
---@param deathState DeathState
function Creature:SetDeathState(deathState) end

---Sets the default movement type of the Creature.
---@param type MovementGeneratorType
function Creature:SetDefaultMovementType(type) end

---Makes the Creature able to fly if enabled.
---@param disable boolean
function Creature:SetDisableGravity(disable) end

---Sets whether the Creature gives reputation or not.
---@param disable? boolean
function Creature:SetDisableReputationGain(disable) end

---Equips given Items to the Unit. Using 0 removes the equipped Item
---@param main_hand number
---@param off_hand number
---@param ranged number
function Creature:SetEquipmentSlots(main_hand, off_hand, ranged) end

---Sets the position the Creature returns to when evading from combat   or respawning.
---@param x number
---@param y number
---@param z number
---@param o number
function Creature:SetHomePosition(x, y, z, o) end

---Sets whether the creature is hovering / levitating or not.
---@param enable? boolean
function Creature:SetHover(enable) end

---Sets the Creature as in combat with all Players in the dungeon instance.
function Creature:SetInCombatWithZone() end

function Creature:SetLootMode() end

---Sets the Creature's NPC flags to flags.
---@param flags NPCFlags
function Creature:SetNPCFlags(flags) end

---Sets whether the Creature can call nearby enemies for help in combat or not.
---@param enable? boolean
function Creature:SetNoCallAssistance(enable) end

---Sets whether the Creature can search for assistance at low health or not.
---@param enable? boolean
function Creature:SetNoSearchAssistance(enable) end

---Sets the Creature's ReactState to state.
---@param state ReactState
function Creature:SetReactState(state) end

---Sets whether the Creature can regenerate health or not.
---@param enable? boolean
function Creature:SetRegeneratingHealth(enable) end

---Sets the time it takes for the Creature to respawn when killed.
---@param delay number
function Creature:SetRespawnDelay(delay) end

---Sets the Creature's Unit flags to flags.
---@param flags UnitFlags
function Creature:SetUnitFlags(flags) end

---Sets the Creature's Unit flags2 to flags.
---@param flags UnitFlags2
function Creature:SetUnitFlagsTwo(flags) end

---Sets whether the Creature is currently walking or running.
---@param enable? boolean
function Creature:SetWalk(enable) end

---Sets the distance the Creature can wander from it's spawn point.
---@param distance number
function Creature:SetWanderRadius(distance) end

---Transform the Creature into another Creature.
---@param entry number
---@param dataGUIDLow? number
function Creature:UpdateEntry(entry, dataGUIDLow) end

