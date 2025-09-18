---@meta

---@class SpellEntry
SpellEntry = {}

---Returns the active icon ID for the SpellEntry.
---@return number
function SpellEntry:GetActiveIconID() end

---Returns the Area Group ID associated with this SpellEntry.
---@return number
function SpellEntry:GetAreaGroupId() end

---Returns the attribute bitflags for the SpellEntry.
---@return number
function SpellEntry:GetAttributes() end

---Returns the attributeEx bitflags for the SpellEntry.
---@return number
function SpellEntry:GetAttributesEx() end

---Returns the attributeEx2 bitflags for the SpellEntry.
---@return number
function SpellEntry:GetAttributesEx2() end

---Returns the attributeEx3 bitflags for the SpellEntry.
---@return number
function SpellEntry:GetAttributesEx3() end

---Returns the attributeEx4 bitflags for the SpellEntry.
---@return number
function SpellEntry:GetAttributesEx4() end

---Returns the attributeEx5 bitflags for the SpellEntry.
---@return number
function SpellEntry:GetAttributesEx5() end

---Returns the attributeEx6 bitflags for the SpellEntry.
---@return number
function SpellEntry:GetAttributesEx6() end

---Returns the attributeEx7 bitflags for the SpellEntry.
---@return number
function SpellEntry:GetAttributesEx7() end

---Returns the aura interrupt flags for this SpellEntry.
---@return number
function SpellEntry:GetAuraInterruptFlags() end

---Returns the base level required for the SpellEntry.
---@return number
function SpellEntry:GetBaseLevel() end

---Returns the required aura spell ID that must be on the caster.
---@return number
function SpellEntry:GetCasterAuraSpell() end

---Returns the required caster aura state for this SpellEntry.
---@return number
function SpellEntry:GetCasterAuraState() end

---Returns the forbidden caster aura state for this SpellEntry.
---@return number
function SpellEntry:GetCasterAuraStateNot() end

---Returns the casting time index of this SpellEntry.
---@return number
function SpellEntry:GetCastingTimeIndex() end

---Returns the category ID for the SpellEntry.
---@return number
function SpellEntry:GetCategory() end

---Returns the category recovery time for the SpellEntry.
---@return number
function SpellEntry:GetCategoryRecoveryTime() end

---Returns the channel interrupt flags for this SpellEntry.
---@return number
function SpellEntry:GetChannelInterruptFlags() end

---Returns the dispel ID for the SpellEntry.
---@return number
function SpellEntry:GetDispel() end

---Returns the spell damage type ID SpellEntry.
---@return number
function SpellEntry:GetDmgClass() end

---Returns the duration index for the SpellEntry.
---@return number
function SpellEntry:GetDurationIndex() end

---Returns a table with all spell effect IDs for SpellEntry.
---@return table
function SpellEntry:GetEffect() end

---Returns a table with all effect amplitude values for SpellEntry.
---@return table
function SpellEntry:GetEffectAmplitude() end

---Returns a table with all effect apply aura IDs for SpellEntry.
---@return table
function SpellEntry:GetEffectApplyAuraName() end

---Returns a table with all effect base points values for SpellEntry.
---@return table
function SpellEntry:GetEffectBasePoints() end

---Returns a table with all effect bonus multiplier values SpellEntry.
---@return table
function SpellEntry:GetEffectBonusMultiplier() end

---Returns a table with all effect chain target values for SpellEntry.
---@return table
function SpellEntry:GetEffectChainTarget() end

---Returns a table with all effect damage multiplier values SpellEntry.
---@return table
function SpellEntry:GetEffectDamageMultiplier() end

---Returns a table with all effect die sides values for SpellEntry.
---@return table
function SpellEntry:GetEffectDieSides() end

---Returns a table with all effect implicit target a IDs for SpellEntry.
---@return table
function SpellEntry:GetEffectImplicitTargetA() end

---Returns a table with all effect implicit target b IDs for SpellEntry.
---@return table
function SpellEntry:GetEffectImplicitTargetB() end

