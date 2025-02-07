---@meta

---@class SpellEntry
SpellEntry = {}

---Returns the active icon ID for the SpellEntry.
---@return number
function SpellEntry:GetActiveIconID() end

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

function SpellEntry:GetAuraInterruptFlags() end

---Returns the base level required for the SpellEntry.
---@return number
function SpellEntry:GetBaseLevel() end

function SpellEntry:GetCasterAuraSpell() end

function SpellEntry:GetCasterAuraState() end

function SpellEntry:GetCasterAuraStateNot() end

function SpellEntry:GetCastingTimeIndex() end

---Returns the category ID for the SpellEntry.
---@return number
function SpellEntry:GetCategory() end

---Returns the category recovery time for the SpellEntry.
---@return number
function SpellEntry:GetCategoryRecoveryTime() end

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

function SpellEntry:GetExcludeCasterAuraSpell() end

function SpellEntry:GetExcludeTargetAuraSpell() end

function SpellEntry:GetFacingCasterFlags() end

---Returns the ID of the SpellEntry.
---@return number
function SpellEntry:GetId() end

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

function SpellEntry:GetSpellFamilyFlags() end

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

function SpellEntry:GetStancesNot() end

---Returns the global cooldown time value for SpellEntry.
---@return number
function SpellEntry:GetStartRecoveryCategory() end

---Returns the global cooldown category value for SpellEntry.
---@return number
function SpellEntry:GetStartRecoveryTime() end

function SpellEntry:GetTargetAuraSpell() end

function SpellEntry:GetTargetAuraState() end

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

