--- @meta

---Builds a Player's GUID
---@param lowguid number
---@param guid number
---@return number
function GetPlayerGUID(lowguid, guid) end

---Builds a Creature's GUID.
---@param lowguid number
---@param entry number
---@param guid number
---@return number
function GetUnitGUID(lowguid, entry, guid) end

---Registers a Player gossip event handler.
---@param menu_id number
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterPlayerGossipEvent(menu_id, event, function, shots, cancel) end

---Removes a global timed event specified by ID.
---@param eventId number
---@param all_Events boolean
function RemoveEventById(eventId, all_Events) end

---Sends a message to all Players online.
---@param message string
function SendWorldMessage(message) end

---Executes a SQL query on the login database.
---@param sql string
function AuthDBExecute(sql) end

---Unbinds event handlers for either all of an Item's gossip events, or one type of event.
---@param entry number
---@param event_type number
function ClearItemGossipEvents(entry, event_type) end

---Registers a global timed event.
---@param function function
---@param delay number
---@param delaytable table
---@param repeats number
---@param eventId number
---@return number
function CreateLuaEvent(function, delay, delaytable, repeats, eventId) end

---Removes an Item from a vendor and updates the database.
---@param entry number
---@param item number
function VendorRemoveItem(entry, item) end

---Returns an object representing a long long (64-bit) value.
---@param n number
---@param n_ll number
---@param n_str string
---@param value number
---@return number
function CreateLongLong(n, n_ll, n_str, value) end

---Returns Quest template
---@param questId number
---@param quest Quest
---@return Quest
function GetQuest(questId, quest) end

---Performs a bitwise left-shift (a << b).
---@param a number
---@param b number
---@param result number
---@return number
function bit_lshift(a, b, result) end

---Returns the instance ID of the Lua state. Returns 0 for continent maps and the world state.
---@param instanceId number
---@return number
function GetStateInstanceId(instanceId) end

---Unbinds event handlers for either all of a non-instanced Map's events, or one type of event.
---@param map_id number
---@param event_type number
function ClearMapEvents(map_id, event_type) end

---Unbinds event handlers for either all of a WorldPacket opcode's events, or one type of event.
---@param opcode number
---@param event_type number
function ClearPacketEvents(opcode, event_type) end

---Creates a WorldPacket.
---@param opcode Opcodes
---@param size number
---@param packet WorldPacket
---@return WorldPacket
function CreatePacket(opcode, size, packet) end

---Returns the low GUID from a GUID.
---@param guid number
---@param lowguid number
---@return number
function GetGUIDLow(guid, lowguid) end

---Returns true if the bag and slot is a valid inventory position, otherwise false.
---@param bag number
---@param slot number
---@param isInventoryPos boolean
---@return boolean
function IsInventoryPos(bag, slot, isInventoryPos) end

---Adds a taxi path to a specified map, returns the used pathId.
---@param waypoints table
---@param mountA number
---@param mountH number
---@param price number
---@param pathId number
---@param actualPathId number
---@return number
function AddTaxiPath(waypoints, mountA, mountH, price, pathId, actualPathId) end

---Returns an chat link for an Item.
---@param entry number
---@param locale LocaleConstant
---@param itemLink string
---@return string
function GetItemLink(entry, locale, itemLink) end

---Prints given parameters to the error log.
function PrintError() end

---Registers a Guild event handler.
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterGuildEvent(event, function, shots, cancel) end

---Registers a Map event handler for all instance of a Map.
---@param map_id number
---@param event number
---@param function function
---@param shots number
function RegisterMapEvent(map_id, event, function, shots) end

---Ban's a Player's account, character or IP
---@param banMode BanMode
---@param nameOrIP string
---@param duration number
---@param reason string
---@param whoBanned string
---@param result number
---@return number
function Ban(banMode, nameOrIP, duration, reason, whoBanned, result) end

---Executes a SQL query on the character database and returns an ElunaQuery.
---@param sql string
---@param results ElunaQuery
---@return ElunaQuery
function CharDBQuery(sql, results) end