---Returns a table with all effect item type values for SpellEntry.
---@return table
function SpellEntry:GetEffectItemType() end

---Returns a table with all effect mechanic IDs for SpellEntry.
---@return table
function SpellEntry:GetEffectMechanic() end

---Returns a table with all effect misc value A for SpellEntry.
---@return table
function SpellEntry:GetEffectMiscValue() end

---Returns a table with all effect misc value B for SpellEntry.
---@return table
function SpellEntry:GetEffectMiscValueB() end

---Returns a table with all effect points per combo point of SpellEntry
---@return table
function SpellEntry:GetEffectPointsPerComboPoint() end

---Returns a table with all effect radius index for SpellEntry.
---@return table
function SpellEntry:GetEffectRadiusIndex() end

---Returns a table with all effect real points per level values for SpellEntry.
---@return table
function SpellEntry:GetEffectRealPointsPerLevel() end

---Returns a table of [SpellFamilyFlags] for each effect of this SpellEntry.
---@return table
function SpellEntry:GetEffectSpellClassMask() end

---Returns a table with all effect trigger spell for SpellEntry.
---@return table
function SpellEntry:GetEffectTriggerSpell() end

---Returns a table with all effect value multiplier for SpellEntry.
---@return table
function SpellEntry:GetEffectValueMultiplier() end

---Returns the equipped item class ID for SpellEntry.
---@return number
function SpellEntry:GetEquippedItemClass() end

---Returns the equipped item inventory type masks for SpellEntry.
---@return number
function SpellEntry:GetEquippedItemInventoryTypeMask() end

---Returns the equipped item sub class masks for SpellEntry.
---@return number
function SpellEntry:GetEquippedItemSubClassMask() end

---Returns the aura spell ID that must NOT be on the caster.
---@return number
function SpellEntry:GetExcludeCasterAuraSpell() end

---Returns the aura spell ID that must NOT be on the target.
---@return number
function SpellEntry:GetExcludeTargetAuraSpell() end

---Returns the facing flags for this SpellEntry.
---@return number
function SpellEntry:GetFacingCasterFlags() end

---Returns the ID of the SpellEntry.
---@return number
function SpellEntry:GetId() end

---Returns the interrupt flags for this SpellEntry.
---@return number
function SpellEntry:GetInterruptFlags() end

---Returns the mana cost for the SpellEntry.
---@return number
function SpellEntry:GetManaCost() end

---Returns the mana cost percentage of SpellEntry.
---@return number
function SpellEntry:GetManaCostPercentage() end

---Returns the mana cost per level for SpellEntry.
---@return number
function SpellEntry:GetManaCostPerlevel() end

---Returns the mana per second for SpellEntry.
---@return number
function SpellEntry:GetManaPerSecond() end

---Returns the mana per second per level for SpellEntry.
---@return number
function SpellEntry:GetManaPerSecondPerLevel() end

---Returns the max affected targets value SpellEntry.
---@return number
function SpellEntry:GetMaxAffectedTargets() end

---Returns the max level for the SpellEntry.
---@return number
function SpellEntry:GetMaxLevel() end

---Returns the max target level value for SpellEntry.
---@return number
function SpellEntry:GetMaxTargetLevel() end

---Returns the mechanic ID for the SpellEntry.
---@return number
function SpellEntry:GetMechanic() end

---Returns the power type ID for the SpellEntry.
---@return number
function SpellEntry:GetPowerType() end

---Returns the prevention type ID SpellEntry.
---@return number
function SpellEntry:GetPreventionType() end

---Returns the proc chance of SpellEntry.
---@return number
function SpellEntry:GetProcChance() end

---Returns the proc charges of SpellEntry.
---@return number
function SpellEntry:GetProcCharges() end

---Returns the proc flags for this SpellEntry.
---@return number
function SpellEntry:GetProcFlags() end

---Returns the range index for SpellEntry.
---@return number
function SpellEntry:GetRangeIndex() end

