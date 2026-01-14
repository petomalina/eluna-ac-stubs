---@meta

---@class Player : Object, WorldObject, Unit
Player = {}

---Abandons a quest from the Player's quest log.
---@param questId number
function Player:AbandonQuest(questId) end

---Adds armor proficiency to the Player.
---@param flag number
function Player:AddArmorProficiency(flag) end

---Add bonus talents count to the Player
---@param count? number
function Player:AddBonusTalent(count) end

---Adds combo points to the Player
---@param target Unit
---@param count number
function Player:AddComboPoints(target, count) end

---Adds the given amount of the specified item entry to the player.
---@param entry number
---@param itemCount? number
---@return Item
function Player:AddItem(entry, itemCount) end

---Adds a specified number of lifetime honorable kills to the Player.
---@param player Player
---@param kills number
function Player:AddLifetimeKills(player, kills) end

---Tries to add the given quest entry for the Player.
---@param entry number
function Player:AddQuest(entry) end

---Adds weapon proficiency to the Player.
---@param flag number
function Player:AddWeaponProficiency(flag) end

---Advances all of the Players skills to the amount specified
---@param skillStep number
function Player:AdvanceAllSkills(skillStep) end

---Updates a skill for the Player and advances it by the specified step.
---@param skillId number
---@param step number
---@return boolean
function Player:AdvanceSkill(skillId, step) end

---Advances all of the Players weapon skills to the maximum amount available
function Player:AdvanceSkillsToMax() end

function Player:ApplyRatingMod() end

---Completes the Quest if a Quest area is explored, or completes the Quest
---@param quest number
function Player:AreaExploredOrEventHappens(quest) end

---Calculates reputation gain for the Player.
---@param source number
---@param creatureOrQuestLevel number
---@param rep number
---@param faction number
---@param noQuestBonus boolean
---@return number
function Player:CalculateReputationGain(source, creatureOrQuestLevel, rep, faction, noQuestBonus) end

---Returns true if the Player can add the specified quest, false otherwise.
---@param quest Quest
---@param msg boolean
---@return boolean
function Player:CanAddQuest(quest, msg) end

---Returns true if the Player can block incomming attacks, false otherwise.
---@return boolean
function Player:CanBlock() end

---Returns true if the Player satisfies all requirements to complete the quest entry.
---@param entry number
---@return boolean
function Player:CanCompleteQuest(entry) end

---Returns true if the Player satisfies all requirements to complete the quest entry.
---@param questId number
---@return boolean
function Player:CanCompleteRepeatableQuest(questId) end

---Returns true if the player can equip the given Item or item entry to the given slot, false otherwise.
---@param item Item
---@param entry number
---@param slot number
---@return boolean
function Player:CanEquipItem(item, entry, slot) end

---Returns true if the Player can fly, false otherwise.
---@return boolean
function Player:CanFly() end

---Returns true if the Player can interact with the specified quest giver, false otherwise.
---@param questGiver Object
---@return boolean
function Player:CanInteractWithQuestGiver(questGiver) end

---Returns true if the Player can parry incomming attacks, false otherwise.
---@return boolean
function Player:CanParry() end

---Returns true if the Player can resurrect their Pet and returns false otherwise.
---@return boolean
function Player:CanPetResurrect() end

---Returns true if the Player can resummon a Pet with the specified spell ID, and false otherwise.
---@param spellId number
---@return boolean
function Player:CanResummonPet(spellId) end

---Returns true if the Player satisfies all requirements to reward the quest entry.
---@param questId number
---@return boolean
function Player:CanRewardQuest(questId) end

---Returns true if the Player can see Death Knight Pets, and false otherwise.
---@return boolean
function Player:CanSeeDKPet() end

---Returns true if the Player can see the specified quest start, false otherwise.
---@param quest Quest
---@return boolean
function Player:CanSeeStartQuest(quest) end

---Returns true if the Player can share Quest specified by ID, false otherwise.
---@param entryId number
---@return boolean
function Player:CanShareQuest(entryId) end

---Returns true if the Player can currently communicate through chat, false otherwise.
---@return boolean
function Player:CanSpeak() end

---Returns true if the Player can take the specified quest, false otherwise.
---@param quest Quest
---@param msg boolean
---@return boolean
function Player:CanTakeQuest(quest, msg) end

---Returns true if the Player can tame exotic pets, and false otherwise.
---@return boolean
function Player:CanTameExoticPets() end

---Returns true if the Player can teleport, false otherwise.
---@return boolean
function Player:CanTeleport() end

---Returns true if the Player can Titan Grip, false otherwise.
---@return boolean
function Player:CanTitanGrip() end

---Returns true if the Player has permission to uninvite others from the current group, false otherwise.
---@return boolean
function Player:CanUninviteFromGroup() end

---Returns true if the Player can use the item or item entry specified, false otherwise.
---@param item Item
---@param entry number
---@return boolean
function Player:CanUseItem(item, entry) end

---Clears the Players combo points
function Player:ClearComboPoints() end

