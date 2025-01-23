---@meta

---@class Global
---Adds a taxi path to a specified map, returns the used pathId.
---@param waypoints table
---@param mountA number
---@param mountH number
---@param price? number
---@param pathId? number
---@return number
function AddTaxiPath(waypoints, mountA, mountH, price, pathId) end

---Adds an Item to a vendor and updates the world database.
---@param entry number
---@param item number
---@param maxcount number
---@param incrtime number
---@param extendedcost number
function AddVendorItem(entry, item, maxcount, incrtime, extendedcost) end

---Executes a SQL query on the login database.
---@param sql string
function AuthDBExecute(sql) end

---Executes a SQL query on the login database and returns an ElunaQuery.
---@param sql string
---@return ElunaQuery
function AuthDBQuery(sql) end

---Executes an asynchronous SQL query on the character database and passes an ElunaQuery to a callback function.
---@param sql string
---@param callback function
function AuthDBQueryAsync(sql, callback) end

---@alias BanMode
---| 0 # BAN_ACCOUNT
---| 1 # BAN_CHARACTER
---| 2 # BAN_IP

-- BanMode
BAN_ACCOUNT = 0
BAN_CHARACTER = 1
BAN_IP = 2

---Ban's a Player's account, character or IP
---@param banMode BanMode
---@param nameOrIP string
---@param duration number
---@param reason string
---@param whoBanned string
---@return number
function Ban(banMode, nameOrIP, duration, reason, whoBanned) end

---Executes a SQL query on the character database.
---@param sql string
function CharDBExecute(sql) end

---Executes a SQL query on the character database and returns an ElunaQuery.
---@param sql string
---@return ElunaQuery
function CharDBQuery(sql) end

---Executes an asynchronous SQL query on the character database and passes an ElunaQuery to a callback function.
---@param sql string
---@param callback function
function CharDBQueryAsync(sql, callback) end

---Unbinds event handlers for either all BattleGround events, or one type of event.
---@param event_type number
function ClearBattleGroundEvents(event_type) end

---Unbinds event handlers for either all of a Creature's events, or one type of event.
---@param entry number
---@param event_type number
function ClearCreatureEvents(entry, event_type) end

---Unbinds event handlers for either all of a Creature's gossip events, or one type of event.
---@param entry number
---@param event_type number
function ClearCreatureGossipEvents(entry, event_type) end

---Unbinds event handlers for either all of a GameObject's events, or one type of event.
---@param entry number
---@param event_type number
function ClearGameObjectEvents(entry, event_type) end

---Unbinds event handlers for either all of a GameObject's gossip events, or one type of event.
---@param entry number
---@param event_type number
function ClearGameObjectGossipEvents(entry, event_type) end

---Unbinds event handlers for either all Group events, or one type of Group event.
---@param event_type number
function ClearGroupEvents(event_type) end

---Unbinds event handlers for either all Guild events, or one type of Guild event.
---@param event_type number
function ClearGuildEvents(event_type) end

---Unbinds event handlers for either all of an instanced Map's events, or one type of event.
---@param entry number
---@param event_type number
function ClearInstanceEvents(entry, event_type) end

---Unbinds event handlers for either all of an Item's events, or one type of event.
---@param entry number
---@param event_type number
function ClearItemEvents(entry, event_type) end

---Unbinds event handlers for either all of an Item's gossip events, or one type of event.
---@param entry number
---@param event_type number
function ClearItemGossipEvents(entry, event_type) end

---Unbinds event handlers for either all of a non-instanced Map's events, or one type of event.
---@param map_id number
---@param event_type number
function ClearMapEvents(map_id, event_type) end

---Unbinds event handlers for either all of a WorldPacket opcode's events, or one type of event.
---@param opcode number
---@param event_type number
function ClearPacketEvents(opcode, event_type) end

---Unbinds event handlers for either all Player events, or one type of Player event.
---@param event_type number
function ClearPlayerEvents(event_type) end

---Unbinds event handlers for either all of a Player's gossip events, or one type of event.
---@param entry number
---@param event_type number
function ClearPlayerGossipEvents(entry, event_type) end

---Unbinds event handlers for either all server events, or one type of event.
---@param event_type number
function ClearServerEvents(event_type) end

---Unbinds event handlers for either all of a Creature's events, or one type of event.
---@param guid number
---@param instance_id number
---@param event_type number
function ClearUniqueCreatureEvents(guid, instance_id, event_type) end

---Returns an object representing a long long (64-bit) value.
---@param n number
---@param n_ll number
---@param n_str string
---@return number
function CreateLongLong(n, n_ll, n_str) end

---Registers a global timed event.
---@param func function
---@param delay number
---@param delaytable table
---@param repeats? number
---@return number
function CreateLuaEvent(func, delay, delaytable, repeats) end

---Creates a WorldPacket.
---@param opcode Opcodes
---@param size number
---@return WorldPacket
function CreatePacket(opcode, size) end

---Returns an object representing an unsigned long long (64-bit) value.
---@param n number
---@param n_ull number
---@param n_str string
---@return number
function CreateULongLong(n, n_ull, n_str) end

---Returns the currently active game events.
---@return table
function GetActiveGameEvents() end

---Returns the area or zone's name.
---@param areaOrZoneId number
---@param locale? LocaleConstant
---@return string
function GetAreaName(areaOrZoneId, locale) end