---Returns the Map pointer of the Lua state. Returns null for the "World" state.
---@param map Map
---@return Map
function GetStateMap(map) end

---Returns true if the event is currently active, otherwise false.
---@param eventId number
---@param isActive boolean
---@return boolean
function IsGameEventActive(eventId, isActive) end

---Unbinds event handlers for either all Guild events, or one type of Guild event.
---@param event_type number
function ClearGuildEvents(event_type) end

---Unbinds event handlers for either all of a Creature's events, or one type of event.
---@param guid number
---@param instance_id number
---@param event_type number
function ClearUniqueCreatureEvents(guid, instance_id, event_type) end

---Returns the server's current time.
---@param currTime number
---@return number
function GetCurrTime(currTime) end

---Finds and Returns Player by name if found
---@param name string
---@param player Player
---@return Player
function GetPlayerByName(name, player) end

---Performs a non-blocking HTTP request.
---@param httpMethod string
---@param url string
---@param headers table
---@param body string
---@param contentType string
---@param function function
function HttpRequest(httpMethod, url, headers, body, contentType, function) end

---Reloads the Lua engine.
function ReloadEluna() end

---Unbinds event handlers for either all of a Creature's events, or one type of event.
---@param entry number
---@param event_type number
function ClearCreatureEvents(entry, event_type) end

---Returns the area or zone's name.
---@param areaOrZoneId number
---@param locale LocaleConstant
---@param areaOrZoneName string
---@return string
function GetAreaName(areaOrZoneId, locale, areaOrZoneName) end

---Starts the event by eventId, if force is set, the event will force start regardless of previous event state.
---@param eventId number
---@param force boolean
function StartGameEvent(eventId, force) end

---Adds an Item to a vendor and updates the world database.
---@param entry number
---@param item number
---@param maxcount number
---@param incrtime number
---@param extendedcost number
function AddVendorItem(entry, item, maxcount, incrtime, extendedcost) end

function GetItemTemplate() end

---Returns true if the bag and slot is a valid bank position, otherwise false.
---@param bag number
---@param slot number
---@param isBankPosition boolean
---@return boolean
function IsBankPos(bag, slot, isBankPosition) end

---Executes a SQL query on the world database.
---@param sql string
function WorldDBExecute(sql) end

---Executes an asynchronous SQL query on the character database and passes an ElunaQuery to a callback function.
---@param sql string
---@param callback function
function AuthDBQueryAsync(sql, callback) end

---Registers an Item event handler.
---@param entry number
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterItemEvent(entry, event, function, shots, cancel) end

---Executes an asynchronous SQL query on the character database and passes an ElunaQuery to a callback function.
---@param sql string
---@param callback function
function CharDBQueryAsync(sql, callback) end

---Finds and Returns Player by guid if found
---@param guid number
---@param player Player
---@return Player
function GetPlayerByGUID(guid, player) end

---Returns true if the bag and slot is a valid bag position, otherwise false.
---@param bag number
---@param slot number
---@param isBagPosition boolean
---@return boolean
function IsBagPos(bag, slot, isBagPosition) end

---Builds an Item's GUID.
---@param lowguid number
---@param guid number
---@return number
function GetItemGUID(lowguid, guid) end

---Returns a Map by ID.
---@param mapId number
---@param instanceId number
---@param map Map
---@return Map
function GetMapById(mapId, instanceId, map) end

---Performs a bitwise NOT (~a).
---@param a number
---@param result number
---@return number
function bit_not(a, result) end

---Returns game time in seconds
---@param time number
---@return number
function GetGameTime(time) end

---Registers a Map event handler for one instance of a Map.
---@param instance_id number
---@param event number
---@param function function
---@param shots number
function RegisterInstanceEvent(instance_id, event, function, shots) end

---Returns Lua engine's name.
---@param engineName string
---@return string
function GetLuaEngine(engineName) end

---Executes an asynchronous SQL query on the world database and passes an ElunaQuery to a callback function.
---@param sql string
---@param callback function
function WorldDBQueryAsync(sql, callback) end

---Registers a Creature gossip event handler.
---@param entry number
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterCreatureGossipEvent(entry, event, function, shots, cancel) end