---Completes the given quest entry for the Player and tries to satisfy all quest requirements.
---@param entry number
function Player:CompleteQuest(entry) end

---Creates a tamed Pet from a Creature or creature entry.
---@param creatureEntry number
---@param creature Creature
---@param spellID? number
---@return Pet
function Player:CreatePet(creatureEntry, creature, spellID) end

---Returns a random number between the specified minimum and maximum values.
---@param minimum number
---@param maximum number
---@return number
function Player:DoRandomRoll(minimum, maximum) end

---Damages specified Item
---@param item Item
---@param percent number
function Player:DurabilityLoss(item, percent) end

---Damages all Items equipped. If inventory is true, damages Items in bags
---@param percent number
---@param inventory? boolean
function Player:DurabilityLossAll(percent, inventory) end

---Sets durability loss for an Item in the specified slot
---@param slot number
function Player:DurabilityPointLossForEquipSlot(slot) end

---Sets durability loss for the specified Item
---@param item Item
---@param points number
function Player:DurabilityPointsLoss(item, points) end

---Sets durability loss on all Items equipped
---@param points number
---@param inventory? boolean
function Player:DurabilityPointsLossAll(points, inventory) end

---Repairs Item at specified position.
---@param position number
---@param cost? boolean
---@param discountMod? number
function Player:DurabilityRepair(position, cost, discountMod) end

---Repairs all Items.
---@param takeCost? boolean
---@param discountMod? number
---@param guidBank? boolean
function Player:DurabilityRepairAll(takeCost, discountMod, guidBank) end

---Applies environmental damage to the Player.
---@param type number
---@param damage number
---@return number
function Player:EnvironmentalDamage(type, damage) end

---Equips the given item or item entry to the given slot. Returns the equipped item or nil.
---@param item Item
---@param entry number
---@param slot number
---@return Item
function Player:EquipItem(item, entry, slot) end

---Sets the given Quest entry failed for the Player.
---@param entry number
function Player:FailQuest(entry) end

---Returns the Players account ID
---@return number
function Player:GetAccountId() end

---Returns the Players account name
---@return string
function Player:GetAccountName() end

---Returns the progress of the Player for the specified achievement criteria.
---@param criteriaId number
---@return number
function Player:GetAchievementCriteriaProgress(criteriaId) end

---Returns the Players current amount of Achievement Points
---@return number
function Player:GetAchievementPoints() end

---Returns the Players active spec ID
---@return number
function Player:GetActiveSpec() end

---Returns the Player's ammo DPS.
---@return number
function Player:GetAmmoDPS() end

---Returns the Players current amount of Arena Points
---@return number
function Player:GetArenaPoints() end

---Returns the Player's armor proficiency flags.
---@return number
function Player:GetArmorProficiency() end

---Returns the average item level of the Player's equipment.
---@return number
function Player:GetAverageItemLevel() end

---Returns an item from the Player's bank by slot.
---@param slot number
---@return Item
function Player:GetBankItem(slot) end

---Returns the barber shop cost for the specified style changes.
---@param newhairstyle number
---@param newhaircolor number
---@param newfacialhair number
---@return number
function Player:GetBarberShopCost(newhairstyle, newhaircolor, newfacialhair) end

---Returns base skill value
---@param skill number
---@return number
function Player:GetBaseSkillValue(skill) end

---Returns the Players current BattleGround ID
---@return number
function Player:GetBattlegroundId() end

---Returns the Players current BattleGround type ID
---@return BattleGroundTypeId
function Player:GetBattlegroundTypeId() end

---Get bonus talents count from the Player
---@return number
function Player:GetBonusTalentCount() end

---Returns the faction ID the Player is currently flagged as champion for
---@return number
function Player:GetChampioningFaction() end

---Returns active GM chat tag
---@return number
function Player:GetChatTag() end

---Returns the Players amount of money in copper
---@return number
function Player:GetCoinage() end

---Returns Player's combo points
---@return number
function Player:GetComboPoints() end

---Returns Unit target combo points are on
---@return Unit
function Player:GetComboTarget() end

---Returns the Players current amount of Achievements Completed
---@return number
function Player:GetCompletedAchievementsCount() end

---Returns the Players completed quest count
---@return number
function Player:GetCompletedQuestsCount() end

---Returns the Players Corpse object
---@return Corpse
function Player:GetCorpse() end

---Returns the Player's character creation time.
---@return number
function Player:GetCreationTime() end

---Returns the Players database locale index
---@return number
function Player:GetDbLocaleIndex() end

---Returns the Players game client locale
---@return LocaleConstant
function Player:GetDbcLocale() end

---Returns raid or dungeon difficulty
---@param isRaid? boolean
---@return number
function Player:GetDifficulty(isRaid) end

---Returns the Player's dodge chance from agility.
---@return number
function Player:GetDodgeFromAgility() end

---Returns the Players current level of intoxication
---@return number
function Player:GetDrunkValue() end

