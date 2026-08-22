---@meta

---@class Group
Group = {}

---Adds a new member to the Group
---@param player Player
---@return boolean
function Group:AddMember(player) end

---Converts this Group to a raid Group
function Group:ConvertToRaid() end

---Disbands this Group
function Group:Disband() end

---Returns the Group's GUID
---@return number
function Group:GetGUID() end

---Returns the type of this Group
---@return GroupType
function Group:GetGroupType() end

---Returns Group leader GUID
---@return number
function Group:GetLeaderGUID() end

---Returns a Group member's GUID by their name
---@param name string
---@return number
function Group:GetMemberGUID(name) end

---Returns the Player's subgroup ID of this Group
---@param guid number
---@return number
function Group:GetMemberGroup(guid) end

---Returns a table with the Players in this Group
---@return table
function Group:GetMembers() end

---Returns the member count of this Group
---@return number
function Group:GetMembersCount() end

---Returns 'true' if the subgroup has free slots in this Group
---@param subGroup number
---@return boolean
function Group:HasFreeSlotSubGroup(subGroup) end

---Returns 'true' if the Player is an assistant of this Group
---@param guid number
---@return boolean
function Group:IsAssistant(guid) end

---Returns 'true' if the Group is a battleground Group
---@return boolean
function Group:IsBGGroup() end

---Returns 'true' if the Group is full
---@return boolean
function Group:IsFull() end

---Returns 'true' if the Group is a LFG group
---@return boolean
function Group:IsLFGGroup() end

---Returns 'true' if the Player is the Group leader
---@param guid number
---@return boolean
function Group:IsLeader(guid) end

---Returns 'true' if the Player is a member of this Group
---@param guid number
---@return boolean
function Group:IsMember(guid) end

---Returns 'true' if the Group is a raid Group
---@return boolean
function Group:IsRaidGroup() end

---Removes a Player from this Group and returns 'true' if successful
---@param guid number
---@param method RemoveMethod
---@return boolean
function Group:RemoveMember(guid, method) end

---Returns 'true' if the Players are in the same subgroup in this Group
---@param player1 Player
---@param player2 Player
---@return boolean
function Group:SameSubGroup(player1, player2) end

---Sends a specified WorldPacket to this Group
---@param packet WorldPacket
---@param ignorePlayersInBg boolean
---@param ignore number
function Group:SendPacket(packet, ignorePlayersInBg, ignore) end

---Sets the leader of this Group
---@param guid number
function Group:SetLeader(guid) end

---Sets or removes a flag for a Group member
---@param target number
---@param apply boolean
---@param flag GroupMemberFlags
function Group:SetMemberFlag(target, apply, flag) end

---Sets the member's subGroup
---@param guid number
---@param groupID number
function Group:SetMembersGroup(guid, groupID) end

---Sets the target icon of an object for the Group
---@param icon number
---@param target number
---@param setter number
function Group:SetTargetIcon(icon, target, setter) end