---Returns emulator's supported expansion.
---@return number
function GetCoreExpansion() end

---Returns emulator's name.
---@return string
function GetCoreName() end

---Returns emulator version
---@return string
function GetCoreVersion() end

---Returns the server's current time.
---@return number
function GetCurrTime() end

---Returns the entry ID from a GUID.
---@param guid number
---@return number
function GetGUIDEntry(guid) end

---Returns the low GUID from a GUID.
---@param guid number
---@return number
function GetGUIDLow(guid) end

---Returns the type ID from a GUID.
---@param guid number
---@return number
function GetGUIDType(guid) end

---Returns game time in seconds
---@return number
function GetGameTime() end

---Returns Guild by the leader's GUID
---@param guid number
---@return Guild
function GetGuildByLeaderGUID(guid) end

---Returns a Guild by name.
---@param name string
---@return Guild
function GetGuildByName(name) end

---Builds an Item's GUID.
---@param lowguid number
---@return number
function GetItemGUID(lowguid) end

---Returns an chat link for an Item.
---@param entry number
---@param locale? LocaleConstant
---@return string
function GetItemLink(entry, locale) end

function GetItemTemplate() end

---Returns Lua engine's name.
---@return string
function GetLuaEngine() end

---Returns a Map by ID.
---@param mapId number
---@param instanceId? number
---@return Map
function GetMapById(mapId, instanceId) end

---Builds a GameObject's GUID.
---@param lowguid number
---@param entry number
---@return number
function GetObjectGUID(lowguid, entry) end

---Gets the faction which is the current owner of Halaa in Nagrand 0 = Alliance 1 = Horde
---@param the number
---@return number
function GetOwnerHalaa(the) end

---Finds and Returns Player by guid if found
---@param guid number
---@return Player
function GetPlayerByGUID(guid) end

---Finds and Returns Player by name if found
---@param name string
---@return Player
function GetPlayerByName(name) end

---Returns the amount of Players in the world.
---@return number
function GetPlayerCount() end

---Builds a Player's GUID
---@param lowguid number
---@return number
function GetPlayerGUID(lowguid) end

---@alias TeamId
---| 0 # TEAM_ALLIANCE
---| 1 # TEAM_HORDE
---| 2 # TEAM_NEUTRAL

-- TeamId
TEAM_ALLIANCE = 0
TEAM_HORDE = 1
TEAM_NEUTRAL = 2

---Returns a table with all the current Players in the world
---@param team? TeamId
---@param onlyGM? boolean
---@return table
function GetPlayersInWorld(team, onlyGM) end

---Returns Quest template
---@param questId number
---@return Quest
function GetQuest(questId) end

function GetRealmID() end

---Returns the instance ID of the Lua state. Returns 0 for continent maps and the world state.
---@return number
function GetStateInstanceId() end

---Returns the Map pointer of the Lua state. Returns null for the "World" state.
---@return Map
function GetStateMap() end

---Returns the map ID of the Lua state. Returns -1 for the "World" state.
---@return number
function GetStateMapId() end

---Returns the difference between an old timestamp and the current time.
---@param oldTime number
---@return number
function GetTimeDiff(oldTime) end

---Builds a Creature's GUID.
---@param lowguid number
---@param entry number
---@return number
function GetUnitGUID(lowguid, entry) end

---Performs a non-blocking HTTP request.
---@param httpMethod string
---@param url string
---@param headers table
---@param body string
---@param contentType string
---@param func function
function HttpRequest(httpMethod, url, headers, body, contentType, func) end

---Returns true if the bag and slot is a valid bag position, otherwise false.
---@param bag number
---@param slot number
---@return boolean
function IsBagPos(bag, slot) end

---Returns true if the bag and slot is a valid bank position, otherwise false.
---@param bag number
---@param slot number
---@return boolean
function IsBankPos(bag, slot) end

---Returns true if Eluna is in compatibility mode, false if in multistate.
---@return boolean
function IsCompatibilityMode() end

---Returns true if the bag and slot is a valid equipment position, otherwise false.
---@param bag number
---@param slot number
---@return boolean
function IsEquipmentPos(bag, slot) end

---Returns true if the event is currently active, otherwise false.
---@param eventId number
---@return boolean
function IsGameEventActive(eventId) end

---Returns true if the bag and slot is a valid inventory position, otherwise false.
---@param bag number
---@param slot number
---@return boolean
function IsInventoryPos(bag, slot) end

---Kicks a Player from the server.
---@param player Player
function Kick(player) end

---Performs an in-game spawn and returns the Creature or GameObject spawned.
---@param spawnType number
---@param entry number
---@param mapId number
---@param instanceId number
---@param x number
---@param y number
---@param z number
---@param o number
---@param save? boolean
---@param durorresptime? number
---@param phase? number
---@return WorldObject
function PerformIngameSpawn(spawnType, entry, mapId, instanceId, x, y, z, o, save, durorresptime, phase) end

---Prints given parameters to the debug log.
function PrintDebug() end

---Prints given parameters to the error log.
function PrintError() end

---Prints given parameters to the info log.
function PrintInfo() end

---@alias BGEvents
---| 1 # BG_EVENT_ON_START
---| 2 # BG_EVENT_ON_END
---| 3 # BG_EVENT_ON_CREATE
---| 4 # BG_EVENT_ON_PRE_DESTROY
---| 5 # BG_EVENT_COUNT

