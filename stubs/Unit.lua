---@meta

---@class Unit : Object, WorldObject
Unit = {}

---Adds the Aura of the given spell entry on the given target from the Unit.
---@param spell number
---@param target Unit
---@return Aura
function Unit:AddAura(spell, target) end

---Adds threat to the Unit from the victim.
---@param victim Unit
---@param threat number
---@param schoolMask? SpellSchoolMask
---@param spell? number
function Unit:AddThreat(victim, threat, schoolMask, spell) end

---Adds the given unit state for the Unit.
---@param state UnitState
function Unit:AddUnitState(state) end

---The Unit tries to attack a given target
---@param who Unit
---@param meleeAttack? boolean
function Unit:Attack(who, meleeAttack) end

---The Unit stops attacking its target
---@return boolean
function Unit:AttackStop() end

---Casts the Spell at target Unit with custom basepoints or casters. See also Unit:CastSpell.
---@param target? Unit
---@param spell number
---@param triggered? boolean
---@param bp0? number
---@param bp1? number
---@param bp2? number
---@param castItem? Item
---@param originalCaster? number
function Unit:CastCustomSpell(target, spell, triggered, bp0, bp1, bp2, castItem, originalCaster) end

---Makes the Unit cast the spell on the target.
---@param target? Unit
---@param spell number
---@param triggered? boolean
function Unit:CastSpell(target, spell, triggered) end

---Makes the Unit cast the spell to the given coordinates, used for area effect spells.
---@param x number
---@param y number
---@param z number
---@param spell number
---@param triggered? boolean
function Unit:CastSpellAoF(x, y, z, spell, triggered) end

---Clears the Unit's combat
function Unit:ClearInCombat() end

---Clear the threat of a Unit in the threat list.
---@param target Unit
function Unit:ClearThreat(target) end

---Clears the Unit's threat list.
function Unit:ClearThreatList() end

---Removes the given unit state from the Unit.
---@param state UnitState
function Unit:ClearUnitState(state) end

---Returns calculated percentage from Health
---@return number
function Unit:CountPctFromCurHealth() end

---Returns calculated percentage from Max Health
---@return number
function Unit:CountPctFromMaxHealth() end

---Unmorphs the Unit setting it's display ID back to the native display ID.
function Unit:DeMorph() end

---Makes the Unit damage the target Unit
---@param target Unit
---@param damage number
---@param durabilityloss? boolean
---@param school? SpellSchools
---@param spell? number
function Unit:DealDamage(target, damage, durabilityloss, school, spell) end

---Makes the Unit heal the target Unit with given spell
---@param target Unit
---@param spell number
---@param amount number
---@param critical? boolean
function Unit:DealHeal(target, spell, amount, critical) end

---Dismounts the Unit.
function Unit:Dismount() end

---Makes the Unit perform the given emote continuously.
---@param emoteId number
function Unit:EmoteState(emoteId) end

---Returns the Unit's attackers.
---@return table
function Unit:GetAttackers() end

---Returns the Aura of the given spell entry on the Unit or nil.
---@param spellID number
---@return Aura
function Unit:GetAura(spellID) end

---Returns the Unit's base spell power
---@param spellSchool number
---@return number
function Unit:GetBaseSpellPower(spellSchool) end

---Returns the GUID of the Unit's charmed entity.
---@return number
function Unit:GetCharmGUID() end

---Returns the Unit's charmer's GUID.
---@return number
function Unit:GetCharmerGUID() end

---Returns the Unit's class ID.
---@return Classes
function Unit:GetClass() end

---Returns the Unit's class' name in given or default locale or nil.
---@param locale? LocaleConstant
---@return string
function Unit:GetClassAsString(locale) end

---Returns the class mask
---@return number
function Unit:GetClassMask() end

---Returns the GUID of the Unit's charmer or owner.
---@return number
function Unit:GetControllerGUID() end

---Returns the GUID of the Unit's charmer or owner or its own GUID.
---@return number
function Unit:GetControllerGUIDS() end

---Returns the Unit's creator's GUID.
---@return number
function Unit:GetCreatorGUID() end

---Returns the Unit's creature type ID (enumerated in CreatureType.dbc).
---@return CreatureType
function Unit:GetCreatureType() end

---Returns the Critter Guid
---@return number
function Unit:GetCritterGUID() end

---Returns the currently casted Spell of given type or nil.
---@param spellType CurrentSpellTypes
---@return Spell
function Unit:GetCurrentSpell(spellType) end

---Returns the Unit's current display ID.
---@return number
function Unit:GetDisplayId() end

---Returns the Unit's faction ID.
---@return number
function Unit:GetFaction() end

