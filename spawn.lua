spawn(function()
    while true do
        -- =========================
        -- ESP Island
        -- =========================
        for i, v in pairs(game.Workspace._WorldOrigin.Locations:GetChildren()) do
            pcall(function()
                if _G.Settings.Esp["ESP Island"] then
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild("EspIsland") then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = "EspIsland"
                            bill.ExtentsOffset = Vector3.new(0,1,0)
                            bill.Size = UDim2.new(0,200,0,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamMedium
                            name.TextSize = 14
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = Enum.TextYAlignment.Top
                            name.BackgroundTransparency = 1
                            name.TextColor3 = Color3.fromRGB(255,255,255)
                        else
                            v.EspIsland.TextLabel.Text = v.Name .. "   \n" .. round((game.Players.LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance"
                        end
                    end
                elseif v:FindFirstChild("EspIsland") then
                    v.EspIsland:Destroy()
                end
            end)
        end

        -- =========================
        -- ESP Player
        -- =========================
        for i, v in pairs(game.Players:GetChildren()) do
            pcall(function()
                if v.Character then
                    if _G.Settings.Esp["ESP Player"] then
                        if not v.Character.Head:FindFirstChild("EspPlayer" .. Number) then
                            local bill = Instance.new("BillboardGui", v.Character.Head)
                            bill.Name = "EspPlayer" .. Number
                            bill.ExtentsOffset = Vector3.new(0,1,0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v.Character.Head
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Text = v.Name .. " \n" .. round((game.Players.LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. " Distance"
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Team == game.Players.LocalPlayer.Team then
                                name.TextColor3 = Color3.fromRGB(50,200,50)
                            else
                                name.TextColor3 = Color3.fromRGB(200,50,50)
                            end
                        else
                            v.Character.Head["EspPlayer" .. Number].TextLabel.Text = v.Name .. " | " .. round((game.Players.LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. " Distance\nHealth : " .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. "%"
                        end
                    elseif v.Character.Head:FindFirstChild("EspPlayer" .. Number) then
                        v.Character.Head["EspPlayer" .. Number]:Destroy()
                    end
                end
            end)
        end

        -- =========================
        -- ESP Chest
        -- =========================
        for i, v in pairs(game.Workspace.ChestModels:GetChildren()) do
            pcall(function()
                if string.find(v.Name,"Chest") then
                    if _G.Settings.Esp["ESP Chest"] then
                        if not v:FindFirstChild("EspChest"..Number) then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = "EspChest"..Number
                            bill.ExtentsOffset = Vector3.new(0,1,0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.Nunito
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Name == "SilverChest" then
                                name.TextColor3 = Color3.fromRGB(109,109,109)
                                name.Text = "Silver Chest" .. " \n" .. round((game.Players.LocalPlayer.Character.Head.Position - v.RootPart.Position).Magnitude / 3) .. " Distance"
                            elseif v.Name == "GoldChest" then
                                name.TextColor3 = Color3.fromRGB(173,158,21)
                                name.Text = "Gold Chest" .. " \n" .. round((game.Players.LocalPlayer.Character.Head.Position - v.RootPart.Position).Magnitude / 3) .. " Distance"
                            elseif v.Name == "DiamondChest" then
                                name.TextColor3 = Color3.fromRGB(20,200,200)
                                name.Text = "Diamond Chest" .. " \n" .. round((game.Players.LocalPlayer.Character.Head.Position - v.RootPart.Position).Magnitude / 3) .. " Distance"
                            end
                        else
                            v["EspChest"..Number].TextLabel.Text = v.Name .. "   \n" .. round((game.Players.LocalPlayer.Character.Head.Position - v.RootPart.Position).Magnitude / 3) .. " Distance"
                        end
                    elseif v:FindFirstChild("EspChest"..Number) then
                        v["EspChest"..Number]:Destroy()
                    end
                end
            end)
        end

        -- =========================
        -- ESP DevilFruit
        -- =========================
        for i, v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if _G.Settings.Esp["ESP DevilFruit"] then
                    if v.Name and string.find(v.Name,"Fruit") then
                        if not v.Handle:FindFirstChild("EspDevilFruit"..Number) then
                            local bill = Instance.new("BillboardGui", v.Handle)
                            bill.Name = "EspDevilFruit"..Number
                            bill.ExtentsOffset = Vector3.new(0,1,0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = "Top"
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255,255,255)
                            name.Text = v.Name .. " \n" .. round((game.Players.LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance"
                        else
                            v.Handle["EspDevilFruit"..Number].TextLabel.Text = v.Name .. " \n" .. round((game.Players.LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. " Distance"
                        end
                    end
                elseif v.Handle:FindFirstChild("EspDevilFruit"..Number) then
                    v.Handle["EspDevilFruit"..Number]:Destroy()
                end
            end)
        end

        -- =========================
        -- ESP Flower
        -- =========================
        for i, v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if (v.Name == "Flower1" or v.Name == "Flower2") and _G.Settings.Esp["ESP Flower"] then
                    if not v:FindFirstChild("EspFlower"..Number) then
                        local bill = Instance.new("BillboardGui", v)
                        bill.Name = "EspFlower"..Number
                        bill.ExtentsOffset = Vector3.new(0,1,0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new("TextLabel", bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = "Top"
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = v.Name=="Flower1" and Color3.fromRGB(40,40,255) or Color3.fromRGB(255,100,100)
                        name.Text = (v.Name=="Flower1" and "Blue Flower" or "Red Flower") .. " \n" .. round((game.Players.LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance"
                    else
                        v["EspFlower"..Number].TextLabel.Text = v.Name .. "   \n" .. round((game.Players.LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. " Distance"
                    end
                elseif v:FindFirstChild("EspFlower"..Number) then
                    v["EspFlower"..Number]:Destroy()
                end
            end)
        end

        task.wait(0.5)
    end
end)
if World3 then 
spawn(function()
	while wait(1) do
		for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
			if v:IsA("Tool") then
				if _G.Settings.Esp["ESP RealFruit"] then
					if not v.Handle:FindFirstChild(("EspRealFruit" .. Number)) then
						local bill = Instance.new("BillboardGui", v.Handle);
						bill.Name = "EspRealFruit" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v.Handle;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(200, 70, 70);
						name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					else
						v.Handle["EspRealFruit" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					end;
				elseif v.Handle:FindFirstChild("EspRealFruit" .. Number) then
					(v.Handle:FindFirstChild("EspRealFruit" .. Number)):Destroy();
				end;
			end;
		end;
		for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
			if v:IsA("Tool") then
				if _G.Settings.Esp["ESP RealFruit"] then
					if not v.Handle:FindFirstChild(("EspRealFruit" .. Number)) then
						local bill = Instance.new("BillboardGui", v.Handle);
						bill.Name = "EspRealFruit" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v.Handle;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(255, 170, 0);
						name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					else
						v.Handle["EspRealFruit" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					end;
				elseif v.Handle:FindFirstChild("EspRealFruit" .. Number) then
					(v.Handle:FindFirstChild("EspRealFruit" .. Number)):Destroy();
				end;
			end;
		end;
		for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
			if v:IsA("Tool") then
				if _G.Settings.Esp["ESP RealFruit"] then
					if not v.Handle:FindFirstChild(("EspRealFruit" .. Number)) then
						local bill = Instance.new("BillboardGui", v.Handle);
						bill.Name = "EspRealFruit" .. Number;
						bill.ExtentsOffset = Vector3.new(0, 1, 0);
						bill.Size = UDim2.new(1, 200, 1, 30);
						bill.Adornee = v.Handle;
						bill.AlwaysOnTop = true;
						local name = Instance.new("TextLabel", bill);
						name.Font = Enum.Font.GothamSemibold;
						name.FontSize = "Size14";
						name.TextWrapped = true;
						name.Size = UDim2.new(1, 0, 1, 0);
						name.TextYAlignment = "Top";
						name.BackgroundTransparency = 1;
						name.TextStrokeTransparency = 0.5;
						name.TextColor3 = Color3.fromRGB(240, 255, 10);
						name.Text = v.Name .. " \n" .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					else
						v.Handle["EspRealFruit" .. Number].TextLabel.Text = v.Name .. " " .. round((((game:GetService("Players")).LocalPlayer.Character.Head.Position - v.Handle.Position)).Magnitude / 3) .. " Distance";
					end;
				elseif v.Handle:FindFirstChild("EspRealFruit" .. Number) then
					(v.Handle:FindFirstChild("EspRealFruit" .. Number)):Destroy();
				end;
			end;
		end;
	end;
end);
end
spawn(function()
    while task.wait(0.5) do
        pcall(function()
            local player = game.Players.LocalPlayer
            local char = player.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            if not hrp then return end

            -- ESP Monster
            if _G.Settings.Esp["ESP Monster"] then
                for _, v in pairs(workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") then
                        if not v:FindFirstChild("EspMonster") then
                            local bill = Instance.new("BillboardGui", v)
                            local label = Instance.new("TextLabel", bill)
                            bill.Name = "EspMonster"
                            bill.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            bill.Active = true
                            bill.AlwaysOnTop = true
                            bill.LightInfluence = 1
                            bill.Size = UDim2.new(0, 200, 0, 50)
                            bill.StudsOffset = Vector3.new(0, 2.5, 0)
                            label.BackgroundTransparency = 1
                            label.Size = UDim2.new(0, 200, 0, 50)
                            label.Font = Enum.Font.GothamBold
                            label.TextColor3 = Color3.fromRGB(120, 130, 230)
                            label.TextSize = 35
                        end
                        local Dis = math.floor((hrp.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.EspMonster.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance"
                    end
                end
            else
                for _, v in pairs(workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("EspMonster") then
                        v.EspMonster:Destroy()
                    end
                end
            end

            -- ESP Sea Beast
            if _G.Settings.Esp["ESP Sea Beast"] then
                for _, v in pairs(workspace.SeaBeasts:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") then
                        if not v:FindFirstChild("EspSeabeasts") then
                            local bill = Instance.new("BillboardGui", v)
                            local label = Instance.new("TextLabel", bill)
                            bill.Name = "EspSeabeasts"
                            bill.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            bill.Active = true
                            bill.AlwaysOnTop = true
                            bill.LightInfluence = 1
                            bill.Size = UDim2.new(0, 200, 0, 50)
                            bill.StudsOffset = Vector3.new(0, 2.5, 0)
                            label.BackgroundTransparency = 1
                            label.Size = UDim2.new(0, 200, 0, 50)
                            label.Font = Enum.Font.Gotham
                            label.TextColor3 = Color3.fromRGB(60, 240, 120)
                            label.TextSize = 35
                        end
                        local Dis = math.floor((hrp.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.EspSeabeasts.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance"
                    end
                end
            else
                for _, v in pairs(workspace.SeaBeasts:GetChildren()) do
                    if v:FindFirstChild("EspSeabeasts") then
                        v.EspSeabeasts:Destroy()
                    end
                end
            end

            -- ESP NPC
            if _G.Settings.Esp["ESP Npc"] then
                for _, v in pairs(workspace.NPCs:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") then
                        if not v:FindFirstChild("EspNpc") then
                            local bill = Instance.new("BillboardGui", v)
                            local label = Instance.new("TextLabel", bill)
                            bill.Name = "EspNpc"
                            bill.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            bill.Active = true
                            bill.AlwaysOnTop = true
                            bill.LightInfluence = 1
                            bill.Size = UDim2.new(0, 200, 0, 50)
                            bill.StudsOffset = Vector3.new(0, 2.5, 0)
                            label.BackgroundTransparency = 1
                            label.Size = UDim2.new(0, 200, 0, 50)
                            label.Font = Enum.Font.Cartoon
                            label.TextColor3 = Color3.fromRGB(200, 60, 120)
                            label.TextSize = 45
                        end
                        local Dis = math.floor((hrp.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.EspNpc.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance"
                    end
                end
            else
                for _, v in pairs(workspace.NPCs:GetChildren()) do
                    if v:FindFirstChild("EspNpc") then
                        v.EspNpc:Destroy()
                    end
                end
            end

            -- ESP Islands (Mirage, Kitsune, Frozen, Prehistoric)
            local islands = {
                ["ESP Mirage"] = {"Mirage Island", Color3.fromRGB(50, 180, 50), "EspMirageIsland"},
                ["ESP Kitsune"] = {"Kitsune Island", Color3.fromRGB(40, 40, 180), "EspKitsuneIsland"},
                ["ESP Frozen"] = {"Frozen Dimension", Color3.fromRGB(50, 180, 255), "EspFrozen"},
                ["ESP Prehistoric"] = {"Prehistoric Island", Color3.fromRGB(200, 50, 40), "EspPrehistoric"}
            }
            for setting, info in pairs(islands) do
                for _, v in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
                    if _G.Settings.Esp[setting] and v.Name == info[1] then
                        if not v:FindFirstChild(info[3]) then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = info[3]
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local label = Instance.new("TextLabel", bill)
                            label.Font = "Code"
                            label.FontSize = "Size14"
                            label.TextWrapped = true
                            label.Size = UDim2.new(1, 0, 1, 0)
                            label.TextYAlignment = "Top"
                            label.BackgroundTransparency = 1
                            label.TextStrokeTransparency = 0.5
                            label.TextColor3 = info[2]
                        else
                            v[info[3]].TextLabel.Text = v.Name .. "   \n" .. math.floor((hrp.Position - v.Position).Magnitude / 3) .. " M"
                        end
                    elseif v:FindFirstChild(info[3]) then
                        v[info[3]]:Destroy()
                    end
                end
            end

            -- ESP Advanced Fruit Dealer & Aura
            local npcsEsp = {
                ["ESP Advanced Fruit Dealer"] = {"Advanced Fruit Dealer", Color3.fromRGB(250, 50, 50), "EspAdvanceFruitDealer"},
                ["ESP Aura"] = {"Master of Enhancement", Color3.fromRGB(200, 55, 255), "EspAura"}
            }
            for setting, info in pairs(npcsEsp) do
                for _, v in pairs(workspace.NPCs:GetChildren()) do
                    if _G.Settings.Esp[setting] and v.Name == info[1] then
                        if not v:FindFirstChild(info[3]) then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = info[3]
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local label = Instance.new("TextLabel", bill)
                            label.Font = "Code"
                            label.FontSize = "Size14"
                            label.TextWrapped = true
                            label.Size = UDim2.new(1, 0, 1, 0)
                            label.TextYAlignment = "Top"
                            label.BackgroundTransparency = 1
                            label.TextStrokeTransparency = 0.5
                            label.TextColor3 = info[2]
                        else
                            v[info[3]].TextLabel.Text = v.Name .. "   \n" .. math.floor((hrp.Position - v.Position).Magnitude / 3) .. " M"
                        end
                    elseif v:FindFirstChild(info[3]) then
                        v[info[3]]:Destroy()
                    end
                end
            end

            -- ESP Gear (MysticIsland)
            if _G.Settings.Esp["ESP Gear"] and workspace.Map:FindFirstChild("MysticIsland") then
                for _, v in pairs(workspace.Map.MysticIsland:GetChildren()) do
                    if v.Name == "MeshPart" then
                        if not v:FindFirstChild("EspGear") then
                            local bill = Instance.new("BillboardGui", v)
                            bill.Name = "EspGear"
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local label = Instance.new("TextLabel", bill)
                            label.Font = "Code"
                            label.FontSize = "Size14"
                            label.TextWrapped = true
                            label.Size = UDim2.new(1, 0, 1, 0)
                            label.TextYAlignment = "Top"
                            label.BackgroundTransparency = 1
                            label.TextStrokeTransparency = 0.5
                            label.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v.EspGear.TextLabel.Text = v.Name .. "   \n" .. math.floor((hrp.Position - v.Position).Magnitude / 3) .. " M"
                        end
                    end
                end
            else
                if workspace.Map:FindFirstChild("MysticIsland") then
                    for _, v in pairs(workspace.Map.MysticIsland:GetChildren()) do
                        if v:FindFirstChild("EspGear") then
                            v.EspGear:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            local player = game.Players.LocalPlayer
            local char = player.Character

            -- Infinite Energy
            if _G.Settings.LocalPlayer["Infinite Energy"] and char and char:FindFirstChild("Energy") then
                local originalstam = char.Energy.Value
                infinitestam()
            end

            -- Dodge No Cooldown
            if _G.Settings.LocalPlayer["Dodge No Cooldown"] and char and char:FindFirstChild("Dodge") then
                for _, v in next, getgc() do
                    if typeof(v) == "function" and getfenv(v).script == char.Dodge then
                        for i2, v2 in next, getupvalues(v) do
                            if tostring(v2) == "0.1" then
                                repeat
                                    task.wait(0.1)
                                    setupvalue(v, i2, 0)
                                until not nododgecool
                            end
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
	for i, v in pairs((game:GetService("Workspace"))._WorldOrigin:GetChildren()) do
		pcall(function()
			if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "SlashTail" or v.Name == "Sounds" then
				v:Destroy();
			end;
		end);
	end;
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			(game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.CFrame = (game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.Root.CFrame;
			if (game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.Root.Position - (game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.Position.Magnitude >= 1 then
				(game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.Root.CFrame = (game:GetService("Workspace")).Boats[_G.Settings.SeaEvent["Selected Boat"]].Engine.CFrame;
			end;
		end);
	end;
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Root.CFrame;
			if (game.Players.LocalPlayer.Character.Root.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1 then
				game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
			end;
		end);
	end;
end);
spawn(function()
    local angle = 0;
    while wait() do
        -- Spin Position
        if _G.Settings.Setting["Spin Position"] then
            local radius = 20;
            local farmDistance = _G.Settings.Setting["Farm Distance"];
            local radian = math.rad(angle);
            local x = math.cos(radian) * radius;
            local z = math.sin(radian) * radius;
            Pos = CFrame.new(x, farmDistance, z);
            angle = (angle + 30) % 360;
        else
            Pos = CFrame.new(0, _G.Settings.Setting["Farm Distance"], 0);
        end

        -- BodyClip & Noclip World1
        pcall(function()
            if World1 then
                if _G.Settings.Farm["Auto Farm Leather"] or _G.Settings.Farm["Auto Farm Magma Ore"] or _G.Settings.Farm["Auto Farm Scrap Metal"] or _G.Settings.Farm["Auto Saber"] or _G.Settings.Items["Auto Second Sea"] or _G.Settings.Items["Auto Warden Sword"] or _G.Settings.Items["Auto Greybeard"] or _G.Settings.Items["Auto Pole"] or _G.Settings.Items["Auto Shark Saw"] or _G.Settings.Farm["Auto Farm Angel Wings"] then
                    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                    if not hrp:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = hrp
                        Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                        Noclip.Velocity = Vector3.new(0, 0, 0)
                    end

                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            end
        end)

        -- BodyClip & Noclip World2
        pcall(function()
            if World2 then
                if _G.Settings.Items["Auto Farm Factory"] or _G.Settings.Items["Auto Swan Glasses"] or _G.Settings.Raid["Law Raid"] or _G.Settings.Race["Auto Race V2"] or _G.Settings.Items["Auto Rengoku"] or _G.Settings.Items["Auto Bartilo Quest"] or _G.Settings.Items["Auto Third Sea"] or _G.Settings.Items["Auto Dragon Trident"] or _G.Settings.Farm["Auto Farm Leather"] or _G.Settings.Farm["Auto Farm Magma Ore"] or _G.Settings.Farm["Auto Farm Radioactive"] or _G.Settings.Farm["Auto Farm Scrap Metal"] or _G.Settings.SeaStack["Auto Attack Seabeasts"] or _G.Settings.Raid["Auto Raid"] then
                    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                    if not hrp:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = hrp
                        Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                        Noclip.Velocity = Vector3.new(0, 0, 0)
                    end

                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            end
        end)

        -- BodyClip & Noclip World3
        pcall(function()
            if World3 then
                if _G.Settings.Farm["Auto Pirate Raid"] or _G.Settings.Race["Auto Race V3"] or _G.Settings.Farm["Auto Kill Cake Prince"] or _G.Settings.SeaStack["Teleport To Kitsune Island"] or _G.Settings.SeaStack["Teleport To Frozen Dimension"] or _G.Settings.SeaStack["Sail To Frozen Dimension"] or _G.Settings.SeaStack["Summon Frozen Dimension"] or _G.Settings.SeaStack["Summon Kitsune Island"] or _G.Settings.SeaStack["Teleport To Mirage Island"] or _G.Settings.Race["Auto Train"] or _G.Settings.Items["Auto Press Haki Button"] or _G.Settings.SeaEvent["Sail Boat"] or _G.Settings.Items["Auto Arena Trainer"] or _G.Settings.Race["Auto Kill Player After Trial"] or _G.Settings.Race["Tween To Highest Mirage"] or _G.Settings.Race["Auto Trial"] or _G.Settings.Race["Find Blue Gear"] or _G.Settings.Combat["Auto Kill Player Quest"] or _G.Settings.Items["Auto Cursed Dual Katana"] or _G.Settings.Farm["Auto Farm Bone"] or _G.Settings.Farm["Auto Kill Dough King"] or _G.Settings.Items["Auto Soul Guitar"] or _G.Settings.Items["Auto Tushita"] or _G.Settings.Farm["Auto Elite Hunter"] or _G.AutoKillSelectedPlayer or _G.Settings.Items["Auto Rainbow Haki"] or _G.Settings.Items["Auto Dark Dagger"] or _G.Settings.Farm["Auto Farm Ectoplasm"] or _G.Settings.Farm["Auto Observation V2"] or _G.Settings.Farm["Auto Musketeer Hat"] or _G.Settings.Items["Auto Holy Torch"] or _G.Settings.Items["Auto Hallow Scythe"] or _G.Settings.Farm["Auto Farm Katakuri"] or _G.Settings.Farm["Auto Farm Conjured Cocoa"] or _G.Settings.Farm["Auto Farm Fish Tail"] or _G.Settings.Farm["Auto Farm Gunpowder"] or _G.Settings.Farm["Auto Farm Dragon Scale"] or _G.Settings.Farm["Auto Farm Scrap Metal"] or _G.Settings.Farm["Auto Farm Mini Tusk"] or _G.Settings.Items["Auto Buddy Sword"] or _G.Settings.Items["Auto Canvander"] or _G.Settings.Farm["Auto Farm Leather"] or _G.Settings.Raid["Auto Raid"] then
                    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                    if not hrp:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = hrp
                        Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                        Noclip.Velocity = Vector3.new(0, 0, 0)
                    end

                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            end
        end)

        -- Main Auto Farm
        pcall(function()
            if _G.Settings.Main["Auto Farm"] or _G.Settings.Farm["Auto Farm Chest Tween"] or _G.Settings.Items["Auto Electric Claw"] or _G.Settings.Main["Auto Farm Fruit Mastery"] or _G.Settings.Main["Auto Farm Gun Mastery"] or _G.TeleportIsland or _G.AutoKillSelectedPlayer or _G.TeleportToPlayer or _G.Settings.Farm["Auto Farm Observation"] or _G.Settings.Fruit["Tween To Fruit"] or _G.TeleportNPC or _G.Settings.Main["Auto Farm Mob"] or _G.Settings.Main["Auto Farm Fast"] or _G.Settings.Main["Auto Farm All Boss"] or _G.Settings.Main["Auto Farm Boss"] or _G.Settings.Main["Auto Farm Sword Mastery"] then
                local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                if not hrp:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = hrp
                    Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                end
            end
        end)
    end
end)
spawn(function()
	pcall(function()
		while wait() do
			for i, v in pairs((game:GetService("Players")).LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then
						SelectWeaponGun = v.Name;
					end;
				end;
			end;
		end;
	end);
end);
task.spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.Main["Select Weapon"] == "Melee" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			elseif _G.Settings.Main["Select Weapon"] == "Sword" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			elseif _G.Settings.Main["Select Weapon"] == "Gun" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			elseif _G.Settings.Main["Select Weapon"] == "Fruit" then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Main["Selected Weapon"] = v.Name;
						end;
					end;
				end;
			end;
		end);
	end;
end);

spawn(function()
    while wait(0.2) do
        if _G.Settings.Main["Auto Farm"] then
            pcall(function()
                -- FARM MODE: Normal
                if _G.Settings.Main["Farm Mode"] == "Normal" then
                    CheckQuest()
                    local QuestTitle = game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
                    end

                    if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        topos(CFrameQuest)
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                        end
                    elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game.Workspace.Enemies:FindFirstChild(Mon) then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat
                                            game:GetService("RunService").Heartbeat:wait()
                                            EquipWeapon(_G.Settings.Main["Selected Weapon"])
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                            Attack()
                                        until not _G.Settings.Main["Auto Farm"] or v.Humanoid.Health <= 0 or not v.Parent or not game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible
                                    end
                                end
                            end
                        else
                            topos(CFrameMon)
                            UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
                        end
                    end
                end

                -- FARM MODE: Nearest
                if _G.Settings.Main["Farm Mode"] == "Nearest" then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 5000 then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    Attack()
                                    AutoHaki()
                                    EquipWeapon(_G.Settings.Main["Selected Weapon"])
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                until not _G.Settings.Main["Auto Farm"] or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                            end
                        end
                    end
                end

                -- FARM MODE: Auto Quest
                if _G.Settings.Main["Farm Mode"] == "Auto Quest" then
                    CheckQuest()
                    local QuestTitle = game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
                    end

                    if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                        topos(CFrameMon)
                    elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game.Workspace.Enemies:FindFirstChild(Mon) then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat
                                            game:GetService("RunService").Heartbeat:wait()
                                            EquipWeapon(_G.Settings.Main["Selected Weapon"])
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                            MonFarm = v.Name
                                            Attack()
                                        until not _G.Settings.Main["Auto Farm"] or v.Humanoid.Health <= 0 or not v.Parent or not game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible
                                    end
                                end
                            end
                        else
                            topos(CFrameMon)
                            UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while wait(0.2) do
            if _G.Settings.Main["Auto Farm Fast"] and World1 then
                if game.Players.LocalPlayer.Data.Level.Value >= 10 then
                    _G.Settings.Main["Auto Farm"] = false
                    _G.Settings.Main["Auto Farm Fast"] = true
                end
            end
            if _G.Settings.Main["Auto Farm Fast"] and World1 then
                if game.Players.LocalPlayer.Data.Level.Value >= 10 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Shanda" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    AutoHaki()
                                    EquipWeapon(_G.Settings.Main["Selected Weapon"])
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    Attack()
                                until not _G.Settings.Main["Auto Farm Fast"] or not v.Parent or v.Humanoid.Health <= 0
                                topos(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531))
                                UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
                            end
                        end
                    end
                end
            end
            if _G.Settings.Main["Auto Farm Fast"] and World1 then
                if game.Players.LocalPlayer.Data.Level.Value >= 75 then
                    _G.Settings.Main["Auto Farm"] = true
                    _G.Settings.Main["Auto Farm Fast"] = false
                end
            end
        end
    end)
end)

spawn(function()
    while wait(0.2) do
        if _G.BuyAllSword then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
            end)
        end
        if _G.BuyAllAib then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
            end)
        end
    end
end)

spawn(function()
	while wait() do
		pcall(function()
			if _G.Settings.Main["Auto Farm Sword Mastery"] then
				if not getInfoSword(_G.Settings.Main["Selected Mastery Sword"]) then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LoadItem", _G.Settings.Main["Selected Mastery Sword"]);
				end;
			end;
		end);
	end;
end);

spawn(function()
	while task.wait(0.2) do
		-- Auto Farm Sword Mastery
		if _G.Settings.Main["Auto Farm Sword Mastery"] then
			pcall(function()
				if _G.Settings.Main["Selected Mastery Mode"] == "Quest" then
					CheckQuest();
					if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						topos(CFrameQuest)
						if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
						end
					elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if game.Workspace.Enemies:FindFirstChild(Mon) then
							for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Name == Mon then
									repeat
										game:GetService("RunService").Heartbeat:wait()
										EquipWeapon(_G.Settings.Main["Selected Mastery Sword"])
										Attack()
										topos(v.HumanoidRootPart.CFrame * Pos)
										AutoHaki()
										v.HumanoidRootPart.Size = Vector3.new(1,1,1)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										PosMon = v.HumanoidRootPart.CFrame
										MonFarm = v.Name
									until not _G.Settings.Main["Auto Farm Sword Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not _G.Settings.Main["Selected Mastery Mode"] == "Quest"
								end
							end
						else
							topos(CFrameMon)
							UnEquipWeapon(_G.Settings.Main["Selected Mastery Sword"])
						end
					end
				elseif _G.Settings.Main["Selected Mastery Mode"] == "No Quest" then
					CheckQuest()
					topos(CFrameMon)
					if game.Workspace.Enemies:FindFirstChild(Mon) then
						for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									game:GetService("RunService").Heartbeat:wait()
									EquipWeapon(_G.Settings.Main["Selected Mastery Sword"])
									Attack()
									topos(v.HumanoidRootPart.CFrame * Pos)
									AutoHaki()
									v.HumanoidRootPart.Size = Vector3.new(1,1,1)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
								until not _G.Settings.Main["Auto Farm Sword Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or not _G.Settings.Main["Selected MasteryMode"] == "No Quest"
							end
						end
					else
						UnEquipWeapon(_G.Settings.Main["Selected Mastery Sword"])
						topos(CFrameMon)
					end
				elseif _G.Settings.Main["Selected Mastery Mode"] == "Bones" then
					topos(QuestBonePos)
					for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat
									game:GetService("RunService").Heartbeat:wait()
									EquipWeapon(_G.Settings.Main["Selected Mastery Sword"])
									Attack()
									topos(v.HumanoidRootPart.CFrame * Pos)
									AutoHaki()
									v.HumanoidRootPart.Size = Vector3.new(1,1,1)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
								until not _G.Settings.Main["Auto Farm Sword Mastery"] or v.Humanoid.Health <= 0 or not _G.Settings.Main["Selected Mastery Mode"] == "Bones"
							end
						end
					end
				end
			end)
		end

		-- Auto Farm Fruit Mastery
		if _G.Settings.Main["Auto Farm Fruit Mastery"] then
			pcall(function()
				if _G.Settings.Main["Selected Mastery Mode"] == "Quest" then
					CheckQuest()
					if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						topos(CFrameQuest)
						if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
						end
					elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if game.Workspace.Enemies:FindFirstChild(Mon) then
							for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat
										game:GetService("RunService").Heartbeat:wait()
										if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
											EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0) * CFrame.Angles(math.rad(-90),0,0))
											Skillaimbot = true
											UseSkill = true
										else
											UseSkill = false
											Skillaimbot = false
											EquipWeapon(_G.Settings.Main["Selected Weapon"])
											NormalAttack()
											topos(v.HumanoidRootPart.CFrame * Pos)
										end
										AutoHaki()
										v.HumanoidRootPart.Size = Vector3.new(1,1,1)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										PosMon = v.HumanoidRootPart.CFrame
										MonFarm = v.Name
										AimBotSkillPosition = v.HumanoidRootPart.Position
										Skillaimbot = true
									until not _G.Settings.Main["Auto Farm Fruit Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not _G.Settings.Main["Selected Mastery Mode"] == "Quest"
									UseSkill = false
									Skillaimbot = false
								end
							end
						else
							UseSkill = false
							topos(CFrameMon)
							UnEquipWeapon(SelectWeapon)
						end
					end
				elseif _G.Settings.Main["Selected Mastery Mode"] == "No Quest" then
					CheckQuest()
					topos(CFrameMon)
					if game.Workspace.Enemies:FindFirstChild(Mon) then
						for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									game:GetService("RunService").Heartbeat:wait()
									if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
										EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
										UseSkill = true
										Skillaimbot = true
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0) * CFrame.Angles(math.rad(-90),0,0))
									else
										UseSkill = false
										Skillaimbot = false
										EquipWeapon(_G.Settings.Main["Selected Weapon"])
										NormalAttack()
										topos(v.HumanoidRootPart.CFrame * Pos)
									end
									AutoHaki()
									v.HumanoidRootPart.Size = Vector3.new(1,1,1)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									AimBotSkillPosition = v.HumanoidRootPart.Position
								until not _G.Settings.Main["Auto Farm Fruit Mastery"] or (not v.Parent) or v.Humanoid.Health == 0 or not _G.Settings.Main["Selected Mastery Mode"] == "No Quest"
								UseSkill = false
								Skillaimbot = false
							end
						end
					else
						UseSkill = false
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
						topos(CFrameMon)
					end
				end
			end)
		end
	end
end)



spawn(function()
	while wait(0.2) do
		if _G.Settings.Main["Auto Farm Mob"] then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild(_G.Settings.Main["Selected Mob"]) then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == _G.Settings.Main["Selected Mob"] then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									v.HumanoidRootPart.CanCollide = false;
									v.Humanoid.WalkSpeed = 0;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until not _G.Settings.Main["Auto Farm Mob"] or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);

spawn(function()
	while wait(0.2) do
		pcall(function()
			-- Cek Boss Spawn
			if game:GetService("ReplicatedStorage"):FindFirstChild(_G.Settings.Main["Selected Boss"])
				or game:GetService("Workspace").Enemies:FindFirstChild(_G.Settings.Main["Selected Boss"]) then
				BossLabel:SetDesc("Status : Spawn!")
			else
				BossLabel:SetDesc("Status : Boss Not Spawn")
			end

			-- Auto Farm Selected Boss
			if _G.Settings.Main["Auto Farm Boss"] then
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.Settings.Main["Selected Boss"]) then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == _G.Settings.Main["Selected Boss"] then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									game:GetService("RunService").Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.Size = Vector3.new(1,1,1)
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Main["Auto Farm Boss"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.Settings.Main["Selected Boss"]) then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.Settings.Main["Selected Boss"]).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
				end
			end

			-- Auto Farm All Boss
			if _G.Settings.Main["Auto Farm All Boss"] then
				for i, boss in pairs(tableBoss) do
					if game:GetService("Workspace").Enemies:FindFirstChild(boss) then
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == boss then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										game:GetService("RunService").Heartbeat:wait()
										AutoHaki()
										EquipWeapon(_G.Settings.Main["Selected Weapon"])
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.Size = Vector3.new(1,1,1)
										topos(v.HumanoidRootPart.CFrame * Pos)
										Attack()
									until not _G.Settings.Main["Auto Farm All Boss"] or (not v.Parent) or v.Humanoid.Health <= 0
								end
							end
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild(boss) then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild(boss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
					end
				end
			end
		end)
	end
end)

local Elite = CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)
spawn(function()
	while wait(0.2) do
		pcall(function()
			-- Cek Elite Spawn
			if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo")
				or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre")
				or game:GetService("ReplicatedStorage"):FindFirstChild("Urban")
				or game:GetService("Workspace").Enemies:FindFirstChild("Diablo")
				or game:GetService("Workspace").Enemies:FindFirstChild("Deandre")
				or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
				Elite_Hunter_Status:SetDesc("Status : Elite Spawn!")
			else
				Elite_Hunter_Status:SetDesc("Status : Elite Not Spawn")
			end

			-- Auto Elite Hunter Hop
			if _G.Settings.Farm["Auto Elite Hunter Hop"] then
				if _G.Settings.Farm["Auto Elite Hunter"] then
					if not game:GetService("ReplicatedStorage"):FindFirstChild("Diablo")
						or not game:GetService("ReplicatedStorage"):FindFirstChild("Deandre")
						or not game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
						Hop()
					end
				end
			end

			-- Auto Farm Elite Hunter
			if _G.Settings.Farm["Auto Elite Hunter"] and World3 then
				local player = game:GetService("Players").LocalPlayer
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
				local WorkspaceEnemies = game:GetService("Workspace").Enemies
				local CommF = ReplicatedStorage.Remotes.CommF_
				local guideFrame = player.PlayerGui.Main.Guide.LeftFrame.IconFrame.ViewportFrame

				CommF:InvokeServer("EliteHunter")
				local bossName = nil
				for _, nama in ipairs({ "Diablo", "Deandre", "Urban" }) do
					if guideFrame:FindFirstChild(nama) then
						bossName = nama
						break
					end
				end

				if bossName then
					local questGui = player.PlayerGui.Main.Quest
					local questTitle = questGui.Container.QuestTitle.Title.Text

					if not questGui.Visible then
						topos(Elite)
						if (Elite.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							CommF:InvokeServer("EliteHunter")
						end
					elseif string.find(questTitle, bossName) then
						local bossModel = ReplicatedStorage:FindFirstChild(bossName)
						local hrp = bossModel and bossModel:FindFirstChild("HumanoidRootPart")

						if not hrp then
							local bossEnemy = WorkspaceEnemies:FindFirstChild(bossName)
							if bossEnemy and bossEnemy:FindFirstChild("HumanoidRootPart") then
								hrp = bossEnemy.HumanoidRootPart
							end
						end

						if hrp then
							topos(hrp.CFrame)
						end

						local target = WorkspaceEnemies:FindFirstChild(bossName)
						if target and target:FindFirstChild("Humanoid") and target:FindFirstChild("HumanoidRootPart") and target.Humanoid.Health > 0 then
							repeat
								game:GetService("RunService").Heartbeat:Wait()
								AutoHaki()
								EquipWeapon(_G.Settings.Main["Selected Weapon"])
								target.HumanoidRootPart.CanCollide = false
								target.Humanoid.WalkSpeed = 0
								target.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
								topos(target.HumanoidRootPart.CFrame * Pos)
								Attack()
							until not _G.Settings.Farm["Auto Elite Hunter"] or target.Humanoid.Health <= 0 or not target.Parent
						end
					end
				end
			end
		end)
	end
end)

local BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
local BoneQuestPos = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)

spawn(function()
	while wait(0.2) do
		pcall(function()
			-- Update jumlah Bones
			local Bones = GetCountMaterials("Bones")
			BonesOwnedStatus:SetDesc("Bones Owned: " .. tostring(Bones))

			if _G.Settings.Farm["Auto Farm Bone"] and World3 then
				-- Mode No Quest
				if _G.Settings.Farm["Selected Bone Farm Mode"] == "No Quest" then
					if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") 
						or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") 
						or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") 
						or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										game:GetService("RunService").Heartbeat:wait()
										AutoHaki()
										EquipWeapon(_G.Settings.Main["Selected Weapon"])
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false
										PosMon = v.HumanoidRootPart.CFrame
										MonFarm = v.Name
										topos(v.HumanoidRootPart.CFrame * Pos)
										Attack()
									until not _G.Settings.Farm["Auto Farm Bone"] or (not v.Parent) or v.Humanoid.Health <= 0
								end
							end
						end
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
						topos(BonePos)
					end

				-- Mode Quest
				elseif _G.Settings.Farm["Selected Bone FarmMode"] == "Quest" then
					local player = game:GetService("Players").LocalPlayer
					local questGui = player.PlayerGui.Main.Quest
					local QuestTitle = questGui.Container.QuestTitle.Title.Text

					if not string.find(QuestTitle, "Demonic Soul") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
					end

					if not questGui.Visible then
						topos(BoneQuestPos)
						if (BoneQuestPos.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1)
						end
					elseif questGui.Visible then
						if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") 
							or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") 
							or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") 
							or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
										if string.find(QuestTitle, "Demonic Soul") then
											repeat
												game:GetService("RunService").Heartbeat:wait()
												EquipWeapon(_G.Settings.Main["Selected Weapon"])
												AutoHaki()
												PosMon = v.HumanoidRootPart.CFrame
												MonFarm = v.Name
												topos(v.HumanoidRootPart.CFrame * Pos)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Head.CanCollide = false
												Attack()
											until not _G.Settings.Farm["Auto Farm Bone"] or v.Humanoid.Health <= 0 or not v.Parent or not questGui.Visible
										end
									end
								end
							end
						end
					end
				end
			end
		end)
	end
end)
spawn(function()
	while wait(0.2) do
		pcall(function()
			-- Auto Random Surprise
			if _G.Settings.Farm["Auto Random Surprise"] then
				wait(2)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
			end

			-- Auto Pirate Raid
			if _G.Settings.Farm["Auto Pirate Raid"] then
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						if v.Name and getPirateRaidEnemies() then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 2000 then
								repeat
									game:GetService("RunService").Heartbeat:wait()
									Attack()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									topos(v.HumanoidRootPart.CFrame * Pos)
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
								until not _G.Settings.Main["Auto Pirate Raid"] or (not v.Parent) or v.Humanoid.Health <= 0 or (not game.Workspace.Enemies:FindFirstChild(v.Name))
							end
						else
							topos(CFrame.new(-5515.08301, 343.112762, -3013.25171, 0.0679906458, 0.0000000121971047, -0.997685969, -0.0000000640159001, 1, 0.00000000786281706, 0.997685969, 0.000000063333168, 0.0679906458))
						end
					end
				end
			end
		end)
	end
end)

spawn(function()
    while wait(0.2) do
        pcall(function()
            -- Auto Observation V2
            if _G.Settings.Farm["Auto Observation V2"] then
                if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3 then
                    _G.Settings.Farm["Auto Musketeer Hat"] = false;
                    if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Banana") and (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Apple") and (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                        repeat
                            topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625));
                            wait();
                        until not _G.Settings.Farm["Auto Observation V2"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-12444.78515625), 332.40396118164, (-7673.1806640625))).Magnitude <= 10;
                        wait(0.5);
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
                    elseif (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                        repeat
                            topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188));
                            wait();
                        until not _G.Settings.Farm["Auto Observation V2"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-10920.125), 624.20275878906, (-10266.995117188))).Magnitude <= 10;
                        wait(0.5);
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KenTalk2", "Start");
                        wait(1);
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KenTalk2", "Buy");
                    else
                        for i, v in pairs((game:GetService("Workspace")):GetDescendants()) do
                            if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                v.Handle.CFrame = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
                                wait();
                                firetouchinterest((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart, v.Handle, 0);
                                wait();
                            end;
                        end;
                    end;
                else
                    _G.Settings.Farm["Auto Musketeer Hat"] = true;
                end;
            end;
            
            -- Auto Musketeer Hat
            if _G.Settings.Farm["Auto Musketeer Hat"] then
                if (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1800 and ((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress")).KilledBandits == false then
                    if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if (game:GetService("Workspace")).Enemies:FindFirstChild("Forest Pirate") then
                            for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate" then
                                    repeat
                                        (game:GetService("RunService")).Heartbeat:wait();
                                        EquipWeapon(_G.Settings.Main["Selected Weapon"]);
                                        AutoHaki();
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
                                        topos(v.HumanoidRootPart.CFrame * Pos);
                                        v.HumanoidRootPart.CanCollide = false;
                                        Attack();
                                        PosMon = v.HumanoidRootPart.CFrame;
                                        MonFarm = v.Name;
                                    until _G.Settings.Farm["Auto Musketeer Hat"] == false or (not v.Parent) or v.Humanoid.Health <= 0 or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
                                end;
                            end;
                        else
                            topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
                        end;
                    else
                        topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
                        if (Vector3.new((-12443.8671875), 332.40396118164, (-7675.4892578125)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5);
                            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
                        end;
                    end;
                elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1800 and ((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress")).KilledBoss == false then
                    if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if (game:GetService("Workspace")).Enemies:FindFirstChild("Captain Elephant") then
                            for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    OldCFrameElephant = v.HumanoidRootPart.CFrame;
                                    repeat
                                        (game:GetService("RunService")).Heartbeat:wait();
                                        EquipWeapon(_G.Settings.Main["Selected Weapon"]);
                                        AutoHaki();
                                        v.HumanoidRootPart.CanCollide = false;
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
                                        topos(v.HumanoidRootPart.CFrame * Pos);
                                        v.HumanoidRootPart.CanCollide = false;
                                        v.HumanoidRootPart.CFrame = OldCFrameElephant;
                                        Attack();
                                    until _G.Settings.Farm["Auto Musketeer Hat"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
                                end;
                            end;
                        else
                            topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375));
                        end;
                    else
                        topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
                        if ((CFrame.new((-12443.8671875), 332.40396118164, (-7675.4892578125))).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(0.5);
                            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
                        end;
                    end;
                elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
                    topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125));
                end;
            end;
            
            -- Auto Farm Observation Key Press
            if _G.Settings.Farm["Auto Farm Observation"] then
                repeat
                    task.wait();
                    if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        (game:GetService("VirtualUser")):CaptureController();
                        (game:GetService("VirtualUser")):SetKeyDown("0x65");
                        wait(2);
                        (game:GetService("VirtualUser")):SetKeyUp("0x65");
                    end;
                until (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or (not _G.Settings.Farm["Auto Farm Observation"]);
            end;
            
            -- Auto Farm Observation Main
            if _G.Settings.Farm["Auto Farm Observation"] then
                if (game:GetService("Players")).LocalPlayer.VisionRadius.Value >= 5000 then
                    WindUI:Notify({
                        Title = "PhantomFlux Notify",
                        Content = "You Have Max Points",
                        Duration = 3,
                        Icon = "rbxassetid://128278170341835",
                    })
                    wait(2);
                elseif World2 then
                    if (game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                        if (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            repeat
                                task.wait();
                                (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
                            until _G.Settings.Farm["Auto Farm Observation"] == false or (not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel"));
                        else
                            repeat
                                task.wait();
                                (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
                                if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Farm["Auto Farm Observation"] == true then
                                    (game:GetService("TeleportService")):Teleport(game.PlaceId, (game:GetService("Players")).LocalPlayer);
                                end;
                            until _G.Settings.Farm["Auto Farm Observation"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel");
                        end;
                    else
                        topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126));
                    end;
                elseif World1 then
                    if (game:GetService("Workspace")).Enemies:FindFirstChild("Galley Captain") then
                        if (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            repeat
                                task.wait();
                                (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Galley Captain")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
                            until _G.Settings.Farm["Auto Farm Observation"] == false or (not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel"));
                        else
                            repeat
                                task.wait();
                                (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Galley Captain")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
                                wait(1);
                                if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Farm["Auto Farm Observation"] == true then
                                    (game:GetService("TeleportService")):Teleport(game.PlaceId, (game:GetService("Players")).LocalPlayer);
                                end;
                            until _G.Settings.Farm["Auto Farm Observation"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel");
                        end;
                    else
                        topos(CFrame.new(5533.29785, 88.1079102, 4852.3916));
                    end;
                elseif World3 then
                    if (game:GetService("Workspace")).Enemies:FindFirstChild("Giant Islander") then
                        if (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            repeat
                                task.wait();
                                (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Giant Islander")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
                            until _G.Settings.Farm["Auto Farm Observation"] == false or (not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel"));
                        else
                            repeat
                                task.wait();
                                (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Giant Islander")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
                                wait(1);
                                if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Farm["Auto Farm Observation"] == true then
                                    (game:GetService("TeleportService")):Teleport(game.PlaceId, (game:GetService("Players")).LocalPlayer);
                                end;
                            until _G.Settings.Farm["Auto Farm Observation"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel");
                        end;
                    else
                        topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789));
                    end;
                end;
            end;
        end);
    end;
end);

    spawn(function()
		while task.wait(0.2) do
			if _G.Settings.Farm["Auto Saber"] and game.Players.LocalPlayer.Data.Level.Value >= 200 then
				pcall(function()
					if (game:GetService("Workspace")).Map.Jungle.Final.Part.Transparency == 0 then
						if (game:GetService("Workspace")).Map.Jungle.QuestPlates.Door.Transparency == 0 then
							if ((CFrame.new((-1612.55884), 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, (-0.928667724), 0.0000000397099491, 1, 0.0000000191679348, 0.928667724, (-0.0000000439869794), 0.37091279)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
								topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate1.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate2.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate3.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate4.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate5.Button.CFrame;
								wait(1);
							else
								topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, -0.928667724, 0.0000000397099491, 1, 0.0000000191679348, 0.928667724, -0.0000000439869794, 0.37091279));
							end;
						elseif (game:GetService("Workspace")).Map.Desert.Burn.Part.Transparency == 0 then
							if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
								EquipWeapon("Torch");
								topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -0.00000000128799094, 0.761243105, -0.000000000570652914, 1, 0.00000000120584542, -0.761243105, 0.000000000347544882, -0.648466587));
							else
								topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.0000342372805, -0.258850515, 0.965917408));
							end;
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup");
							wait(0.5);
							EquipWeapon("Cup");
							wait(0.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", (game:GetService("Players")).LocalPlayer.Character.Cup);
							wait(0.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan");
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Mob Leader") or (game:GetService("ReplicatedStorage")):FindFirstChild("Mob Leader") then
								topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559));
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Mob Leader" then
										if (game:GetService("Workspace")).Enemies:FindFirstChild("Mob Leader") then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat
													(game:GetService("RunService")).Heartbeat:wait();
													AutoHaki();
													EquipWeapon(_G.Settings.Main["Selected Weapon"]);
													v.HumanoidRootPart.CanCollide = false;
													v.Humanoid.WalkSpeed = 0;
													v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
													topos(v.HumanoidRootPart.CFrame * Pos);
													Attack();
												until v.Humanoid.Health <= 0 or (not _G.Settings.Farm["Auto Saber"]);
											end;
										end;
										if (game:GetService("ReplicatedStorage")):FindFirstChild("Mob Leader") then
											topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Mob Leader")).HumanoidRootPart.CFrame * Pos);
										end;
									end;
								end;
							end;
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
							wait(0.5);
							EquipWeapon("Relic");
							wait(0.5);
							topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 0.00000000566906877, 0.481375456, 0.0000000253851997, 1, -0.0000000579995607, -0.481375456, 0.0000000630572643, 0.876514494));
						end;
					elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Saber Expert") or (game:GetService("ReplicatedStorage")):FindFirstChild("Saber Expert") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								if v.Name == "Saber Expert" then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										Attack();
									until v.Humanoid.Health <= 0 or (not _G.Settings.Farm["Auto Saber"]);
									if v.Humanoid.Health <= 0 then
										(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic");
									end;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);

spawn(function()
    while wait(0.2) do
        pcall(function()
            -- Auto Farm Chest Tween
            if _G.Settings.Farm["Auto Farm Chest Tween"] then
                for i, v in pairs((game:GetService("Workspace")).ChestModels:GetChildren()) do
                    if v.Name:find("Chest") then
                        repeat
                            wait();
                            topos(v.RootPart.CFrame);
                        until _G.Settings.Farm["Auto Farm Chest Tween"] == false or (not v.Parent);
                        topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
                    end;
                end;
            end;
            
            -- Auto Stop Items
            if _G.Settings.Farm["Auto Stop Items"] then
                if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("God's Chalice") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("God's Chalice") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
                    _G.Settings.Farm["Auto Farm Chest Instant"] = false;
                    _G.Settings.Farm["Auto Farm Chest Tween"] = false;
                    topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
                end;
            end;
        end);
    end;
end);
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Chest Mirage"] then
				for i, v in pairs((game:GetService("Workspace")).Map.MysticIsland.Chests:GetChildren()) do
					if string.find(v.Name, "Chest") then
						if (game:GetService("Workspace")):FindFirstChild(v.Name) then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if (game:GetService("Workspace")):FindFirstChild(v.Name) then
									topos(v.CFrame);
								end;
							until _G.Settings.Farm["Auto Farm Chest Mirage"] == false or (not v.Parent);
							topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
							break;
						end;
					end;
				end;
			end;
		end;
	end);

spawn(function()
    while wait(0.2) do
        pcall(function()
            -- Auto Farm Chest Tween
            if _G.Settings.Farm["Auto Farm Chest Tween"] then
                for i, v in pairs((game:GetService("Workspace")).ChestModels:GetChildren()) do
                    if v.Name:find("Chest") then
                        repeat
                            wait();
                            topos(v.RootPart.CFrame);
                        until _G.Settings.Farm["Auto Farm Chest Tween"] == false or (not v.Parent);
                        topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
                    end;
                end;
            end;
            
            -- Auto Stop Items
            if _G.Settings.Farm["Auto Stop Items"] then
                if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("God's Chalice") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("God's Chalice") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
                    _G.Settings.Farm["Auto Farm Chest Instant"] = false;
                    _G.Settings.Farm["Auto Farm Chest Tween"] = false;
                    topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
                end;
            end;
            
            -- Auto Farm Chest Instant
            if _G.Settings.Farm["Auto Farm Chest Instant"] then
                for i, v in pairs((game:GetService("Workspace")).ChestModels:GetChildren()) do
                    if v.Name:find("Chest") then
                        repeat
                            wait();
                            if v.Name == "DiamondChest" then
                                InstantTp(v.RootPart.CFrame);
                                InstantTp(((game:GetService("Workspace")).ChestModels:FindFirstChild("DiamondChest")).RootPart.CFrame);
                            elseif v.Name == "GoldChest" then
                                InstantTp(v.RootPart.CFrame);
                                InstantTp(((game:GetService("Workspace")).ChestModels:FindFirstChild("GoldChest")).RootPart.CFrame);
                            elseif v.Name == "SilverChest" then
                                InstantTp(v.RootPart.CFrame);
                                InstantTp(((game:GetService("Workspace")).ChestModels:FindFirstChild("SilverChest")).RootPart.CFrame);
                            end;
                        until not _G.Settings.Farm["Auto Farm Chest Instant"] or (not v.Parent);
                    end;
                end;
            end;
        end);
        
        if _G.Settings.Farm["Auto Farm Chest Instant"] then
            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
        end;
    end;
end);

spawn(function()
    while wait(0.2) do
        pcall(function()
            -- Cake Prince Status Check (setiap 5 detik)
            if task.wait(5) then
                local status = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                local len = string.len(status)
                if len == 88 then
                    CakePrinceStatus:SetDesc("Cake Prince Status: " .. string.sub(status, 39, 41) .. " Remaining")
                elseif len == 87 then
                    CakePrinceStatus:SetDesc("Cake Prince Status: " .. string.sub(status, 39, 40) .. " Remaining")
                elseif len == 86 then
                    CakePrinceStatus:SetDesc("Cake Prince Status: " .. string.sub(status, 39, 39) .. " Remaining")
                else
                    CakePrinceStatus:SetDesc("Cake Prince Status: Spawned!")
                end
            end

            -- Auto Farm Katakuri
            if _G.Settings.Farm["Auto Farm Katakuri"] then
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince") then
                    if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince") then
                        for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        (game:GetService("RunService")).Heartbeat:wait();
                                        AutoHaki();
                                        EquipWeapon(_G.Settings.Main["Selected Weapon"]);
                                        v.HumanoidRootPart.CanCollide = false;
                                        v.Humanoid.WalkSpeed = 0;
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
                                        topos(v.HumanoidRootPart.CFrame * Pos);
                                        RemoveAnimation(v);
                                        Attack();
                                    until not _G.Settings.Farm["Auto Farm Katakuri"] or (not v.Parent) or v.Humanoid.Health <= 0;
                                end;
                            end;
                        end;
                    elseif (game:GetService("Workspace")).Map.CakeLoaf.BigMirror.Other.Transparency == 0 and ((CFrame.new((-1990.672607421875), 4532.99951171875, (-14973.6748046875))).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        topos(CFrame.new(-2151.82153, 149.315704, -12404.9053));
                    end;
                elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Cookie Crafter") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Guard") or (game:GetService("Workspace")).Enemies:FindFirstChild("Baking Staff") or (game:GetService("Workspace")).Enemies:FindFirstChild("Head Baker") then
                    for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    (game:GetService("RunService")).Heartbeat:wait();
                                    AutoHaki();
                                    EquipWeapon(_G.Settings.Main["Selected Weapon"]);
                                    v.HumanoidRootPart.CanCollide = false;
                                    v.Humanoid.WalkSpeed = 0;
                                    v.Head.CanCollide = false;
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
                                    PosMon = v.HumanoidRootPart.CFrame;
                                    MonFarm = v.Name;
                                    topos(v.HumanoidRootPart.CFrame * Pos);
                                    Attack();
                                until not _G.Settings.Farm["Auto Farm Katakuri"] or (not v.Parent) or v.Humanoid.Health <= 0 or (game:GetService("Workspace")).Map.CakeLoaf.BigMirror.Other.Transparency == 0 or (game:GetService("ReplicatedStorage")):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]");
                            end;
                        end;
                    end;
                else
                    UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
                    topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375));
                end;
            end;

            -- Auto Spawn Cake Prince
            if _G.Settings.Farm["Auto Spawn Cake Prince"] then
                wait(2);
                (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner", true);
            end;

            -- Auto Kill Cake Prince
            if _G.Settings.Farm["Auto Kill Cake Prince"] and World3 then
                if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince") then
                    for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
                        if v.Name == "Cake Prince" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    (game:GetService("RunService")).Heartbeat:wait();
                                    AutoHaki();
                                    EquipWeapon(_G.Settings.Main["Selected Weapon"]);
                                    v.HumanoidRootPart.CanCollide = false;
                                    v.Humanoid.WalkSpeed = 0;
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
                                    topos(v.HumanoidRootPart.CFrame * Pos);
                                    RemoveAnimation(v);
                                    Attack();
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy();
                                    end;
                                until not _G.Settings.Farm["Auto Kill Cake Prince"] or (not v.Parent) or v.Humanoid.Health <= 0;
                            end;
                        end;
                    end;
                else
                    UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
                end;
            end;

            -- Auto Kill Dough King
            if _G.Settings.Farm["Auto Kill Dough King"] and World3 then
                if (game:GetService("Workspace")).Enemies:FindFirstChild("Dough King") then
                    for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
                        if v.Name == "Dough King" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    (game:GetService("RunService")).Heartbeat:wait();
                                    AutoHaki();
                                    EquipWeapon(_G.Settings.Main["Selected Weapon"]);
                                    v.HumanoidRootPart.CanCollide = false;
                                    v.Humanoid.WalkSpeed = 0;
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
                                    topos(v.HumanoidRootPart.CFrame * Pos);
                                    RemoveAnimation(v);
                                    Attack();
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy();
                                    end;
                                until not _G.Settings.Farm["Auto Kill Dough King"] or (not v.Parent) or v.Humanoid.Health <= 0;
                            end;
                        end;
                    end;
                end;
            end;
        end);
    end;
end);

spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.Setting["Bring Mob Mode"] then
                if _G.Settings.Setting["Bring Mob Mode"] == "Low" then
                    BringMobDistance = 150;
                elseif _G.Settings.Setting["Bring Mob Mode"] == "Normal" then
                    BringMobDistance = 250;
                elseif _G.Settings.Setting["Bring Mob Mode"] == "High" then
                    BringMobDistance = 800;
                end;
            end;
            if _G.Settings.Setting["Fast Attack Mode"] == "Slow" then
                _G.Settings.Setting["Fast Attack Delay"] = 0.32;
            elseif _G.Settings.Setting["Fast Attack Mode"] == "Normal" then
                _G.Settings.Setting["Fast Attack Delay"] = 0.22;
            elseif _G.Settings.Setting["Fast Attack Mode"] == "Fast" then
                _G.Settings.Setting["Fast Attack Delay"] = 0.17;
            elseif _G.Settings.Setting["Fast Attack Mode"] == "Super Fast" then
                _G.Settings.Setting["Fast Attack Delay"] = 0.12;
            end;
        end);
    end;
end);

spawn(function()
    while wait(0.2) do
        pcall(function()
            -- Hide Notification
            if _G.Settings.Setting["Hide Notification"] then
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false;
            else
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true;
            end;

            -- Hide Damage Text
            if _G.Settings.Setting["Hide Damage Text"] then
                (game:GetService("ReplicatedStorage")).Assets.GUI.DamageCounter.Enabled = false;
            else
                (game:GetService("ReplicatedStorage")).Assets.GUI.DamageCounter.Enabled = true;
            end;

            -- Auto Set Spawn Point (setiap 2 detik)
            if wait(2) and _G.Settings.Setting["Auto Set Spawn Point"] then
                (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetSpawnPoint");
            end;

            -- Auto Observation
            if _G.Settings.Setting["Auto Observation"] then
                if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                    (game:GetService("VirtualUser")):CaptureController();
                    (game:GetService("VirtualUser")):SetKeyDown("0x65");
                    wait();
                    (game:GetService("VirtualUser")):SetKeyUp("0x65");
                end;
            end;

            -- Auto Rejoin
            if _G.Settings.Setting["Auto Rejoin"] then
                game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(v)
                    if v.Name == "ErrorPrompt" and v:FindFirstChild("MessageArea") and v.MessageArea:FindFirstChild("ErrorFrame") then
                        (game:GetService("TeleportService")):Teleport(game.PlaceId);
                    end;
                end);
            end;

            -- Auto Haki
            if _G.Settings.Setting["Auto Haki"] then
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    local args = {
                        [1] = "Buso"
                    };
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
                end;
            end;

            -- Bypass Anti Cheat
            if _G.Settings.Setting["Bypass Anti Cheat"] then
                for i, v in pairs((game:GetService("Players")).LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("LocalScript") then
                        if v.Name == "General" or v.Name == "Shiftlock" or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                            v:Destroy();
                        end;
                    end;
                end;
                for i, v in pairs((game:GetService("Players")).LocalPlayer.PlayerScripts:GetDescendants()) do
                    if v:IsA("LocalScript") then
                        if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans" or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp" or v.Name == "PlayerList" then
                            v:Destroy();
                        end;
                    end;
                end;
            end;
        end);
    end;
end);

spawn(function()
	while wait(0.2) do
		if _G.Settings.Items["Auto Second Sea"] then
			pcall(function()
				local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value;
				if MyLevel >= 700 and World1 then
					local CommF_ = game:GetService("ReplicatedStorage").Remotes.CommF_
					local success, progress = pcall(function()
						return CommF_:InvokeServer("DressrosaQuestProgress")
					end)

					if not success or not progress then
						warn("Gagal mendapatkan progress!")
						return
					end

					if not progress.TalkedDetective then
						local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
						repeat
							topos(CFrame1)
							wait()
						until (CFrame1.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Items["Auto Second Sea"]
						wait(1.1)
						CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
						wait(0.5)

						EquipWeapon("Key")
						repeat
							topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
							wait()
						until (Vector3.new(1347.7124, 37.3751602, -1325.6488) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Items["Auto Second Sea"]
						wait(0.5)

					elseif not progress.KilledIceBoss then
						if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Ice Admiral" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										OldCFrameSecond = v.HumanoidRootPart.CFrame
										repeat
											game:GetService("RunService").Heartbeat:Wait()
											AutoHaki()
											EquipWeapon(_G.Settings.Main["Selected Weapon"])
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
											v.HumanoidRootPart.CFrame = OldCFrameSecond
											topos(v.HumanoidRootPart.CFrame * Pos)
											Attack()
										until not _G.Settings.Items["Auto Second Sea"] or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
							topos(game:GetService("ReplicatedStorage").IceAdmiral.HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
						end

					elseif not progress.Sea2Unlocked then
						CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
						wait(0.3)
						CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa")
						wait(0.3)
						CommF_:InvokeServer("TravelDressrosa")
						wait(1)
					end
				end
			end)
		end
	end
end)


    spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Third Sea"] then
				pcall(function()
					if (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1500 and World2 then
						_G.Settings.Main["Auto Farm"] = false;
						if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ZQuestProgress", "General") == 0 then
							topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016));
							if ((CFrame.new((-1926.3221435547), 12.819851875305, 1738.3092041016)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(1.5);
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin");
							end;
							wait(1.8);
							if (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "rip_indra" then
										OldCFrameThird = v.HumanoidRootPart.CFrame;
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CFrame = OldCFrameThird;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											Attack();
											(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelZou");
										until _G.Settings.Items["Auto Third Sea"] == false or v.Humanoid.Health <= 0 or (not v.Parent);
									end;
								end;
							elseif not (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") and ((CFrame.new((-26880.93359375), 22.848554611206, 473.18951416016)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
								topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016));
							end;
						end;
					end;
				end);
			end;
		end;
	end);

    spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Farm Factory"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Core") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Core" and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									topos(CFrame.new(448.46756, 199.356781, -441.389252));
									AttackOld();
								until v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Farm Factory"] == false;
							end;
						end;
					else
						topos(CFrame.new(448.46756, 199.356781, -441.389252));
					end;
				end;
			end);
		end;
	end);

spawn(function()
    while wait(0.2) do
        pcall(function()
            -- Prehistoric Island Check
            if game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
                Prehistoriccheck:SetDesc("🦴 Prehistoric Island Spawning")
                _G.PrehistoricSpawn = true
            else
                Prehistoriccheck:SetDesc("🦴 Prehistoric Island Not Spawn")
                _G.PrehistoricSpawn = false
            end

            -- Summon Prehistoric Island
            if _G.Settings.SeaStack["Summon Prehistoric Island"] then
                if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
                    local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
                    if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                        BTP(BuyBoatCFrame);
                    else
                        BuyBoat = topos(BuyBoatCFrame);
                    end;
                    if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        if BuyBoat then
                            BuyBoat:Stop();
                        end;
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
                        wait(1);
                    end;
                elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
                    repeat
                        wait();
                        if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
                            if TweenBoatPrehistoric then
                                TweenBoatPrehistoric:Stop();
                            end;
                            local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
                        elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
                            TweenBoatPrehistoric = TweenBoat(CFrame.new(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, 1, -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
                        end;
                    until not _G.Settings.SeaStack["Summon Prehistoric Island"] or game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island");
                    if TweenBoatPrehistoric then
                        TweenBoatPrehistoric:Stop();
                    end;
                end;
            end;

            -- Tween To Prehistoric Island
            if _G.Settings.SeaStack["Tween To Prehistoric Island"] then
                if (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
                    topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")).CFrame);
                end;
            end;

            -- Auto Kill Lava Golem
            if _G.Settings.DragonDojo["Auto Kill Lava Golem"] then
                if (game:GetService("Workspace")).Enemies:FindFirstChild("Lava Golem") then
                    for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
                        if v.Name == "Lava Golem" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    (game:GetService("RunService")).Heartbeat:wait();
                                    AutoHaki();
                                    EquipWeapon(_G.Settings.Main["Selected Weapon"]);
                                    v.HumanoidRootPart.CanCollide = false;
                                    v.Humanoid.WalkSpeed = 0;
                                    v.Head.CanCollide = false;
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
                                    PosMon = v.HumanoidRootPart.CFrame;
                                    MonFarm = v.Name;
                                    topos(v.HumanoidRootPart.CFrame * Pos);
                                    Attack();
                                until not _G.Settings.DragonDojo["Auto Kill Lava Golem"] or (not v.Parent) or v.Humanoid.Health <= 0;
                            end;
                        end;
                    end;
                end;
            end;

            -- Frozen Dimension Check
            if game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
                Frozencheck:SetDesc("❄️ Frozen Dimension Spawning")
                _G.FrozenSpawn = true
            else
                Frozencheck:SetDesc("❄️ Frozen Dimension Not Spawn")
                _G.FrozenSpawn = false
            end

            -- Teleport To Frozen Dimension
            if _G.Settings.SeaStack["Teleport To Frozen Dimension"] then
                repeat
                    wait();
                    topos(CFrame.new((game:GetService("Workspace")).Map.FrozenDimension.Center.Position.X, 500, (game:GetService("Workspace")).Map.FrozenDimension.Center.Position.Z));
                until not _G.Settings.SeaStack["Teleport To Frozen Dimension"];
            end;

            -- Sail To Frozen Dimension
            if _G.Settings.SeaStack["Sail To Frozen Dimension"] then
                if (game:GetService("Workspace")).Map:FindFirstChild("FrozenDimension") then
                    if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
                        local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
                        if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                            BTP(BuyBoatCFrame);
                        else
                            BuyBoat = topos(BuyBoatCFrame);
                        end;
                        if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            if BuyBoat then
                                BuyBoat:Stop();
                            end;
                            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
                            wait(1);
                        end;
                    elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
                        repeat
                            wait();
                            if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
                                local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
                            elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
                                local stopboat = TweenBoat(CFrame.new((game:GetService("Workspace")).Map.FrozenDimension.Center.Position.X, 0, (game:GetService("Workspace")).Map.FrozenDimension.Center.Position.Z));
                            end;
                        until not _G.Settings.SeaStack["Sail To Frozen Dimension"];
                        stopboat:Stop();
                    end;
                end;
            end;

            -- Summon Frozen Dimension
            if _G.Settings.SeaStack["Summon Frozen Dimension"] then
                if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
                    local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
                    if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                        BTP(BuyBoatCFrame);
                    else
                        BuyBoat = topos(BuyBoatCFrame);
                    end;
                    if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        if BuyBoat then
                            BuyBoat:Stop();
                        end;
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
                        wait(1);
                    end;
                elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
                    repeat
                        wait();
                        if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
                            if TweenBoatFrozen then
                                TweenBoatFrozen:Stop();
                            end;
                            local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
                        elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
                            TweenBoatFrozen = TweenBoat(CFrame.new(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, 1, -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
                        end;
                    until not _G.Settings.SeaStack["Summon Frozen Dimension"] or game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension");
                    if TweenBoatFrozen then
                        TweenBoatFrozen:Stop();
                    end;
                end;
            end;

            -- Tween To Highest Mirage
            if _G.Settings.Race["Tween To Highest Mirage"] then
                if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") then
                    topos((GetHighestPoint()).CFrame * CFrame.new(0, 211.88, 0));
                end;
            end;

            -- Kitsune Island Check
            if game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
                Kitsunecheck:SetDesc("⛩️ Kitsune Island Spawning")
                _G.KitsuneSpawn = true
            else
                Kitsunecheck:SetDesc("⛩️ Kitsune Island Not Spawn")
                _G.KitsuneSpawn = false
            end

            -- Summon Kitsune Island
            if _G.Settings.SeaStack["Summon Kitsune Island"] then
                if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
                    local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
                    if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                        BTP(BuyBoatCFrame);
                    else
                        BuyBoatKitsune = topos(BuyBoatCFrame);
                    end;
                    if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        if BuyBoatKitsune then
                            BuyBoatKitsune:Stop();
                        end;
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
                        wait(1);
                    end;
                elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
                    repeat
                        wait();
                        if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
                            if TweenBoatKitsune then
                                TweenBoatKitsune:Stop();
                            end;
                            local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
                        elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
                            TweenBoatKitsune = TweenBoat(CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372));
                        end;
                    until not _G.Settings.SeaStack["Summon Kitsune Island"] or game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island");
                    if TweenBoatKitsune then
                        TweenBoatKitsune:Stop();
                    end;
                end;
            end;

            -- Teleport To Kitsune Island
            if _G.Settings.SeaStack["Teleport To Kitsune Island"] then
                if (game:GetService("Workspace")).Map:FindFirstChild("KitsuneIsland") then
                    topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0, 0, 10));
                end;
            end;

            -- Auto Collect Azure Ember
            if _G.Settings.SeaStack["Auto Collect Azure Ember"] then
                if (game:GetService("Workspace")):FindFirstChild("AttachedAzureEmber") then
                    topos((((game:GetService("Workspace")):WaitForChild("EmberTemplate")):FindFirstChild("Part")).CFrame);
                end;
            end;

            -- Auto Trade Azure Ember
            if _G.Settings.SeaStack["Auto Trade Azure Ember"] then
                local AzureAvilable = GetCountMaterials("Azure Ember");
                if AzureAvilable >= _G.Settings.SeaStack["Set Azure Ember"] then
                    ((game:GetService("ReplicatedStorage")).Modules.Net:FindFirstChild("RF/KitsuneStatuePray")):InvokeServer();
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KitsuneStatuePray");
                end;
            end;

            -- Teleport To Advanced Fruit Dealer
            if _G.Settings.SeaStack["Teleport To Advanced Fruit Dealer"] then
                if (game:GetService("Workspace")).NPCs:FindFirstChild("Advanced Fruit Dealer") then
                    topos(CFrame.new((game:GetService("Workspace")).NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position));
                end;
            end;

            -- Find Blue Gear
            if _G.Settings.Race["Find Blue Gear"] then
                if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") then
                    for i, v in pairs((game:GetService("Workspace")).Map.MysticIsland:GetChildren()) do
                        if v:IsA("MeshPart") then
                            if v.Material == Enum.Material.Neon then
                                topos(v.CFrame);
                            end;
                        end;
                    end;
                end;
            end;
        end);
    end;
end);

        spawn(function()
			pcall(function()
				while wait() do
					if _G.Settings.SeaStack["Auto Attack Seabeasts"] then
						if (game:GetService("Workspace")):FindFirstChild("SeaBeasts") then
							for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
								if CheckSeaBeast() then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0);
										if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 400 then
											_G.SeaSkill = true;
										else
											_G.SeaSkill = false;
										end;
										AutoHaki();
										Skillaimbot = true;
										AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position;
										if SBAttacking then
											topos(CFrameSeaBeast * CFrame.new(math.random(100, 300), 100, math.random(100, 300)));
										else
											topos(CFrameSeaBeast * CFrame.new(0, 100, 0));
										end;
									until not _G.Settings.SeaEvent["Auto Farm Seabeasts"] or CheckSeaBeast() == false or (not v:FindFirstChild("Humanoid")) or (not v:FindFirstChild("HumanoidRootPart")) or v.Humanoid.Health < 0 or (not v.Parent);
									Skillaimbot = false;
									_G.SeaSkill = false;
								else
									Skillaimbot = false;
									_G.SeaSkill = false;
								end;
							end;
						end;
					end;
				end;
			end);
		end);
spawn(function()
    while wait(0.2) do
        pcall(function()
            -- Mirage Island Check
            if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
                Mirragecheck:SetDesc("🏝️ Mirage Island Spawning")
                _G.MirageSpawn = true
            else
                Mirragecheck:SetDesc("🏝️ Mirage Island Not Spawn")
                _G.MirageSpawn = false
            end

            -- Teleport To Mirage Island
            if _G.Settings.SeaStack["Teleport To Mirage Island"] then
                if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") then
                    topos(CFrame.new((game:GetService("Workspace")).Map.MysticIsland.Center.Position.X, 500, (game:GetService("Workspace")).Map.MysticIsland.Center.Position.Z));
                end;
            end;
        end);
    end;
end);

spawn(function()
    while wait(0.2) do
        pcall(function()
            -- Auto Farm Blaze Ember (Request Quest)
            if _G.Settings.DragonDojo["Auto Farm Blaze Ember"] then
                if not _G.OnBlzeQuest and (not getIsOnQuest()) then
                    local DragonHunterPos = CFrame.new(5864.86377, 1209.55066, 812.775024, 0.879059196, 0.00000000381980803, 0.476712614, -0.0000000131110456, 1, 0.0000000161639893, -0.476712614, -0.0000000204593036, 0.879059196);
                    topos(DragonHunterPos);
                    ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer({
                        Context = "RequestQuest"
                    });
                end;
                SaveBlazeEmberQuest();
                _G.OnBlzeQuest = true;
            end;

            -- Auto Farm Blaze Ember (Complete Quest)
            if _G.Settings.DragonDojo["Auto Farm Blaze Ember"] then
                if _G.BlazeEmberQuest == "Venomous Assailant" and _G.OnBlzeQuest then
                    autoKillVenemousAssailant();
                elseif _G.BlazeEmberQuest == "Hydra Enforcer" and _G.OnBlzeQuest then
                    autoKillHydraEnforcer();
                elseif _G.BlazeEmberQuest == "Destroy 10 trees" and _G.OnBlzeQuest then
                    autoDestroyHydraTrees();
                end;
            end;

            -- Auto Collect Blaze Ember
            if _G.Settings.DragonDojo["Auto Collect Blaze Ember"] then
                if ((game:GetService("Workspace")):WaitForChild("EmberTemplate")):FindFirstChild("Part") then
                    CollectBlazeEmber();
                end;
            end;

            -- Auto Craft Common Scroll
            if _G.Settings.Craft["Auto Craft Common Scroll"] then
                repeat
                    wait(1);
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "CommonScroll");
                until not _G.Settings.Craft["Auto Craft Common Scroll"];
            end;

            -- Auto Craft Rare Scroll
            if _G.Settings.Craft["Auto Craft Rare Scroll"] then
                repeat
                    wait(1);
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "RareScroll");
                until not _G.Settings.Craft["Auto Craft Rare Scroll"];
            end;

            -- Auto Craft Legendary Scroll
            if _G.Settings.Craft["Auto Craft Legendary Scroll"] then
                repeat
                    wait(1);
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LegendaryScroll");
                until not _G.Settings.Craft["Auto Craft Legendary Scroll"];
            end;

            -- Auto Craft Mythical Scroll
            if _G.Settings.Craft["Auto Craft Mythical Scroll"] then
                repeat
                    wait(1);
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "MythicalScroll");
                until not _G.Settings.Craft["Auto Craft Mythical Scroll"];
            end;
        end);
    end;
end);
spawn(function()
    while wait(0.2) do
        pcall(function()
            -- Auto Super Human
            if _G.Settings.Items["Auto Super Human"] then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 150000 then
                    UnEquipWeapon("Combat");
                    wait(0.1);
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBlackLeg");
                end;
                if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                    _G.Settings.Main["Selected Weapon"] = "Superhuman";
                end;
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value <= 299 then
                        _G.Settings.Main["Selected Weapon"] = "Black Leg";
                    end;
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value <= 299 then
                        _G.Settings.Main["Selected Weapon"] = "Electro";
                    end;
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate")).Level.Value <= 299 then
                        _G.Settings.Main["Selected Weapon"] = "Fishman Karate";
                    end;
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value <= 299 then
                        _G.Settings.Main["Selected Weapon"] = "Dragon Claw";
                    end;
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg");
                        wait(0.1);
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
                    end;
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg");
                        wait(0.1);
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
                    end;
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro");
                        wait(0.1);
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
                    end;
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro");
                        wait(0.1);
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
                    end;
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate")).Level.Value >= 300 and (game:GetService("Players")).Localplayer.Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate");
                        wait(0.1);
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
                    end;
                    if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate")).Level.Value >= 300 and (game:GetService("Players")).Localplayer.Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate");
                        wait(0.1);
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
                    end;
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw");
                        wait(0.1);
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
                    end;
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw");
                        wait(0.1);
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
                    end;
                end;
            end;

            -- Auto Death Step
            if _G.Settings.Items["Auto Death Step"] then
                if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step") then
                    if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value >= 450 then
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
                        _G.Settings.Main["Selected Weapon"] = "Death Step";
                    end;
                    if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg")).Level.Value >= 450 then
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
                        _G.Settings.Main["Selected Weapon"] = "Death Step";
                    end;
                    if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value <= 449 then
                        _G.Settings.Main["Selected Weapon"] = "Black Leg";
                    end;
                else
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBlackLeg");
                end;
            end;

            -- Auto Fishman Karate
            if _G.Settings.Items["Auto Fishman Karate"] then
                (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
                if string.find((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
                    if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Water Key") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Water Key") then
                        topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365));
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
                    elseif (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate")).Level.Value >= 400 then
                    else
                        Ms = "Tide Keeper";
                        if (game:GetService("Workspace")).Enemies:FindFirstChild(Ms) then
                            for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    OldCFrameShark = v.HumanoidRootPart.CFrame;
                                    repeat
                                        (game:GetService("RunService")).Heartbeat:wait();
                                        AutoHaki();
                                        EquipWeapon(_G.Settings.Main["Selected Weapon"]);
                                        v.Head.CanCollide = false;
                                        v.Humanoid.WalkSpeed = 0;
                                        v.HumanoidRootPart.CanCollide = false;
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
                                        v.HumanoidRootPart.CFrame = OldCFrameShark;
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                                        Attack();
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Fishman Karate"] == false or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Water Key") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Water Key");
                                end;
                            end;
                        else
                            topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -0.000000013857326, 0.885206044, 0.0000000040332897, 1, 0.0000000135347511, -0.885206044, -0.00000000272606271, 0.465199202));
                            wait(3);
                        end;
                    end;
                else
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
                end;
            end;

            -- Auto Electric Claw
            if _G.Settings.Items["Auto Electric Claw"] then
                if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw") then
                    if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 400 then
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
                        _G.Settings.Main["Selected Weapon"] = "Electric Claw";
                    end;
                    if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 400 then
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
                        _G.Settings.Main["Selected Weapon"] = "Electric Claw";
                    end;
                    if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value <= 399 then
                        _G.Settings.Main["Selected Weapon"] = "Electro";
                    end;
                else
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
                end;
                if _G.Settings.Items["Auto Electric Claw"] then
                    if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") then
                        if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 400 or ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 400 then
                            if _G.Settings.Main["Auto Farm"] == false then
                                repeat
                                    (game:GetService("RunService")).Heartbeat:wait();
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
                                until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
                                (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
                                wait(2);
                                repeat
                                    task.wait();
                                    topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438));
                                until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-12550.532226563), 336.22631835938, (-7510.4233398438))).Position).Magnitude <= 10;
                                wait(1);
                                repeat
                                    task.wait();
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
                                until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
                                wait(1);
                                (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
                            elseif _G.Settings.Main["Auto Farm"] == true then
                                _G.Settings.Main["Auto Farm"] = false;
                                wait(1);
                                repeat
                                    task.wait();
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
                                until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
                                (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
                                wait(2);
                                repeat
                                    task.wait();
                                    topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438));
                                until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-12550.532226563), 336.22631835938, (-7510.4233398438))).Position).Magnitude <= 10;
                                wait(1);
                                repeat
                                    task.wait();
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
                                until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
                                wait(1);
                                (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
                                _G.Settings.Main["Selected Weapon"] = "Electric Claw";
                                wait(0.1);
                                _G.Settings.Main["Auto Farm"] = true;
                            end;
                        end;
                    end;
                end;
            end;

            -- Auto Dragon Talon
            if _G.Settings.Items["Auto Dragon Talon"] then
                if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                    if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value >= 400 then
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
                        _G.Settings.Main["Selected Weapon"] = "Dragon Talon";
                    end;
                    if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw")).Level.Value >= 400 then
                        (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
                        _G.Settings.Main["Selected Weapon"] = "Dragon Talon";
                    end;
                    if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value <= 399 then
                        _G.Settings.Main["Selected Weapon"] = "Dragon Claw";
                    end;
                else
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
                end;
            end;

            -- Auto God Human
            if _G.Settings.Items["Auto God Human"] then
                if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Superhuman") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Superhuman") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Sharkman Karate") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Godhuman") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                    if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1 then
                        if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Superhuman") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Superhuman")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Superhuman") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Superhuman")).Level.Value >= 400 then
                            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
                        end;
                    else
                        WindUI:Notify({
                            Title = "PhantomFlux Notify",
                            Content = "Not Have Superhuman",
                            Duration = 3,
                            Icon = "rbxassetid://128278170341835",
                        })
                    end;
                    if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1 then
                        if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step")).Level.Value >= 400 then
                            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
                        end;
                    else
                        WindUI:Notify({
                            Title = "PhantomFlux Notify",
                            Content = "Not Have Death Step",
                            Duration = 3,
                            Icon = "rbxassetid://128278170341835",
                        })
                    end;
                    if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1 then
                        if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Sharkman Karate")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Sharkman Karate") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Sharkman Karate")).Level.Value >= 400 then
                            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
                        end;
                    else
                        WindUI:Notify({
                            Title = "PhantomFlux Notify",
                            Content = "Not Have Sharkman Karate",
                            Duration = 3,
                            Icon = "rbxassetid://128278170341835",
                        })
                    end;
                    if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1 then
                        if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw")).Level.Value >= 400 then
                            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
                        end;
                    else
                        WindUI:Notify({
                            Title = "PhantomFlux Notify",
                            Content = "Not Have Electric Claw",
                            Duration = 3,
                            Icon = "rbxassetid://128278170341835",
                        })
                    end;
                    if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                        if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon")).Level.Value >= 400 then
                            if string.find((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyGodhuman", true), "Bring") then
                                WindUI:Notify({
                                    Title = "PhantomFlux Notify",
                                    Content = "Not Have Enough Material",
                                    Duration = 3,
                                    Icon = "rbxassetid://128278170341835",
                                })
                            else
                                (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyGodhuman");
                            end;
                        end;
                    else
                        WindUI:Notify({
                            Title = "PhantomFlux Notify",
                            Content = "Not Have Dragon Talon",
                            Duration = 3,
                            Icon = "rbxassetid://128278170341835",
                        })
                    end;
                else
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
                end;
            end;
        end);
    end;
end);

local MaterialsPos1 = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312)
local MaterialsPos2 = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)

spawn(function()
	while wait(0.2) do
		-- Auto Farm Radioactive
		if _G.Settings.Farm["Auto Farm Radioactive"] and World2 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Factory Staff") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Factory Staff" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Radioactive"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos1)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Factory Staff") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Factory Staff")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end

		-- Auto Farm Mystic Droplet
		if _G.Settings.Farm["Auto Farm Mystic Droplet"] and World2 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Water Fighter") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Water Fighter" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Mystic Droplet"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos2)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Water Fighter") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Water Fighter")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end
	end
end)

local MaterialsPos3 = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875)
local MaterialsPos4 = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375)

spawn(function()
	while wait(0.2) do
		-- Auto Farm Magma Ore (World 1 - Military Spy)
		if _G.Settings.Farm["Auto Farm Magma Ore"] and World1 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Military Spy") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Military Spy" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Magma Ore"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
                        end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos3)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Military Spy") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Military Spy")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end

		-- Auto Farm Magma Ore (World 2 - Lava Pirate)
		if _G.Settings.Farm["Auto Farm Magma Ore"] and World2 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Lava Pirate" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Magma Ore"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos4)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Lava Pirate") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end
	end
end)

    local MaterialsPos5 = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Angel Wings"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Royal Soldier") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Royal Soldier" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Angel Wings"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Royal Soldier") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Royal Soldier")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);

local MaterialsPos6 = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625)
local MaterialsPos7 = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
local MaterialsPos8 = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)

spawn(function()
	while wait(0.2) do
		-- Auto Farm Leather (World 1 - Pirate)
		if _G.Settings.Farm["Auto Farm Leather"] and World1 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Pirate") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Pirate" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Leather"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos6)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Pirate") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end

		-- Auto Farm Leather (World 2 - Marine Captain)
		if _G.Settings.Farm["Auto Farm Leather"] and World2 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Marine Captain") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Marine Captain" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Leather"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos7)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Marine Captain") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Marine Captain")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end

		-- Auto Farm Leather (World 3 - Jungle Pirate)
		if _G.Settings.Farm["Auto Farm Leather"] and World3 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Jungle Pirate") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Jungle Pirate" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Leather"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos8)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Jungle Pirate") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Jungle Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end
	end