-- BGEvents
BG_EVENT_ON_START = 1
BG_EVENT_ON_END = 2
BG_EVENT_ON_CREATE = 3
BG_EVENT_ON_PRE_DESTROY = 4
BG_EVENT_COUNT = 5

---Registers a BattleGround event handler.
---@param event BGEvents
---@param func function
---@param shots? number
---@return function
function RegisterBGEvent(event, func, shots) end

---Registers a Creature event handler.
---@param entry number
---@param event CreatureEvents
---@param func function
---@param shots? number
---@return function
function RegisterCreatureEvent(entry, event, func, shots) end

---@alias GossipEvents
---| 1 # GOSSIP_EVENT_ON_HELLO
---| 2 # GOSSIP_EVENT_ON_SELECT
---| 3 # GOSSIP_EVENT_COUNT

-- GossipEvents
GOSSIP_EVENT_ON_HELLO = 1
GOSSIP_EVENT_ON_SELECT = 2
GOSSIP_EVENT_COUNT = 3

---Registers a Creature gossip event handler.
---@param entry number
---@param event GossipEvents
---@param func function
---@param shots? number
---@return function
function RegisterCreatureGossipEvent(entry, event, func, shots) end

---@alias GameObjectEvents
---| 1 # GAMEOBJECT_EVENT_ON_AIUPDATE
---| 2 # GAMEOBJECT_EVENT_ON_SPAWN
---| 3 # GAMEOBJECT_EVENT_ON_DUMMY_EFFECT
---| 4 # GAMEOBJECT_EVENT_ON_QUEST_ACCEPT
---| 5 # GAMEOBJECT_EVENT_ON_QUEST_REWARD
---| 6 # GAMEOBJECT_EVENT_ON_DIALOG_STATUS
---| 7 # GAMEOBJECT_EVENT_ON_DESTROYED
---| 8 # GAMEOBJECT_EVENT_ON_DAMAGED
---| 9 # GAMEOBJECT_EVENT_ON_LOOT_STATE_CHANGE
---| 10 # GAMEOBJECT_EVENT_ON_GO_STATE_CHANGED
---| 12 # GAMEOBJECT_EVENT_ON_ADD
---| 13 # GAMEOBJECT_EVENT_ON_REMOVE
---| 14 # GAMEOBJECT_EVENT_ON_USE
---| 15 # GAMEOBJECT_EVENT_COUNT

-- GameObjectEvents
GAMEOBJECT_EVENT_ON_AIUPDATE = 1
GAMEOBJECT_EVENT_ON_SPAWN = 2
GAMEOBJECT_EVENT_ON_DUMMY_EFFECT = 3
GAMEOBJECT_EVENT_ON_QUEST_ACCEPT = 4
GAMEOBJECT_EVENT_ON_QUEST_REWARD = 5
GAMEOBJECT_EVENT_ON_DIALOG_STATUS = 6
GAMEOBJECT_EVENT_ON_DESTROYED = 7
GAMEOBJECT_EVENT_ON_DAMAGED = 8
GAMEOBJECT_EVENT_ON_LOOT_STATE_CHANGE = 9
GAMEOBJECT_EVENT_ON_GO_STATE_CHANGED = 10
GAMEOBJECT_EVENT_ON_ADD = 12
GAMEOBJECT_EVENT_ON_REMOVE = 13
GAMEOBJECT_EVENT_ON_USE = 14
GAMEOBJECT_EVENT_COUNT = 15

---Registers a GameObject event handler.
---@param entry number
---@param event GameObjectEvents
---@param func function
---@param shots? number
---@return function
function RegisterGameObjectEvent(entry, event, func, shots) end

---Registers a GameObject gossip event handler.
---@param entry number
---@param event GossipEvents
---@param func function
---@param shots? number
---@return function
function RegisterGameObjectGossipEvent(entry, event, func, shots) end

---@alias GroupEvents
---| 1 # GROUP_EVENT_ON_MEMBER_ADD
---| 2 # GROUP_EVENT_ON_MEMBER_INVITE
---| 3 # GROUP_EVENT_ON_MEMBER_REMOVE
---| 4 # GROUP_EVENT_ON_LEADER_CHANGE
---| 5 # GROUP_EVENT_ON_DISBAND
---| 6 # GROUP_EVENT_ON_CREATE
---| 7 # GROUP_EVENT_COUNT

-- GroupEvents
GROUP_EVENT_ON_MEMBER_ADD = 1
GROUP_EVENT_ON_MEMBER_INVITE = 2
GROUP_EVENT_ON_MEMBER_REMOVE = 3
GROUP_EVENT_ON_LEADER_CHANGE = 4
GROUP_EVENT_ON_DISBAND = 5
GROUP_EVENT_ON_CREATE = 6
GROUP_EVENT_COUNT = 7

---Registers a Group event handler.
---@param event GroupEvents
---@param func function
---@param shots? number
---@return function
function RegisterGroupEvent(event, func, shots) end

