---@meta

---@class WorldObject : Object
WorldObject = {}

---Returns the angle between this WorldObject and another WorldObject or a point.
---@param object WorldObject
---@param x number
---@param y number
---@return number
function WorldObject:GetAngle(object, x, y) end

---Returns the current area ID of the WorldObject
---@return number
function WorldObject:GetAreaId() end

---Returns a table of Creature objects in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@param hostile number
---@param dead number
---@return table
function WorldObject:GetCreaturesInRange(range, entryId, hostile, dead) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 3d space.
---@param obj WorldObject
---@param x number
---@param y number
---@param z number
---@return number
function WorldObject:GetDistance(obj, x, y, z) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 2d space.
---@param obj WorldObject
---@param x number
---@param y number
---@return number
function WorldObject:GetDistance2d(obj, x, y) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 3d space.
---@param obj WorldObject
---@param x number
---@param y number
---@param z number
---@return number
function WorldObject:GetExactDistance(obj, x, y, z) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 2d space.
---@param obj WorldObject
---@param x number
---@param y number
---@return number
function WorldObject:GetExactDistance2d(obj, x, y) end

---Returns a table of GameObject objects in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@param hostile number
---@return table
function WorldObject:GetGameObjectsInRange(range, entryId, hostile) end

---Returns the current instance ID of the WorldObject
---@return number
function WorldObject:GetInstanceId() end

---Returns the coordinates and orientation of the WorldObject
---@param x number
---@param y number
---@param z number
---@return number
function WorldObject:GetLocation(x, y, z) end

---Returns the current Map object of the WorldObject
---@return Map
function WorldObject:GetMap() end

---Returns the current map ID of the WorldObject
---@return number
function WorldObject:GetMapId() end

---Returns the name of the WorldObject
---@return string
function WorldObject:GetName() end

---Returns nearest WorldObject in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@param type TypeMask
---@param entry number
---@param hostile number
---@param dead number
---@return WorldObject
function WorldObject:GetNearObject(range, type, entry, hostile, dead) end

---Returns a table of WorldObjects in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@param type TypeMask
---@param entry number
---@param hostile number
---@param dead number
---@return table
function WorldObject:GetNearObjects(range, type, entry, hostile, dead) end

---Returns the nearest Creature object in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@param hostile number
---@param dead number
---@return Creature
function WorldObject:GetNearestCreature(range, entryId, hostile, dead) end

---Returns the nearest GameObject object in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@param hostile number
---@return GameObject
function WorldObject:GetNearestGameObject(range, entryId, hostile) end

---Returns the nearest Player object in sight of the WorldObject or within the given range
---@param range number
---@param hostile number
---@param dead number
---@return Player
function WorldObject:GetNearestPlayer(range, hostile, dead) end

---Returns the current orientation of the WorldObject
---@return number
function WorldObject:GetO() end

---Returns the current phase of the WorldObject
---@return number
function WorldObject:GetPhaseMask() end

---Returns a table of Player objects in sight of the WorldObject or within the given range
---@param range number
---@param hostile number
---@param dead number
---@return table
function WorldObject:GetPlayersInRange(range, hostile, dead) end

---Returns the x, y and z of a point dist away from the WorldObject.
---@param distance number
---@param angle number
---@param x number
---@param y number
---@return number
function WorldObject:GetRelativePoint(distance, angle, x, y) end

---Returns the current X coordinate of the WorldObject
---@return number
function WorldObject:GetX() end

---Returns the current Y coordinate of the WorldObject
---@return number
function WorldObject:GetY() end

---Returns the current Z coordinate of the WorldObject
---@return number
function WorldObject:GetZ() end

---Returns the current zone ID of the WorldObject
---@return number
function WorldObject:GetZoneId() end

---Returns true if the target is in the given arc behind the WorldObject
---@param target WorldObject
---@param arc number
---@return boolean
function WorldObject:IsInBack(target, arc) end

---Returns true if the target is in the given arc in front of the WorldObject
---@param target WorldObject
---@param arc number
---@return boolean
function WorldObject:IsInFront(target, arc) end

---Returns true if the WorldObjects are on the same map
---@param worldobject WorldObject
---@return boolean
function WorldObject:IsInMap(worldobject) end

---Returns true if the target is within given range
---@param target WorldObject
---@param minrange number
---@param maxrange number
---@param is3D boolean
---@return boolean
function WorldObject:IsInRange(target, minrange, maxrange, is3D) end

---Returns true if the point is within given range
---@param x number
---@param y number
---@param minrange number
---@param maxrange number
---@return boolean
function WorldObject:IsInRange2d(x, y, minrange, maxrange) end

---Returns true if the point is within given range
---@param x number
---@param y number
---@param z number
---@param minrange number
---@param maxrange number
---@return boolean
function WorldObject:IsInRange3d(x, y, z, minrange, maxrange) end

---Returns true if the target is in the given distance of the WorldObject
---@param target WorldObject
---@param distance number
---@param is3D boolean
---@return boolean
function WorldObject:IsWithinDist(target, distance, is3D) end

---Returns true if the point is in the given distance of the WorldObject
---@param x number
---@param y number
---@param distance number
---@return boolean
function WorldObject:IsWithinDist2d(x, y, distance) end

---Returns true if the point is in the given distance of the WorldObject
---@param x number
---@param y number
---@param z number
---@param distance number
---@return boolean
function WorldObject:IsWithinDist3d(x, y, z, distance) end

---Returns true if the WorldObject is on the same map and within given distance
---@param target WorldObject
---@param distance number
---@param is3D boolean
---@return boolean
function WorldObject:IsWithinDistInMap(target, distance, is3D) end

---Returns true if the given WorldObject or coordinates are in the WorldObject's line of sight
---@param worldobject WorldObject
---@param x number
---@param y number
---@param z number
---@return boolean
function WorldObject:IsWithinLoS(worldobject, x, y, z) end

---The WorldObject plays a sound to a Player
---@param sound number
---@param player Player
function WorldObject:PlayDirectSound(sound, player) end

---The WorldObject plays a sound to a Player
---@param sound number
---@param player Player
function WorldObject:PlayDistanceSound(sound, player) end

---The WorldObject plays music to a Player
---@param music number
---@param player Player
function WorldObject:PlayMusic(music, player) end

---Registers a timed event to the WorldObject When the passed function is called, the parameters (eventId, delay, repeats, worldobject) are passed to it. Repeats will decrease on each call if the event does not repeat indefinitely
---@param func function
---@param delay number
---@param delaytable table
---@param repeats number
---@return number
function WorldObject:RegisterEvent(func, delay, delaytable, repeats) end

---Removes the timed event from a WorldObject by the specified event ID
---@param eventId number
function WorldObject:RemoveEventById(eventId) end

---Removes all timed events from a WorldObject
function WorldObject:RemoveEvents() end

---Sends a WorldPacket to Players in sight of the WorldObject.
---@param packet WorldPacket
function WorldObject:SendPacket(packet) end

---Sets the WorldObject's phase mask.
---@param phaseMask number
---@param update boolean
function WorldObject:SetPhaseMask(phaseMask, update) end

---Spawns the creature at specified location.
---@param entry number
---@param x number
---@param y number
---@param z number
---@param o number
---@param spawnType TempSummonType
---@param despawnTimer number
---@return Creature
function WorldObject:SpawnCreature(entry, x, y, z, o, spawnType, despawnTimer) end

---Spawns a GameObject at specified location.
---@param entry number
---@param x number
---@param y number
---@param z number
---@param o number
---@param respawnDelay number
---@return GameObject
function WorldObject:SummonGameObject(entry, x, y, z, o, respawnDelay) end