---Returns a Players Item object by gear slot specified
---@param slot number
---@return Item
function Player:GetEquippedItemBySlot(slot) end

---Returns the Players free talent point amount
---@return number
function Player:GetFreeTalentPoints() end

---Returns the Players GM Rank
---@return AccountTypes
function Player:GetGMRank() end

---Returns the glyph ID in the specified glyph slot of the Player's current talent specialization.
---@param slotIndex number
---@return number
function Player:GetGlyph(slotIndex) end

---Returns the database textID of the WorldObject's gossip header text for the Player
---@param object WorldObject
---@return number
function Player:GetGossipTextId(object) end

---Returns the Players Group object
---@return Group
function Player:GetGroup() end

---Returns Group invitation
---@return Group
function Player:GetGroupInvite() end

---Returns the Players Guild object
---@return Guild
function Player:GetGuild() end

---Returns the Players current Guild ID
---@return number
function Player:GetGuildId() end

---Returns the name of the Players current Guild
---@return string
function Player:GetGuildName() end

---Returns the Players current guild rank
---@return number
function Player:GetGuildRank() end

---Returns health bonus from amount of stamina
---@return number
function Player:GetHealthBonusFromStamina() end

---Returns the Player homebind location.
function Player:GetHomebind() end

---Returns the Players current amount of Honor Points
---@return number
function Player:GetHonorPoints() end

---Returns the amount of time the Player has spent ingame
---@return number
function Player:GetInGameTime() end

---Returns an item from the Player's inventory by slot.
---@param slot number
---@return Item
function Player:GetInventoryItem(slot) end

---Returns an Item from the player by entry.
---@param entryId number
---@return Item
function Player:GetItemByEntry(entryId) end

---Returns an Item from the player by guid.
---@param guid number
---@return Item
function Player:GetItemByGUID(guid) end

---Returns an item in given bag on given slot.
---@param bag number
---@param slot number
---@return Item
function Player:GetItemByPos(bag, slot) end

---Returns amount of the specified Item the Player has.
---@param entry number
---@param checkinBank? boolean
---@return number
function Player:GetItemCount(entry, checkinBank) end

---Returns known taxi nodes (flight paths) that the player has unlocked.
---@return table
function Player:GetKnownTaxiNodes() end

---Returns the last pet number for the Player.
---@return number
function Player:GetLastPetNumber() end

---Returns the spell ID of the Player's last Pet summoning spell.
---@return number
function Player:GetLastPetSpell() end

---Returns the Players current latency in MS
---@return number
function Player:GetLatency() end

---Returns the Players time played at current level
---@return number
function Player:GetLevelPlayedTime() end

---Returns the Players lifetime Honorable Kills
---@return number
function Player:GetLifetimeKills() end

---Returns the amount of mails in the player's mailbox.
---@return number
function Player:GetMailCount() end

---Returns a mailed Item by guid.
---@param guid number
---@return Item
function Player:GetMailItem(guid) end

---Returns mana bonus from amount of intellect
---@return number
function Player:GetManaBonusFromIntellect() end

---Returns max value of specified skill
---@param skill number
---@return number
function Player:GetMaxSkillValue(skill) end

---Returns the Player's melee critical hit chance from agility.
---@return number
function Player:GetMeleeCritFromAgility() end

---Returns a random Raid Member Player object within radius specified of Player
---@param radius number
---@return Player
function Player:GetNextRandomRaidMember(radius) end

---Returns Players original Group object
---@return Group
function Player:GetOriginalGroup() end

---Returns Players original sub group
---@return number
function Player:GetOriginalSubGroup() end

---Returns the Player's current Pet, if any.
---@return Pet
function Player:GetPet() end

---Returns the normal phase of the player instead of the actual phase possibly containing GM phase
---@return number
function Player:GetPhaseMaskForSpawn() end

---Returns the Players IP address
---@return string
function Player:GetPlayerIP() end

---Gets a setting value for the Player
---@param source string
---@param index number
function Player:GetPlayerSettingValue(source, index) end

---Returns max value of specified skill without bonus'
---@param skill number
---@return number
function Player:GetPureMaxSkillValue(skill) end

---Returns skill value without bonus'
---@param skill number
---@return number
function Player:GetPureSkillValue(skill) end

---Returns the quest level of the Players Quest specified by object
---@param questId number
---@return QuestStatus
function Player:GetQuestLevel(questId) end

---Returns true if the Players Quest specified by entry ID has been rewarded, false otherwise.
---@param questId number
---@return boolean
function Player:GetQuestRewardStatus(questId) end

---Returns the Quest ID for the quest in the specified quest log slot.
---@param slot number
---@return number
function Player:GetQuestSlotQuestId(slot) end

---Returns the status of the Players Quest specified by entry ID
---@param questId number
---@return QuestStatus
function Player:GetQuestStatus(questId) end

---Returns the amount of reputation the Player has with the faction specified
---@param faction number
---@return number
function Player:GetReputation(faction) end

---Returns the Players reputation rank of faction specified
---@param faction number
---@return ReputationRank
function Player:GetReputationRank(faction) end