---@alias GuildEvents
---| 1 # GUILD_EVENT_ON_ADD_MEMBER
---| 2 # GUILD_EVENT_ON_REMOVE_MEMBER
---| 3 # GUILD_EVENT_ON_MOTD_CHANGE
---| 4 # GUILD_EVENT_ON_INFO_CHANGE
---| 5 # GUILD_EVENT_ON_CREATE
---| 6 # GUILD_EVENT_ON_DISBAND
---| 7 # GUILD_EVENT_ON_MONEY_WITHDRAW
---| 8 # GUILD_EVENT_ON_MONEY_DEPOSIT
---| 9 # GUILD_EVENT_ON_ITEM_MOVE
---| 10 # GUILD_EVENT_ON_EVENT
---| 11 # GUILD_EVENT_ON_BANK_EVENT
---| 12 # GUILD_EVENT_COUNT

-- GuildEvents
GUILD_EVENT_ON_ADD_MEMBER = 1
GUILD_EVENT_ON_REMOVE_MEMBER = 2
GUILD_EVENT_ON_MOTD_CHANGE = 3
GUILD_EVENT_ON_INFO_CHANGE = 4
GUILD_EVENT_ON_CREATE = 5
GUILD_EVENT_ON_DISBAND = 6
GUILD_EVENT_ON_MONEY_WITHDRAW = 7
GUILD_EVENT_ON_MONEY_DEPOSIT = 8
GUILD_EVENT_ON_ITEM_MOVE = 9
GUILD_EVENT_ON_EVENT = 10
GUILD_EVENT_ON_BANK_EVENT = 11
GUILD_EVENT_COUNT = 12

---Registers a Guild event handler.
---@param event GuildEvents
---@param func function
---@param shots? number
---@return function
function RegisterGuildEvent(event, func, shots) end

---Registers a Map event handler for one instance of a Map.
---@param instance_id number
---@param event InstanceEvents
---@param func function
---@param shots? number
function RegisterInstanceEvent(instance_id, event, func, shots) end

---@alias ItemEvents
---| 1 # ITEM_EVENT_ON_DUMMY_EFFECT
---| 2 # ITEM_EVENT_ON_USE
---| 3 # ITEM_EVENT_ON_QUEST_ACCEPT
---| 4 # ITEM_EVENT_ON_EXPIRE
---| 5 # ITEM_EVENT_ON_REMOVE
---| 6 # ITEM_EVENT_COUNT

-- ItemEvents
ITEM_EVENT_ON_DUMMY_EFFECT = 1
ITEM_EVENT_ON_USE = 2
ITEM_EVENT_ON_QUEST_ACCEPT = 3
ITEM_EVENT_ON_EXPIRE = 4
ITEM_EVENT_ON_REMOVE = 5
ITEM_EVENT_COUNT = 6

---Registers an Item event handler.
---@param entry number
---@param event ItemEvents
---@param func function
---@param shots? number
---@return function
function RegisterItemEvent(entry, event, func, shots) end

---Registers an Item gossip event handler.
---@param entry number
---@param event GossipEvents
---@param func function
---@param shots? number
---@return function
function RegisterItemGossipEvent(entry, event, func, shots) end

---@alias InstanceEvents
---| 1 # INSTANCE_EVENT_ON_INITIALIZE
---| 2 # INSTANCE_EVENT_ON_LOAD
---| 3 # INSTANCE_EVENT_ON_UPDATE
---| 4 # INSTANCE_EVENT_ON_PLAYER_ENTER
---| 5 # INSTANCE_EVENT_ON_CREATURE_CREATE
---| 6 # INSTANCE_EVENT_ON_GAMEOBJECT_CREATE
---| 7 # INSTANCE_EVENT_ON_CHECK_ENCOUNTER_IN_PROGRESS
---| 8 # INSTANCE_EVENT_COUNT

-- InstanceEvents
INSTANCE_EVENT_ON_INITIALIZE = 1
INSTANCE_EVENT_ON_LOAD = 2
INSTANCE_EVENT_ON_UPDATE = 3
INSTANCE_EVENT_ON_PLAYER_ENTER = 4
INSTANCE_EVENT_ON_CREATURE_CREATE = 5
INSTANCE_EVENT_ON_GAMEOBJECT_CREATE = 6
INSTANCE_EVENT_ON_CHECK_ENCOUNTER_IN_PROGRESS = 7
INSTANCE_EVENT_COUNT = 8

---Registers a Map event handler for all instance of a Map.
---@param map_id number
---@param event InstanceEvents
---@param func function
---@param shots? number
function RegisterMapEvent(map_id, event, func, shots) end

---@alias PacketEvents
---| 5 # PACKET_EVENT_ON_PACKET_RECEIVE
---| 6 # PACKET_EVENT_ON_PACKET_RECEIVE_UNKNOWN
---| 7 # PACKET_EVENT_ON_PACKET_SEND
---| 8 # PACKET_EVENT_COUNT

-- PacketEvents
PACKET_EVENT_ON_PACKET_RECEIVE = 5
PACKET_EVENT_ON_PACKET_RECEIVE_UNKNOWN = 6
PACKET_EVENT_ON_PACKET_SEND = 7
PACKET_EVENT_COUNT = 8

---Registers a WorldPacket event handler.
---@param entry number
---@param event PacketEvents
---@param func function
---@param shots? number
---@return function
function RegisterPacketEvent(entry, event, func, shots) end

