---@meta

---@class Unit : Object, WorldObject
Unit = {}

---Adds the Aura of the given spell entry on the given target from the Unit.
---@param spell number
---@param target Unit
---@param aura Aura
---@return Aura
function Unit:AddAura(spell, target, aura) end

---Adds threat to the Unit from the victim.
---@param victim Unit
---@param threat number
---@param schoolMask SpellSchoolMask
---@param spell number
function Unit:AddThreat(victim, threat, schoolMask, spell) end

---Adds the given unit state for the Unit.
---@param state UnitState
function Unit:AddUnitState(state) end

---The Unit tries to attack a given target
---@param who Unit
---@param meleeAttack boolean
function Unit:Attack(who, meleeAttack) end

---The Unit stops attacking its target
---@param isAttacking boolean
---@return boolean
function Unit:AttackStop(isAttacking) end

---Casts the Spell at target Unit with custom basepoints or casters. See also Unit:CastSpell.
---@param target Unit
---@param spell number
---@param triggered boolean
---@param bp0 number
---@param bp1 number
---@param bp2 number
---@param castItem Item
---@param originalCaster number
function Unit:CastCustomSpell(target, spell, triggered, bp0, bp1, bp2, castItem, originalCaster) end

---Makes the Unit cast the spell on the target.
---@param target Unit
---@param spell number
---@param triggered boolean
function Unit:CastSpell(target, spell, triggered) end

---Makes the Unit cast the spell to the given coordinates, used for area effect spells.
---@param x number
---@param y number
---@param z number
---@param spell number
---@param triggered boolean
function Unit:CastSpellAoF(x, y, z, spell, triggered) end

---Clears the Unit's combat
function Unit:ClearInCombat() end

---Clears the Unit's threat list.
function Unit:ClearThreatList() end

---Removes the given unit state from the Unit.
---@param state UnitState
function Unit:ClearUnitState(state) end

---Returns calculated percentage from Health
---@param percentage number
---@return number
function Unit:CountPctFromCurHealth(percentage) end

---Returns calculated percentage from Max Health
---@param percentage number
---@return number
function Unit:CountPctFromMaxHealth(percentage) end

---Unmorphs the Unit setting it's display ID back to the native display ID.
function Unit:DeMorph() end

---Makes the Unit damage the target Unit
---@param target Unit
---@param damage number
---@param durabilityloss boolean
---@param school SpellSchools
---@param spell number
function Unit:DealDamage(target, damage, durabilityloss, school, spell) end

---Makes the Unit heal the target Unit with given spell
---@param target Unit
---@param spell number
---@param amount number
---@param critical boolean
function Unit:DealHeal(target, spell, amount, critical) end

---Dismounts the Unit.
function Unit:Dismount() end

---Makes the Unit perform the given emote continuously.
---@param emoteId number
function Unit:EmoteState(emoteId) end

---Returns the Unit's attackers.
---@param attackers table
---@return table
function Unit:GetAttackers(attackers) end

---Returns the Aura of the given spell entry on the Unit or nil.
---@param spellID number
---@param aura Aura
---@return Aura
function Unit:GetAura(spellID, aura) end

---Returns the Unit's base spell power
---@param spellSchool number
---@param spellPower number
---@return number
function Unit:GetBaseSpellPower(spellSchool, spellPower) end

---Returns the GUID of the Unit's charmed entity.
---@param charmedGUID number
---@return number
function Unit:GetCharmGUID(charmedGUID) end

---Returns the Unit's charmer's GUID.
---@param charmerGUID number
---@return number
function Unit:GetCharmerGUID(charmerGUID) end

---Returns the Unit's class ID.
---@param class Classes
---@return Classes
function Unit:GetClass(class) end

---Returns the Unit's class' name in given or default locale or nil.
---@param locale LocaleConstant
---@param className string
---@return string
function Unit:GetClassAsString(locale, className) end

---Returns the class mask
---@param classmask number
---@return number
function Unit:GetClassMask(classmask) end

---Returns the GUID of the Unit's charmer or owner.
---@param controllerGUID number
---@return number
function Unit:GetControllerGUID(controllerGUID) end

---Returns the GUID of the Unit's charmer or owner or its own GUID.
---@param controllerGUID number
---@return number
function Unit:GetControllerGUIDS(controllerGUID) end

---Returns the Unit's creator's GUID.
---@param creatorGUID number
---@return number
function Unit:GetCreatorGUID(creatorGUID) end

---Returns the Unit's creature type ID (enumerated in CreatureType.dbc).
---@param creatureType CreatureType
---@return CreatureType
function Unit:GetCreatureType(creatureType) end