---Returns Quest required Creature or GameObject count
---@param quest number
---@param entry number
---@return number
function Player:GetReqKillOrCastCurrentCount(quest, entry) end

---Returns the Players current resting bonus
---@return number
function Player:GetRestBonus() end

---Returns the Player's runes state for Death Knights.
---@return number
function Player:GetRunesState() end

---Returns the Players currently selected Unit object
---@return Unit
function Player:GetSelection() end

---Returns the Player's shield item.
---@return Item
function Player:GetShield() end

---Returns the Players current shield block value
---@return number
function Player:GetShieldBlockValue() end

---Returns the sight range of the Player for the specified target.
---@param target WorldObject
---@return number
function Player:GetSightRange(target) end

---Returns skill permanent bonus value
---@param skill number
---@param bonusVal number
function Player:GetSkillPermBonusValue(skill, bonusVal) end

---Returns skill temporary bonus value
---@param skill number
---@param bonusVal number
function Player:GetSkillTempBonusValue(skill, bonusVal) end

---Returns skill value
---@param skill number
---@return number
function Player:GetSkillValue(skill) end

---Returns the amount of available specs the Player currently has
---@return number
function Player:GetSpecsCount() end

---Returns the Players cooldown delay by specified Spell ID
---@param spellId number
---@return number
function Player:GetSpellCooldownDelay(spellId) end

---Returns the Player's spell critical hit chance from intellect.
---@return number
function Player:GetSpellCritFromIntellect() end

---Returns the Player spells list
---@return table
function Player:GetSpells() end

---Returns Players current sub group
---@return number
function Player:GetSubGroup() end

---Returns the Players [TeamId]
---@return TeamId
function Player:GetTeam() end

---Returns the temporary unsummoned pet number for the Player.
---@return number
function Player:GetTemporaryUnsummonedPetNumber() end

---Returns the Players total time played
---@return number
function Player:GetTotalPlayedTime() end

---Returns the Player that is currently trading with this Player
---@return Player
function Player:GetTrader() end

---Returns the Player's current viewpoint target.
---@return WorldObject
function Player:GetViewpoint() end

---Returns the Player's weapon proficiency flags.
---@return number
function Player:GetWeaponProficiency() end

---Returns the Player's experience points
---@return number
function Player:GetXP() end

---Returns rested experience bonus
---@param xp number
---@return number
function Player:GetXPRestBonus(xp) end

---Gives the Player experience
---@param xp number
---@param victim? Unit
function Player:GiveXP(xp, victim) end

---Adds the gossip items to the Player's gossip for the quests the given WorldObject can offer to the player.
---@param source WorldObject
function Player:GossipAddQuests(source) end

---Clears the Players current gossip item list.
function Player:GossipClearMenu() end

---Closes the Players currently open Gossip Menu.
function Player:GossipComplete() end

---Adds a new item to the gossip menu shown to the Player on next call to Player:GossipSendMenu.
---@param icon number
---@param msg string
---@param sender number
---@param intid number
---@param code? boolean
---@param popup? string
---@param money? number
function Player:GossipMenuAddItem(icon, msg, sender, intid, code, popup, money) end

---Sends the current gossip items of the player to him as a gossip menu with header text from the given textId.
---@param npc_text number
---@param sender Object
---@param menu_id number
function Player:GossipSendMenu(npc_text, sender, menu_id) end

---Sends POI to the location on your map
---@param x number
---@param y number
---@param icon number
---@param flags number
---@param data number
---@param iconText string
function Player:GossipSendPOI(x, y, icon, flags, data, iconText) end

---Creates a new Group with the creator Player as leader.
---@param invited Player
---@return Group
function Player:GroupCreate(invited) end

---Completes a Quest if in a Group
---@param quest number
---@param obj WorldObject
function Player:GroupEventHappens(quest, obj) end

---Makes the Player invite another player to a group.
---@param invited Player
---@return boolean
function Player:GroupInvite(invited) end

---Returns true if the Player has completed the specified achievement, false otherwise.
---@param achievementId number
---@return boolean
function Player:HasAchieved(achievementId) end

---Returns true if Player has specified login flag
---@param flag number
---@return boolean
function Player:HasAtLoginFlag(flag) end

---Returns true if the Player has a Caster Specialization, false otherwise.
---@return boolean
function Player:HasCasterSpec() end

---Returns true if the Player has a Heal Specialization, false otherwise.
---@return boolean
function Player:HasHealSpec() end

---Returns true if the Player has the given amount of item entry specified, false otherwise.
---@param itemId number
---@param count? number
---@param check_bank? boolean
---@return boolean
function Player:HasItem(itemId, count, check_bank) end

---Returns true if the Player has a Melee Specialization, false otherwise.
---@return boolean
function Player:HasMeleeSpec() end

---Returns true if the Player has an active Quest by specific ID, false otherwise.
---@param questId number
---@return boolean
function Player:HasQuest(questId) end