---@alias PlayerEvents
---| 1 # PLAYER_EVENT_ON_CHARACTER_CREATE
---| 2 # PLAYER_EVENT_ON_CHARACTER_DELETE
---| 3 # PLAYER_EVENT_ON_LOGIN
---| 4 # PLAYER_EVENT_ON_LOGOUT
---| 5 # PLAYER_EVENT_ON_SPELL_CAST
---| 6 # PLAYER_EVENT_ON_KILL_PLAYER
---| 7 # PLAYER_EVENT_ON_KILL_CREATURE
---| 8 # PLAYER_EVENT_ON_KILLED_BY_CREATURE
---| 9 # PLAYER_EVENT_ON_DUEL_REQUEST
---| 10 # PLAYER_EVENT_ON_DUEL_START
---| 11 # PLAYER_EVENT_ON_DUEL_END
---| 12 # PLAYER_EVENT_ON_GIVE_XP
---| 13 # PLAYER_EVENT_ON_LEVEL_CHANGE
---| 14 # PLAYER_EVENT_ON_MONEY_CHANGE
---| 15 # PLAYER_EVENT_ON_REPUTATION_CHANGE
---| 16 # PLAYER_EVENT_ON_TALENTS_CHANGE
---| 17 # PLAYER_EVENT_ON_TALENTS_RESET
---| 18 # PLAYER_EVENT_ON_CHAT
---| 19 # PLAYER_EVENT_ON_WHISPER
---| 20 # PLAYER_EVENT_ON_GROUP_CHAT
---| 21 # PLAYER_EVENT_ON_GUILD_CHAT
---| 22 # PLAYER_EVENT_ON_CHANNEL_CHAT
---| 23 # PLAYER_EVENT_ON_EMOTE
---| 24 # PLAYER_EVENT_ON_TEXT_EMOTE
---| 25 # PLAYER_EVENT_ON_SAVE
---| 26 # PLAYER_EVENT_ON_BIND_TO_INSTANCE
---| 27 # PLAYER_EVENT_ON_UPDATE_ZONE
---| 28 # PLAYER_EVENT_ON_MAP_CHANGE
---| 29 # PLAYER_EVENT_ON_EQUIP
---| 30 # PLAYER_EVENT_ON_FIRST_LOGIN
---| 31 # PLAYER_EVENT_ON_CAN_USE_ITEM
---| 32 # PLAYER_EVENT_ON_LOOT_ITEM
---| 33 # PLAYER_EVENT_ON_ENTER_COMBAT
---| 34 # PLAYER_EVENT_ON_LEAVE_COMBAT
---| 35 # PLAYER_EVENT_ON_REPOP
---| 36 # PLAYER_EVENT_ON_RESURRECT
---| 37 # PLAYER_EVENT_ON_LOOT_MONEY
---| 38 # PLAYER_EVENT_ON_QUEST_ABANDON
---| 39 # PLAYER_EVENT_ON_LEARN_TALENTS
---| 42 # PLAYER_EVENT_ON_COMMAND
---| 43 # PLAYER_EVENT_ON_PET_ADDED_TO_WORLD
---| 44 # PLAYER_EVENT_ON_LEARN_SPELL
---| 45 # PLAYER_EVENT_ON_ACHIEVEMENT_COMPLETE
---| 46 # PLAYER_EVENT_ON_FFAPVP_CHANGE
---| 47 # PLAYER_EVENT_ON_UPDATE_AREA
---| 48 # PLAYER_EVENT_ON_CAN_INIT_TRADE
---| 49 # PLAYER_EVENT_ON_CAN_SEND_MAIL
---| 50 # PLAYER_EVENT_ON_CAN_JOIN_LFG
---| 51 # PLAYER_EVENT_ON_QUEST_REWARD_ITEM
---| 52 # PLAYER_EVENT_ON_CREATE_ITEM
---| 53 # PLAYER_EVENT_ON_STORE_NEW_ITEM
---| 54 # PLAYER_EVENT_ON_COMPLETE_QUEST
---| 55 # PLAYER_EVENT_ON_CAN_GROUP_INVITE
---| 56 # PLAYER_EVENT_ON_GROUP_ROLL_REWARD_ITEM
---| 57 # PLAYER_EVENT_ON_BG_DESERTION