---Returns a table containing friendly Unit's within given range of the Unit.
---@param range? number
---@return table
function Unit:GetFriendlyUnitsInRange(range) end

---Returns the Unit's gender.
---@return number
function Unit:GetGender() end

---Returns the Unit's health amount.
---@return number
function Unit:GetHealth() end

---Returns the Unit's health percent.
---@return number
function Unit:GetHealthPct() end

---Returns the Unit's level.
---@return number
function Unit:GetLevel() end

---Returns the Unit's max health.
---@return number
function Unit:GetMaxHealth() end

---Returns the Unit's max power amount for given power type.
---@param type number
---@return number
function Unit:GetMaxPower(type) end

---Returns the Unit's mount's modelID.
---@return number
function Unit:GetMountId() end

---Returns the current movement type for this Unit.
---@return MovementGeneratorType
function Unit:GetMovementType() end

---Returns the Unit's native/original display ID.
---@return number
function Unit:GetNativeDisplayId() end

---Returns the Unit's owner.
---@return Unit
function Unit:GetOwner() end

---Returns the Unit's owner's GUID.
---@return number
function Unit:GetOwnerGUID() end

---Returns the GUID of the Unit's pet.
---@return number
function Unit:GetPetGUID() end

---Returns the Unit's power amount for given power type.
---@param type number
---@return number
function Unit:GetPower(type) end

---Returns the Unit's power percent for given power type.
---@param type number
---@return number
function Unit:GetPowerPct(type) end

---Returns the Unit's current power type.
---@return Powers
function Unit:GetPowerType() end

---Returns the Unit's race ID.
---@return Races
function Unit:GetRace() end

---Returns the Unit's race's name in given or default locale or nil.
---@param locale? LocaleConstant
---@return string
function Unit:GetRaceAsString(locale) end

---Returns the race mask
---@return number
function Unit:GetRaceMask() end

---Returns the Unit's speed of given [UnitMoveType].
---@param type UnitMoveType
---@return number
function Unit:GetSpeed(type) end

---Returns the Unit's speed rate of given [UnitMoveType].
---@param type UnitMoveType
---@return number
function Unit:GetSpeedRate(type) end

---Returns the Unit's current stand state.
---@return number
function Unit:GetStandState() end

---Returns Unit's specified stat
---@param statType number
---@return number
function Unit:GetStat(statType) end

---Returns the threat of a Unit.
---@param target Unit
---@return number
function Unit:GetThreat(target) end

---Returns the Unit's threat list.
---@return table
function Unit:GetThreatList() end

---Returns a table containing unfriendly Unit's within given range of the Unit.
---@param range? number
---@return table
function Unit:GetUnfriendlyUnitsInRange(range) end

---Returns Unit's Vehicle methods
---@return Vehicle
function Unit:GetVehicleKit() end

---Returns the Unit's current victim target or nil.
---@return Unit
function Unit:GetVictim() end

---The Unit modifies a specific stat
---@param stat number
---@param type number
---@param value number
---@param apply? boolean
function Unit:HandleStatModifier(stat, type, value, apply) end

---Returns true if the Unit has an aura from the given spell entry.
---@param spell number
---@return boolean
function Unit:HasAura(spell) end

---Returns true if the Unit has the given unit state.
---@param state UnitState
---@return boolean
function Unit:HasUnitState(state) end

---Returns true if the Unit's health is above the given percentage.
---@param healthpct number
---@return boolean
function Unit:HealthAbovePct(healthpct) end

---Returns true if the Unit's health is below the given percentage.
---@param healthpct number
---@return boolean
function Unit:HealthBelowPct(healthpct) end

---Interrupts Unit's spell state, casting, etc.
---@param spellType number
---@param delayed? boolean
function Unit:InterruptSpell(spellType, delayed) end

---Returns true if the Unit is alive.
---@return boolean
function Unit:IsAlive() end

---Returns true if the Unit is an armorer and can repair equipment.
---@return boolean
function Unit:IsArmorer() end

---Returns true if the Unit is attacking a player.
---@return boolean
function Unit:IsAttackingPlayer() end

---Returns true if the Unit an auctioneer.
---@return boolean
function Unit:IsAuctioneer() end

---Returns true if the Unit is a banker.
---@return boolean
function Unit:IsBanker() end

---Returns true if the Unit is a battle master.
---@return boolean
function Unit:IsBattleMaster() end

---Returns true if the Unit is casting a spell
---@return boolean
function Unit:IsCasting() end

---Returns true if the Unit is a charmed.
---@return boolean
function Unit:IsCharmed() end

---Returns true if the Unit is dead.
---@return boolean
function Unit:IsDead() end

---Returns true if the Unit is dying.
---@return boolean
function Unit:IsDying() end