---Returns true if Player has Quest for GameObject
---@param entry number
---@return boolean
function Player:HasQuestForGO(entry) end

---Returns true if the Player has a quest for the item entry specified, false otherwise.
---@param entry number
---@return boolean
function Player:HasQuestForItem(entry) end

---Returns true if the Player has a skill by specific ID, false otherwise.
---@param skill number
---@return boolean
function Player:HasSkill(skill) end

---Returns true if the Player has a Spell by specific ID, false otherwise.
---@param spellId number
---@return boolean
function Player:HasSpell(spellId) end

---Returns true if the Spell specified by ID is currently on cooldown for the Player, false otherwise.
---@param spellId number
---@return boolean
function Player:HasSpellCooldown(spellId) end

---Returns true if the Player has a talent by ID in specified spec, false otherwise.
---@param spellId number
---@param spec number
---@return boolean
function Player:HasTalent(spellId, spec) end

---Returns true if the Player has a Tank Specialization, false otherwise.
---@return boolean
function Player:HasTankSpec() end

---Returns true if the Player has a title by specific ID, false otherwise.
---@param titleId number
---@return boolean
function Player:HasTitle(titleId) end

---Returns true if the Player has a title by bit index, false otherwise.
---@param bitIndex number
---@return boolean
function Player:HasTitleByIndex(bitIndex) end

---Returns true if the Player is currently in an arena, false otherwise.
---@return boolean
function Player:InArena() end

---Returns true if the Player is currently in a BattleGround, false otherwise.
---@return boolean
function Player:InBattleground() end

---Returns true if the Player is currently in a BattleGround queue, false otherwise.
---@return boolean
function Player:InBattlegroundQueue() end

---Returns true if the Player is in a random LFG dungeon, false otherwise.
---@return boolean
function Player:InRandomLfgDungeon() end

---Sets the given quest entry incomplete for the Player.
---@param entry number
function Player:IncompleteQuest(entry) end

---Initializes taxi nodes for the Player's current level.
function Player:InitTaxiNodesForLevel() end

---Returns true if the Player is 'Away From Keyboard' flagged, false otherwise.
---@return boolean
function Player:IsAFK() end

---Returns true if the Player is accepting whispers, false otherwise.
---@return boolean
function Player:IsAcceptingWhispers() end

---Returns true if the Player is a part of the Alliance faction, false otherwise.
---@return boolean
function Player:IsAlliance() end

---Returns true if the Player is at group reward distance from the target, false otherwise.
---@param target WorldObject
---@return boolean
function Player:IsAtGroupRewardDistance(target) end

---Returns true if the Player is at loot reward distance from the target, false otherwise.
---@param target WorldObject
---@return boolean
function Player:IsAtLootRewardDistance(target) end

---Returns true if the Player is 'Do Not Disturb' flagged, false otherwise.
---@return boolean
function Player:IsDND() end

---Returns true if the Player has completed the daily quest, false otherwise.
---@param questId number
---@return boolean
function Player:IsDailyQuestDone(questId) end

---Returns true if the Player has a Pet (active or stored) and returns false otherwise.
---@return boolean
function Player:IsExistPet() end

---Returns true if the Player is flagged for Free-for-all PvP, false otherwise.
---@return boolean
function Player:IsFFAPvP() end

---Returns true if the Player is currently falling, false otherwise.
---@return boolean
function Player:IsFalling() end

---Returns true if the Player is currently flying, false otherwise.
---@return boolean
function Player:IsFlying() end

---Returns true if the Player is a Game Master, false otherwise.
---@return boolean
function Player:IsGM() end

---Returns true if the Player has GM chat enabled, false otherwise.
---@param player Player
---@return boolean
function Player:IsGMChat(player) end

---Returns true if the Player is currently visible to other players, false if hidden via GM invisibility.
---@param player Player
---@return boolean
function Player:IsGMVisible(player) end

---Returns true if the Player is in the same group and visible to the specified Player, false otherwise.
---@param player Player
---@param target Player
---@return boolean
function Player:IsGroupVisibleFor(player, target) end

---Returns true if the Player is eligible for Honor or XP gain by Unit specified, false otherwise.
---@param unit Unit
---@return boolean
function Player:IsHonorOrXPTarget(unit) end

---Returns true if the Player is a part of the Horde faction, false otherwise.
---@return boolean
function Player:IsHorde() end

---Returns true if the Player is immune to everything.
---@return boolean
function Player:IsImmuneToDamage() end

---Returns true if the Player is in an arena team specified by type, false otherwise.
---@param type number
---@return boolean
function Player:IsInArenaTeam(type) end

---Returns true if the Player is in a Group, false otherwise.
---@return boolean
function Player:IsInGroup() end

---Returns true if the Player is in a Guild, false otherwise.
---@return boolean
function Player:IsInGuild() end

---Returns true if the Player is currently in the same Group as another Player by object, false otherwise.
---@param player Player
---@return boolean
function Player:IsInSameGroupWith(player) end