end)

    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Farm["Auto Farm Ectoplasm"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Deckhand") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Engineer") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Steward") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Officer") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									if string.find(v.Name, "Ship") then
										v.HumanoidRootPart.CanCollide = false;
										v.Head.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
									else
										topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
									end;
								until _G.Settings.Farm["Auto Farm Ectoplasm"] == false or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					else
						local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
						if Distance > 18000 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
						end;
						topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
					end;
				end;
			end;
		end);
	end);

local MaterialsPos9  = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125)
local MaterialsPos10 = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125)
local MaterialsPos11 = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875)

spawn(function()
	while wait(0.2) do
		-- Auto Farm Scrap Metal (World 1 - Brute)
		if _G.Settings.Farm["Auto Farm Scrap Metal"] and World1 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Brute") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Brute" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Scrap Metal"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos9)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Brute") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Brute")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end

		-- Auto Farm Scrap Metal (World 2 - Mercenary)
		if _G.Settings.Farm["Auto Farm Scrap Metal"] and World2 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Mercenary") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Mercenary" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Scrap Metal"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos10)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Mercenary") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Mercenary")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end

		-- Auto Farm Scrap Metal (World 3 - Pirate Millionaire)
		if _G.Settings.Farm["Auto Farm Scrap Metal"] and World3 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Pirate Millionaire") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Pirate Millionaire" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Scrap Metal"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos11)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Pirate Millionaire") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Pirate Millionaire")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end
	end