-- PlayerEvents
PLAYER_EVENT_ON_CHARACTER_CREATE = 1
PLAYER_EVENT_ON_CHARACTER_DELETE = 2
PLAYER_EVENT_ON_LOGIN = 3
PLAYER_EVENT_ON_LOGOUT = 4
PLAYER_EVENT_ON_SPELL_CAST = 5
PLAYER_EVENT_ON_KILL_PLAYER = 6
PLAYER_EVENT_ON_KILL_CREATURE = 7
PLAYER_EVENT_ON_KILLED_BY_CREATURE = 8
PLAYER_EVENT_ON_DUEL_REQUEST = 9
PLAYER_EVENT_ON_DUEL_START = 10
PLAYER_EVENT_ON_DUEL_END = 11
PLAYER_EVENT_ON_GIVE_XP = 12
PLAYER_EVENT_ON_LEVEL_CHANGE = 13
PLAYER_EVENT_ON_MONEY_CHANGE = 14
PLAYER_EVENT_ON_REPUTATION_CHANGE = 15
PLAYER_EVENT_ON_TALENTS_CHANGE = 16
PLAYER_EVENT_ON_TALENTS_RESET = 17
PLAYER_EVENT_ON_CHAT = 18
PLAYER_EVENT_ON_WHISPER = 19
PLAYER_EVENT_ON_GROUP_CHAT = 20
PLAYER_EVENT_ON_GUILD_CHAT = 21
PLAYER_EVENT_ON_CHANNEL_CHAT = 22
PLAYER_EVENT_ON_EMOTE = 23
PLAYER_EVENT_ON_TEXT_EMOTE = 24
PLAYER_EVENT_ON_SAVE = 25
PLAYER_EVENT_ON_BIND_TO_INSTANCE = 26
PLAYER_EVENT_ON_UPDATE_ZONE = 27
PLAYER_EVENT_ON_MAP_CHANGE = 28
PLAYER_EVENT_ON_EQUIP = 29
PLAYER_EVENT_ON_FIRST_LOGIN = 30
PLAYER_EVENT_ON_CAN_USE_ITEM = 31
PLAYER_EVENT_ON_LOOT_ITEM = 32
PLAYER_EVENT_ON_ENTER_COMBAT = 33
PLAYER_EVENT_ON_LEAVE_COMBAT = 34
PLAYER_EVENT_ON_REPOP = 35
PLAYER_EVENT_ON_RESURRECT = 36
PLAYER_EVENT_ON_LOOT_MONEY = 37
PLAYER_EVENT_ON_QUEST_ABANDON = 38
PLAYER_EVENT_ON_LEARN_TALENTS = 39
PLAYER_EVENT_ON_COMMAND = 42
PLAYER_EVENT_ON_PET_ADDED_TO_WORLD = 43
PLAYER_EVENT_ON_LEARN_SPELL = 44
PLAYER_EVENT_ON_ACHIEVEMENT_COMPLETE = 45
PLAYER_EVENT_ON_FFAPVP_CHANGE = 46
PLAYER_EVENT_ON_UPDATE_AREA = 47
PLAYER_EVENT_ON_CAN_INIT_TRADE = 48
PLAYER_EVENT_ON_CAN_SEND_MAIL = 49
PLAYER_EVENT_ON_CAN_JOIN_LFG = 50
PLAYER_EVENT_ON_QUEST_REWARD_ITEM = 51
PLAYER_EVENT_ON_CREATE_ITEM = 52
PLAYER_EVENT_ON_STORE_NEW_ITEM = 53
PLAYER_EVENT_ON_COMPLETE_QUEST = 54
PLAYER_EVENT_ON_CAN_GROUP_INVITE = 55
PLAYER_EVENT_ON_GROUP_ROLL_REWARD_ITEM = 56
PLAYER_EVENT_ON_BG_DESERTION = 57

---Registers a Player event handler.
---@param event PlayerEvents
---@param func function
---@param shots? number
---@return function
function RegisterPlayerEvent(event, func, shots) end

---Registers a Player gossip event handler.
---@param menu_id number
---@param event GossipEvents
---@param func function
---@param shots? number
---@return function
function RegisterPlayerGossipEvent(menu_id, event, func, shots) end

---@alias ServerEvents
---| 1 # SERVER_EVENT_ON_NETWORK_START
---| 2 # SERVER_EVENT_ON_NETWORK_STOP
---| 3 # SERVER_EVENT_ON_SOCKET_OPEN
---| 4 # SERVER_EVENT_ON_SOCKET_CLOSE
---| 5 # SERVER_EVENT_ON_PACKET_RECEIVE
---| 6 # SERVER_EVENT_ON_PACKET_RECEIVE_UNKNOWN
---| 7 # SERVER_EVENT_ON_PACKET_SEND
---| 8 # WORLD_EVENT_ON_OPEN_STATE_CHANGE
---| 9 # WORLD_EVENT_ON_CONFIG_LOAD
---| 11 # WORLD_EVENT_ON_SHUTDOWN_INIT
---| 12 # WORLD_EVENT_ON_SHUTDOWN_CANCEL
---| 13 # WORLD_EVENT_ON_UPDATE
---| 14 # WORLD_EVENT_ON_STARTUP
---| 15 # WORLD_EVENT_ON_SHUTDOWN
---| 16 # ELUNA_EVENT_ON_LUA_STATE_CLOSE
---| 17 # MAP_EVENT_ON_CREATE
---| 18 # MAP_EVENT_ON_DESTROY
---| 19 # MAP_EVENT_ON_GRID_LOAD
---| 20 # MAP_EVENT_ON_GRID_UNLOAD
---| 21 # MAP_EVENT_ON_PLAYER_ENTER
---| 22 # MAP_EVENT_ON_PLAYER_LEAVE
---| 23 # MAP_EVENT_ON_UPDATE
---| 24 # TRIGGER_EVENT_ON_TRIGGER
---| 25 # WEATHER_EVENT_ON_CHANGE
---| 26 # AUCTION_EVENT_ON_ADD
---| 27 # AUCTION_EVENT_ON_REMOVE
---| 28 # AUCTION_EVENT_ON_SUCCESSFUL
---| 29 # AUCTION_EVENT_ON_EXPIRE
---| 30 # ADDON_EVENT_ON_MESSAGE
---| 31 # WORLD_EVENT_ON_DELETE_CREATURE
---| 32 # WORLD_EVENT_ON_DELETE_GAMEOBJECT
---| 33 # ELUNA_EVENT_ON_LUA_STATE_OPEN
---| 34 # GAME_EVENT_START
---| 35 # GAME_EVENT_STOP

