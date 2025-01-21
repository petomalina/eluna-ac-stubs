---@meta

---@class Player : Object, WorldObject, Unit
Player = {}

---Adds combo points to the Player
---@param target Unit
---@param count number
function Player:AddComboPoints(target, count) end

---Adds the given amount of the specified item entry to the player.
---@param entry number
---@param itemCount number
---@param item Item
---@return Item
function Player:AddItem(entry, itemCount, item) end

function Player:AddLifetimeKills() end

---Tries to add the given quest entry for the Player.
---@param entry number
function Player:AddQuest(entry) end

---Advances all of the Players skills to the amount specified
---@param skillStep number
function Player:AdvanceAllSkills(skillStep) end

---Advances a Players specific skill to the amount specified
---@param skillId number
---@param skillStep number
function Player:AdvanceSkill(skillId, skillStep) end

---Advances all of the Players weapon skills to the maximum amount available
function Player:AdvanceSkillsToMax() end

---Completes the Quest if a Quest area is explored, or completes the Quest
---@param quest number
function Player:AreaExploredOrEventHappens(quest) end

---Returns true if the Player can block incomming attacks, false otherwise.
---@param canBlock boolean
---@return boolean
function Player:CanBlock(canBlock) end

---Returns true if the Player satisfies all requirements to complete the quest entry.
---@param entry number
---@param canComplete boolean
---@return boolean
function Player:CanCompleteQuest(entry, canComplete) end

---Returns true if the Player satisfies all requirements to complete the quest entry.
---@param questId number
---@param canCompleteRepeatableQuest boolean
---@return boolean
function Player:CanCompleteRepeatableQuest(questId, canCompleteRepeatableQuest) end

---Returns true if the player can equip the given Item or item entry to the given slot, false otherwise.
---@param item Item
---@param entry number
---@param slot number
---@param canEquip boolean
---@return boolean
function Player:CanEquipItem(item, entry, slot, canEquip) end

---Returns true if the Player can fly, false otherwise.
---@param canFly boolean
---@return boolean
function Player:CanFly(canFly) end

---Returns true if the Player can parry incomming attacks, false otherwise.
---@param canParry boolean
---@return boolean
function Player:CanParry(canParry) end

---Returns true if the Player satisfies all requirements to reward the quest entry.
---@param questId number
---@param canRewardQuest boolean
---@return boolean
function Player:CanRewardQuest(questId, canRewardQuest) end

---Returns true if the Player can share Quest specified by ID, false otherwise.
---@param entryId number
---@param hasSpellCooldown boolean
---@return boolean
function Player:CanShareQuest(entryId, hasSpellCooldown) end

---Returns true if the Player can currently communicate through chat, false otherwise.
---@param canSpeak boolean
---@return boolean
function Player:CanSpeak(canSpeak) end

---Returns true if the Player can Titan Grip, false otherwise.
---@param canTitanGrip boolean
---@return boolean
function Player:CanTitanGrip(canTitanGrip) end

---Returns true if the Player has permission to uninvite others from the current group, false otherwise.
---@param canUninviteFromGroup boolean
---@return boolean
function Player:CanUninviteFromGroup(canUninviteFromGroup) end

---Returns true if the Player can use the item or item entry specified, false otherwise.
---@param item Item
---@param entry number
---@param canUse boolean
---@return boolean
function Player:CanUseItem(item, entry, canUse) end

---Clears the Players combo points
function Player:ClearComboPoints() end

---Clears all of Players weekly honor status
function Player:ClearHonorInfo() end

---Completes the given quest entry for the Player and tries to satisfy all quest requirements.
---@param entry number
function Player:CompleteQuest(entry) end

---Damages specified Item
---@param item Item
---@param percent number
function Player:DurabilityLoss(item, percent) end

---Damages all Items equipped. If inventory is true, damages Items in bags
---@param percent number
---@param inventory boolean
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
---@param inventory boolean
function Player:DurabilityPointsLossAll(points, inventory) end

---Repairs Item at specified position.
---@param position number
---@param cost boolean
---@param discountMod number
function Player:DurabilityRepair(position, cost, discountMod) end