end)

local MaterialsPos12 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)
local MaterialsPos13 = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125)
local MaterialsPos14 = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875)
local MaterialsPos15 = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875)
local MaterialsPos16 = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125)

spawn(function()
	while wait(0.2) do
		-- Conjured Cocoa (World 3 - Chocolate Bar Battler)
		if _G.Settings.Farm["Auto Farm Conjured Cocoa"] and World3 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Chocolate Bar Battler") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Chocolate Bar Battler" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Conjured Cocoa"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos12)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Chocolate Bar Battler") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Chocolate Bar Battler")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end

		-- Dragon Scale (World 3 - Dragon Crew Warrior)
		if _G.Settings.Farm["Auto Farm Dragon Scale"] and World3 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Dragon Crew Warrior") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Dragon Crew Warrior" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Dragon Scale"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos13)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Dragon Crew Warrior") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Dragon Crew Warrior")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end

		-- Gunpowder (World 3 - Pistol Billionaire)
		if _G.Settings.Farm["Auto Farm Gunpowder"] and World3 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Pistol Billionaire") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Pistol Billionaire" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Gunpowder"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos14)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Pistol Billionaire") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Pistol Billionaire")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end

		-- Fish Tail (World 3 - Fishman Captain)  *note: mengikuti logika asli: `until not Fish ...`
		if _G.Settings.Farm["Auto Farm Fish Tail"] and World3 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Fishman Captain") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Fishman Captain" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not Fish or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos15)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Fishman Captain") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Fishman Captain")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end

		-- Mini Tusk (World 3 - Mythological Pirate)
		if _G.Settings.Farm["Auto Farm Mini Tusk"] and World3 then
			pcall(function()
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Mythological Pirate") then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v.Name == "Mythological Pirate" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait()
									AutoHaki()
									EquipWeapon(_G.Settings.Main["Selected Weapon"])
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									topos(v.HumanoidRootPart.CFrame * Pos)
									Attack()
								until not _G.Settings.Farm["Auto Farm Mini Tusk"] or (not v.Parent) or v.Humanoid.Health <= 0
							end
						end
					end
				else
					UnEquipWeapon(_G.Settings.Main["Selected Weapon"])
					topos(MaterialsPos16)
					if (game:GetService("ReplicatedStorage")):FindFirstChild("Mythological Pirate") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Mythological Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end
	end
end)
    local BigMomPos = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Buddy Sword"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Queen") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Cake Queen" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Buddy Sword"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Cake Queen") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Cake Queen")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
    spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Soul Guitar"] then
					AutoSoulGuitar();
				end;
			end);
		end;
	end);

    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Rengoku"] and World2 then
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Hidden Key") then
						EquipWeapon("Hidden Key");
						topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875));
					elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Snow Lurker") or (game:GetService("Workspace")).Enemies:FindFirstChild("Arctic Warrior") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Settings.Items["Auto Rengoku"] == false or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					else
						topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188));
					end;
				end;
			end;
		end);
	end);
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Hallow Scythe"] then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Soul Reaper") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if string.find(v.Name, "Soul Reaper") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
									v.HumanoidRootPart.Transparency = 1;
								until v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Hallow Scythe"] == false;
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Hallow Essence") then
						repeat
							topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125));
							wait();
						until ((CFrame.new((-8932.322265625), 146.83154296875, 6062.55078125)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8;
						EquipWeapon("Hallow Essence");
					elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Soul Reaper") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Soul Reaper")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					end;
				end);
			end;
		end;
	end)
    local NamfonPos = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Warden Sword"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Chief Warden") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Chief Warden" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Warden Sword"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);

    spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Yama Hop"] then
				pcall(function()
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter", "Progress") < 30 then
						if _G.Settings.Items["Auto Yama"] then
							if not (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (not (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre")) or (not (game:GetService("Workspace")).Enemies:FindFirstChild("Urban")) then
								Hop();
							end;
						end;
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Yama"] then
				if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
					repeat
						wait(0.1);
						fireclickdetector((game:GetService("Workspace")).Map.Waterfall.SealedKatana.Handle.ClickDetector);
					until (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Yama") or (not _G.Settings.Items["Auto Yama"]);
				elseif string.find(QuestTitle, "Diablo") or string.find(QuestTitle, "Deandre") or string.find(QuestTitle, "Urban") then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre") or (game:GetService("Workspace")).Enemies:FindFirstChild("Urban") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until _G.Settings.Farm["Auto Elite Hunter"] == false or v.Humanoid.Health <= 0 or (not v.Parent);
								end;
							end;
						end;
					end;
				else
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter");
				end;
			end;
		end;
	end);
    spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Cursed Dual Katana"] then
					if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
						if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
								EquipWeapon("Tushita");
							end;
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
								EquipWeapon("Yama");
							end;
						end;
					else
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LoadItem", "Tushita");
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Cursed Dual Katana"] then
					if GetMaterial("Alucard Fragment") == 0 then
						Auto_Quest_Yama_1 = true;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif GetMaterial("Alucard Fragment") == 1 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = true;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif GetMaterial("Alucard Fragment") == 2 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = true;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif GetMaterial("Alucard Fragment") == 3 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = true;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif GetMaterial("Alucard Fragment") == 4 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = true;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif GetMaterial("Alucard Fragment") == 5 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = true;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif GetMaterial("Alucard Fragment") == 6 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or (game:GetService("Workspace")).ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
							Auto_Quest_Yama_1 = false;
							Auto_Quest_Yama_2 = false;
							Auto_Quest_Yama_3 = false;
							Auto_Quest_Tushita_1 = false;
							Auto_Quest_Tushita_2 = false;
							Auto_Quest_Tushita_3 = false;
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
										if v.Humanoid.Health > 0 then
											EquipWeapon(Sword);
											topos(v.HumanoidRootPart.CFrame * pos);
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.HumanoidRootPart.Transparency = 1;
											v.Humanoid.JumpPower = 0;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.CanCollide = false;
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
											Attack();
										end;
									end;
								end;
							end;
                        elseif ((CFrame.new((-12361.7060546875), 603.3547973632812, (-6550.5341796875))).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
							wait(1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
							wait(1);
							topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875));
							wait(1.5);
							(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
							wait(1.5);
							topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875));
						else
							topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875));
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Yama_1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Mythological Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Mythological Pirate" then
								repeat
									wait();
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, (-2)));
								until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_1 == false;
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
							end;
						end;
					else
						topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875));
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if Auto_Quest_Yama_2 then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							v.HazeESP.Size = UDim2.new(50, 50, 50, 50);
							v.HazeESP.MaxDistance = "inf";
						end;
					end;
					for i, v in pairs((game:GetService("ReplicatedStorage")):GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							v.HazeESP.Size = UDim2.new(50, 50, 50, 50);
							v.HazeESP.MaxDistance = "inf";
						end;
					end;
				end;
			end);
		end;
	end);
    spawn(function()
		while wait(0.2) do
			pcall(function()
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
						v.HumanoidRootPart.CFrame = PosMonsEsp;
						v.HumanoidRootPart.CanCollide = false;
						v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
						if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
							local vc = Instance.new("BodyVelocity", v.HumanoidRootPart);
							vc.MaxForce = Vector3.new(1, 1, 1) * math.huge;
							vc.Velocity = Vector3.new(0, 0, 0);
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Yama_2 then
				pcall(function()
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
									topos(v.HumanoidRootPart.CFrame * Pos);
								else
									EquipWeapon(Sword);
									topos(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									Attack();
									if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy();
									end;
								end;
							until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_2 == false or (not v.Parent) or v.Humanoid.Health <= 0 or (not v:FindFirstChild("HazeESP"));
						else
							for x, y in pairs((game:GetService("ReplicatedStorage")):GetChildren()) do
								if y:FindFirstChild("HazeESP") then
									if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
										topos(y.HumanoidRootPart.CFrameMon * Pos);
									else
										topos(y.HumanoidRootPart.CFrame * Pos);
									end;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
    spawn(function()
		while wait(0.2) do
			if Auto_Quest_Yama_3 then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
						topos((game:GetService("Workspace")).Map["Haunted Castle"].Summoner.Detection.CFrame);
					elseif (game:GetService("Workspace")).Map:FindFirstChild("HellDimension") then
						repeat
							wait();
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
										if v.Humanoid.Health > 0 then
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												EquipWeapon(Sword);
												topos(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												v.HumanoidRootPart.Transparency = 1;
												v.Humanoid.JumpPower = 0;
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.CanCollide = false;
												PosMon = v.HumanoidRootPart.CFrame;
												MonFarm = v.Name;
												Attack();
											until v.Humanoid.Health <= 0 or (not v.Parent) or Auto_Quest_Yama_3 == false;
										end;
									end;
								end;
							else
								wait(5);
								topos((game:GetService("Workspace")).Map.HellDimension.Torch1.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HellDimension.Torch2.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HellDimension.Torch3.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HellDimension.Exit.CFrame);
							end;
						until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3;
					elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Soul Reaper") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Soul Reaper" then
									if v.Humanoid.Health > 0 then
										repeat
											wait();
											topos(v.HumanoidRootPart.CFrame * Pos);
										until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_3 == false or (game:GetService("Workspace")).Map:FindFirstChild("HellDimension");
									end;
								end;
							end;
						else
							topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625));
						end;
					else
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
					end;
				end);
			end;
		end;
	end);
    spawn(function()
		while wait(0.2) do
			if Auto_Quest_Tushita_1 then
				topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125));
				wait(5);
				topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625));
				wait(5);
				topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875));
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Tushita_2 then
				pcall(function()
					if ((CFrame.new((-5539.3115234375), 313.800537109375, (-2972.372314453125))).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(Sword);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										Attack();
									until v.Humanoid.Health <= 0 or (not v.Parent) or Auto_Quest_Tushita_2 == false;
								end;
							end;
						end;
					else
						topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125));
					end;
				end);
			end;
		end;
	end);
    spawn(function()
		while wait(0.2) do
			if Auto_Quest_Tushita_3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Queen") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Cake Queen" then
									if v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											EquipWeapon(Sword);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.HumanoidRootPart.Transparency = 1;
											v.Humanoid.JumpPower = 0;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.CanCollide = false;
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
											Attack();
										until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Tushita_3 == false or (game:GetService("Workspace")).Map:FindFirstChild("HeavenlyDimension");
									end;
								end;
							end;
						else
							topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375));
						end;
					elseif (game:GetService("Workspace")).Map:FindFirstChild("HeavenlyDimension") then
						repeat
							wait();
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
										if v.Humanoid.Health > 0 then
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												EquipWeapon(Sword);
												topos(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												v.HumanoidRootPart.Transparency = 1;
												v.Humanoid.JumpPower = 0;
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.CanCollide = false;
												PosMon = v.HumanoidRootPart.CFrame;
												MonFarm = v.Name;
												Attack();
											until v.Humanoid.Health <= 0 or (not v.Parent) or Auto_Quest_Tushita_3 == false;
										end;
									end;
								end;
							else
								wait(5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Torch1.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Torch2.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Torch3.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Exit.CFrame);
							end;
						until not _G.Settings.Items["Auto Cursed Dual Katana"] or (not Auto_Quest_Tushita_3) or GetMaterial("Alucard Fragment") == 6;
					end;
				end);
			end;
		end;
	end);

	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Tushita"] and World3 then
				pcall(function()
					if not (game:GetService("Workspace")).Map.Turtle:FindFirstChild("TushitaGate") then
						if CheckNameBoss("Longma [Lv. 2000] [Boss]") then
							local v = CheckNameBoss("Longma [Lv. 2000] [Boss]");
							repeat
								task.wait();
								AutoHaki();
								EquipWeapon(_G.Settings.Main["Selected Weapon"]);
								v.HumanoidRootPart.CanCollide = false;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								topos(v.HumanoidRootPart.CFrame * Pos);
								Attack();
							until not v or (not v.Parent) or v.Humanoid.Health == 0;
						end;
					elseif CheckNameBoss("rip_indra True Form [Lv. 5000] [Raid Boss]") then
						if not game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") and (not game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch")) then
							topos((game:GetService("Workspace")).Map.Waterfall.SecretRoom.Room.Door.Door.Hitbox.CFrame);
						else
							EquipWeapon("Holy Torch");
							if CheckTorch() then
								topos((CheckTorch()).CFrame);
							end;
						end;
					else
						WindUI:Notify({
						    Title = "PhantomFlux Notify",
                            Content = "Rip Indra Not Spawn",
                            Duration = 2,
                            Icon = "rbxassetid://128278170341835",
                        })
						task.wait(3);
					end;
				end);
			end;
		end;
	end);
	
    local CavandisPos = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Canvander"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Beautiful Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Beautiful Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Canvander"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(CavandisPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Beautiful Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Beautiful Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.SeaEvent["Selected Zone"] == "Zone 1" then
					CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -0.000000000236509201, -0.991110802, -0.0569955558, 0.120211802);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 2" then
					CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -0.000000000415334017, -0.949422479, -0.0606706589, 0.308084518);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 3" then
					CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 0.0000000000270896673, -0.925605655, -0.0370079502, 0.376675636);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 4" then
					CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 5" then
					CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -0.00000000139882339, -0.981290519, -0.0365765914, -0.189026669);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 6" then
					CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Infinite" then
					CFrameSelectedZone = CFrame.new(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, 1, -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536);
				end;
			end;
		end);
	end);

	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.SeaEvent["Sail Boat"] then
					if not CheckBoat() then
						local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
							BTP(BuyBoatCFrame);
						else
							BuyBoat = topos(BuyBoatCFrame);
						end;
						if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoat then
								BuyBoat:Stop();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
							for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
								if v.Name == _G.Settings.SeaEvent["Selected Boat"] then
									if (v.VehicleSeat.CFrame.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
										AddEsp("MyBoatEsp", v);
									end;
								end;
							end;
							wait(1);
						end;
					elseif CheckBoat() then
						for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
							if v.Name == _G.Settings.SeaEvent["Selected Boat"] then
								if v:FindFirstChild("MyBoatEsp") then
									if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
										if CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] or CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] or CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] then
											if stoppos then
												stoppos:Stop();
											end;
										else
											stoppos = topos(v.VehicleSeat.CFrame * CFrame.new(0, 1, 0));
										end;
									else
										repeat
											wait();
											StopTweenBoat = TweenBoat(CFrameSelectedZone);
										until CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] or CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] or CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] or (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false or _G.Settings.SeaEvent["Sail Boat"] == false;
										if StopTweenBoat then
											StopTweenBoat:Stop();
										end;
										(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
										wait(0.1);
										(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
									end;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.SeaEvent["Sail Boat"] then
					if CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] or CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] or CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] then
						if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
							(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
							wait(0.1);
							(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
						end;
					end;
				end;
			end;
		end);
	end);

	spawn(function()
		while wait(0.2) do
			if _G.Settings.SeaEvent["Sail Boat"] then
				pcall(function()
					if _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") then
								if v.Name == "Fish Crew Member" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											Attack();
											_G.SeaSkill = false;
										until not _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									local BoatCFrame = v.Engine.CFrame;
									if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									topos(BoatCFrame);
									AutoHaki();
									Skillaimbot = true;
									AimSkill = v.Engine.CFrame * CFrame.new(0, (-15), 0);
									AimBotSkillPosition = AimSkill.Position;
								until not v.Parent or v.Health < 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat")) or (not v:FindFirstChild("Engine")) or (not _G.Settings.SeaEvent["Auto Farm Ghost Ship"]);
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									local BoatCFrame = v.Engine.CFrame;
									AutoHaki();
									if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									topos(BoatCFrame);
									Skillaimbot = true;
									AimSkill = v.Engine.CFrame * CFrame.new(0, (-15), 0);
									AimBotSkillPosition = AimSkill.Position;
								until not v.Parent or v.Health.Value < 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade")) or (not v:FindFirstChild("Engine")) or (not _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"]);
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									local BoatCFrame = v.Engine.CFrame;
									if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									topos(BoatCFrame);
									Skillaimbot = true;
									AutoHaki();
									AimSkill = v.Engine.CFrame * CFrame.new(0, (-15), 0);
									AimBotSkillPosition = AimSkill.Position;
								until not v.Parent or v.Health.Value < 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade")) or (not v:FindFirstChild("Engine")) or (not _G.Settings.SeaEvent["Auto Farm Pirate Brigade"]);
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] then
						if (game:GetService("Workspace")):FindFirstChild("SeaBeasts") then
							for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
								if CheckSeaBeast() then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0, 400, 0);
										if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 400 then
											_G.SeaSkill = true;
										else
											_G.SeaSkill = false;
										end;
										AutoHaki();
										Skillaimbot = true;
										AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position;
										if DodgeSeabeasts() then
											topos(v.HumanoidRootPart.CFrame * CFrame.new(math.random((-200), 300), 400, math.random((-200), 300)));
										else
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 400, 0));
										end;
									until not _G.Settings.SeaEvent["Auto Farm Seabeasts"] or CheckSeaBeast() == false or (not v:FindFirstChild("Humanoid")) or (not v:FindFirstChild("HumanoidRootPart")) or v.Humanoid.Health <= 0 or (not v.Parent);
									Skillaimbot = false;
									_G.SeaSkill = false;
								else
									Skillaimbot = false;
									_G.SeaSkill = false;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") then
								if v.Name == "Terrorshark" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											Attack();
											_G.SeaSkill = false;
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0));
										until not _G.Settings.SeaEvent["Auto Farm Terrorshark"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Piranha") then
								if v.Name == "Piranha" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											Attack();
											_G.SeaSkill = false;
										until not _G.Settings.SeaEvent["Auto Farm Piranha"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Shark") then
								if v.Name == "Shark" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											Attack();
											_G.SeaSkill = false;
										until not _G.Settings.SeaEvent["Auto Farm Shark"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					else
						Skillaimbot = false;
						_G.SeaSkill = false;
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
					end;
				end);
			end;
		end;
	end);

    spawn(function()
		while wait(0.2) do
			pcall(function()
				local vehicleSeats = {};
				for i, v in pairs(game.Workspace.Boats:GetDescendants()) do
					if v:IsA("VehicleSeat") then
						table.insert(vehicleSeats, v);
					end;
				end;
				if _G.Settings.SeaEvent["Increase Boat Speed"] then
					for _, v in pairs(vehicleSeats) do
						v.MaxSpeed = 350;
					end;
				else
					for _, v in pairs(vehicleSeats) do
						v.MaxSpeed = 150;
					end;
				end;
			end);
		end;
	end);
    spawn(function()
		while wait(0.2) do
			pcall(function()
				for i, boat in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
					for _, v in pairs((game:GetService("Workspace")).Boats[boat.Name]:GetDescendants()) do
						if v:IsA("BasePart") then
							if _G.Settings.SeaEvent["No Clip Rock"] or _G.Settings.SeaEvent["Sail Boat"] then
								v.CanCollide = false;
							else
								v.CanCollide = true;
							end;
						end;
					end;
				end;
			end);
		end;
	end);

DoneSkillGun = false;
DoneSkillSword = false;
DoneSkillFruit = false;
DoneSkillMelee = false;
spawn(function()
	while wait() do
		pcall(function()
			if _G.SeaSkill then
				if _G.Settings.SettingSea["Skill Devil Fruit"] and DoneSkillFruit == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Blox Fruit" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill Z"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill X"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill C"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill C"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill V"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill V"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill F"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "F", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill F"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "F", false, game);
					end;
					DoneSkillFruit = true;
				end;
                if _G.Settings.SettingSea["Skill Melee"] and DoneSkillMelee == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Melee" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Melee Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(0.5);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Melee Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(0.5);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					if _G.Settings.SettingSea["Sea Melee Skill C"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
						wait(0.5);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
					end;
					if _G.Settings.SettingSea["Sea Melee Skill V"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
						wait(0.5);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
					end;
					DoneSkillMelee = true;
				end;
                if _G.Settings.SettingSea["Skill Sword"] and DoneSkillSword == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Sword" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Sword Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(0.5);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Sword Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(0.5);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					DoneSkillSword = true;
				end;
                if _G.Settings.SettingSea["Skill Gun"] and DoneSkillGun == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Gun" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Gun Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(0.1);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Gun Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(0.1);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					DoneSkillGun = true;
				end;
				DoneSkillGun = false;
				DoneSkillSword = false;
				DoneSkillFruit = false;
				DoneSkillMelee = false;
			end;
		end);
	end;
end);

spawn(function()
	while wait(0.2) do
		pcall(function()
			if UseSkill then
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
						if _G.Settings.Setting["Fruit Mastery Skill Z"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill Z"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill X"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill X"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill C"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill C"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill V"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill V"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill F"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "F", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill F"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "F", false, game);
						end;
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait() do
		pcall(function()
			if UseGunSkill then
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
						if _G.Settings.Setting["Gun Mastery Skill Z"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
							wait(0.5);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
						end;
						if _G.Settings.Setting["Gun Mastery Skill X"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
							wait(0.5);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
						end;
					end;
				end;
			end;
		end);
	end;
end);


    local TridentPos = CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Dragon Trident"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Tide Keeper") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Tide Keeper" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Dragon Trident"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Tide Keeper") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Tide Keeper")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);


    local NamfonPos = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Warden Sword"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Chief Warden") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Chief Warden" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Warden Sword"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local GayMakPos = CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Greybeard"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Greybeard") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Greybeard" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Greybeard"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(GayMakPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Greybeard") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Greybeard")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
    local PolePos = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Pole"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Thunder God") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Thunder God" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Pole"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Thunder God") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Thunder God")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local SharkPos = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Shark Saw"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("The Saw") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "The Saw" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Shark Saw"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(SharkPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("The Saw") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("The Saw")).HumanoidRootPart.CFrame * CFrame.new(2, 40, 2));
						end;
					end;
				end);
			end;
		end;
	end)

    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Swan Glasses"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Don Swan") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Don Swan" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until _G.Settings.Items["Auto Swan Glasses"] == false or v.Humanoid.Health <= 0;
							end;
						end;
					else
						repeat
							task.wait();
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.537666320801, 905.48291015625));
						until ((CFrame.new(2284.912109375, 15.537666320801, 905.48291015625)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.Settings.Items["Auto Swan Glasses"] == false;
					end;
				end;
			end;
		end);
	end);

    local GGPos = CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Arena Trainer"] and World3 then
				pcall(function()
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy") or string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy") or string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy") then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Training Dummy") or (game:GetService("Workspace")).Enemies:FindFirstChild("Training Dummy") or (game:GetService("Workspace")).Enemies:FindFirstChild("Training Dummy") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Training Dummy" or v.Name == "Training Dummy" or v.Name == "Training Dummy" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												AutoHaki();
												EquipWeapon(_G.Settings.Main["Selected Weapon"]);
												v.HumanoidRootPart.CanCollide = false;
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												topos(v.HumanoidRootPart.CFrame * Pos);
												Attack();
											until _G.Settings.Items["Auto Arena Trainer"] == false or v.Humanoid.Health <= 0 or (not v.Parent);
										end;
									end;
								end;
							else
								topos(GGPos);
								topos(CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312));
								if (game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy") then
									topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy")).HumanoidRootPart.CFrame * MethodFarm);
								elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy") then
									topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy")).HumanoidRootPart.CFrame * MethodFarm);
								elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy") then
									topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy")).HumanoidRootPart.CFrame * MethodFarm);
								end;
							end;
						end;
					elseif _G.Settings.Items["Auto Arena Trainer"] and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ArenaTrainer") == "I don't have anything for you right now. Come back later." then
						Hop();
					else
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ArenaTrainer");
					end;
				end);
			end;
		end;
	end);

    local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Dark Dagger"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra True Form") or (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until _G.Settings.Items["Auto Dark Dagger"] == false or v.Humanoid.Health <= 0;
							end;
						end;
					else
						topos(AdminPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781));
					end;
				end;
			end;
		end);
	end);

    spawn(function()
		while wait(0.3) do
			pcall(function()
				if _G.Settings.Items["Auto Press Haki Button"] then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Winter Sky");
					wait(0.5);
					repeat
						topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208));
						wait();
					until _G.StopTween == true or _G.Settings.Items["Auto Press Haki Button"] == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-5420.16602), 1084.9657, (-2666.8208))).Magnitude <= 10;
					wait(0.5);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Pure Red");
					wait(0.5);
					repeat
						topos(CFrame.new(-5414.41357, 309.865753, -2212.45776));
						wait();
					until _G.StopTween == true or _G.Settings.Items["Auto Press Haki Button"] == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-5414.41357), 309.865753, (-2212.45776))).Magnitude <= 10;
					wait(0.5);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Snow White");
					wait(0.5);
					repeat
						topos(CFrame.new(-4971.47559, 331.565765, -3720.02954));
						wait();
					until _G.StopTween == true or _G.Settings.Items["Auto Press Haki Button"] == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-4971.47559), 331.565765, (-3720.02954))).Magnitude <= 10;
					wait(0.5);
					(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 600));
					wait(3);
					(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 600));
				end;
			end);
		end;
	end);

    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Rainbow Haki"] then
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875));
						if (Vector3.new((-11892.0703125), 930.57672119141, (-8760.1591796875)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
							wait(1.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("HornedMan", "Bet");
						end;
					elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Stone") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Stone" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 0.0000203251839, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199));
						end;
					elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Island Empress") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Island Empress" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291));
						end;
					elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Kilo Admiral") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Kilo Admiral" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479));
						end;
					elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Captain Elephant") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Captain Elephant" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 0.0000000798849911, 0.69961375, -0.000000102065748, 1, -0.00000000994383065, -0.69961375, -0.0000000643015241, 0.714521289));
						end;
					elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Beautiful Pirate") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Beautiful Pirate" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359));
						end;
					else
						topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875));
						if (Vector3.new((-11892.0703125), 930.57672119141, (-8760.1591796875)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
							wait(1.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("HornedMan", "Bet");
						end;
					end;
				end;
			end;
		end);
	end);

    spawn(function()
		while wait(0.5) do
			pcall(function()
				if _G.Settings.Items["Auto Holy Torch"] then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1));
						until (Vector3.new((-10752.4434), 415.261749, (-9367.43848)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229));
						until (Vector3.new((-11671.6289), 333.78125, (-9474.31934)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642));
						until (Vector3.new((-12133.1406), 521.507446, (-10654.292)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228));
						until (Vector3.new((-13336.127), 484.521179, (-6985.31689)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						EquipWeapon("Holy Torch");
						repeat
							wait(0.2);
							topos(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108));
						until (Vector3.new((-13487.623), 336.436188, (-7924.53857)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
					end;
				end;
			end);
		end;
	end);

    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Bartilo Quest"] then
					if (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
						if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Swan Pirate") then
								Ms = "Swan Pirate";
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == Ms then
										pcall(function()
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												EquipWeapon(_G.Settings.Main["Selected Weapon"]);
												AutoHaki();
												v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												topos(v.HumanoidRootPart.CFrame * Pos);
												PosMon = v.HumanoidRootPart.CFrame;
												MonFarm = v.Name;
												Attack();
											until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Bartilo Quest"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										end);
									end;
								end;
							else
								repeat
									topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 0.0000000455137119, -0.230443969, 0.0000000267024713, 1, 0.0000000847491108, 0.230443969, 0.0000000763147128, -0.973085582));
									wait();
								until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, (-0.973085582), 0.0000000455137119, (-0.230443969), 0.0000000267024713, 1, 0.0000000847491108, 0.230443969, 0.0000000763147128, (-0.973085582))).Magnitude <= 10;
							end;
						else
							repeat
								topos(CFrame.new(-456.28952, 73.0200958, 299.895966));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-456.28952), 73.0200958, 299.895966)).Magnitude <= 10;
							wait(1.1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1);
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Jeremy") then
							Ms = "Jeremy";
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == Ms then
									OldCFrameBartlio = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										AutoHaki();
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameBartlio;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Bartilo Quest"] == false;
								end;
							end;
						elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
							repeat
								topos(CFrame.new(-456.28952, 73.0200958, 299.895966));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-456.28952), 73.0200958, 299.895966)).Magnitude <= 10;
							wait(1.1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo");
							wait(1);
							repeat
								topos(CFrame.new(2099.88159, 448.931, 648.997375));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10;
							wait(2);
						else
							repeat
								topos(CFrame.new(2099.88159, 448.931, 648.997375));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
						repeat
							topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1850.49329), 13.1789551, 1750.89685)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1858.87305), 19.3777466, 1712.01807)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1803.94324), 16.5789185, 1750.89685)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1858.55835), 16.8604317, 1724.79541)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1869.54224, 15.987854, 1681.00659));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1869.54224), 15.987854, 1681.00659)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1800.0979), 16.4978027, 1684.52368)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1819.26343, 14.795166, 1717.90625));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1819.26343), 14.795166, 1717.90625)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1813.51843), 14.8604736, 1724.79541)).Magnitude <= 10;
					end;
				end;
			end;
		end);
	end);

