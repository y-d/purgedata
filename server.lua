-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-05-02 10:35:24
-- Luau version 6, Types version 3
-- Time taken: 0.001145 seconds

local ServerIdentifiers_upvr = require(script.ServerIdentifiers)
local ServerProcess_upvr = require(script.ServerProcess)
local module = {}
local isEditMode_upvr = require(script.Parent.Utilities.isEditMode)
function module.start() -- Line 13
	--[[ Upvalues[3]:
		[1]: isEditMode_upvr (readonly)
		[2]: ServerIdentifiers_upvr (readonly)
		[3]: ServerProcess_upvr (readonly)
	]]
	if isEditMode_upvr then
	else
		ServerIdentifiers_upvr.start()
		ServerProcess_upvr.start()
	end
end
local tbl_upvr = {}
local ServerBridge_upvr = require(script.ServerBridge)
function module.makeBridge(arg1) -- Line 22
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: ServerBridge_upvr (readonly)
	]]
	if tbl_upvr[arg1] then
		return tbl_upvr[arg1]
	end
	local var6_result1 = ServerBridge_upvr(arg1)
	tbl_upvr[arg1] = var6_result1
	return var6_result1
end
function module.ser(arg1) -- Line 34
	--[[ Upvalues[1]:
		[1]: ServerIdentifiers_upvr (readonly)
	]]
	return ServerIdentifiers_upvr.ser(arg1)
end
function module.deser(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: ServerIdentifiers_upvr (readonly)
	]]
	return ServerIdentifiers_upvr.deser(arg1)
end
function module.makeIdentifier(arg1) -- Line 42
	--[[ Upvalues[1]:
		[1]: ServerIdentifiers_upvr (readonly)
	]]
	return ServerIdentifiers_upvr.ref(arg1)
end
local PlayerContainers_upvr = require(script.PlayerContainers)
function module.playerContainers() -- Line 46
	--[[ Upvalues[1]:
		[1]: PlayerContainers_upvr (readonly)
	]]
	return PlayerContainers_upvr
end
function module.invalidPlayerhandler(arg1) -- Line 50
	--[[ Upvalues[1]:
		[1]: ServerProcess_upvr (readonly)
	]]
	ServerProcess_upvr.setInvalidPlayerFunction(arg1)
end
return module