---Repairs all Items.
---@param takeCost boolean
---@param discountMod number
---@param guidBank boolean
function Player:DurabilityRepairAll(takeCost, discountMod, guidBank) end

---Equips the given item or item entry to the given slot. Returns the equipped item or nil.
---@param item Item
---@param entry number
---@param slot number
---@param equippedItem Item
---@return Item
function Player:EquipItem(item, entry, slot, equippedItem) end

---Sets the given Quest entry failed for the Player.
---@param entry number
function Player:FailQuest(entry) end

---Returns the Players account ID
---@param accountId number
---@return number
function Player:GetAccountId(accountId) end

---Returns the Players account name
---@param accountName string
---@return string
function Player:GetAccountName(accountName) end

---Returns the progress of the Player for the specified achievement criteria.
---@param criteriaId number
---@param progress number
---@return number
function Player:GetAchievementCriteriaProgress(criteriaId, progress) end

---Returns the Players current amount of Achievement Points
---@param achievementPoints number
---@return number
function Player:GetAchievementPoints(achievementPoints) end

---Returns the Players active spec ID
---@param specId number
---@return number
function Player:GetActiveSpec(specId) end

---Returns the Players current amount of Arena Points
---@param arenaPoints number
---@return number
function Player:GetArenaPoints(arenaPoints) end

---Returns base skill value
---@param skill number
---@param baseVal number
---@return number
function Player:GetBaseSkillValue(skill, baseVal) end

---Returns the Players current BattleGround ID
---@param battleGroundId number
---@return number
function Player:GetBattlegroundId(battleGroundId) end

---Returns the Players current BattleGround type ID
---@param typeId BattleGroundTypeId
---@return BattleGroundTypeId
function Player:GetBattlegroundTypeId(typeId) end

---Returns the faction ID the Player is currently flagged as champion for
---@param championingFaction number
---@return number
function Player:GetChampioningFaction(championingFaction) end

---Returns active GM chat tag
---@param tag number
---@return number
function Player:GetChatTag(tag) end

---Returns the Players amount of money in copper
---@param coinage number
---@return number
function Player:GetCoinage(coinage) end

---Returns Player's combo points
---@param comboPoints number
---@return number
function Player:GetComboPoints(comboPoints) end

---Returns Unit target combo points are on
---@param target Unit
---@return Unit
function Player:GetComboTarget(target) end

---Returns the Players current amount of Achievements Completed
---@param achievementsCount number
---@return number
function Player:GetCompletedAchievementsCount(achievementsCount) end

---Returns the Players completed quest count
---@param questcount number
---@return number
function Player:GetCompletedQuestsCount(questcount) end

---Returns the Players Corpse object
---@param corpse Corpse
---@return Corpse
function Player:GetCorpse(corpse) end

---Returns the Players database locale index
---@param localeIndex number
---@return number
function Player:GetDbLocaleIndex(localeIndex) end

---Returns the Players game client locale
---@param locale LocaleConstant
---@return LocaleConstant
function Player:GetDbcLocale(locale) end

---Returns raid or dungeon difficulty
---@param isRaid boolean
---@param difficulty number
---@return number
function Player:GetDifficulty(isRaid, difficulty) end

---Returns the Players current level of intoxication
---@param drunkValue number
---@return number
function Player:GetDrunkValue(drunkValue) end

---Returns a Players Item object by gear slot specified
---@param slot number
---@param item Item
---@return Item
function Player:GetEquippedItemBySlot(slot, item) end

---Returns the Players free talent point amount
---@param freeTalentPointAmt number
---@return number
function Player:GetFreeTalentPoints(freeTalentPointAmt) end

---Returns the Players GM Rank
---@param gmRank AccountTypes
---@return AccountTypes
function Player:GetGMRank(gmRank) end

---Get glyphId of the glyph slot specified by slotIndex off the Player's current talent specialization.`
---@param slotIndex number
---@param of lyphI
---@return lyphI
function Player:GetGlyph(slotIndex, of) end

---Returns the database textID of the WorldObject's gossip header text for the Player
---@param object WorldObject
---@param textId number
---@return number
function Player:GetGossipTextId(object, textId) end