---Returns true if the Player is currently in the same raid as another Player by object, false otherwise.
---@param player Player
---@return boolean
function Player:IsInSameRaidWith(player) end

---Returns true if the Player is currently in water, false otherwise.
---@return boolean
function Player:IsInWater() end

---Returns true if the Player is at maximum level, false otherwise.
---@return boolean
function Player:IsMaxLevel() end

---Returns true if the Player is currently moving, false otherwise.
---@return boolean
function Player:IsMoving() end

---Returns true if the Player needs to temporarily unsummon their Pet, and false otherwise.
---@return boolean
function Player:IsPetNeedBeTemporaryUnsummoned() end

---Returns true if the Player is flagged for PvP, false otherwise.
---@return boolean
function Player:IsPvP() end

---Returns true if the Player is currently rested, false otherwise.
---@return boolean
function Player:IsRested() end

---Returns true if the Player is a spectator, false otherwise.
---@return boolean
function Player:IsSpectator() end

---Returns true if the Player has taxi cheat activated, false otherwise.
---@return boolean
function Player:IsTaxiCheater() end

---Returns true if the Player is using the Looking for Group system, false otherwise.
---@return boolean
function Player:IsUsingLfg() end

---Returns true if the Player can see anoter Player specified by object, false otherwise.
---@param player Player
---@return boolean
function Player:IsVisibleForPlayer(player) end

---Kicks the Player from the server
function Player:KickPlayer() end

---Kills the Player
function Player:KillPlayer() end

---Gives Quest monster killed credit
---@param entry number
function Player:KilledMonsterCredit(entry) end

---Learns a pet talent for the specified Pet of the Player.
---@param petGuid number
---@param talentId number
---@param talentRank number
function Player:LearnPetTalent(petGuid, talentId, talentRank) end

---Teaches the Player the Spell specified by entry ID
---@param spellId number
function Player:LearnSpell(spellId) end

---Learn the Player the talent specified by talent_id and talentRank
---@param talent_id number
---@param talentRank number
function Player:LearnTalent(talent_id, talentRank) end

---Forces the Player to leave a BattleGround
---@param teleToEntry? boolean
function Player:LeaveBattleground(teleToEntry) end

---Forces the Player to log out
---@param saveToDb? boolean
function Player:LogoutPlayer(saveToDb) end

---Adds or detracts from the Players current Arena Points
---@param amount number
function Player:ModifyArenaPoints(amount) end

---Adds or detracts from the Players current Honor Points
---@param amount number
function Player:ModifyHonorPoints(amount) end

---Adds or subtracts from the Players money in copper
---@param copperAmt number
function Player:ModifyMoney(copperAmt) end

---Mutes the Player for the amount of seconds specified
---@param muteTime number
function Player:Mute(muteTime) end

---Removes the Player's ammo.
function Player:RemoveAmmo() end

---Remove cooldowns on spells that have less than 10 minutes of cooldown from the Player, similarly to when you enter an arena.
function Player:RemoveArenaSpellCooldowns() end

---Remove bonus talents count to the Player
---@param count? number
function Player:RemoveBonusTalent(count) end

---Forcefully removes the Player from a BattleGround raid group
function Player:RemoveFromBattlegroundRaid() end

---Forces the Player to leave a Group
function Player:RemoveFromGroup() end

---Removes the given amount of the specified Item from the player.
---@param item Item
---@param entry number
---@param itemCount? number
function Player:RemoveItem(item, entry, itemCount) end

---Removes specified amount of lifetime kills
---@param val number
function Player:RemoveLifetimeKills(val) end

---Removes the specified Pet from the Player.
---@param pet Pet
---@param mode PetSaveMode
---@param returnReagent? boolean
function Player:RemovePet(pet, mode, returnReagent) end

---Removes the specified player flag from the Player.
---@param flag number
function Player:RemovePlayerFlag(flag) end

---Removes the given quest entry from the Player.
---@param entry number
function Player:RemoveQuest(entry) end

---Removes the Spell from the Player
---@param entry number
function Player:RemoveSpell(entry) end

---Loots Player's bones for insignia
---@param looter Player
function Player:RemovedInsignia(looter) end

---Reset the Players completed achievements
function Player:ResetAchievements() end

---Resets all of the Player's cooldowns
function Player:ResetAllCooldowns() end

---Resets the Player's pet talents.
function Player:ResetPetTalents() end

---Resets cooldown of the specified spell
---@param spellId number
---@param update? boolean
function Player:ResetSpellCooldown(spellId, update) end

---Resets the Players talents
---@param noCost? boolean
function Player:ResetTalents(noCost) end

---Returns the Players accumulated talent reset cost
---@return number
function Player:ResetTalentsCost() end

---Resets cooldown of the specified category
---@param category number
---@param update? boolean
function Player:ResetTypeCooldowns(category, update) end

---Resummons the Player's pet if it was temporarily unsummoned.
function Player:ResummonPetTemporaryUnSummonedIfAny() end