---Returns true if the Unit has full health.
---@return boolean
function Unit:IsFullHealth() end

---Returns true if the Unit is able to show a gossip window.
---@return boolean
function Unit:IsGossip() end

---Returns true if the Unit a guild master.
---@return boolean
function Unit:IsGuildMaster() end

---Returns true if the Unit is in an accessible place for the given Creature.
---@param obj WorldObject
---@param radius number
---@return boolean
function Unit:IsInAccessiblePlaceFor(obj, radius) end

---Returns true if the Unit is in combat.
---@return boolean
function Unit:IsInCombat() end

---Returns true if the Unit is in water.
---@return boolean
function Unit:IsInWater() end

---Returns true if the Unit an innkeeper.
---@return boolean
function Unit:IsInnkeeper() end

---Returns true if the Unit is mounted.
---@return boolean
function Unit:IsMounted() end

---Returns true if the Unit is on a Vehicle.
---@return boolean
function Unit:IsOnVehicle() end

---Returns true if the Unit flagged for PvP.
---@return boolean
function Unit:IsPvPFlagged() end

---Returns true if the Unit is a quest giver.
---@return boolean
function Unit:IsQuestGiver() end

---Returns true if the Unit is rooted.
---@return boolean
function Unit:IsRooted() end

---Returns true if the Unit provides services like vendor, training and auction.
---@return boolean
function Unit:IsServiceProvider() end

---Returns true if the Unit is a spirit guide.
---@return boolean
function Unit:IsSpiritGuide() end

---Returns true if the Unit is a spirit healer.
---@return boolean
function Unit:IsSpiritHealer() end

---Returns true if the Unit is a spirit guide or spirit healer.
---@return boolean
function Unit:IsSpiritService() end

---Returns true if the Unit is standing.
---@return boolean
function Unit:IsStandState() end

---Returns true if the Unit is not moving.
---@return boolean
function Unit:IsStopped() end

---Returns true if the Unit is a tabard designer.
---@return boolean
function Unit:IsTabardDesigner() end

---Returns true if the Unit is a taxi master.
---@return boolean
function Unit:IsTaxi() end

---Returns true if the Unit a trainer.
---@return boolean
function Unit:IsTrainer() end

---Returns true if the Unit is under water.
---@return boolean
function Unit:IsUnderWater() end

---Returns true if the Unit is a vendor.
---@return boolean
function Unit:IsVendor() end

---Makes the Unit kill the target Unit
---@param target Unit
---@param durLoss? boolean
function Unit:Kill(target, durLoss) end

---modifies the Unit's power amount for the given power type.
---@param amount number
---@param type number
function Unit:ModifyPower(amount, type) end

---Modifies threat in pct to the Unit from the victim
---@param victim Unit
---@param percent number
function Unit:ModifyThreatPct(victim, percent) end

---Mounts the Unit on the given displayID/modelID.
---@param displayId number
function Unit:Mount(displayId) end

---The Unit will chase the target
---@param target Unit
---@param dist? number
---@param angle? number
function Unit:MoveChase(target, dist, angle) end

---Clears the Unit's movement
---@param reset? boolean
function Unit:MoveClear(reset) end

---The Unit will move confused
function Unit:MoveConfused() end

---The Unit's movement expires and clears movement
---@param reset? boolean
function Unit:MoveExpire(reset) end

---The Unit will flee
---@param target Unit
---@param time? number
function Unit:MoveFleeing(target, time) end

---The Unit will follow the target
---@param target Unit
---@param dist? number
---@param angle? number
function Unit:MoveFollow(target, dist, angle) end

---The Unit will move to its set home location
function Unit:MoveHome() end

---The Unit will be idle
function Unit:MoveIdle() end

---Makes the Unit jump to the coordinates
---@param x number
---@param y number
---@param z number
---@param zSpeed number
---@param maxHeight number
---@param id? number
function Unit:MoveJump(x, y, z, zSpeed, maxHeight, id) end

---The Unit will move at random
---@param radius number
function Unit:MoveRandom(radius) end

---Stops the Unit's movement
function Unit:MoveStop() end

---The Unit will move to the coordinates
---@param id number
---@param x number
---@param y number
---@param z number
---@param genPath? boolean
function Unit:MoveTo(id, x, y, z, genPath) end

---Makes the Unit teleport to given coordinates within same map.
---@param x number
---@param y number
---@param z number
---@param o number
function Unit:NearTeleport(x, y, z, o) end

---Makes the Unit perform the given emote.
---@param emoteId number
function Unit:PerformEmote(emoteId) end

---Removes all Aura's from the Unit.
function Unit:RemoveAllAuras() end

---Removes all positive visible Aura's from the Unit.
function Unit:RemoveArenaAuras() end