---Returns the Players Group object
---@param group Group
---@return Group
function Player:GetGroup(group) end

---Returns Group invitation
---@param group Group
---@return Group
function Player:GetGroupInvite(group) end

---Returns the Players Guild object
---@param guild Guild
---@return Guild
function Player:GetGuild(guild) end

---Returns the Players current Guild ID
---@param guildId number
---@return number
function Player:GetGuildId(guildId) end

---Returns the name of the Players current Guild
---@param guildName string
---@return string
function Player:GetGuildName(guildName) end

---Returns the Players current guild rank
---@param guildRank number
---@return number
function Player:GetGuildRank(guildRank) end

---Returns health bonus from amount of stamina
---@param bonus number
---@return number
function Player:GetHealthBonusFromStamina(bonus) end

---Returns last week's standing position
---@param standingPos number
---@return number
function Player:GetHonorLastWeekStandingPos(standingPos) end

---Returns the Players current amount of Honor Points
---@param honorPoints number
---@return number
function Player:GetHonorPoints(honorPoints) end

---Returns Player kills
---@param honorable boolean
---@param kills number
---@return number
function Player:GetHonorStoredKills(honorable, kills) end

---Returns the amount of time the Player has spent ingame
---@param inGameTime number
---@return number
function Player:GetInGameTime(inGameTime) end

---Returns an Item from the player by entry.
---@param entryId number
---@param item Item
---@return Item
function Player:GetItemByEntry(entryId, item) end

---Returns an Item from the player by guid.
---@param guid number
---@param item Item
---@return Item
function Player:GetItemByGUID(guid, item) end

---Returns an item in given bag on given slot.
---@param bag number
---@param slot number
---@param item Item
---@return Item
function Player:GetItemByPos(bag, slot, item) end

---Returns amount of the specified Item the Player has.
---@param entry number
---@param checkinBank boolean
---@param itemamount number
---@return number
function Player:GetItemCount(entry, checkinBank, itemamount) end

---Returns the Players current latency in MS
---@param latency number
---@return number
function Player:GetLatency(latency) end

---Returns the Players time played at current level
---@param currLevelPlayTime number
---@return number
function Player:GetLevelPlayedTime(currLevelPlayTime) end

---Returns the Players lifetime Honorable Kills
---@param lifeTimeKils number
---@return number
function Player:GetLifetimeKills(lifeTimeKils) end

---Returns the amount of mails in the player's mailbox.
---@param mailCount number
---@return number
function Player:GetMailCount(mailCount) end

---Returns a mailed Item by guid.
---@param guid number
---@param item Item
---@return Item
function Player:GetMailItem(guid, item) end

---Returns mana bonus from amount of intellect
---@param bonus number
---@return number
function Player:GetManaBonusFromIntellect(bonus) end

---Returns max value of specified skill
---@param skill number
---@param val number
---@return number
function Player:GetMaxSkillValue(skill, val) end

---Returns a random Raid Member Player object within radius specified of Player
---@param radius number
---@param player Player
---@return Player
function Player:GetNextRandomRaidMember(radius, player) end

---Returns Players original Group object
---@param group Group
---@return Group
function Player:GetOriginalGroup(group) end

---Returns Players original sub group
---@param subGroup number
---@return number
function Player:GetOriginalSubGroup(subGroup) end

---Returns the normal phase of the player instead of the actual phase possibly containing GM phase
---@param phasemask number
---@return number
function Player:GetPhaseMaskForSpawn(phasemask) end

---Returns the Players IP address
---@param ip string
---@return string
function Player:GetPlayerIP(ip) end

---Gets a setting value for the Player
---@param source string
---@param index number
function Player:GetPlayerSettingValue(source, index) end

---Returns max value of specified skill without bonus'
---@param skill number
---@param pureVal number
---@return number
function Player:GetPureMaxSkillValue(skill, pureVal) end

---Returns skill value without bonus'
---@param skill number
---@param pureVal number
---@return number
function Player:GetPureSkillValue(skill, pureVal) end

---Returns the quest level of the Players Quest specified by object
---@param questId number
---@param questRewardStatus QuestStatus
---@return QuestStatus
function Player:GetQuestLevel(questId, questRewardStatus) end