-- ServerEvents
SERVER_EVENT_ON_NETWORK_START = 1
SERVER_EVENT_ON_NETWORK_STOP = 2
SERVER_EVENT_ON_SOCKET_OPEN = 3
SERVER_EVENT_ON_SOCKET_CLOSE = 4
SERVER_EVENT_ON_PACKET_RECEIVE = 5
SERVER_EVENT_ON_PACKET_RECEIVE_UNKNOWN = 6
SERVER_EVENT_ON_PACKET_SEND = 7
WORLD_EVENT_ON_OPEN_STATE_CHANGE = 8
WORLD_EVENT_ON_CONFIG_LOAD = 9
WORLD_EVENT_ON_SHUTDOWN_INIT = 11
WORLD_EVENT_ON_SHUTDOWN_CANCEL = 12
WORLD_EVENT_ON_UPDATE = 13
WORLD_EVENT_ON_STARTUP = 14
WORLD_EVENT_ON_SHUTDOWN = 15
ELUNA_EVENT_ON_LUA_STATE_CLOSE = 16
MAP_EVENT_ON_CREATE = 17
MAP_EVENT_ON_DESTROY = 18
MAP_EVENT_ON_GRID_LOAD = 19
MAP_EVENT_ON_GRID_UNLOAD = 20
MAP_EVENT_ON_PLAYER_ENTER = 21
MAP_EVENT_ON_PLAYER_LEAVE = 22
MAP_EVENT_ON_UPDATE = 23
TRIGGER_EVENT_ON_TRIGGER = 24
WEATHER_EVENT_ON_CHANGE = 25
AUCTION_EVENT_ON_ADD = 26
AUCTION_EVENT_ON_REMOVE = 27
AUCTION_EVENT_ON_SUCCESSFUL = 28
AUCTION_EVENT_ON_EXPIRE = 29
ADDON_EVENT_ON_MESSAGE = 30
WORLD_EVENT_ON_DELETE_CREATURE = 31
WORLD_EVENT_ON_DELETE_GAMEOBJECT = 32
ELUNA_EVENT_ON_LUA_STATE_OPEN = 33
GAME_EVENT_START = 34
GAME_EVENT_STOP = 35

---Registers a server event handler.
---@param event ServerEvents
---@param func function
---@param shots? number
---@return function
function RegisterServerEvent(event, func, shots) end

---@alias CreatureEvents
---| 1 # CREATURE_EVENT_ON_ENTER_COMBAT
---| 2 # CREATURE_EVENT_ON_LEAVE_COMBAT
---| 3 # CREATURE_EVENT_ON_TARGET_DIED
---| 4 # CREATURE_EVENT_ON_DIED
---| 5 # CREATURE_EVENT_ON_SPAWN
---| 6 # CREATURE_EVENT_ON_REACH_WP
---| 7 # CREATURE_EVENT_ON_AIUPDATE
---| 8 # CREATURE_EVENT_ON_RECEIVE_EMOTE
---| 9 # CREATURE_EVENT_ON_DAMAGE_TAKEN
---| 10 # CREATURE_EVENT_ON_PRE_COMBAT
---| 12 # CREATURE_EVENT_ON_OWNER_ATTACKED
---| 13 # CREATURE_EVENT_ON_OWNER_ATTACKED_AT
---| 14 # CREATURE_EVENT_ON_HIT_BY_SPELL
---| 15 # CREATURE_EVENT_ON_SPELL_HIT_TARGET
---| 19 # CREATURE_EVENT_ON_JUST_SUMMONED_CREATURE
---| 20 # CREATURE_EVENT_ON_SUMMONED_CREATURE_DESPAWN
---| 21 # CREATURE_EVENT_ON_SUMMONED_CREATURE_DIED
---| 22 # CREATURE_EVENT_ON_SUMMONED
---| 23 # CREATURE_EVENT_ON_RESET
---| 24 # CREATURE_EVENT_ON_REACH_HOME
---| 26 # CREATURE_EVENT_ON_CORPSE_REMOVED
---| 27 # CREATURE_EVENT_ON_MOVE_IN_LOS
---| 30 # CREATURE_EVENT_ON_DUMMY_EFFECT
---| 31 # CREATURE_EVENT_ON_QUEST_ACCEPT
---| 34 # CREATURE_EVENT_ON_QUEST_REWARD
---| 35 # CREATURE_EVENT_ON_DIALOG_STATUS
---| 36 # CREATURE_EVENT_ON_ADD
---| 37 # CREATURE_EVENT_ON_REMOVE
---| 38 # CREATURE_EVENT_COUNT

