---@meta

---@class Achievement
Achievement = {}

---Returns the Achievement's ID.
---@return number
function Achievement:GetId() end

---@alias LocaleConstant
---| 0 # LOCALE_enUS
---| 1 # LOCALE_koKR
---| 2 # LOCALE_frFR
---| 3 # LOCALE_deDE
---| 4 # LOCALE_zhCN
---| 5 # LOCALE_zhTW
---| 6 # LOCALE_esES
---| 7 # LOCALE_esMX
---| 8 # LOCALE_ruRU

-- LocaleConstant
LOCALE_enUS = 0
LOCALE_koKR = 1
LOCALE_frFR = 2
LOCALE_deDE = 3
LOCALE_zhCN = 4
LOCALE_zhTW = 5
LOCALE_esES = 6
LOCALE_esMX = 7
LOCALE_ruRU = 8

---Returns the Achievement's name.
---@param locale? LocaleConstant
---@return string
function Achievement:GetName(locale) end