---Returns true if the Players Quest specified by entry ID has been rewarded, false otherwise.
---@param questId number
---@param questRewardStatus boolean
---@return boolean
function Player:GetQuestRewardStatus(questId, questRewardStatus) end

---Returns the status of the Players Quest specified by entry ID
---@param questId number
---@param questStatus QuestStatus
---@return QuestStatus
function Player:GetQuestStatus(questId, questStatus) end

---Returns rank points
---@param rankPoints number
---@return number
function Player:GetRankPoints(rankPoints) end

---Returns the amount of reputation the Player has with the faction specified
---@param faction number
---@param reputationAmt number
---@return number
function Player:GetReputation(faction, reputationAmt) end

---Returns the Players reputation rank of faction specified
---@param faction number
---@param rank ReputationRank
---@return ReputationRank
function Player:GetReputationRank(faction, rank) end

---Returns Quest required Creature or GameObject count
---@param quest number
---@param entry number
---@param count number
---@return number
function Player:GetReqKillOrCastCurrentCount(quest, entry, count) end

---Returns the Players current resting bonus
---@param restBonus number
---@return number
function Player:GetRestBonus(restBonus) end

---Returns the Players currently selected Unit object
---@param unit Unit
---@return Unit
function Player:GetSelection(unit) end

---Returns the Players current shield block value
---@param blockValue number
---@return number
function Player:GetShieldBlockValue(blockValue) end

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
---@param val number
---@return number
function Player:GetSkillValue(skill, val) end

---Returns the amount of available specs the Player currently has
---@param specCount number
---@return number
function Player:GetSpecsCount(specCount) end

---Returns the Players cooldown delay by specified Spell ID
---@param spellId number
---@param spellCooldownDelay number
---@return number
function Player:GetSpellCooldownDelay(spellId, spellCooldownDelay) end

---Returns Players current sub group
---@param subGroup number
---@return number
function Player:GetSubGroup(subGroup) end

---Returns the Players [TeamId]
---@param teamId TeamId
---@return TeamId
function Player:GetTeam(teamId) end

---Returns the Players total time played
---@param totalPlayTime number
---@return number
function Player:GetTotalPlayedTime(totalPlayTime) end

---Returns the Player that is currently trading with this Player
---@param trader Player
---@return Player
function Player:GetTrader(trader) end

---Returns the Player's experience points
---@param xp number
---@return number
function Player:GetXP(xp) end

---Returns rested experience bonus
---@param xp number
---@param xpBonus number
---@return number
function Player:GetXPRestBonus(xp, xpBonus) end

---Gives the Player experience
---@param xp number
---@param victim Unit
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
---@param code boolean
---@param popup string
---@param money number
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
---@param createdGroup Group
---@return Group
function Player:GroupCreate(invited, createdGroup) end

---Completes a Quest if in a Group
---@param quest number
---@param obj WorldObject
function Player:GroupEventHappens(quest, obj) end

---Makes the Player invite another player to a group.
---@param invited Player
---@param success boolean
---@return boolean
function Player:GroupInvite(invited, success) end

---Returns true if the Player has completed the specified achievement, false otherwise.
---@param achievementId number
---@param hasAchieved boolean
---@return boolean
function Player:HasAchieved(achievementId, hasAchieved) end

---Returns true if Player has specified login flag
---@param flag number
---@param hasLoginFlag boolean
---@return boolean
function Player:HasAtLoginFlag(flag, hasLoginFlag) end

---Returns true if the Player has a Caster Specialization, false otherwise.
---@param HasCasterSpec boolean
---@return boolean
function Player:HasCasterSpec(HasCasterSpec) end

---Returns true if the Player has a Heal Specialization, false otherwise.
---@param HasHealSpec boolean
---@return boolean
function Player:HasHealSpec(HasHealSpec) end

---Returns true if the Player has the given amount of item entry specified, false otherwise.
---@param itemId number
---@param count number
---@param check_bank boolean
---@param hasItem boolean
---@return boolean
function Player:HasItem(itemId, count, check_bank, hasItem) end