-- CreatureEvents
CREATURE_EVENT_ON_ENTER_COMBAT = 1
CREATURE_EVENT_ON_LEAVE_COMBAT = 2
CREATURE_EVENT_ON_TARGET_DIED = 3
CREATURE_EVENT_ON_DIED = 4
CREATURE_EVENT_ON_SPAWN = 5
CREATURE_EVENT_ON_REACH_WP = 6
CREATURE_EVENT_ON_AIUPDATE = 7
CREATURE_EVENT_ON_RECEIVE_EMOTE = 8
CREATURE_EVENT_ON_DAMAGE_TAKEN = 9
CREATURE_EVENT_ON_PRE_COMBAT = 10
CREATURE_EVENT_ON_OWNER_ATTACKED = 12
CREATURE_EVENT_ON_OWNER_ATTACKED_AT = 13
CREATURE_EVENT_ON_HIT_BY_SPELL = 14
CREATURE_EVENT_ON_SPELL_HIT_TARGET = 15
CREATURE_EVENT_ON_JUST_SUMMONED_CREATURE = 19
CREATURE_EVENT_ON_SUMMONED_CREATURE_DESPAWN = 20
CREATURE_EVENT_ON_SUMMONED_CREATURE_DIED = 21
CREATURE_EVENT_ON_SUMMONED = 22
CREATURE_EVENT_ON_RESET = 23
CREATURE_EVENT_ON_REACH_HOME = 24
CREATURE_EVENT_ON_CORPSE_REMOVED = 26
CREATURE_EVENT_ON_MOVE_IN_LOS = 27
CREATURE_EVENT_ON_DUMMY_EFFECT = 30
CREATURE_EVENT_ON_QUEST_ACCEPT = 31
CREATURE_EVENT_ON_QUEST_REWARD = 34
CREATURE_EVENT_ON_DIALOG_STATUS = 35
CREATURE_EVENT_ON_ADD = 36
CREATURE_EVENT_ON_REMOVE = 37
CREATURE_EVENT_COUNT = 38

---Registers a Creature event handler for a single Creature.
---@param guid number
---@param instance_id number
---@param event CreatureEvents
---@param func function
---@param shots? number
---@return function
function RegisterUniqueCreatureEvent(guid, instance_id, event, func, shots) end

---Reloads the Lua engine.
function ReloadEluna() end

---Removes a global timed event specified by ID.
---@param eventId number
---@param all_Events? boolean
function RemoveEventById(eventId, all_Events) end

---Removes all global timed events.
---@param all_Events? boolean
function RemoveEvents(all_Events) end

---Runs a command.
---@param command string
function RunCommand(command) end

---Saves all Players.
function SaveAllPlayers() end

---@alias MailStationery
---| 1 # MAIL_STATIONERY_TEST
---| 41 # MAIL_STATIONERY_DEFAULT
---| 61 # MAIL_STATIONERY_GM
---| 62 # MAIL_STATIONERY_AUCTION
---| 64 # MAIL_STATIONERY_VAL
---| 65 # MAIL_STATIONERY_CHR
---| 67 # MAIL_STATIONERY_ORP

-- MailStationery
MAIL_STATIONERY_TEST = 1
MAIL_STATIONERY_DEFAULT = 41
MAIL_STATIONERY_GM = 61
MAIL_STATIONERY_AUCTION = 62
MAIL_STATIONERY_VAL = 64
MAIL_STATIONERY_CHR = 65
MAIL_STATIONERY_ORP = 67

---Sends mail to a Player.
---@param subject string
---@param text string
---@param receiverGUIDLow number
---@param senderGUIDLow? number
---@param stationary? MailStationery
---@param delay? number
---@param money? number
---@param cod? number
---@param entry? number
---@param amount? number
---@return number
function SendMail(subject, text, receiverGUIDLow, senderGUIDLow, stationary, delay, money, cod, entry, amount) end

---Sends a message to all Players online.
---@param message string
function SendWorldMessage(message) end

---Sets the owner of Halaa in Nagrand to the respective faction 0 = Alliance 1 = Horde
---@param teamId number
function SetOwnerHalaa(teamId) end

---Starts the event by eventId, if force is set, the event will force start regardless of previous event state.
---@param eventId number
---@param force? boolean
function StartGameEvent(eventId, force) end

---Stops the event by eventId, if force is set, the event will force stop regardless of previous event state.
---@param eventId number
---@param force? boolean
function StopGameEvent(eventId, force) end

---Removes all Items from a vendor and updates the database.
---@param entry number
function VendorRemoveAllItems(entry) end

---Removes an Item from a vendor and updates the database.
---@param entry number
---@param item number
function VendorRemoveItem(entry, item) end

---Executes a SQL query on the world database.
---@param sql string
function WorldDBExecute(sql) end

---Executes a SQL query on the world database and returns an ElunaQuery.
---@param sql string
---@return ElunaQuery
function WorldDBQuery(sql) end

---Executes an asynchronous SQL query on the world database and passes an ElunaQuery to a callback function.
---@param sql string
---@param callback function
function WorldDBQueryAsync(sql, callback) end

---Performs a bitwise AND (a & b).
---@param a number
---@param b number
---@return number
function bit_and(a, b) end

---Performs a bitwise left-shift (a << b).
---@param a number
---@param b number
---@return number
function bit_lshift(a, b) end

---Performs a bitwise NOT (~a).
---@param a number
---@return number
function bit_not(a) end

---Performs a bitwise OR (a | b).
---@param a number
---@param b number
---@return number
function bit_or(a, b) end

---Performs a bitwise right-shift (a >> b).
---@param a number
---@param b number
---@return number
function bit_rshift(a, b) end

---Performs a bitwise XOR (a ^ b).
---@param a number
---@param b number
---@return number
function bit_xor(a, b) end

