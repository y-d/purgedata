-- Decompiled with Medal's Decompiler. (Modified by SignalHub)
-- Decompiled at: 5/2/2025, 12:24:24 PM
-- Time elapsed: 13 milliseconds

local s_Players_0 = game:GetService("Players")
local s_ReplicatedStorage_0 = game:GetService("ReplicatedStorage")
local s_TextChatService_0 = game:GetService("TextChatService")
local _ = game:GetService("LocalizationService")
local s_TweenService_0 = game:GetService("TweenService")
local l_PlayerGui_0 = s_Players_0.LocalPlayer.PlayerGui
local l_SharedModules_0 = s_ReplicatedStorage_0.SharedModules
local l_Indexer_0 = s_ReplicatedStorage_0.Indexer
local v_u_1 = require(l_SharedModules_0.ExtraFunctions)
local v_u_2 = require(l_SharedModules_0.Others.GuiFunctions)
local v_u_3 = require(s_ReplicatedStorage_0.Effects.GenericEffects)
local v_u_4 = {
    ["ITEMS"] = require(l_Indexer_0.ItemsInfo),
    ["WEAPONS"] = require(l_Indexer_0.WeaponsInfo),
    ["PETS"] = require(l_Indexer_0.PetsInfo)
}
local v_u_5 = {
    Color3.fromRGB(255, 255, 255),
    Color3.fromRGB(255, 79, 79),
    Color3.fromRGB(35, 255, 127),
    Color3.fromRGB(0, 255, 255),
    Color3.fromRGB(255, 216, 62),
    Color3.fromRGB(255, 5, 251),
    Color3.fromRGB(255, 85, 0)
}
local v_u_6 = {
    "Warn1",
    "Error2",
    "Warn1",
    "Warn2",
    "Warn4",
    "Warn5",
    "Warn5"
}
local v_u_7 = {
    {
        ["RichText"] = true,
        ["Font"] = Enum.Font.SourceSansBold,
        ["TextColor3"] = Color3.fromRGB(255, 255, 255),
        ["Bold"] = true,
        ["Style"] = Enum.FontStyle.Italic
    },
    {
        ["RichText"] = true,
        ["Font"] = Enum.Font.SourceSansBold,
        ["TextColor3"] = Color3.fromRGB(255, 79, 79),
        ["Bold"] = true,
        ["Style"] = Enum.FontStyle.Italic
    },
    {
        ["RichText"] = true,
        ["Font"] = Enum.Font.SourceSansBold,
        ["TextColor3"] = Color3.fromRGB(35, 255, 127),
        ["Bold"] = true,
        ["Style"] = Enum.FontStyle.Italic
    },
    {
        ["RichText"] = true,
        ["Font"] = Enum.Font.SourceSansBold,
        ["TextColor3"] = Color3.fromRGB(0, 255, 255),
        ["Bold"] = true,
        ["Style"] = Enum.FontStyle.Italic
    },
    {
        ["RichText"] = true,
        ["Font"] = Enum.Font.SourceSansBold,
        ["TextColor3"] = Color3.fromRGB(255, 216, 62),
        ["Bold"] = true,
        ["Style"] = Enum.FontStyle.Italic
    },
    {
        ["RichText"] = true,
        ["Font"] = Enum.Font.SourceSansBold,
        ["TextColor3"] = Color3.fromRGB(255, 5, 251),
        ["Bold"] = true,
        ["Style"] = Enum.FontStyle.Italic
    },
    {
        ["RichText"] = true,
        ["Font"] = Enum.Font.SourceSansBold,
        ["TextColor3"] = Color3.fromRGB(255, 85, 0),
        ["Bold"] = true,
        ["Style"] = Enum.FontStyle.Italic
    }
}
local v_u_24 = {
    ["Warn"] = function(p_u_8)
        --[[ Upvalues: (copy 1): v_u_2, (copy 2): s_ReplicatedStorage_0, (copy 3): l_PlayerGui_0, (copy 4): v_u_1, (copy 5): v_u_5, (copy 6): v_u_7, (copy 7): v_u_6, (copy 8): s_TweenService_0 ]]
        if p_u_8.Duration == nil then
            p_u_8.Duration = 1.5
        end;
        if p_u_8.WarnType == nil then
            p_u_8.WarnType = 1
        end;
        local v_u_9 = v_u_2.GetFrame("WarnFrame", "Warn")
        if s_ReplicatedStorage_0:GetAttribute("Dungeon") == true then
            v_u_9.Position = UDim2.fromScale(0.5, 0.15)
        end;
        local l_Message_0 = p_u_8.Message
        v_u_9.Parent = l_PlayerGui_0.Warn
        local v_u_10 = v_u_9.WarnTemplate:Clone()
        local l_WarnMessage_0 = v_u_10.WarnMessage
        v_u_1.Debris(l_WarnMessage_0, p_u_8.Duration * 2)
        l_WarnMessage_0.Text = l_Message_0
        l_WarnMessage_0.TextColor3 = p_u_8.Color or v_u_5[p_u_8.WarnType]
        v_u_10.Visible = true
        v_u_10.ImageColor3 = p_u_8.Color or v_u_5[p_u_8.WarnType]
        v_u_10.Parent = v_u_9
        if p_u_8.Settings ~= nil then
            if p_u_8.Settings.CustomSettings then
                if p_u_8.Settings.RichText == true then
                    l_WarnMessage_0.RichText = true
                end;
                if p_u_8.Settings.Font ~= nil then
                    l_WarnMessage_0.Font = p_u_8.Settings.Font
                end;
                if p_u_8.Settings.TextColor3 ~= nil then
                    l_WarnMessage_0.TextColor3 = p_u_8.Settings.TextColor3
                end;
                if p_u_8.Settings.Bold ~= nil then
                    l_WarnMessage_0.FontFace.Bold = p_u_8.Settings.Bold
                end;
                if p_u_8.Settings.Style ~= nil then
                    l_WarnMessage_0.FontFace.Style = p_u_8.Settings.Style
                end;
            else
                local v11 = v_u_7[p_u_8.Settings.Type]
                if v11.RichText == true then
                    l_WarnMessage_0.RichText = true
                end;
                if v11.Font ~= nil then
                    l_WarnMessage_0.Font = v11.Font
                end;
                if v11.TextColor3 ~= nil then
                    l_WarnMessage_0.TextColor3 = v11.TextColor3
                end;
                if v11.Bold ~= nil then
                    l_WarnMessage_0.FontFace.Bold = v11.Bold
                end;
                if v11.Style ~= nil then
                    l_WarnMessage_0.FontFace.Style = v11.Style
                end;
            end;
        end;
        v_u_10:TweenSize(UDim2.fromScale(1, 0.08), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.35, true)
        v_u_1.LoadSound(v_u_6[p_u_8.WarnType])
        if p_u_8.Dance == true then
            l_WarnMessage_0.RotationOne.Text = l_WarnMessage_0.Text
            l_WarnMessage_0.Text = ""
            l_WarnMessage_0.RotationOne.Visible = true
            l_WarnMessage_0.RotationOne.Rotation = -6
            l_WarnMessage_0.RotationOne.TextColor3 = l_WarnMessage_0.TextColor3
            s_TweenService_0:Create(l_WarnMessage_0.RotationOne, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 100, true), {
                ["Rotation"] = 6
            }):Play()
        end;
        if p_u_8.NoDelay == true then
            coroutine.wrap(function()
                --[[ Upvalues: (copy 1): p_u_8, (copy 2): v_u_10, (copy 3): v_u_9, (ref 4): l_PlayerGui_0 ]]
                task.wait(p_u_8.Duration)
                v_u_10:TweenSize(UDim2.fromScale(0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.35, true)
                task.wait(0.5)
                v_u_10:Destroy()
                if #v_u_9:GetChildren() <= 2 then
                    v_u_9.Parent = l_PlayerGui_0.__Disable.Warn
                end;
            end)()
            if p_u_8.ReturnMessage == true then
                return v_u_10;
            end;
        else
            task.wait(p_u_8.Duration)
            v_u_10:TweenSize(UDim2.fromScale(0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.35, true)
            task.wait(0.5)
            v_u_10:Destroy()
            if #v_u_9:GetChildren() <= 2 then
                v_u_9.Parent = l_PlayerGui_0.__Disable.Warn
            end;
        end;
    end,
    ["WarnItem"] = function(p_u_12)
        --[[ Upvalues: (copy 1): l_PlayerGui_0, (copy 2): v_u_1, (copy 3): v_u_2 ]]
        task.defer(function()
            --[[ Upvalues: (ref 1): l_PlayerGui_0, (ref 2): v_u_1, (copy 3): p_u_12, (ref 4): v_u_2 ]]
            local v13 = l_PlayerGui_0.Warn.ItemWarn.ItemDrop:Clone()
            v_u_1.Debris(v13, 6)
            v13.Main.ItemView.Image = p_u_12.Icon
            v13.Main.TName.Text = p_u_12.Name
            v13.Main.Rarity.Text = p_u_12.Rarity
            v13.Info.Text = p_u_12.Info
            v13.Main.ItemCount.Text = (p_u_12.Amount or 1) .. "x"
            if p_u_12.Rarity == "Secret" then
                v13.Main.Glow1.ImageColor3 = Color3.fromRGB(255, 255, 255)
                v13.Main.Glow2.ImageColor3 = Color3.fromRGB(255, 255, 255)
                v_u_2.RaimbowGradient(v13.Main.Glow1.UIGradient)
                v_u_2.RaimbowGradient(v13.Main.Glow2.UIGradient)
                v_u_2.RaimbowGradient(v13.Main.Stroke.UIStroke.UIGradient)
            else
                v13.Main.Glow1.ImageColor3 = v_u_1.GetRarityColor(p_u_12.Rarity)
                v13.Main.Glow2.ImageColor3 = v_u_1.GetRarityColor(p_u_12.Rarity)
                v13.Main.Stroke.UIStroke.UIGradient.Color = v_u_1.ColorSequence({
                    {
                        ["Time"] = 0,
                        ["Color"] = v_u_1.GetRarityColor(p_u_12.Rarity)
                    },
                    {
                        ["Time"] = 1,
                        ["Color"] = v_u_1.DarkColor(v_u_1.GetRarityColor(p_u_12.Rarity), 1.2)
                    }
                })
            end;
            v13.Main.Re.Rotate.Enabled = true
            v13.Parent = l_PlayerGui_0.Warn.ItemWarn
            v13.Visible = true
            v_u_1.LoadSound("GetDrop")
            v_u_2.GuiTween(v13, "Size", UDim2.fromScale(0.191, 0.64), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.3, true)
            task.wait(3.5)
            v_u_2.GuiTween(v13, "Size", UDim2.fromScale(0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.15, true)
            v13.Main.Re.Rotate.Enabled = false
            task.wait(0.25)
            v13:Destroy()
        end)
    end,
    ["ChatWarning"] = function(p14)
        --[[ Upvalues: (copy 1): s_TextChatService_0 ]]
        task.wait(2)
        s_TextChatService_0:WaitForChild("TextChannels"):WaitForChild("RBXSystem"):DisplaySystemMessage(p14.Message)
    end,
    ["DropWarn"] = function(p_u_15, p_u_16)
        --[[ Upvalues: (copy 1): v_u_4, (copy 2): v_u_3, (copy 3): v_u_1 ]]
        if p_u_15 ~= nil then
            task.defer(function()
                --[[ Upvalues: (copy 1): p_u_15, (ref 2): v_u_4, (ref 3): v_u_3, (ref 4): v_u_1, (copy 5): p_u_16 ]]
                for v17, v18 in next, p_u_15 do
                    if v17 == "Inventory" then
                        for v19, v20 in next, v18 do
                            if v19 == "Weapons" then
                                for v21, _ in next, v20 do
                                    local l_WEAPONS_0 = v_u_4.WEAPONS[v21]
                                    v_u_3.DropEffect({
                                        ["Type"] = "Item",
                                        ["Color"] = v_u_1.GetRarityColor(l_WEAPONS_0.Rarity or "Common"),
                                        ["Amount"] = 1,
                                        ["Model"] = p_u_16,
                                        ["Image"] = l_WEAPONS_0.Image
                                    })
                                end;
                            elseif v19 == "Items" then
                                for v22, v23 in next, v20 do
                                    local l_ITEMS_0 = v_u_4.ITEMS[v22]
                                    local l_Amount_0 = v23.Amount
                                    v_u_3.DropEffect({
                                        ["Type"] = "Item",
                                        ["Color"] = v_u_1.GetRarityColor(l_ITEMS_0.Rarity or "Common"),
                                        ["Amount"] = l_Amount_0 >= 6 and 5 or l_Amount_0,
                                        ["Model"] = p_u_16,
                                        ["Image"] = l_ITEMS_0.Image
                                    })
                                end;
                            end;
                        end;
                    end;
                end;
            end)
        end;
    end
}
v_u_24.RewardWarn = function(_) end;
return v_u_24;