spawn(function()
	while task.wait() do
		if _G.Settings.Setting["Bring Mob"] then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name, "Boss") and v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= BringMobDistance then
						v.HumanoidRootPart.CFrame = PosMon;
						v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
					end;
				end;
			end);
		end;
	end;
end);

spawn(function()
    while wait(0.2) do
        pcall(function()
            Pointstat:SetDesc("Stat Points : " .. tostring(game:GetService("Players").LocalPlayer.Data.Points.Value))
        end)
    end
end)
spawn(function()
	while wait(0.2) do
		if game.Players.localPlayer.Data.Points.Value >= PointStats then
			if _G.Settings.Stats["Auto Add Melee Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Melee",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Defense Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Defense",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Sword Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Sword",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Gun Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Gun",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Devil Fruit Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Demon Fruit",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
		end;
	end;
end);

spawn(function()
    while wait(0.2) do
        pcall(function()
            Melee:SetDesc("Melee : " .. game.Players.LocalPlayer.Data.Stats.Melee.Level.Value)
        end)
    end
end)
spawn(function()
    while wait(0.2) do
        pcall(function()
            Defense:SetDesc("Defense : " .. game.Players.LocalPlayer.Data.Stats.Defense.Level.Value)
        end)
    end
end)
spawn(function()
    while wait(0.2) do
        pcall(function()
            Sword:SetDesc("Sword : " .. game.Players.LocalPlayer.Data.Stats.Sword.Level.Value)
        end)
    end
end)
spawn(function()
    while wait(0.2) do
        pcall(function()
            Gun:SetDesc("Gun : " .. game.Players.LocalPlayer.Data.Stats.Gun.Level.Value)
        end)
    end
end)
spawn(function()
    while wait(0.2) do
        pcall(function()
            Fruit:SetDesc("Fruit : " .. game.Players.LocalPlayer.Data.Stats["Demon Fruit"].Level.Value)
        end)
    end
end)
    spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoSeabeasts then
					if (game:GetService("Workspace")):FindFirstChild("SeaBeasts") then
						for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
							if CheckSeaBeast() then
								repeat
									wait();
									local CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0);
									if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 200 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									Skillaimbot = true;
									AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position;
									topos(CFrameSeaBeast * CFrame.new(0, 200, 0));
								until not _G.AutoSeabeasts or CheckSeaBeast() == false or (not v:FindFirstChild("Humanoid")) or (not v:FindFirstChild("HumanoidRootPart")) or v.Humanoid.Health < 0 or (not v.Parent);
								Skillaimbot = false;
								_G.SeaSkill = false;
							else
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoSeabeasts then
					if not CheckBoat() then
						local BuyBoatCFrame = CFrame.new(-1936.93213, 6.6355958, -2568.47974, -0.922701657, -0.00000000988315652, 0.385514766, -0.000000016636152, 1, -0.0000000141811682, -0.385514766, -0.0000000194984704, -0.922701657);
						BuyBoat = topos(BuyBoatCFrame);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoat then
								BuyBoat:Cancel();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", "MarineBrigade");
							wait(1);
							for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
								if v.Name == "MarineBrigade" then
									if (v.VehicleSeat.CFrame.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
										AddEsp("MyBoatEsp", v);
									end;
								end;
							end;
						end;
					elseif CheckBoat() then
						for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
							if v.Name == "MarineBrigade" then
								if v:FindFirstChild("MyBoatEsp") then
									if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
										if CheckSeaBeast() then
											if TweenPlayer then
												TweenPlayer:Cancel();
											end;
										else
											local BoatPos = v.VehicleSeat.CFrame * CFrame.new(0, 1, 0);
											local Distance = (BoatPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
											TweenPlayer = (game:GetService("TweenService")):Create((game:GetService("Players")).LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(Distance / TweenSpeed, Enum.EasingStyle.Linear), {
												CFrame = BoatPos
											});
											TweenPlayer:Play();
										end;
									else
										repeat
											wait();
											local TargetPos = CFrame.new(-4124.19531, 9.00001144, -996.203918, 0.929954946, 0.0642714053, 0.362012357, -0.0689479187, 0.997620285, 0.00000000286939827, -0.361150861, -0.0249600001, 0.932173312);
											local Distance = (TargetPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
											TweenBoat = (game:service("TweenService")):Create(v.VehicleSeat, TweenInfo.new(Distance / 250, Enum.EasingStyle.Linear), {
												CFrame = TargetPos
											});
											if (v.VehicleSeat.CFrame.Position - TargetPos.Position).Magnitude <= 25 then
												TweenBoat:Cancel();
											else
												TweenBoat:Play();
											end;
										until CheckSeaBeast() or (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false;
										if TweenBoat then
											TweenBoat:Cancel();
										end;
										(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
										wait(0.1);
										(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
									end;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoSeabeasts then
					if CheckSeaBeast() then
						if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
							(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
							wait(0.1);
							(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
						end;
					end;
				end;
			end);
		end;
	end);

	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.AutoMeleeSkill then
					(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
					wait(0.5);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
					wait(0.5);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
					wait(0.5);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
					(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
					wait(0.5);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
				end;
			end);
		end;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Race["Auto Race V3"] then
					if (game:GetService("Players")).LocalPlayer.Data.Race:FindFirstChild("Evolved") then
						local myRace = tostring((game:GetService("Players")).LocalPlayer.Data.Race.Value);
						if (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 2000000 then
							_G.AutoKatakuri = false;
							if myRace == "Skypiea" then
								if (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 0 then
									local QuestCFrame = CFrame.new(-1990.71094, 125.519119, -70.5762024, -0.235444918, -0.0000000715676052, -0.971887708, 0.0000000305724122, 1, -0.0000000810440568, 0.971887708, -0.0000000487943623, -0.235444918);
									topos(QuestCFrame);
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - QuestCFrame.Position).Magnitude <= 5 then
										(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "2");
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 1 then
									for i, v in pairs((game:GetService("Players")):GetChildren()) do
										if tostring(v.Data.Race.Value) == "Skypiea" then
											local Player = v:FindFirstChild(v.Name);
											if Player then
												repeat
													wait();
													topos(Player.HumanoidRootPart.CFrame * CFrame.new(0, 0, (-2)));
													Attack();
													AutoHaki();
													_G.AutoMeleeSkill = true;
													EquipWeapon("Melee");
												until not Player or (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2;
												_G.AutoMeleeSkill = false;
												UnEquipWeapon();
											end;
										end;
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2 then
									(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "3");
								end;
							elseif myRace == "Fishman" then
								if (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 0 then
									local QuestCFrame = CFrame.new(-1990.71094, 125.519119, -70.5762024, -0.235444918, -0.0000000715676052, -0.971887708, 0.0000000305724122, 1, -0.0000000810440568, 0.971887708, -0.0000000487943623, -0.235444918);
									topos(QuestCFrame);
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - QuestCFrame.Position).Magnitude <= 5 then
										(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "2");
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 1 then
									_G.AutoSeabeasts = true;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2 then
									_G.AutoSeabeasts = false;
									(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "3");
								end;
							elseif myRace == "Mink" then
								if (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 0 then
									local QuestCFrame = CFrame.new(-1990.71094, 125.519119, -70.5762024, -0.235444918, -0.0000000715676052, -0.971887708, 0.0000000305724122, 1, -0.0000000810440568, 0.971887708, -0.0000000487943623, -0.235444918);
									topos(QuestCFrame);
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - QuestCFrame.Position).Magnitude <= 5 then
										(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "2");
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 1 then
									for i, v in pairs((game:GetService("Workspace")):GetChildren()) do
										if string.find(v.Name, "Chest") then
											if (game:GetService("Workspace")):FindFirstChild(v.Name) then
												repeat
													wait(0.5);
													game.Players.LocalPlayer.Character:PivotTo(v:GetPivot());
													firesignal(v.Touched, game.Players.LocalPlayer.Character.HumanoidRootPart);
													(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
												until not v.Parent;
											end;
										end;
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2 then
									(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "3");
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Race V2"] then
					if not (game:GetService("Players")).LocalPlayer.Data.Race:FindFirstChild("Evolved") then
						if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "1") == 0 then
							topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 0.0000000639014104, -0.68292886, 0.0000000359963224, 1, 0.0000000550667032, 0.68292886, 0.0000000156424669, -0.730484903));
							if (Vector3.new((-2779.83521), 72.9661407, (-3574.02002)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.3);
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "2");
							end;
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "1") == 1 then
							pcall(function()
								if not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 1") and (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Flower 1")) then
									topos((game:GetService("Workspace")).Flower1.CFrame);
								elseif not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 2") and (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Flower 2")) then
									topos((game:GetService("Workspace")).Flower2.CFrame);
								elseif not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 3") and (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Flower 3")) then
									if (game:GetService("Workspace")).Enemies:FindFirstChild("Zombie") then
										for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
											if v.Name == "Zombie" then
												repeat
													(game:GetService("RunService")).Heartbeat:wait();
													AutoHaki();
													EquipWeapon(_G.Settings.Main["Selected Weapon"]);
													topos(v.HumanoidRootPart.CFrame * Pos);
													v.HumanoidRootPart.CanCollide = false;
													v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
													Attack();
													PosMon = v.HumanoidRootPart.CFrame;
													MonFarm = v.Name;
												until (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 3") or (not v.Parent) or v.Humanoid.Health <= 0 or _G.Settings.Race["Auto Race V2"] == false;
											end;
										end;
									else
										topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234));
									end;
								end;
							end);
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "1") == 2 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "3");
						end;
					end;
				end;
			end;
		end);
	end);

	spawn(function()
		while wait(0.2) do
			if _G.Settings.Race["Teleport To PlaceV4"] then
				pcall(function()
					if _G.Settings.Race["Selected PlaceV4"] == "Top Of GreatTree" then
						topos(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625));
					elseif _G.Settings.Race["Selected PlaceV4"] == "Timple Of Time" then
						(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
					elseif _G.Settings.Race["Selected PlaceV4"] == "Lever Pull" then
						local LeverPullPos = CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734);
						if (LeverPullPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1000 then
							(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
						else
							topos(LeverPullPos);
						end;
					elseif _G.Settings.Race["Selected PlaceV4"] == "Acient One" then
						topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375));
					end;
				end);
			end;
		end;
	end);
	
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Buy Gear"] then
					local args = {
						[1] = true
					};
					local args = {
						[1] = "UpgradeRace",
						[2] = "Buy"
					};
					(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(args));
				end;
			end;
		end);
	end);

	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Race["Look Moon Ability"] then
					wait();
					local moonDir = game.Lighting:GetMoonDirection();
					local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100;
					game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos);
				end;
			end);
		end;
	end);

	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Train"] then
					if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
						StardFarm = false;
						topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875));
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			if StardFarm and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cocoa Warrior") or (game:GetService("Workspace")).Enemies:FindFirstChild("Chocolate Bar Battler") or (game:GetService("Workspace")).Enemies:FindFirstChild("Sweet Thief") or (game:GetService("Workspace")).Enemies:FindFirstChild("Candy Rebel") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not StardFarm or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875));
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Train"] then
					if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
						StardFarm = true;
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Race["Auto Train"] then
					(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Y", false, game);
					wait(0.1);
					(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Y", false, game);
				end;
			end);
		end;
	end);

	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Trial"] then
					if (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Human" then
						for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								pcall(function()
									repeat
										wait(0.1);
										v.Humanoid.Health = 0;
										v.HumanoidRootPart.CanCollide = false;
									until not _G.Settings.Race["Auto Trial"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end);
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Skypiea" then
						for i, v in pairs((game:GetService("Workspace")).Map.SkyTrial.Model:GetDescendants()) do
							if v.Name == "snowisland_Cylinder.081" then
								topos(v.CFrame * CFrame.new(0, 0, 0));
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Fishman" then
						for i, v in pairs((game:GetService("Workspace")).SeaBeasts.SeaBeast1:GetDescendants()) do
							if v.Name == "HumanoidRootPart" then
								repeat
									wait();
									topos(v.CFrame * CFrame.new(0, 200, 0));
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Melee" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
									wait(0.2);
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Blox Fruit" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
									wait(0.2);
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Sword" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Gun" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
								until not _G.Settings.Race["Auto Trial"] or (not v.Parent) or v.Humanoid.Health <= 0 or (not v:FindFirstChild("HumanoidRootPart"));
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Cyborg" then
						topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1));
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Ghoul" then
						for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								pcall(function()
									repeat
										wait(0.1);
										v.Humanoid.Health = 0;
										v.HumanoidRootPart.CanCollide = false;
									until not _G.Settings.Race["Auto Trial"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end);
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Mink" then
						for i, v in pairs((game:GetService("Workspace")):GetDescendants()) do
							if v.Name == "StartPoint" then
								topos(v.CFrame * CFrame.new(0, 10, 0));
							end;
						end;
					end;
				end;
			end;
		end);
	end);