---Resurrects the Player.
---@param healthPercent? number
---@param ressSickness? boolean
function Player:ResurrectPlayer(healthPercent, ressSickness) end

---Rewards the given quest entry for the Player if he has completed it.
---@param entry number
function Player:RewardQuest(entry) end

---Run a chat command as if the player typed it into the chat
---@param command string
function Player:RunCommand(command) end

---Saves the Player to the database
function Player:SaveToDB() end

---Sends say text from the Player
---@param text string
---@param lang number
function Player:Say(text, lang) end

---Sends addon message to the Player receiver
---@param prefix string
---@param message string
---@param channel ChatMsg
---@param receiver Player
function Player:SendAddonMessage(prefix, message, channel, receiver) end

---Sends an Area Trigger Message to the Player
---@param message string
function Player:SendAreaTriggerMessage(message) end

---Sends an auction house window to the Player from the Unit specified
---@param sender Unit
function Player:SendAuctionMenu(sender) end

---Sends a Broadcast Message to the Player
---@param message string
function Player:SendBroadcastMessage(message) end

---Starts a cinematic for the Player
---@param CinematicSequenceId number
function Player:SendCinematicStart(CinematicSequenceId) end

---Sends a guild invitation from the Players Guild to the Player object specified
---@param invitee Player
function Player:SendGuildInvite(invitee) end

---Sends a vendor window to the Player from the WorldObject specified.
---@param sender WorldObject
function Player:SendListInventory(sender) end

---Starts a movie for the Player
---@param MovieId number
function Player:SendMovieStart(MovieId) end

---Sends a Notification to the Player
---@param message string
function Player:SendNotification(message) end

---Sends a WorldPacket to the Player
---@param packet WorldPacket
---@param selfOnly? boolean
function Player:SendPacket(packet, selfOnly) end

---Shows a quest accepting window to the Player for the given quest.
---@param questId number
---@param activateAccept? boolean
function Player:SendQuestTemplate(questId, activateAccept) end

---Sends a bank window to the Player from the WorldObject specified.
---@param sender WorldObject
function Player:SendShowBank(sender) end

---Shows the mailbox window to the player from specified guid.
---@param guid? number
function Player:SendShowMailBox(guid) end

---Sends a spirit resurrection request to the Player
function Player:SendSpiritResurrect() end

---Sends a tabard vendor window to the Player from the WorldObject specified
---@param sender WorldObject
function Player:SendTabardVendorActivate(sender) end

---Sends a flightmaster window to the Player from the Creature specified
---@param sender Creature
function Player:SendTaxiMenu(sender) end

---Sends a trainer window to the Player from the Creature specified
---@param sender Creature
function Player:SendTrainerList(sender) end

---Sends an update for the world state to the Player
---@param field number
---@param value number
function Player:SendUpdateWorldState(field, value) end

---Toggles whether the Player accepts whispers or not
---@param acceptWhispers? boolean
function Player:SetAcceptWhispers(acceptWhispers) end

---Adds the specified achievement to the Players
---@param achievementid number
function Player:SetAchievement(achievementid) end

---Sets the Player's ammo item.
---@param itemEntry number
function Player:SetAmmo(itemEntry) end

---Sets the Players Arena Points to the amount specified
---@param arenaPoints number
function Player:SetArenaPoints(arenaPoints) end

---Sets the Players login flag to the flag specified
---@param flag number
function Player:SetAtLoginFlag(flag) end

---Sets the Players home location to the location specified
---@param x number
---@param y number
---@param z number
---@param mapId number
---@param areaId number
function Player:SetBindPoint(x, y, z, mapId, areaId) end

---Set bonus talent count to a specific count for the Player
---@param value number
function Player:SetBonusTalentCount(value) end

---Sets whether the Player can fly.
---@param activate? boolean
function Player:SetCanFly(activate) end

---Sets whether the Player can teleport.
---@param canTeleport boolean
function Player:SetCanTeleport(canTeleport) end

---Sets the Players amount of money to copper specified
---@param copperAmt number
function Player:SetCoinage(copperAmt) end

---Sets the Player's character creation time.
---@param creationTime number
function Player:SetCreationTime(creationTime) end

---Sets the Players intoxication level to the level specified
---@param drunkValue number
function Player:SetDrunkValue(drunkValue) end

---Sets the Players faction standing to that of the race specified
---@param raceId number
function Player:SetFactionForRace(raceId) end

---Sets the Players free talent points to the amount specified for the current spec
---@param talentPointAmt number
function Player:SetFreeTalentPoints(talentPointAmt) end

---Toggle Blizz (GM) tag
---@param on? boolean
function Player:SetGMChat(on) end

---Toggles whether the Player has GM visibility on or off
---@param gmVisible? boolean
function Player:SetGMVisible(gmVisible) end

---Toggles the Players GM mode on or off
---@param setGmMode? boolean
function Player:SetGameMaster(setGmMode) end

---Sets the Players gender to gender specified
---@param gender Gender
function Player:SetGender(gender) end