---Removes Aura of the given spell entry from the Unit.
---@param spell number
function Unit:RemoveAura(spell) end

---Resets the Unit's threat list, setting all threat targets' threat to 0.
function Unit:ResetAllThreat() end

---Sends chat message to Player
---@param type number
---@param lang number
---@param msg string
---@param target Player
function Unit:SendChatMessageToPlayer(type, lang, msg, target) end

---The Unit will emote the message
---@param msg string
---@param receiver? Unit
---@param bossEmote? boolean
function Unit:SendUnitEmote(msg, receiver, bossEmote) end

---The Unit will say the message
---@param msg string
---@param language number
function Unit:SendUnitSay(msg, language) end

---The Unit will whisper the message to a Player
---@param msg string
---@param lang number
---@param receiver Player
---@param bossWhisper? boolean
function Unit:SendUnitWhisper(msg, lang, receiver, bossWhisper) end

---The Unit will yell the message
---@param msg string
---@param language number
function Unit:SendUnitYell(msg, language) end

---Confuses the Unit, if 'false' specified, the Unit is no longer confused.
---@param apply? boolean
function Unit:SetConfused(apply) end

---Sets creator GUID
---@param guid number
function Unit:SetCreatorGUID(guid) end

---Sets the Unit's critter companion by GUID.
---@param guid ObjectGuid
function Unit:SetCritterGUID(guid) end

---Sets the Unit's modelID.
---@param displayId number
function Unit:SetDisplayId(displayId) end

---Sets the Unit's FFA flag on or off.
---@param apply? boolean
function Unit:SetFFA(apply) end

---Sets the Unit's facing/orientation.
---@param orientation number
function Unit:SetFacing(orientation) end

---Sets the Unit to face the given WorldObject's direction.
---@param target WorldObject
function Unit:SetFacingToObject(target) end

---Sets the Unit's faction.
---@param faction number
function Unit:SetFaction(faction) end

---Fears the Unit, if 'false' specified, the Unit is no longer feared.
---@param apply? boolean
function Unit:SetFeared(apply) end

---Sets the Unit's health.
---@param health number
function Unit:SetHealth(health) end

---Sets a mechanic immunity for the Unit.
---@param immunity number
---@param apply? boolean
function Unit:SetImmuneTo(immunity, apply) end

---Sets the Unit in combat with the enemy Unit.
---@param enemy Unit
function Unit:SetInCombatWith(enemy) end

---Sets the Unit's level.
---@param level number
function Unit:SetLevel(level) end

---Sets the Unit's max health.
---@param maxHealth number
function Unit:SetMaxHealth(maxHealth) end

---Sets the Unit's max power amount for the given power type.
---@param type number
---@param maxPower number
function Unit:SetMaxPower(type, maxPower) end

---Sets the Unit's name internally.
---@param name string
function Unit:SetName(name) end

---Sets the Unit's native/default modelID.
---@param displayId number
function Unit:SetNativeDisplayId(displayId) end

---Sets the Unit's owner GUID to given GUID.
---@param guid number
function Unit:SetOwnerGUID(guid) end

---Sets pet GUID
---@param guid number
function Unit:SetPetGUID(guid) end

---Sets the Unit's power amount for the given power type.
---@param amount number
---@param type number
function Unit:SetPower(amount, type) end

---Sets the Unit's power type.
---@param type Powers
function Unit:SetPowerType(type) end

---Sets the Unit's PvP on or off.
---@param apply? boolean
function Unit:SetPvP(apply) end

---Roots the Unit to the ground, if 'false' specified, unroots the Unit.
---@param apply? boolean
function Unit:SetRooted(apply) end

---Sets the Unit's sanctuary flag on or off.
---@param apply? boolean
function Unit:SetSanctuary(apply) end

---Sets the Unit's sheath state.
---@param sheathState SheathState
function Unit:SetSheath(sheathState) end

---Sets the Unit's speed of given [UnitMoveType] to given speed. If forced, packets sent to clients forcing the visual change.
---@param type UnitMoveType
---@param rate number
---@param forced? boolean
function Unit:SetSpeed(type, rate, forced) end

---Sets the Unit's speed rate of given [UnitMoveType] to given rate. If forced, packets sent to clients forcing the visual change.
---@param type UnitMoveType
---@param rate number
---@param forced? boolean
function Unit:SetSpeedRate(type, rate, forced) end

---Sets the Unit's stand state
---@param state number
function Unit:SetStandState(state) end

---Toggles (Sets) Unit's water walking
---@param enable? boolean
function Unit:SetWaterWalk(enable) end

---Stops the Unit's current spell cast
---@param spell? number
function Unit:StopSpellCast(spell) end