---Saves all Players.
function SaveAllPlayers() end

---Performs a bitwise right-shift (a >> b).
---@param a number
---@param b number
---@param result number
---@return number
function bit_rshift(a, b, result) end

---Executes a SQL query on the login database and returns an ElunaQuery.
---@param sql string
---@param results ElunaQuery
---@return ElunaQuery
function AuthDBQuery(sql, results) end

---Unbinds event handlers for either all Player events, or one type of Player event.
---@param event_type number
function ClearPlayerEvents(event_type) end

---Returns true if Eluna is in compatibility mode, false if in multistate.
---@param isCompatibilityMode boolean
---@return boolean
function IsCompatibilityMode(isCompatibilityMode) end

---Registers an Item gossip event handler.
---@param entry number
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterItemGossipEvent(entry, event, function, shots, cancel) end

---Performs a bitwise AND (a & b).
---@param a number
---@param b number
---@param result number
---@return number
function bit_and(a, b, result) end

---Returns the currently active game events.
---@param activeEvents table
---@return table
function GetActiveGameEvents(activeEvents) end

---Returns the amount of Players in the world.
---@param count number
---@return number
function GetPlayerCount(count) end

---Returns the difference between an old timestamp and the current time.
---@param oldTime number
---@param timeDiff number
---@return number
function GetTimeDiff(oldTime, timeDiff) end

---Performs an in-game spawn and returns the Creature or GameObject spawned.
---@param spawnType number
---@param entry number
---@param mapId number
---@param instanceId number
---@param x number
---@param y number
---@param z number
---@param o number
---@param save boolean
---@param durorresptime number
---@param phase number
---@param worldObject WorldObject
---@return WorldObject
function PerformIngameSpawn(spawnType, entry, mapId, instanceId, x, y, z, o, save, durorresptime, phase, worldObject) end

---Runs a command.
---@param command string
function RunCommand(command) end

---Returns Guild by the leader's GUID
---@param guid number
---@param guild Guild
---@return Guild
function GetGuildByLeaderGUID(guid, guild) end

---Builds a GameObject's GUID.
---@param lowguid number
---@param entry number
---@param guid number
---@return number
function GetObjectGUID(lowguid, entry, guid) end

---Gets the faction which is the current owner of Halaa in Nagrand
0 = Alliance
1 = Horde
---@param the number
---@param the number
---@return number
function GetOwnerHalaa(the, the) end

---Returns the map ID of the Lua state. Returns -1 for the "World" state.
---@param mapId number
---@return number
function GetStateMapId(mapId) end

---Removes all Items from a vendor and updates the database.
---@param entry number
function VendorRemoveAllItems(entry) end

---Unbinds event handlers for either all of an instanced Map's events, or one type of event.
---@param entry number
---@param event_type number
function ClearInstanceEvents(entry, event_type) end

---Returns the entry ID from a GUID.
---@param guid number
---@param entry number
---@return number
function GetGUIDEntry(guid, entry) end

---Unbinds event handlers for either all Group events, or one type of Group event.
---@param event_type number
function ClearGroupEvents(event_type) end

---Performs a bitwise OR (a | b).
---@param a number
---@param b number
---@param result number
---@return number
function bit_or(a, b, result) end

---Prints given parameters to the debug log.
function PrintDebug() end

---Registers a Player event handler.
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterPlayerEvent(event, function, shots, cancel) end

---Returns true if the bag and slot is a valid equipment position, otherwise false.
---@param bag number
---@param slot number
---@param isEquipmentPosition boolean
---@return boolean
function IsEquipmentPos(bag, slot, isEquipmentPosition) end

---Returns a Guild by name.
---@param name string
---@param guild Guild
---@return Guild
function GetGuildByName(name, guild) end

---Executes a SQL query on the character database.
---@param sql string
function CharDBExecute(sql) end

---Unbinds event handlers for either all of a Creature's gossip events, or one type of event.
---@param entry number
---@param event_type number
function ClearCreatureGossipEvents(entry, event_type) end