---Returns true if the Player has a Melee Specialization, false otherwise.
---@param HasMeleeSpec boolean
---@return boolean
function Player:HasMeleeSpec(HasMeleeSpec) end

---Returns true if the Player has an active Quest by specific ID, false otherwise.
---@param questId number
---@param hasQuest boolean
---@return boolean
function Player:HasQuest(questId, hasQuest) end

---Returns true if Player has Quest for GameObject
---@param entry number
---@param hasQuest boolean
---@return boolean
function Player:HasQuestForGO(entry, hasQuest) end

---Returns true if the Player has a quest for the item entry specified, false otherwise.
---@param entry number
---@param hasQuest boolean
---@return boolean
function Player:HasQuestForItem(entry, hasQuest) end

---Returns true if the Player has a skill by specific ID, false otherwise.
---@param skill number
---@param hasSkill boolean
---@return boolean
function Player:HasSkill(skill, hasSkill) end

---Returns true if the Player has a Spell by specific ID, false otherwise.
---@param spellId number
---@param hasSpell boolean
---@return boolean
function Player:HasSpell(spellId, hasSpell) end

---Returns true if the Spell specified by ID is currently on cooldown for the Player, false otherwise.
---@param spellId number
---@param hasSpellCooldown boolean
---@return boolean
function Player:HasSpellCooldown(spellId, hasSpellCooldown) end

---Returns true if the Player has a talent by ID in specified spec, false otherwise.
---@param spellId number
---@param spec number
---@param hasTalent boolean
---@return boolean
function Player:HasTalent(spellId, spec, hasTalent) end

---Returns true if the Player has a Tank Specialization, false otherwise.
---@param HasTankSpec boolean
---@return boolean
function Player:HasTankSpec(HasTankSpec) end

---Returns true if the Player has a title by specific ID, false otherwise.
---@param titleId number
---@param hasTitle boolean
---@return boolean
function Player:HasTitle(titleId, hasTitle) end

---Returns true if the Player is currently in an arena, false otherwise.
---@param inArena boolean
---@return boolean
function Player:InArena(inArena) end

---Returns true if the Player is currently in a BattleGround, false otherwise.
---@param inBattleGround boolean
---@return boolean
function Player:InBattleground(inBattleGround) end

---Returns true if the Player is currently in a BattleGround queue, false otherwise.
---@param inBattlegroundQueue boolean
---@return boolean
function Player:InBattlegroundQueue(inBattlegroundQueue) end

---Sets the given quest entry incomplete for the Player.
---@param entry number
function Player:IncompleteQuest(entry) end

---Returns true if the Player is 'Away From Keyboard' flagged, false otherwise.
---@param isAFK boolean
---@return boolean
function Player:IsAFK(isAFK) end

---Returns true if the Player is accepting whispers, false otherwise.
---@param isAcceptingWhispers boolean
---@return boolean
function Player:IsAcceptingWhispers(isAcceptingWhispers) end

---Returns true if the Player is a part of the Alliance faction, false otherwise.
---@param isAlliance boolean
---@return boolean
function Player:IsAlliance(isAlliance) end

---Returns true if the Player is 'Do Not Disturb' flagged, false otherwise.
---@param isDND boolean
---@return boolean
function Player:IsDND(isDND) end

---Returns true if the Player is currently falling, false otherwise.
---@param isFalling boolean
---@return boolean
function Player:IsFalling(isFalling) end

---Returns true if the Player is currently flying, false otherwise.
---@param isFlying boolean
---@return boolean
function Player:IsFlying(isFlying) end

---Returns true if the Player is a Game Master, false otherwise.
---@param isGM boolean
---@return boolean
function Player:IsGM(isGM) end

function Player:IsGMChat() end

function Player:IsGMVisible() end

function Player:IsGroupVisibleFor() end

---Returns true if the Player is eligible for Honor or XP gain by Unit specified, false otherwise.
---@param unit Unit
---@param isHonorOrXPTarget boolean
---@return boolean
function Player:IsHonorOrXPTarget(unit, isHonorOrXPTarget) end

---Returns true if the Player is a part of the Horde faction, false otherwise.
---@param isHorde boolean
---@return boolean
function Player:IsHorde(isHorde) end