---Returns the Critter Guid
---@param critterGuid number
---@return number
function Unit:GetCritterGUID(critterGuid) end

---Returns the currently casted Spell of given type or nil.
---@param spellType CurrentSpellTypes
---@param castedSpell Spell
---@return Spell
function Unit:GetCurrentSpell(spellType, castedSpell) end

---Returns the Unit's current display ID.
---@param displayId number
---@return number
function Unit:GetDisplayId(displayId) end

---Returns the Unit's faction ID.
---@param faction number
---@return number
function Unit:GetFaction(faction) end

---Returns a table containing friendly Unit's within given range of the Unit.
---@param range number
---@param friendyUnits table
---@return table
function Unit:GetFriendlyUnitsInRange(range, friendyUnits) end

---Returns the Unit's gender.
---@param gender number
---@return number
function Unit:GetGender(gender) end

---Returns the Unit's health amount.
---@param healthAmount number
---@return number
function Unit:GetHealth(healthAmount) end

---Returns the Unit's health percent.
---@param healthPct number
---@return number
function Unit:GetHealthPct(healthPct) end

---Returns the Unit's level.
---@param level number
---@return number
function Unit:GetLevel(level) end

---Returns the Unit's max health.
---@param maxHealth number
---@return number
function Unit:GetMaxHealth(maxHealth) end

---Returns the Unit's max power amount for given power type.
---@param type number
---@param maxPowerAmount number
---@return number
function Unit:GetMaxPower(type, maxPowerAmount) end

---Returns the Unit's mount's modelID.
---@param mountId number
---@return number
function Unit:GetMountId(mountId) end

---Returns the current movement type for this Unit.
---@param movementType MovementGeneratorType
---@return MovementGeneratorType
function Unit:GetMovementType(movementType) end

---Returns the Unit's native/original display ID.
---@param displayId number
---@return number
function Unit:GetNativeDisplayId(displayId) end

---Returns the Unit's owner.
---@param owner Unit
---@return Unit
function Unit:GetOwner(owner) end

---Returns the Unit's owner's GUID.
---@param ownerGUID number
---@return number
function Unit:GetOwnerGUID(ownerGUID) end

---Returns the GUID of the Unit's pet.
---@param petGUID number
---@return number
function Unit:GetPetGUID(petGUID) end

---Returns the Unit's power amount for given power type.
---@param type number
---@param powerAmount number
---@return number
function Unit:GetPower(type, powerAmount) end

---Returns the Unit's power percent for given power type.
---@param type number
---@param powerPct number
---@return number
function Unit:GetPowerPct(type, powerPct) end

---Returns the Unit's current power type.
---@param powerType Powers
---@return Powers
function Unit:GetPowerType(powerType) end

---Returns the Unit's race ID.
---@param race Races
---@return Races
function Unit:GetRace(race) end

---Returns the Unit's race's name in given or default locale or nil.
---@param locale LocaleConstant
---@param raceName string
---@return string
function Unit:GetRaceAsString(locale, raceName) end

---Returns the race mask
---@param racemask number
---@return number
function Unit:GetRaceMask(racemask) end

---Returns the Unit's speed of given [UnitMoveType].
---@param type UnitMoveType
---@param speed number
---@return number
function Unit:GetSpeed(type, speed) end

---Returns the Unit's speed rate of given [UnitMoveType].
---@param type UnitMoveType
---@param speed number
---@return number
function Unit:GetSpeedRate(type, speed) end

---Returns the Unit's current stand state.
---@param standState number
---@return number
function Unit:GetStandState(standState) end

---Returns Unit's specified stat
---@param statType number
---@param stat number
---@return number
function Unit:GetStat(statType, stat) end

---Returns the Unit's threat list.
---@param threatList table
---@return table
function Unit:GetThreatList(threatList) end

---Returns a table containing unfriendly Unit's within given range of the Unit.
---@param range number
---@param unfriendyUnits table
---@return table
function Unit:GetUnfriendlyUnitsInRange(range, unfriendyUnits) end

function Unit:GetVehicle() end

---Returns Unit's Vehicle methods
---@param vehicle Vehicle
---@return Vehicle
function Unit:GetVehicleKit(vehicle) end

---Returns the Unit's current victim target or nil.
---@param victim Unit
---@return Unit
function Unit:GetVictim(victim) end

---The Unit modifies a specific stat
---@param stat number
---@param type number
---@param value number
---@param apply boolean
function Unit:HandleStatModifier(stat, type, value, apply) end