---Performs a bitwise XOR (a ^ b).
---@param a number
---@param b number
---@param result number
---@return number
function bit_xor(a, b, result) end

---Registers a Creature event handler.
---@param entry number
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterCreatureEvent(entry, event, function, shots, cancel) end

---Returns emulator's supported expansion.
---@param expansion number
---@return number
function GetCoreExpansion(expansion) end

---Kicks a Player from the server.
---@param player Player
function Kick(player) end

---Sets the owner of Halaa in Nagrand to the respective faction
0 = Alliance
1 = Horde
---@param teamId number
function SetOwnerHalaa(teamId) end

---Stops the event by eventId, if force is set, the event will force stop regardless of previous event state.
---@param eventId number
---@param force boolean
function StopGameEvent(eventId, force) end

---Unbinds event handlers for either all of a GameObject's events, or one type of event.
---@param entry number
---@param event_type number
function ClearGameObjectEvents(entry, event_type) end

---Returns an object representing an unsigned long long (64-bit) value.
---@param n number
---@param n_ull number
---@param n_str string
---@param value number
---@return number
function CreateULongLong(n, n_ull, n_str, value) end

---Registers a Creature event handler for a single Creature.
---@param guid number
---@param instance_id number
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterUniqueCreatureEvent(guid, instance_id, event, function, shots, cancel) end

---Registers a GameObject gossip event handler.
---@param entry number
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterGameObjectGossipEvent(entry, event, function, shots, cancel) end

---Registers a WorldPacket event handler.
---@param entry number
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterPacketEvent(entry, event, function, shots, cancel) end

---Sends mail to a Player.
---@param subject string
---@param text string
---@param receiverGUIDLow number
---@param senderGUIDLow number
---@param stationary MailStationery
---@param delay number
---@param money number
---@param cod number
---@param entry number
---@param amount number
---@param itemGUIDlow number
---@return number
function SendMail(subject, text, receiverGUIDLow, senderGUIDLow, stationary, delay, money, cod, entry, amount, itemGUIDlow) end

---Removes all global timed events.
---@param all_Events boolean
function RemoveEvents(all_Events) end

---Executes a SQL query on the world database and returns an ElunaQuery.
---@param sql string
---@param results ElunaQuery
---@return ElunaQuery
function WorldDBQuery(sql, results) end

---Unbinds event handlers for either all server events, or one type of event.
---@param event_type number
function ClearServerEvents(event_type) end

---Registers a GameObject event handler.
---@param entry number
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterGameObjectEvent(entry, event, function, shots, cancel) end

---Registers a server event handler.
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterServerEvent(event, function, shots, cancel) end

---Unbinds event handlers for either all of a Player's gossip events, or one type of event.
---@param entry number
---@param event_type number
function ClearPlayerGossipEvents(entry, event_type) end

---Returns emulator's name.
---@param coreName string
---@return string
function GetCoreName(coreName) end

---Returns a table with all the current Players in the world
---@param team TeamId
---@param onlyGM boolean
---@param worldPlayers table
---@return table
function GetPlayersInWorld(team, onlyGM, worldPlayers) end

function GetRealmID() end

---Prints given parameters to the info log.
function PrintInfo() end

---Unbinds event handlers for either all of a GameObject's gossip events, or one type of event.
---@param entry number
---@param event_type number
function ClearGameObjectGossipEvents(entry, event_type) end

---Unbinds event handlers for either all of an Item's events, or one type of event.
---@param entry number
---@param event_type number
function ClearItemEvents(entry, event_type) end

---Returns emulator version
---@param version string
---@return string
function GetCoreVersion(version) end

---Registers a Group event handler.
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterGroupEvent(event, function, shots, cancel) end

---Unbinds event handlers for either all BattleGround events, or one type of event.
---@param event_type number
function ClearBattleGroundEvents(event_type) end

---Returns the type ID from a GUID.
---@param guid number
---@param typeId number
---@return number
function GetGUIDType(guid, typeId) end

---Registers a BattleGround event handler.
---@param event number
---@param function function
---@param shots number
---@param cancel function
---@return function
function RegisterBGEvent(event, function, shots, cancel) end