spawn(function()
	while wait(0.2) do
		if _G.Settings.Race["Auto Kill Player After Trial"] then
			if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Timer.Visible == true then
				for i, v in pairs((game:GetService("Players")):GetPlayers()) do
					if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
						if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
							if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:Wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									topos(v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 20));
									Attack();
								until not _G.Settings.Race["Auto Kill Player After Trial"] or (not v.Character) or v.Character.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);

	spawn(function()
		pcall(function()
			while wait(0.2) do
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
					TimeRaid:SetDesc(game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Text)
				else
					TimeRaid:SetDesc("Wait For Raid")
				end
			end
		end)
	end)
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland5") then
					Island:SetDesc("🏝️ Island 5")
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland4") then
					Island:SetDesc("🏝️ Island 4")
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland3") then
					Island:SetDesc("🏝️ Island 3")
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland2") then
					Island:SetDesc("🏝️ Island 2")
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland1") then
					Island:SetDesc("🏝️ Island 1")
				else
					Island:SetDesc("Start Raid")
				end
			end
		end)
	end)

	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Raid["Auto Raid"] then
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
						if CheckMonRaids() then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
										pcall(function()
											repeat
												wait();
												Attack();
												EquipWeapon(_G.Settings.Main["Selected Weapon"]);
												topos(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.CanCollide = false;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											until not _G.Settings.Raid["Auto Raid"] or (not v.Parent) or v.Humanoid.Health <= 0;
										end);
									end;
								end;
							end;
						else
							NextRaidIsland();
						end;
					end;
				end;
			end;
		end);
	end);

	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Raid["Auto Raid"] then
					if not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Special Microchip") or (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Special Microchip")) then
						if not (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 1") then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.Settings.Raid["Selected Chip"]);
						end;
					end;
				end;
			end;
		end);
	end);

	spawn(function()
		while wait(0.2) do
			if _G.Settings.Raid["Auto Awaken"] then
				pcall(function()
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Awakener", "Awaken");
				end);
			end;
		end;
	end);

spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if _G.Settings.Raid["Unstore Devil Fruit"] then
                local inventory = CommF:InvokeServer("getInventory")
                if typeof(inventory) == "table" then
                    for _, item in pairs(inventory) do
                        if item.Type == "Blox Fruit" and item.Value <= _G.Settings.Raid["Price Devil Fruit"] then
                            -- cek player belum punya fruit
                            if not GetFruitsInfo() then
                                CommF:InvokeServer(unpack({"LoadFruit", item.Name}))
                                warn("Loaded fruit:", item.Name, "Price:", item.Value)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Raid["Auto Raid"] then
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then
						if not game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland1") and (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Special Microchip") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Special Microchip") then
							if World2 then
								fireclickdetector((game:GetService("Workspace")).Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
							elseif World3 then
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5083.26025390625, 314.6056823730469, -3175.673095703125));
								fireclickdetector((game:GetService("Workspace")).Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	
		spawn(function()
			pcall(function()
				while wait(0.2) do
					if _G.Settings.Raid["Law Raid"] then
						if not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Microchip") and (not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Microchip")) and (not (game:GetService("Workspace")).Enemies:FindFirstChild("Order")) and (not (game:GetService("ReplicatedStorage")):FindFirstChild("Order")) then
							wait(0.3);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "1");
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2");
						end;
					end;
				end;
			end);
		end);
		spawn(function()
			pcall(function()
				while wait(0.2) do
					if _G.Settings.Raid["Law Raid"] then
						if not (game:GetService("Workspace")).Enemies:FindFirstChild("Order") and (not (game:GetService("ReplicatedStorage")):FindFirstChild("Order")) then
							if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Microchip") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Microchip") then
								fireclickdetector((game:GetService("Workspace")).Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
							end;
						end;
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Order") or (game:GetService("Workspace")).Enemies:FindFirstChild("Order") then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Order") then
								for h, i in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if i.Name == "Order" then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											Attack();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(i.HumanoidRootPart.CFrame * Pos);
											i.HumanoidRootPart.CanCollide = false;
											i.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											Attack();
										until not i.Parent or i.Humanoid.Health <= 0 or _G.Settings.Raid["Law Raid"] == false;
									end;
								end;
							elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Order") then
								topos(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875));
							end;
						end;
					end;
				end;
			end);
		end);

	spawn(function()
		while wait(0.2) do
			if _G.Settings.Shop["Auto Buy Legendary Sword"] then
				pcall(function()
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1");
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2");
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3");
				end);
			end;
		end;
	end);

	spawn(function()
		while wait(0.2) do
			pcall(function()
				local response = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1")
				if response then
					MOA_Status:SetDesc("Master of Auras Spawn!")
				else
					MOA_Status:SetDesc("Master of Auras Not Spawn!")
				end
			end)
		end
	end)
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Shop["Auto Buy Haki Color"] then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ColorsDealer", "2");
			end;
		end;
	end);