---Returns true if the Player is immune to everything.
---@param isImmune boolean
---@return boolean
function Player:IsImmuneToDamage(isImmune) end

---Returns true if the Player is in an arena team specified by type, false otherwise.
---@param type number
---@param isInArenaTeam boolean
---@return boolean
function Player:IsInArenaTeam(type, isInArenaTeam) end

---Returns true if the Player is in a Group, false otherwise.
---@param isInGroup boolean
---@return boolean
function Player:IsInGroup(isInGroup) end

---Returns true if the Player is in a Guild, false otherwise.
---@param isInGuild boolean
---@return boolean
function Player:IsInGuild(isInGuild) end

---Returns true if the Player is currently in the same Group as another Player by object, false otherwise.
---@param player Player
---@param isInSameGroupWith boolean
---@return boolean
function Player:IsInSameGroupWith(player, isInSameGroupWith) end

---Returns true if the Player is currently in the same raid as another Player by object, false otherwise.
---@param player Player
---@param isInSameRaidWith boolean
---@return boolean
function Player:IsInSameRaidWith(player, isInSameRaidWith) end

---Returns true if the Player is currently in water, false otherwise.
---@param isInWater boolean
---@return boolean
function Player:IsInWater(isInWater) end

---Returns true if the Player is currently moving, false otherwise.
---@param isMoving boolean
---@return boolean
function Player:IsMoving(isMoving) end

---Returns true if the Player is currently rested, false otherwise.
---@param isRested boolean
---@return boolean
function Player:IsRested(isRested) end

---Returns true if the Player has taxi cheat activated, false otherwise.
---@param isTaxiCheater boolean
---@return boolean
function Player:IsTaxiCheater(isTaxiCheater) end

---Returns true if the Player can see anoter Player specified by object, false otherwise.
---@param player Player
---@param isVisibleForPlayer boolean
---@return boolean
function Player:IsVisibleForPlayer(player, isVisibleForPlayer) end

---Kicks the Player from the server
function Player:KickPlayer() end

---Kills the Player
function Player:KillPlayer() end

---Gives Quest monster killed credit
---@param entry number
function Player:KilledMonsterCredit(entry) end

---Teaches the Player the Spell specified by entry ID
---@param spellId number
function Player:LearnSpell(spellId) end

---Learn the Player the talent specified by talent_id and talentRank
---@param talent_id number
---@param talentRank number
function Player:LearnTalent(talent_id, talentRank) end

---Forces the Player to leave a BattleGround
---@param teleToEntry boolean
function Player:LeaveBattleground(teleToEntry) end

---Forces the Player to log out
---@param saveToDb boolean
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

---Remove cooldowns on spells that have less than 10 minutes of cooldown from the Player, similarly to when you enter an arena.
function Player:RemoveArenaSpellCooldowns() end

---Forcefully removes the Player from a BattleGround raid group
function Player:RemoveFromBattlegroundRaid() end

---Forces the Player to leave a Group
function Player:RemoveFromGroup() end

---Removes the given amount of the specified Item from the player.
---@param item Item
---@param entry number
---@param itemCount number
function Player:RemoveItem(item, entry, itemCount) end

---Removes specified amount of lifetime kills
---@param val number
function Player:RemoveLifetimeKills(val) end

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

---Resets the Players weekly honor status
function Player:ResetHonor() end

---Resets the Players pets talent points
function Player:ResetPetTalents() end

---Resets cooldown of the specified spell
---@param spellId number
---@param update boolean
function Player:ResetSpellCooldown(spellId, update) end

---Resets the Players talents
---@param noCost boolean
function Player:ResetTalents(noCost) end

---Returns the Players accumulated talent reset cost
---@param resetCost number
---@return number
function Player:ResetTalentsCost(resetCost) end

---Resets cooldown of the specified category
---@param category number
---@param update boolean
function Player:ResetTypeCooldowns(category, update) end

---Resurrects the Player.
---@param healthPercent number
---@param ressSickness boolean
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
---@param selfOnly boolean
function Player:SendPacket(packet, selfOnly) end

---Shows a quest accepting window to the Player for the given quest.
---@param questId number
---@param activateAccept boolean
function Player:SendQuestTemplate(questId, activateAccept) end

