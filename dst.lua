-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-05-02 10:33:56
-- Luau version 6, Types version 3
-- Time taken: 0.001255 seconds

-- KONSTANTERROR: [0] 1. Error Block 42 start (CF ANALYSIS FAILED)
local Client_upvr = require(script.Client)
local Server_upvr = require(script.Server)
local NetworkUtils = require(script.Utilities.NetworkUtils)
local any_IsServer_result1_upvr = game:GetService("RunService"):IsServer()
local isEditMode_upvr = require(script.Utilities.isEditMode)
task.spawn(function() -- Line 15
	--[[ Upvalues[4]:
		[1]: isEditMode_upvr (readonly)
		[2]: any_IsServer_result1_upvr (readonly)
		[3]: Server_upvr (readonly)
		[4]: Client_upvr (readonly)
	]]
	if not isEditMode_upvr then
		if any_IsServer_result1_upvr then
			Server_upvr.start()
			return
		end
		Client_upvr.start()
	end
end)
local tbl = {
	ToHex = NetworkUtils.ToHex;
	ToReadableHex = NetworkUtils.ToReadableHex;
	FromHex = NetworkUtils.FromHex;
}
local CreateUUID = NetworkUtils.CreateUUID
tbl.CreateUUID = CreateUUID
if any_IsServer_result1_upvr then
	CreateUUID = Server_upvr.makeIdentifier
else
	CreateUUID = Client_upvr.makeIdentifier
end
tbl.ReferenceIdentifier = CreateUUID
if any_IsServer_result1_upvr then
	-- KONSTANTWARNING: GOTO [113] #69
end
-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [111] 68. Error Block 47 start (CF ANALYSIS FAILED)
tbl.Deserialize = Client_upvr.deser
if any_IsServer_result1_upvr then
	-- KONSTANTWARNING: GOTO [121] #74
end
-- KONSTANTERROR: [111] 68. Error Block 47 end (CF ANALYSIS FAILED)