spawn(function()
    pcall(function()
        while wait(0.2) do
            if _G.Settings.Fruit["Auto Buy Random Fruit"] then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
            end
        end
    end)
end)

spawn(function()
    while wait(0.2) do
        pcall(function()
            if _G.Settings.Fruit["Auto Store Fruit"] then
                for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        CheckFruits()
                        for z, Res in pairs(ResultStoreFruits) do
                            if v.Name == Res then
                                local NameFruit = v.Name
                                local FirstNameFruit = string.gsub(v.Name, " Fruit", "")
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit) then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", FirstNameFruit .. "-" .. FirstNameFruit, game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit))
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)


spawn(function()
    while wait(2) do
        if _G.Settings.Fruit["Fruit Notification"] then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    WindUI:Notify({
                        Title = "PhantomFlux Notify",
                        Content = "Fruit : " .. v.Name,
                        Duration = 3,
                        Icon = "rbxassetid://128278170341835",
                    })
                end
            end
        end
    end
end)

spawn(function()
    while wait(0.2) do
        if _G.Settings.Fruit["Teleport To Fruit"] then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                end
            end
        end
    end
end)

spawn(function()
    while wait(0.2) do
        if _G.Settings.Fruit["Tween To Fruit"] then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    topos(v.Handle.CFrame)
                end
            end
        end
    end
end)