---Sends a bank window to the Player from the WorldObject specified.
---@param sender WorldObject
function Player:SendShowBank(sender) end

---Shows the mailbox window to the player from specified guid.
---@param guid number
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
---@param acceptWhispers boolean
function Player:SetAcceptWhispers(acceptWhispers) end

---Adds the specified achievement to the Players
---@param achievementid number
function Player:SetAchievement(achievementid) end

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

---Sets the Players amount of money to copper specified
---@param copperAmt number
function Player:SetCoinage(copperAmt) end

---Sets the Players intoxication level to the level specified
---@param drunkValue number
function Player:SetDrunkValue(drunkValue) end

---Toggle the Players FFA flag
---@param applyFFA boolean
function Player:SetFFA(applyFFA) end

---Sets the Players faction standing to that of the race specified
---@param raceId number
function Player:SetFactionForRace(raceId) end

---Sets the Players free talent points to the amount specified for the current spec
---@param talentPointAmt number
function Player:SetFreeTalentPoints(talentPointAmt) end

---Toggle Blizz (GM) tag
---@param on boolean
function Player:SetGMChat(on) end

---Toggles whether the Player has GM visibility on or off
---@param gmVisible boolean
function Player:SetGMVisible(gmVisible) end

---Toggles the Players GM mode on or off
---@param setGmMode boolean
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

---Sets last week's honor standing position
---@param standingPos number
function Player:SetHonorLastWeekStandingPos(standingPos) end

---Sets the Players Honor Points to the amount specified
---@param honorPoints number
function Player:SetHonorPoints(honorPoints) end

---Sets kills
---@param kills number
---@param honorable boolean
function Player:SetHonorStoredKills(kills, honorable) end

---Adds the specified title to the Players list of known titles
---@param titleId number
function Player:SetKnownTitle(titleId) end

---Sets the Players amount of Lifetime Honorable Kills to the value specified
---@param honorableKills number
function Player:SetLifetimeKills(honorableKills) end

---Locks the player controls and disallows all movement and casting.
---@param apply boolean
function Player:SetPlayerLock(apply) end

---Toggles PvP Death
---@param on boolean
function Player:SetPvPDeath(on) end

---Sets Quest state
---@param entry number
---@param status number
function Player:SetQuestStatus(entry, status) end

---Sets rank points
---@param rankPoints number
function Player:SetRankPoints(rankPoints) end

---Sets the Players reputation amount for the faction specified
---@param factionId number
---@param reputationValue number
function Player:SetReputation(factionId, reputationValue) end

---Sets the Players rest bonus to the amount specified
---@param restBonus number
function Player:SetRestBonus(restBonus) end

---Sets the Players sheathe state to the state specified
---@param sheatheState number
function Player:SetSheath(sheatheState) end

---Sets (increases) skill of the Player
---@param id number
---@param step number
---@param currVal number
---@param maxVal number
function Player:SetSkill(id, step, currVal, maxVal) end

---The Player sets the spell power
---@param value number
---@param apply boolean
function Player:SetSpellPower(value, apply) end

---Toggles whether the Player has taxi cheat enabled or not
---@param taxiCheat boolean
function Player:SetTaxiCheat(taxiCheat) end

---Converts Player's corpse to bones
function Player:SpawnBones() end

---Attempts to start the taxi/flying to the given pathID
---@param pathId number
function Player:StartTaxi(pathId) end

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

---Sends a text emote from the Player
---@param emoteText string
function Player:TextEmote(emoteText) end

---Toggle the Players 'Away From Keyboard' flag
function Player:ToggleAFK() end

---Toggle the Players 'Do Not Disturb' flag
function Player:ToggleDND() end

---Unbinds the Player from his instances except the one he currently is in.
function Player:UnbindAllInstances() end

---Unbinds the Player from his instances except the one he currently is in.
---@param map number
---@param difficulty number
function Player:UnbindInstance(map, difficulty) end

---Removes a title by ID from the Players list of known titles
---@param titleId number
function Player:UnsetKnownTitle(titleId) end

---Updates the Players weekly honor status
function Player:UpdateHonor() end

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

