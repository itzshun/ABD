while getgenv().ABD.ItemFarm do wait(1)
    if getgenv().ABD.ItemFarm == true then
        if game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == false then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("Banknote") then
            local Click = game:service'VirtualInputManager'
            Click:SendMouseButtonEvent(500, 500, 0, true, game, 1)
            wait()
            Click:SendMouseButtonEvent(500, 500, 0, false, game, 1)
        else
            local BankNoteChar = game.Players.LocalPlayer.Backpack:FindFirstChild("Banknote")
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(BankNoteChar)
        end
        for _,BankNotes in pairs(workspace.ItFolder:GetChildren()) do
            if BankNotes:IsA("Tool") and string.match(BankNotes.Name, getgenv().ABD.ItemName) then
                if not BankNotes:IsDescendantOf(game.Players.LocalPlayer.Character) then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                    local BankHandle = BankNotes.Handle
                    local PlrRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
                    if game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                        PlrRoot.CFrame = BankHandle.CFrame
                    end
                end
            end
        end
    end
end

while getgenv().ABD.AutoKill do wait()
    if getgenv().ABD.AutoKill == true then
        for _,i in pairs(workspace.Entities:GetChildren()) do
            if i:IsA("Model") and i.Name == getgenv().ABD.Target then
                local A_1 = i.Humanoid
                local A_2 = CFrame.new(-6265.91357, 582.567261, -449.158081, 0.153132379, 0.988196731, 0.00422475487, 0.0552104264, -0.00428679585, -0.998465538, -0.986662269, 0.153130531, -0.0552151874)
                local A_3 = 105
                local A_4 = 0.25
                local A_5 = Vector3.new(-9.95386982, 4.46364226e-07, -0.95941925)
                local A_6 = "rbxassetid://241837157"
                local A_7 = 0.075
                local A_8 = Color3.new(255, 255, 255)
                local A_9 = "rbxassetid://260430079"
                local A_10 = 0.9
                local A_11 = 0.44
                local Event = game:GetService("ReplicatedStorage").Damage
                Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6, A_7, A_8, A_9, A_10, A_11)
            end
        end
    end
end