---Returns true if the Unit has an aura from the given spell entry.
---@param spell number
---@param hasAura boolean
---@return boolean
function Unit:HasAura(spell, hasAura) end

---Returns true if the Unit has the given unit state.
---@param state UnitState
---@param hasState boolean
---@return boolean
function Unit:HasUnitState(state, hasState) end

---Returns true if the Unit's health is above the given percentage.
---@param healthpct number
---@param isAbove boolean
---@return boolean
function Unit:HealthAbovePct(healthpct, isAbove) end

---Returns true if the Unit's health is below the given percentage.
---@param healthpct number
---@param isBelow boolean
---@return boolean
function Unit:HealthBelowPct(healthpct, isBelow) end

---Interrupts Unit's spell state, casting, etc.
---@param spellType number
---@param delayed boolean
function Unit:InterruptSpell(spellType, delayed) end

---Returns true if the Unit is alive.
---@param isAlive boolean
---@return boolean
function Unit:IsAlive(isAlive) end

---Returns true if the Unit is an armorer and can repair equipment.
---@param isArmorer boolean
---@return boolean
function Unit:IsArmorer(isArmorer) end

---Returns true if the Unit is attacking a player.
---@param isAttackingPlayer boolean
---@return boolean
function Unit:IsAttackingPlayer(isAttackingPlayer) end

---Returns true if the Unit an auctioneer.
---@param isAuctioneer boolean
---@return boolean
function Unit:IsAuctioneer(isAuctioneer) end

---Returns true if the Unit is a banker.
---@param isBanker boolean
---@return boolean
function Unit:IsBanker(isBanker) end

---Returns true if the Unit is a battle master.
---@param isBattleMaster boolean
---@return boolean
function Unit:IsBattleMaster(isBattleMaster) end

---Returns true if the Unit is casting a spell
---@param isCasting boolean
---@return boolean
function Unit:IsCasting(isCasting) end

---Returns true if the Unit is a charmed.
---@param isCharmed boolean
---@return boolean
function Unit:IsCharmed(isCharmed) end

---Returns true if the Unit is dead.
---@param isDead boolean
---@return boolean
function Unit:IsDead(isDead) end

---Returns true if the Unit is dying.
---@param isDying boolean
---@return boolean
function Unit:IsDying(isDying) end

---Returns true if the Unit has full health.
---@param hasFullHealth boolean
---@return boolean
function Unit:IsFullHealth(hasFullHealth) end

---Returns true if the Unit is able to show a gossip window.
---@param hasGossip boolean
---@return boolean
function Unit:IsGossip(hasGossip) end

---Returns true if the Unit a guild master.
---@param isGuildMaster boolean
---@return boolean
function Unit:IsGuildMaster(isGuildMaster) end

---Returns true if the Unit is in an accessible place for the given Creature.
---@param obj WorldObject
---@param radius number
---@param isAccessible boolean
---@return boolean
function Unit:IsInAccessiblePlaceFor(obj, radius, isAccessible) end

---Returns true if the Unit is in combat.
---@param inCombat boolean
---@return boolean
function Unit:IsInCombat(inCombat) end

---Returns true if the Unit is in water.
---@param inWater boolean
---@return boolean
function Unit:IsInWater(inWater) end

---Returns true if the Unit an innkeeper.
---@param isInnkeeper boolean
---@return boolean
function Unit:IsInnkeeper(isInnkeeper) end

---Returns true if the Unit is mounted.
---@param isMounted boolean
---@return boolean
function Unit:IsMounted(isMounted) end

---Returns true if the Unit is on a Vehicle.
---@param isOnVehicle boolean
---@return boolean
function Unit:IsOnVehicle(isOnVehicle) end

---Returns true if the Unit flagged for PvP.
---@param isPvP boolean
---@return boolean
function Unit:IsPvPFlagged(isPvP) end

---Returns true if the Unit is a quest giver.
---@param questGiver boolean
---@return boolean
function Unit:IsQuestGiver(questGiver) end

---Returns true if the Unit is rooted.
---@param isRooted boolean
---@return boolean
function Unit:IsRooted(isRooted) end

---Returns true if the Unit provides services like vendor, training and auction.
---@param isTabardDesigner boolean
---@return boolean
function Unit:IsServiceProvider(isTabardDesigner) end

---Returns true if the Unit is a spirit guide.
---@param isSpiritGuide boolean
---@return boolean
function Unit:IsSpiritGuide(isSpiritGuide) end

---Returns true if the Unit is a spirit healer.
---@param isSpiritHealer boolean
---@return boolean
function Unit:IsSpiritHealer(isSpiritHealer) end