---Returns a table of the SpellEntry ranks.
---@return table
function SpellEntry:GetRank() end

---Returns a table with all reagent values for SpellEntry.
---@return table
function SpellEntry:GetReagent() end

---Returns a table with all reagent count values for SpellEntry.
---@return table
function SpellEntry:GetReagentCount() end

---Returns the recovery time for the SpellEntry.
---@return number
function SpellEntry:GetRecoveryTime() end

---Returns the SpellFocus ID required to cast this SpellEntry.
---@return number
function SpellEntry:GetRequiresSpellFocus() end

---Returns the rune cost id for the SpellEntry.
---@return number
function SpellEntry:GetRuneCostID() end

---Returns the school mask of SpellEntry.
---@return number
function SpellEntry:GetSchoolMask() end

---Returns speed for SpellEntry.
---@return number
function SpellEntry:GetSpeed() end

---Returns the spell family flags of this SpellEntry.
---@return number
function SpellEntry:GetSpellFamilyFlags() end

---Returns the spell family name of this SpellEntry.
---@return number
function SpellEntry:GetSpellFamilyName() end

---Returns the spell icon ID for the SpellEntry.
---@return number
function SpellEntry:GetSpellIconID() end

---Returns the spell level for the SpellEntry.
---@return number
function SpellEntry:GetSpellLevel() end

---Returns a table of the SpellEntry names of all locals.
---@return table
function SpellEntry:GetSpellName() end

---Returns the spell Priority for the SpellEntry.
---@return number
function SpellEntry:GetSpellPriority() end

---Returns a table with both spell visuals of SpellEntry
---@return table
function SpellEntry:GetSpellVisual() end

---Returns the stack amount for SpellEntry.
---@return number
function SpellEntry:GetStackAmount() end

---Returns the stance bitflags for the SpellEntry.
---@return number
function SpellEntry:GetStances() end

---Returns the stance restriction bitmask for which the SpellEntry cannot be used.
---@return number
function SpellEntry:GetStancesNot() end

---Returns the global cooldown time value for SpellEntry.
---@return number
function SpellEntry:GetStartRecoveryCategory() end

---Returns the global cooldown category value for SpellEntry.
---@return number
function SpellEntry:GetStartRecoveryTime() end

---Returns the required aura spell ID that must be on the target.
---@return number
function SpellEntry:GetTargetAuraSpell() end

---Returns the required target aura state for this SpellEntry.
---@return number
function SpellEntry:GetTargetAuraState() end

---Returns the forbidden target aura state for this SpellEntry.
---@return number
function SpellEntry:GetTargetAuraStateNot() end

---Returns the target creature type bitmasks for the SpellEntry.
---@return number
function SpellEntry:GetTargetCreatureType() end

---Returns the target bitmasks for the SpellEntry.
---@return number
function SpellEntry:GetTargets() end

---Returns a table with all totem values for SpellEntry.
---@return table
function SpellEntry:GetTotem() end

---Returns a table with totem categories IDs SpellEntry.
---@return table
function SpellEntry:GetTotemCategory() end

---Sets the active icon ID for the SpellEntry.
---@param activeIconID number
function SpellEntry:SetActiveIconID(activeIconID) end

---Sets the attributes for the SpellEntry.
---@param attributes number
function SpellEntry:SetAttributes(attributes) end

---Sets the attributesEx for the SpellEntry.
---@param attributesEx number
function SpellEntry:SetAttributesEx(attributesEx) end

---Sets the attributesEx2 for the SpellEntry.
---@param attributesEx2 number
function SpellEntry:SetAttributesEx2(attributesEx2) end

---Sets the attributesEx3 for the SpellEntry.
---@param attributesEx3 number
function SpellEntry:SetAttributesEx3(attributesEx3) end

---Sets the attributesEx4 for the SpellEntry.
---@param attributesEx4 number
function SpellEntry:SetAttributesEx4(attributesEx4) end

