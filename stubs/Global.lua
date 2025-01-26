---@meta

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

---Unbinds event handlers for either all of a Spell's events, or one type of event.
---@param entry number
---@param event_type number
function ClearSpellEvents(entry, event_type) end

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

---Returns the instance of the specified DBC (DatabaseClient) store.
---@param char ons
---@param id number
---@return DBCStore
function LookupEntry(char, id) end

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

---Registers a Creature gossip event handler.
---@param entry number
---@param event GossipEvents
---@param func function
---@param shots? number
---@return function
function RegisterCreatureGossipEvent(entry, event, func, shots) end

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

---Registers a Group event handler.
---@param event GroupEvents
---@param func function
---@param shots? number
---@return function
function RegisterGroupEvent(event, func, shots) end

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

---Registers a Map event handler for all instance of a Map.
---@param map_id number
---@param event InstanceEvents
---@param func function
---@param shots? number
function RegisterMapEvent(map_id, event, func, shots) end

---Registers a WorldPacket event handler.
---@param entry number
---@param event PacketEvents
---@param func function
---@param shots? number
---@return function
function RegisterPacketEvent(entry, event, func, shots) end

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

---Registers a server event handler.
---@param event ServerEvents
---@param func function
---@param shots? number
---@return function
function RegisterServerEvent(event, func, shots) end

---Registers a Spell event handler.
---@param entry number
---@param event SpellEvents
---@param func function
---@param shots? number
function RegisterSpellEvent(entry, event, func, shots) end

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

