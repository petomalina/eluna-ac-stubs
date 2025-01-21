---@class Group
local Group = {}

---Returns the Player's subgroup ID of this Group
---@param guid number
---@param subGroupID number
---@return subGroupID
function Group:GetMemberGroup(guid, subGroupID) end

---Returns 'true' if the Group is a LFG group
---@param isLFGGroup boolean
---@return isLFGGroup
function Group:IsLFGGroup(isLFGGroup) end

---Returns 'true' if the Player is a member of this Group
---@param guid number
---@param isMember boolean
---@return isMember
function Group:IsMember(guid, isMember) end

---Returns 'true' if the Player is the Group leader
---@param guid number
---@param isLeader boolean
---@return isLeader
function Group:IsLeader(guid, isLeader) end

---Returns 'true' if the Group is a raid Group
---@param isRaid boolean
---@return isRaid
function Group:IsRaidGroup(isRaid) end

---Sets the target icon of an object for the Group
---@param icon number
---@param target number
---@param setter number
function Group:SetTargetIcon(icon, target, setter) end

---Converts this Group to a raid Group
function Group:ConvertToRaid() end

---Disbands this Group
function Group:Disband() end

---Returns the Group's GUID
---@param groupGUID number
---@return groupGUID
function Group:GetGUID(groupGUID) end

---Returns 'true' if the Player is an assistant of this Group
---@param guid number
---@param isAssistant boolean
---@return isAssistant
function Group:IsAssistant(guid, isAssistant) end

---Returns 'true' if the Group is full
---@param isFull boolean
---@return isFull
function Group:IsFull(isFull) end

---Sets the member's subGroup
---@param guid number
---@param groupID number
function Group:SetMembersGroup(guid, groupID) end

---Returns a Group member's GUID by their name
---@param name string
---@param memberGUID number
---@return memberGUID
function Group:GetMemberGUID(name, memberGUID) end

---Returns a table with the Players in this Group
---@param groupPlayers table
---@return groupPlayers
function Group:GetMembers(groupPlayers) end

---Returns 'true' if the subgroup has free slots in this Group
---@param subGroup number
---@param hasFreeSlot boolean
---@return hasFreeSlot
function Group:HasFreeSlotSubGroup(subGroup, hasFreeSlot) end

---Returns 'true' if the Players are in the same subgroup in this Group
---@param player1 Player
---@param player2 Player
---@param sameSubGroup boolean
---@return sameSubGroup
function Group:SameSubGroup(player1, player2, sameSubGroup) end

---Sets the leader of this Group
---@param guid number
function Group:SetLeader(guid) end

---Removes a Player from this Group and returns 'true' if successful
---@param guid number
---@param method RemoveMethod
---@param removed boolean
---@return removed
function Group:RemoveMember(guid, method, removed) end

---Sends a specified WorldPacket to this Group
---@param packet WorldPacket
---@param ignorePlayersInBg boolean
---@param ignore number
function Group:SendPacket(packet, ignorePlayersInBg, ignore) end

---Sets or removes a flag for a Group member
---@param target number
---@param apply boolean
---@param flag GroupMemberFlags
function Group:SetMemberFlag(target, apply, flag) end

---Adds a new member to the Group
---@param player Player
---@param added boolean
---@return added
function Group:AddMember(player, added) end

---Returns the type of this Group
---@param groupType GroupType
---@return groupType
function Group:GetGroupType(groupType) end

---Returns Group leader GUID
---@param leaderGUID number
---@return leaderGUID
function Group:GetLeaderGUID(leaderGUID) end

---Returns the member count of this Group
---@param memberCount number
---@return memberCount
function Group:GetMembersCount(memberCount) end

---Returns 'true' if the Group is a battleground Group
---@param isBG boolean
---@return isBG
function Group:IsBGGroup(isBG) end

return Group