spawn(function()
    local acc02 = 0
    local acc1  = 0
    while true do
        local dt = task.wait() -- berjalan tiap frame
        acc02 += dt
        acc1  += dt

        -- =========================
        -- Full Moon (cek tiap frame)
        -- =========================
        pcall(function()
            local moonId = game:GetService("Lighting").Sky.MoonTextureId
            if moonId == "http://www.roblox.com/asset/?id=9709149431" then
                FM:SetDesc("🌕 Full Moon 100%")
            elseif moonId == "http://www.roblox.com/asset/?id=9709149052" then
                FM:SetDesc("🌖 Full Moon 75%")
            elseif moonId == "http://www.roblox.com/asset/?id=9709143733" then
                FM:SetDesc("🌗 Full Moon 50%")
            elseif moonId == "http://www.roblox.com/asset/?id=9709150401" then
                FM:SetDesc("🌘 Full Moon 25%")
            elseif moonId == "http://www.roblox.com/asset/?id=9709149680" then
                FM:SetDesc("🌘 Full Moon 15%")
            else
                FM:SetDesc("🌑 Full Moon 0%")
            end
        end)

        -- ======================================
        -- Blok-blok yang semula berjalan tiap 0.2s
        -- ======================================
        if acc02 >= 0.2 then
            acc02 = 0

            -- World3: Kitsune & Frozen
            pcall(function()
                if World3 then
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
                        KitsuneStatus:SetDesc("⛩️ Kitsune Island is Spawning")
                    else
                        KitsuneStatus:SetDesc("⛩️ Kitsune Island Not Spawn")
                    end

                    if game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
                        FrozenStatus:SetDesc("❄️ Frozen Dimension Spawning")
                    else
                        FrozenStatus:SetDesc("❄️ Frozen Dimension Not Spawn")
                    end
                end
            end)

            -- Mirage Island
            pcall(function()
                if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
                    MirageStatus:SetDesc("🏝️ Mirage Island is Spawning")
                else
                    MirageStatus:SetDesc("🏝️ Mirage Island Not Spawn")
                end
            end)

            -- Master of Auras (ColorsDealer)
            pcall(function()
                local response = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1")
                if response then
                    HakiDealer:SetDesc("🟢 Master Of Auras Spawning")
                else
                    HakiDealer:SetDesc("🔴 Master Of Auras Not Spawn")
                end
            end)

            -- Find Fruit
            pcall(function()
                local found = false
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        FindFruit:SetDesc("🍏 Find " .. v.Name)
                        found = true
                        break
                    end
                end
                if not found then
                    FindFruit:SetDesc("🍏 Nothing")
                end
            end)

            -- Server Job ID
            pcall(function()
                JobAiDee:SetDesc("Server Job ID : " .. game.JobId)
            end)

            -- No Clip
            pcall(function()
                if _G.Settings.LocalPlayer["No Clip"] then
                    local char = game.Players.LocalPlayer.Character
                    if char then
                        for _, v in pairs(char:GetDescendants()) do
                            if v:IsA("BasePart") or v:IsA("Part") then
                                v.CanCollide = false
                            end
                        end
                    end
                end
            end)

            -- Walk on Water (ubah tinggi air)
            pcall(function()
                local plane = game:GetService("Workspace").Map["WaterBase-Plane"]
                if _G.WalkWater then
                    plane.Size = Vector3.new(1000, 112, 1000)
                else
                    plane.Size = Vector3.new(1000, 80, 1000)
                end
            end)

            -- Infinite Soru
            pcall(function()
                if _G.Settings.LocalPlayer["Infinite Soru"] and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    for _, f in next, getgc() do
                        local char = game:GetService("Players").LocalPlayer.Character
                        if char and char:FindFirstChild("Soru") then
                            if typeof(f) == "function" and getfenv(f).script == char.Soru then
                                for i2, v2 in next, getupvalues(f) do
                                    if typeof(v2) == "table" then
                                        repeat
                                            wait(0.1)
                                            v2.LastUse = 0
                                        until not _G.Settings.LocalPlayer["Infinite Soru"] or char.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    end
                end
            end)

            -- Infinite Geppo
            pcall(function()
                if _G.Settings.LocalPlayer["Infinite Geppo"] then
                    for _, f in next, getgc() do
                        local char = game:GetService("Players").LocalPlayer.Character
                        if char and char:FindFirstChild("Geppo") then
                            if typeof(f) == "function" and getfenv(f).script == char.Geppo then
                                for i2, _ in next, getupvalues(f) do
                                    if tostring(i2) == "9" then
                                        repeat
                                            wait(0.1)
                                            setupvalue(f, i2, 0)
                                        until not _G.Settings.LocalPlayer["Infinite Geppo"] or char.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    end
                end
            end)

            -- Infinite Ability
            pcall(function()
                if _G.Settings.LocalPlayer["Infinite Ability"] then
                    InfAb()
                end
            end)

            -- Look Moon Ability (Race)
            pcall(function()
                if _G.Settings.Race and _G.Settings.Race["Look Moon Ability"] then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
            end)

            -- Active Race V4 (cek energi & tekan tombol)
            pcall(function()
                if _G.Settings.LocalPlayer["Active Race V4"] then
                    local char = game:GetService("Players").LocalPlayer.Character
                    if char and tonumber(char:WaitForChild("RaceEnergy").Value) == 1 then
                        if not char.RaceTransformed.Value then
                            local vim = game:GetService("VirtualInputManager")
                            vim:SendKeyEvent(true, "Y", false, game)
                            wait(0.1)
                            vim:SendKeyEvent(false, "Y", false, game)
                        end
                    end
                end
            end)
        end

        -- =========================
        -- Blok yang semula tiap 1s
        -- =========================
        if acc1 >= 1 then
            acc1 = 0
            pcall(function()
                if _G.Settings.LocalPlayer["Active Race V3"] then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
            end)
        end
    end
end)