---Adds a glyph specified by glyphId to the Player's current talent specialization into the slot with the index slotIndex
---@param glyphId number
---@param slotIndex number
function Player:SetGlyph(glyphId, slotIndex) end

---Sets the Players guild rank to the rank specified
---@param rank number
function Player:SetGuildRank(rank) end

---Sets the Players Honor Points to the amount specified
---@param honorPoints number
function Player:SetHonorPoints(honorPoints) end

---Sets the Player as spectator.
---@param isSpectator boolean
function Player:SetIsSpectator(isSpectator) end

---Sets the player's known taxi nodes (flight paths).
---@param nodes table
function Player:SetKnownTaxiNodes(nodes) end

---Adds the specified title to the Players list of known titles
---@param titleId number
function Player:SetKnownTitle(titleId) end

---Sets the last pet number for the Player.
---@param petNumber number
function Player:SetLastPetNumber(petNumber) end

---Sets the spell ID of the Player's last Pet summoning spell.
---@param petSpell number
function Player:SetLastPetSpell(petSpell) end

---Sets the Players amount of Lifetime Honorable Kills to the value specified
---@param honorableKills number
function Player:SetLifetimeKills(honorableKills) end

---Sets the specified player flag on the Player.
---@param flag number
function Player:SetPlayerFlag(flag) end

---Locks the player controls and disallows all movement and casting.
---@param apply? boolean
function Player:SetPlayerLock(apply) end

---Toggles PvP Death
---@param on? boolean
function Player:SetPvPDeath(on) end

---Sets Quest state
---@param entry number
---@param status number
function Player:SetQuestStatus(entry, status) end

---Sets the Players reputation amount for the faction specified
function Player:SetReputation() end

---Sets the Players rest bonus to the amount specified
---@param restBonus number
function Player:SetRestBonus(restBonus) end

---Sets the Players sheathe state to the state specified
---@param sheatheState number
function Player:SetSheath(sheatheState) end

---Sets whether the Player can see Death  Knight Pets.
---@param show boolean
function Player:SetShowDKPet(show) end

---Sets (increases) skill of the Player
---@param id number
---@param step number
---@param currVal number
---@param maxVal number
function Player:SetSkill(id, step, currVal, maxVal) end

---The Player sets the spell power
---@param value number
---@param apply? boolean
function Player:SetSpellPower(value, apply) end

---Toggles whether the Player has taxi cheat enabled or not
---@param taxiCheat? boolean
function Player:SetTaxiCheat(taxiCheat) end

---Sets the temporary unsummoned pet number for the Player.
---@param petNumber number
function Player:SetTemporaryUnsummonedPetNumber(petNumber) end

---Sets the Player's viewpoint to the specified target.
---@param target WorldObject
function Player:SetViewpoint(target) end

---Converts Player's corpse to bones
function Player:SpawnBones() end

---Attempts to start the taxi/flying to the given pathID
---@param pathId number
function Player:StartTaxi(pathId) end

---Summons a Pet at the specified location.
---@param entry number
---@param x number
---@param y number
---@param z number
---@param ang number
---@param petType PetType
---@param duration? number
---@param healthPct? number
---@return Pet
function Player:SummonPet(entry, x, y, z, ang, petType, duration, healthPct) end

---Sends a summon request to the player from the given summoner
---@param summoner Unit
function Player:SummonPlayer(summoner) end

---Gives Quest monster talked to credit
---@param entry number
---@param creature Creature
function Player:TalkedToCreature(entry, creature) end

---Teleports a Player to the location specified
---@param mappId number
---@param xCoord number
---@param yCoord number
---@param zCoord number
---@param orientation number
function Player:Teleport(mappId, xCoord, yCoord, zCoord, orientation) end

---Teleports Player to a predefined location based on the teleport name.
function Player:TeleportTo() end

---Sends a text emote from the Player
---@param emoteText string
function Player:TextEmote(emoteText) end

---Toggle the Players 'Away From Keyboard' flag
function Player:ToggleAFK() end

---Toggle the Players 'Do Not Disturb' flag
function Player:ToggleDND() end

---Toggles instant flight mode for the Player.
function Player:ToggleInstantFlight() end

---Unbinds the Player from his instances except the one he currently is in.
function Player:UnbindAllInstances() end

---Unbinds the Player from his instances except the one he currently is in.
---@param map? number
---@param difficulty? number
function Player:UnbindInstance(map, difficulty) end

---Removes a title by ID from the Players list of known titles
---@param titleId number
function Player:UnsetKnownTitle(titleId) end

---Temporarily unsummons the Player's current Pet.
function Player:UnsummonPetTemporarily() end

---Sets a setting value for the Player
---@param source string
---@param index number
---@param value number
function Player:UpdatePlayerSetting(source, index, value) end

---Sends whisper text from the Player
---@param text string
---@param lang number
---@param receiver Player
---@param guid number
function Player:Whisper(text, lang, receiver, guid) end

---Sends yell text from the Player
---@param text string
---@param lang number
function Player:Yell(text, lang) end