---Sets the attributesEx5 for the SpellEntry.
---@param attributesEx5 number
function SpellEntry:SetAttributesEx5(attributesEx5) end

---Sets the attributesEx6 for the SpellEntry.
---@param attributesEx6 number
function SpellEntry:SetAttributesEx6(attributesEx6) end

---Sets the attributesEx7 for the SpellEntry.
---@param attributesEx7 number
function SpellEntry:SetAttributesEx7(attributesEx7) end

---Sets the aura interrupt flags for the SpellEntry.
---@param auraInterruptFlags number
function SpellEntry:SetAuraInterruptFlags(auraInterruptFlags) end

---Sets the base level for the SpellEntry.
---@param baseLevel number
function SpellEntry:SetBaseLevel(baseLevel) end

---Sets the caster aura spell for the SpellEntry.
---@param casterAuraSpell number
function SpellEntry:SetCasterAuraSpell(casterAuraSpell) end

---Sets the caster aura state for the SpellEntry.
---@param casterAuraState number
function SpellEntry:SetCasterAuraState(casterAuraState) end

---Sets the caster aura state not for the SpellEntry.
---@param casterAuraStateNot number
function SpellEntry:SetCasterAuraStateNot(casterAuraStateNot) end

---Sets the category for the SpellEntry.
---@param category number
function SpellEntry:SetCategory(category) end

---Sets the category recovery time for the SpellEntry.
---@param categoryRecoveryTime number
function SpellEntry:SetCategoryRecoveryTime(categoryRecoveryTime) end

---Sets the channel interrupt flags for the SpellEntry.
---@param channelInterruptFlags number
function SpellEntry:SetChannelInterruptFlags(channelInterruptFlags) end

---Sets the dispel type for the SpellEntry.
---@param dispel number
function SpellEntry:SetDispel(dispel) end

---Sets the damage class for the SpellEntry.
---@param dmgClass number
function SpellEntry:SetDmgClass(dmgClass) end

---Sets the equipped item class for the SpellEntry.
---@param equippedItemClass number
function SpellEntry:SetEquippedItemClass(equippedItemClass) end

---Sets the equipped item inventory type mask for the SpellEntry.
---@param equippedItemInventoryTypeMask number
function SpellEntry:SetEquippedItemInventoryTypeMask(equippedItemInventoryTypeMask) end

---Sets the equipped item sub class mask for the SpellEntry.
---@param equippedItemSubClassMask number
function SpellEntry:SetEquippedItemSubClassMask(equippedItemSubClassMask) end

---Sets the exclude caster aura spell for the SpellEntry.
---@param excludeCasterAuraSpell number
function SpellEntry:SetExcludeCasterAuraSpell(excludeCasterAuraSpell) end

---Sets the exclude target aura spell for the SpellEntry.
---@param excludeTargetAuraSpell number
function SpellEntry:SetExcludeTargetAuraSpell(excludeTargetAuraSpell) end

---Sets the facing caster flags for the SpellEntry.
---@param facingCasterFlags number
function SpellEntry:SetFacingCasterFlags(facingCasterFlags) end

---Sets the interrupt flags for the SpellEntry.
---@param interruptFlags number
function SpellEntry:SetInterruptFlags(interruptFlags) end

---Sets the mana cost for the SpellEntry.
---@param manaCost number
function SpellEntry:SetManaCost(manaCost) end

---Sets the mana cost percentage for the SpellEntry.
---@param manaCostPercentage number
function SpellEntry:SetManaCostPercentage(manaCostPercentage) end

---Sets the mana cost per level for the SpellEntry.
---@param manaCostPerlevel number
function SpellEntry:SetManaCostPerlevel(manaCostPerlevel) end

---Sets the mana per second for the SpellEntry.
---@param manaPerSecond number
function SpellEntry:SetManaPerSecond(manaPerSecond) end

---Sets the mana per second per level for the SpellEntry.
---@param manaPerSecondPerLevel number
function SpellEntry:SetManaPerSecondPerLevel(manaPerSecondPerLevel) end