---Returns true if the Unit is a spirit guide or spirit healer.
---@param isSpiritService boolean
---@return boolean
function Unit:IsSpiritService(isSpiritService) end

---Returns true if the Unit is standing.
---@param isStanding boolean
---@return boolean
function Unit:IsStandState(isStanding) end

---Returns true if the Unit is not moving.
---@param notMoving boolean
---@return boolean
function Unit:IsStopped(notMoving) end

---Returns true if the Unit is a tabard designer.
---@param isTabardDesigner boolean
---@return boolean
function Unit:IsTabardDesigner(isTabardDesigner) end

---Returns true if the Unit is a taxi master.
---@param isTaxi boolean
---@return boolean
function Unit:IsTaxi(isTaxi) end

---Returns true if the Unit a trainer.
---@param isTrainer boolean
---@return boolean
function Unit:IsTrainer(isTrainer) end

---Returns true if the Unit is under water.
---@param underWater boolean
---@return boolean
function Unit:IsUnderWater(underWater) end

---Returns true if the Unit is a vendor.
---@param isVendor boolean
---@return boolean
function Unit:IsVendor(isVendor) end

---Makes the Unit kill the target Unit
---@param target Unit
---@param durLoss boolean
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
---@param dist number
---@param angle number
function Unit:MoveChase(target, dist, angle) end

---Clears the Unit's movement
---@param reset boolean
function Unit:MoveClear(reset) end

---The Unit will move confused
function Unit:MoveConfused() end

---The Unit's movement expires and clears movement
---@param reset boolean
function Unit:MoveExpire(reset) end

---The Unit will flee
---@param target Unit
---@param time number
function Unit:MoveFleeing(target, time) end

---The Unit will follow the target
---@param target Unit
---@param dist number
---@param angle number
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
---@param id number
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
---@param genPath boolean
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

---Sends chat message to Player
---@param type number
---@param lang number
---@param msg string
---@param target Player
function Unit:SendChatMessageToPlayer(type, lang, msg, target) end

---The Unit will emote the message
---@param msg string
---@param receiver Unit
---@param bossEmote boolean
function Unit:SendUnitEmote(msg, receiver, bossEmote) end

---The Unit will say the message
---@param msg string
---@param language number
function Unit:SendUnitSay(msg, language) end

---The Unit will whisper the message to a Player
---@param msg string
---@param lang number
---@param receiver Player
---@param bossWhisper boolean
function Unit:SendUnitWhisper(msg, lang, receiver, bossWhisper) end

---The Unit will yell the message
---@param msg string
---@param language number
function Unit:SendUnitYell(msg, language) end

---Confuses the Unit, if 'false' specified, the Unit is no longer confused.
---@param apply boolean
function Unit:SetConfused(apply) end

---Sets creator GUID
---@param guid number
function Unit:SetCreatorGUID(guid) end

function Unit:SetCritterGUID() end

---Sets the Unit's modelID.
---@param displayId number
function Unit:SetDisplayId(displayId) end

---Sets the Unit's FFA flag on or off.
---@param apply boolean
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
---@param apply boolean
function Unit:SetFeared(apply) end

---Sets the Unit's health.
---@param health number
function Unit:SetHealth(health) end

---Sets a mechanic immunity for the Unit.
---@param immunity number
---@param apply boolean
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
---@param apply boolean
function Unit:SetPvP(apply) end

---Roots the Unit to the ground, if 'false' specified, unroots the Unit.
---@param apply boolean
function Unit:SetRooted(apply) end

---Sets the Unit's sanctuary flag on or off.
---@param apply boolean
function Unit:SetSanctuary(apply) end

---Sets the Unit's sheath state.
---@param sheathState SheathState
function Unit:SetSheath(sheathState) end

---Sets the Unit's speed of given [UnitMoveType] to given speed. If forced, packets sent to clients forcing the visual change.
---@param type UnitMoveType
---@param rate number
---@param forced boolean
function Unit:SetSpeed(type, rate, forced) end

---Sets the Unit's speed rate of given [UnitMoveType] to given rate. If forced, packets sent to clients forcing the visual change.
---@param type UnitMoveType
---@param rate number
---@param forced boolean
function Unit:SetSpeedRate(type, rate, forced) end

---Sets the Unit's stand state
---@param state number
function Unit:SetStandState(state) end

---Toggles (Sets) Unit's water walking
---@param enable boolean
function Unit:SetWaterWalk(enable) end

---Stops the Unit's current spell cast
---@param spell number
function Unit:StopSpellCast(spell) end