---Sets the max affected targets for the SpellEntry.
---@param maxAffectedTargets number
function SpellEntry:SetMaxAffectedTargets(maxAffectedTargets) end

---Sets the max level for the SpellEntry.
---@param maxLevel number
function SpellEntry:SetMaxLevel(maxLevel) end

---Sets the max target level for the SpellEntry.
---@param maxTargetLevel number
function SpellEntry:SetMaxTargetLevel(maxTargetLevel) end

---Sets the mechanic for the SpellEntry.
---@param mechanic number
function SpellEntry:SetMechanic(mechanic) end

---Sets the power type for the SpellEntry.
---@param powerType number
function SpellEntry:SetPowerType(powerType) end

---Sets the prevention type for the SpellEntry.
---@param preventionType number
function SpellEntry:SetPreventionType(preventionType) end

---Sets the proc chance for the SpellEntry.
---@param procChance number
function SpellEntry:SetProcChance(procChance) end

---Sets the proc charges for the SpellEntry.
---@param procCharges number
function SpellEntry:SetProcCharges(procCharges) end

---Sets the proc flags for the SpellEntry.
---@param procFlags number
function SpellEntry:SetProcFlags(procFlags) end

---Sets the recovery time for the SpellEntry.
---@param recoveryTime number
function SpellEntry:SetRecoveryTime(recoveryTime) end

---Sets the requires spell focus for the SpellEntry.
---@param requiresSpellFocus number
function SpellEntry:SetRequiresSpellFocus(requiresSpellFocus) end

---Sets the rune cost ID for the SpellEntry.
---@param runeCostID number
function SpellEntry:SetRuneCostID(runeCostID) end

---Sets the school mask for the SpellEntry.
---@param schoolMask number
function SpellEntry:SetSchoolMask(schoolMask) end

---Sets the speed for the SpellEntry.
---@param speed number
function SpellEntry:SetSpeed(speed) end

---Sets the spell family name for the SpellEntry.
---@param spellFamilyName number
function SpellEntry:SetSpellFamilyName(spellFamilyName) end

---Sets the spell icon ID for the SpellEntry.
---@param spellIconID number
function SpellEntry:SetSpellIconID(spellIconID) end

---Sets the spell level for the SpellEntry.
---@param spellLevel number
function SpellEntry:SetSpellLevel(spellLevel) end

---Sets the spell priority for the SpellEntry.
---@param spellPriority number
function SpellEntry:SetSpellPriority(spellPriority) end

---Sets the stack amount for the SpellEntry.
---@param stackAmount number
function SpellEntry:SetStackAmount(stackAmount) end

---Sets the stances for the SpellEntry.
---@param stances number
function SpellEntry:SetStances(stances) end

---Sets the stancesNot for the SpellEntry.
---@param stancesNot number
function SpellEntry:SetStancesNot(stancesNot) end

---Sets the start recovery category for the SpellEntry.
---@param startRecoveryCategory number
function SpellEntry:SetStartRecoveryCategory(startRecoveryCategory) end

---Sets the start recovery time for the SpellEntry.
---@param startRecoveryTime number
function SpellEntry:SetStartRecoveryTime(startRecoveryTime) end

---Sets the target aura spell for the SpellEntry.
---@param targetAuraSpell number
function SpellEntry:SetTargetAuraSpell(targetAuraSpell) end

---Sets the target aura state for the SpellEntry.
---@param targetAuraState number
function SpellEntry:SetTargetAuraState(targetAuraState) end

---Sets the target aura state not for the SpellEntry.
---@param targetAuraStateNot number
function SpellEntry:SetTargetAuraStateNot(targetAuraStateNot) end

---Sets the target creature type for the SpellEntry.
---@param targetCreatureType number
function SpellEntry:SetTargetCreatureType(targetCreatureType) end

---Sets the targets for the SpellEntry.
---@param targets number
function SpellEntry:SetTargets(targets) end

