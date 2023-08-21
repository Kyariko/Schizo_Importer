local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local Notification = require(ReplicatedStorage.Game.Notification).new

if game.Players.LocalPlayer.PlayerGui:GetChildren("Importer") then
    for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
        if v.Name == "Importer" then
             v:Destroy()
        end
    end
    Importer = game:GetObjects("rbxassetid://10635794622")[1]
else
    Importer = game:GetObjects("rbxassetid://10635794622")[1]
end

Notification({Text = "Car importer by DydyWasTaken and the help of Hazed_Mist, Enjoy :D",Duration = 4})

local Importer = game:GetObjects("rbxassetid://10635794622")[1]

Importer.Parent = game.Players.LocalPlayer.PlayerGui

if not isfile("schizo") then
    makefolder("schizo")
end

if not isfile("schizo/Models") then
    makefolder("schizo/Models")
end

if not isfile("schizo/Saves") then
    makefolder("schizo/Saves")
end

game:GetService("UserInputService").InputBegan:Connect(function(key)
    if key.KeyCode == Enum.KeyCode.U then
        if Importer.Enabled == false then
            Importer.Enabled = true
        else
            Importer.Enabled = false
        end
    end
end)

local GetLocalVehiclePacket = require(game:GetService("ReplicatedStorage").Vehicle.VehicleUtils).GetLocalVehiclePacket

local MarketPlaceService = game:GetService("MarketplaceService")

local Spoiler = false
local ActiveSpoiler = false
local Spoiler2Parts = false
local OverDrive = false
local Sound = false
local Rim = false
local Carbon = false

--Sizes:

local SFR
local SFL
local SRL
local SRR

--WheelThickness:

local TFR
local TFL
local TRL
local TRR

local function UpdateBools()
    if Spoiler == false then
        Importer.Main.Spoiler.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    else
        Importer.Main.Spoiler.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    end
    if ActiveSpoiler == false then
        Importer.Main.ActiveSpoiler.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    else
        Importer.Main.ActiveSpoiler.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    end
    if Spoiler2Parts == false then
        Importer.Main.Spoiler2Parts.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    else
        Importer.Main.Spoiler2Parts.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    end
    if OverDrive == false then
        Importer.Main.OverDrive.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    else
        Importer.Main.OverDrive.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    end
    if Sound == false then
        Importer.Main.Sound.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    else
        Importer.Main.Sound.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    end
    if Carbon == false then
        Importer.Main.Carbon.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    else
        Importer.Main.Carbon.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    end
    if Rim == false then
        Importer.Main.Rims.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    else
        Importer.Main.Rims.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    end
end

local httpservice = game:GetService("HttpService")

local the_table = {}

Importer.Main.Save.MouseButton1Click:Connect(function()
    Notification({Text = "Saved to slot "..Importer.Main.Slot.Text,Duration = 3}) 
        the_table = 
    {
    Spoiler,
    ActiveSpoiler,
    Spoiler2Parts,
    OverDrive,
    Sound,
    Carbon,
    Importer.Main.FRSize.Text,
    Importer.Main.FLSize.Text,
    Importer.Main.RLSize.Text,
    Importer.Main.RRSize.Text,
    Importer.Main.FRThickness.Text,
    Importer.Main.FLThickness.Text,
    Importer.Main.RLThickness.Text,
    Importer.Main.RRThickness.Text,
    Importer.Main.CarID.Text,
    Importer.Main.Handling.Text,
    Importer.Main.Height.Text,
    Importer.Main.SoundID.Text,
    Importer.Main.Speed.Text,
    Importer.Main.RimID.Text,
    Rim
    }
    local name = "schizo/Saves/Preset"..Importer.Main.Slot.Text..".txt"
    writefile(name,httpservice:JSONEncode(the_table))
end)

local function Assign(tbl,Preset)
    Spoiler = tbl[1]
    ActiveSpoiler = tbl[2]
    Spoiler2Parts = tbl[3]
    OverDrive = tbl[4]
    Sound = tbl[5]
    Carbon = tbl[6]
    SFR = tonumber(tbl[7])
    SFL = tonumber(tbl[8])
    SRL = tonumber(tbl[9])
    SRR = tonumber(tbl[10])
    TFR = tonumber(tbl[11])
    TFL = tonumber(tbl[12])
    TRL = tonumber(tbl[13])
    TRR = tonumber(tbl[14])
    Id = tonumber(tbl[15])
    Handling = tonumber(tbl[16])
    Height = tonumber(tbl[17])
    SoundID = tonumber(tbl[18])
    SpeedEngine = tonumber(tbl[19])
    Importer.Main.FRSize.Text = tbl[7]
    Importer.Main.FLSize.Text = tbl[8]
    Importer.Main.RLSize.Text = tbl[9]
    Importer.Main.RRSize.Text = tbl[10]
    Importer.Main.FRThickness.Text = tbl[11]
    Importer.Main.FLThickness.Text = tbl[12]
    Importer.Main.RLThickness.Text = tbl[13]
    Importer.Main.RRThickness.Text = tbl[14]
    Importer.Main.CarID.Text = tbl[15]
    Importer.Main.Handling.Text = tbl[16]
    Importer.Main.Height.Text = tbl[17]
    Importer.Main.SoundID.Text = tbl[18]
    Importer.Main.Speed.Text = tbl[19]
    Importer.Main.RimID.Text = tbl[20]
    Rim = tbl[21]
    Notification({Text = "Loaded Preset "..Preset,Duration = 0.7}) 
    UpdateBools()
end

Importer.Main.Load.MouseButton1Click:Connect(function()
    local tbl = httpservice:JSONDecode(readfile("schizo/Saves/Preset"..Importer.Main.Slot.Text..".txt"))
    Assign(tbl,tonumber(Importer.Main.Slot.Text))
end)

Importer.Main.Spoiler.MouseButton1Click:Connect(function()
    if Spoiler == false then
        Spoiler = true
        Importer.Main.Spoiler.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    else
        Spoiler = false
        Importer.Main.Spoiler.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    end
end)

Importer.Main.Spoiler2Parts.MouseButton1Click:Connect(function()
    if Spoiler2Parts == false then
        Spoiler2Parts = true
        Importer.Main.Spoiler2Parts.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    else
        Spoiler2Parts = false
        Importer.Main.Spoiler2Parts.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    end
end)

Importer.Main.ActiveSpoiler.MouseButton1Click:Connect(function()
    if ActiveSpoiler == false then
        ActiveSpoiler = true
        Importer.Main.ActiveSpoiler.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    else
        ActiveSpoiler = false
        Importer.Main.ActiveSpoiler.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    end
end)

Importer.Main.OverDrive.MouseButton1Click:Connect(function()
    if OverDrive == false then
        OverDrive = true
        Importer.Main.OverDrive.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    else
        OverDrive = false
        Importer.Main.OverDrive.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    end
end)

Importer.Main.Sound.MouseButton1Click:Connect(function()
    if Sound == false then
        Sound = true
        Importer.Main.Sound.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    else
        Sound = false
        Importer.Main.Sound.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    end
end)

Importer.Main.Carbon.MouseButton1Click:Connect(function()
    if Carbon == false then
        Carbon = true
        Importer.Main.Carbon.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    else
        Carbon = false
        Importer.Main.Carbon.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    end
end)

Importer.Main.Rims.MouseButton1Click:Connect(function()
    if Rim == false then
        Rim = true
        Importer.Main.Rims.TextColor3 = Color3.new(0.478431, 0.784314, 0.478431) 
    else
        Rim = false
        Importer.Main.Rims.TextColor3 = Color3.new(0.784314, 0.478431, 0.478431)
    end
end)

local function toVector3(String, Separator)
    local Separator = Separator or ','
    local axes = {}
    for axis in String:gmatch('[^'..Separator..']+') do
        axes[#axes + 1] = axis
    end
    return Vector3.new(axes[1],axes[2],axes[3])
end

local function ImportCar()
    local Id = Importer.Main.CarID.Text
    if Id == "" then
        return
    end
    local RimID = Importer.Main.RimID.Text
    if isfile("schizo/Models/"..Importer.Main.CarID.Text..".rbxm") then
        if (KRNL_LOADED and "Krnl") then
            Model = game:GetObjects(getcustomasset("schizo/Models/"..Importer.Main.CarID.Text..".rbxm" ))[1]
        else
            Model = game:GetObjects(getsynasset("schizo/Models/"..Importer.Main.CarID.Text..".rbxm" ))[1]
        end
    else
        Model = game:GetObjects("rbxassetid://" .. Importer.Main.CarID.Text)[1]
    end
	
    local RealModel = GetLocalVehiclePacket().Model
    SFR = tonumber(Importer.Main.FRSize.Text)
    SFL = tonumber(Importer.Main.FLSize.Text)
    SRL = tonumber(Importer.Main.RLSize.Text)
    SRR = tonumber(Importer.Main.RRSize.Text)
    TFR = tonumber(Importer.Main.FRThickness.Text)
    TFL = tonumber(Importer.Main.FLThickness.Text)
    TRL = tonumber(Importer.Main.RLThickness.Text)
    TRR = tonumber(Importer.Main.RRThickness.Text)
    Handling = tonumber(Importer.Main.Handling.Text)
    Height = tonumber(Importer.Main.Height.Text)
    SpeedEngine = tonumber(Importer.Main.Speed.Text)
    local CustomCam = true
    local Speed
    local RevTurbine
    
    if Model:FindFirstChild("Interior1") and RealModel.Model:FindFirstChild("Interior") then
		local Models = {}
		
		local AlexChassis = require(ReplicatedStorage.Module.AlexChassis)
		local UpdateStepped = AlexChassis.UpdateStepped
		AlexChassis.UpdateStepped = function(Packet)
		    if rawget(Models, Packet.Model) then
			Packet = {
			    IK = Packet.IK,
				RotY = Packet.RotY,
			    WeldSteer = Packet.WeldSteer,
			    SteerOffset = Packet.SteerOffset,
			    Model = rawget(Models, Packet.Model)
			}
		    end
		    UpdateStepped(Packet)
		end
		Models[RealModel] = Model
	end
    Notification({Text = "Car Imported: "..Model.Name,Duration = 3}) 
    RealModel.Model.Windows.Size = Vector3.new(0.01,0.01,0.01)
    RealModel.Model.Windows.Position = RealModel.Seat.Position
    Model.Windows.Reflectance = 0.2
    for i,v in next, RealModel.Model:GetDescendants() do
        if v:IsA("Part") or v:IsA("MeshPart") then
            if v.Name ~= "Windows" then
                if v.Name == "Rim" or v.Name == "Wheel" then
                    v.Transparency = 0
                else
                    v.Transparency = 1
                end
            end
        end
    end
    Model.Parent = RealModel
    Model:SetPrimaryPartCFrame(RealModel.PrimaryPart.CFrame)

    SeatOffset = Vector3.new(Model.Seat.Position - RealModel.Seat.Position)

    local function AssignPosition(WheelName)
        local c = Model.Wheels[WheelName].Position
        return c
    end

    for i,v in next, RealModel:GetDescendants() do
        if v.Name == "Thrust" then
            for i,w in pairs(v:GetDescendants()) do
                if w.Name == "Motor" then
                    if w.Part0.Parent.Name == "WheelFrontRight" then
                        v.Position = AssignPosition(w.Part0.Parent.Name)
                    elseif w.Part0.Parent.Name == "WheelFrontLeft" then
                        v.Position = AssignPosition(w.Part0.Parent.Name)
                    elseif w.Part0.Parent.Name == "WheelBackLeft" then
                        v.Position = AssignPosition(w.Part0.Parent.Name)
                    elseif w.Part0.Parent.Name == "WheelBackRight" then
                        v.Position = AssignPosition(w.Part0.Parent.Name)
                    end
                end
            end
        end
    end

    if ActiveSpoiler == true then
        for i,v in pairs(RealModel.Preset.Wing:GetDescendants()) do
            if v:IsA("Part") or v:IsA("MeshPart") then
                v.Transparency = 1
            end
        end
    end

    RealModel.Model.Body.Position = RealModel.Model.Body.CFrame * Vector3.new(0,1,0)

    if Model:FindFirstChild("Interior1") and RealModel.Model:FindFirstChild("Interior") then
        RealModel.InsideCamera.Position = Model.InsideCamera.Position
        RealModel.Seat.Position = Model.Seat.Position - Vector3.new(0,1,0)
        RealModel.Passenger.Position = Model.Passenger.Position - Vector3.new(0,1,0)
    end

    if Model:FindFirstChild("BrakeLights") then
        local BrakeLightColor = Model.BrakeLights.Color
    end

    RealModel.Model.plate.Decal.Transparency, RealModel.Model.plate.SurfaceGui.Enabled = 1, false

    local OGFR = RealModel.Preset.WheelFrontRight.Wheel.Size + Vector3.new(TFR,SFR,SFR)
    local OGFR2 = RealModel.Preset.WheelFrontRight.Rim.Size + Vector3.new(TFR*0.99,SFR*0.75,SFR*0.75)
    local OGFL = RealModel.Preset.WheelFrontLeft.Wheel.Size + Vector3.new(TFL,SFL,SFL)
    local OGFL2 = RealModel.Preset.WheelFrontLeft.Rim.Size + Vector3.new(TFL*0.99,SFL*0.75,SFL*0.75)
    local OGRL = RealModel.Preset.WheelBackLeft.Wheel.Size + Vector3.new(TRL,SRL,SRL)
    local OGRL2 = RealModel.Preset.WheelBackLeft.Rim.Size + Vector3.new(TRL*0.99,SRL*0.75,SRL*0.75)
    local OGRR = RealModel.Preset.WheelBackRight.Wheel.Size + Vector3.new(TRR,SRR,SRR)
    local OGRR2 = RealModel.Preset.WheelBackRight.Rim.Size + Vector3.new(TRR*0.99,SRR*0.75,SRR*0.75)

	if RealModel.Model:FindFirstChild("Plate") and Model:FindFirstChild("Plate") then
	    RealModel.Model.Plate.Position = Model.Plate.Position
    	RealModel.Model.plate.Orientation = Model.Plate.Orientation
	end

    Workspace.CurrentCamera.CameraSubject = RealModel.Model.Body
    local Spoiler1Pos
	local Spoiler2Pos
	local SteerPos = CFrame.new()
	local SteerPos2 = CFrame.new()
    if Model:FindFirstChild("Interior1") and RealModel.Model:FindFirstChild("Interior") then
	    SteerPos = Model.Engine.CFrame:ToObjectSpace(Model.Steer.CFrame)
	    SteerPos2 = Model.Engine.CFrame:ToObjectSpace(Model.SteeringWheel.PrimaryPart.CFrame)
    end

    if ActiveSpoiler == true then
        Spoiler1Pos = Model.Engine.CFrame:ToObjectSpace(Model.Spoiler1.CFrame)
        if Spoiler2Parts == true then
            Spoiler2Pos = Model.Engine.CFrame:ToObjectSpace(Model.Spoiler2.CFrame)
        end
    end

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local humanoidRootPart = LocalPlayer.Character:WaitForChild("Humanoid")

    local Bool
    local Controls = game.Players.LocalPlayer.PlayerGui.AppUI.Controls 
    local Speed

    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.P then
            Bool = not Bool
            local ControlsEnabled = game.Players.LocalPlayer.PlayerGui.AppUI:FindFirstChild("Controls")
            local SpeedometerEnabled = game.Players.LocalPlayer.PlayerGui.AppUI:FindFirstChild("Speedometer")
            game.Players.LocalPlayer.PlayerGui.LevelGui2.Enabled = Bool
            game.Players.LocalPlayer.PlayerGui.AppUI.Buttons.Visible = Bool
            if SpeedometerEnabled ~= nil then
                game.Players.LocalPlayer.PlayerGui.AppUI.Speedometer.Visible = true
                game.Players.LocalPlayer.PlayerGui.AppUI.Speedometer.Top.Plate.Visible = Bool
                game.Players.LocalPlayer.PlayerGui.AppUI.Speedometer.Top.Lock.Visible = Bool  
                game.Players.LocalPlayer.PlayerGui.HotbarGui.Enabled = false
                game.Players.LocalPlayer.PlayerGui.AppUI.Speedometer.UIStroke.Color = Color3.new(255,255,255)
                game.Players.LocalPlayer.PlayerGui.AppUI.Speedometer.Bottom.Line0.BackgroundColor3 = Color3.new(255,255,255)
                game.Players.LocalPlayer.PlayerGui.AppUI.Speedometer.Bottom.Line1.BackgroundColor3 = Color3.new(255,255,255)
                game:GetService("Players").LocalPlayer.PlayerGui.AppUI.Speedometer.Bottom.NitroBar.Inner.Value.UIGradient.Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0, Color3.new(0,0.6,1)),
                    ColorSequenceKeypoint.new(1, Color3.new(0, 0.7, 1))
                }
                Speed = game.Players.LocalPlayer.PlayerGui.AppUI.Speedometer.Top.Speed.Text
            else
                game.Players.LocalPlayer.PlayerGui.HotbarGui.Enabled = Bool
            end
            if ControlsEnabled ~= nil then
                game.Players.LocalPlayer.PlayerGui.AppUI.Controls.Visible = Bool   
            end
            game.Players.LocalPlayer.PlayerGui.WorldMarkersGui.Enabled = Bool
            game.CoreGui.ThemeProvider.Enabled = Bool
        end
    end)

    for _,v in pairs(Model:GetDescendants()) do
        if v.Name == "Carbon" then
            v.Material = Enum.Material.Plastic
            v.MaterialVariant = "CarbonFiber"
            v.Color = Color3.new(0.4,0.4,0.4)
        end
    end

    local Camera = workspace.CurrentCamera

    local Players = game:GetService("Players")
     
    local localPlayer = Players.LocalPlayer

    for _,v in pairs(Model:GetDescendants()) do
        if v.Parent == Model and v.Name ~= "Engine" and v.Name ~= "Steer" and (v:IsA("BasePart") or v:IsA("MeshPart")) then
            local Weld = Instance.new("WeldConstraint")
            Weld.Parent = v
            Weld.Part0 = v
            Weld.Part1 = Model.PrimaryPart
        end
    end

    if Sound == true then
        local Table = Importer.Main.SoundID.Text

        local SOUND = Table:split(',')

        local Custom = {"rbxassetid://"..SOUND[1],"rbxassetid://"..SOUND[2],"rbxassetid://"..SOUND[3],"rbxassetid://"..SOUND[4],"rbxassetid://"..SOUND[5]}

        local Volume = 10
        for i,v in pairs(require(game:GetService("ReplicatedStorage").Vehicle.VehicleUtils).GetLocalVehiclePacket().Model.Engine:GetDescendants()) do
            if v:IsA("Sound") then
                current = string.match(v.SoundId, "%d+$")
                local success, asset = pcall(MarketPlaceService.GetProductInfo,MarketPlaceService,current)
                if asset.Name == "F40ex_offlow" or asset.Name == "NEW_MuscleOfflow" then
                    v.SoundId = Custom[1] 
                end
                if asset.Name == "F40ex_onhigh" or asset.Name == "muscle_onhigh" then
                    v.SoundId = Custom[5] 
                end
                if asset.Name == "F40ex_onlow" or asset.Name == "muscle_onlow" then
                    v.SoundId = Custom[3] 
                end
                if asset.Name == "F40ex_idle" then
                    v.SoundId = Custom[2] 
                elseif asset.Name == "muscle_idle" then
                    v.SoundId = Custom[2]
                elseif asset.Name == "electric_loop_v2" then
                    v.SoundId = Custom[4] 
                end
                if asset.Name == "NEW_F40Mid2" or asset.Name == "muscle_onmid" then
                    v.SoundId = Custom[4]
                end
            end
        end
    end

    function AssignRim(ImportedRim,OriginalRim,WheelModel)
        if RealModel.Preset[tostring(WheelModel)]:FindFirstChild(ImportedRim) == nil then
            local RimClonedFunction
            if isfile("schizo/Models/"..ImportedRim..".rbxm") then
                RimClonedFunction = game:GetObjects(getsynasset("schizo/Models/"..ImportedRim..".rbxm" ))[1]
            else
                RimClonedFunction = game:GetObjects("rbxassetid://" .. ImportedRim)[1]
            end
            RimClonedFunction.Parent = RealModel.Preset[tostring(WheelModel)]
        end
        WheelModel[ImportedRim].PrimaryPart.CFrame = OriginalRim.CFrame
        WheelModel[ImportedRim].PrimaryPart.Size = OriginalRim.Size
        WheelModel[ImportedRim].PrimaryPart.BrickColor = OriginalRim.BrickColor
        OriginalRim.Transparency = 1
    end

    if Model:FindFirstChild("Interior1") and RealModel.Model:FindFirstChild("Interior") then
        RealModel.Model.Interior:GetPropertyChangedSignal("Color"):Connect(function()
            Model.Interior1.BrickColor  = BrickColor.new(RealModel.Model.Interior.Color)
        end)
    end
    if Model:FindFirstChild("Interior2") and RealModel.Model:FindFirstChild("SecondInterior") then
        RealModel.Model.SecondInterior:GetPropertyChangedSignal("Color"):Connect(function()
            Model.Interior2.BrickColor = BrickColor.new(RealModel.Model.SecondInterior.Color)
	    if Model.SteeringWheel:FindFirstChild("Interior2") then
		Model.SteeringWheel.Interior2.BrickColor = BrickColor.new(RealModel.Model.SecondInterior.Color)
	    end
        end)
    end

    RealModel.Model.Body:GetPropertyChangedSignal("Color"):Connect(function()
        Model.Body1.BrickColor, Model.Body1.Reflectance, Model.Body1.Material, Model.Body1.TextureID = BrickColor.new(RealModel.Model.Body.Color), RealModel.Model.Body.Reflectance, RealModel.Model.Body.Material, RealModel.Model.Body.TextureID
        if Carbon then
            Model.Body1.Material = Enum.Material.Plastic
            Model.Body1.MaterialVariant = "CarbonFiber"
        end
    end)

    if Model:FindFirstChild("Body2") and RealModel.Model:FindFirstChild("SecondBody") then
        RealModel.Model.SecondBody:GetPropertyChangedSignal("Color"):Connect(function()
            Model.Body2.BrickColor, Model.Body2.Reflectance, Model.Body2.Material, Model.Body2.TextureID = BrickColor.new(RealModel.Model.SecondBody.Color), RealModel.Model.SecondBody.Reflectance, RealModel.Model.SecondBody.Material, RealModel.Model.SecondBody.TextureID
            if Carbon then
                Model.Body2.Material = Enum.Material.Plastic
                game.MaterialService["CarbonFiber"].StudsPerTile = 0.5
                Model.Body2.MaterialVariant = "CarbonFiber"
            end
        end)
    end
    RealModel.Model.Headlights:GetPropertyChangedSignal("Material"):Connect(function()
        Model.HeadLights.Material = RealModel.Model.Headlights.Material
    end)

    RealModel.Model.Headlights:GetPropertyChangedSignal("BrickColor"):Connect(function()
        Model.HeadLights.BrickColor = BrickColor.new(RealModel.Model.Headlights.Color)
    end)

    local connection
    connection = game:GetService("RunService").RenderStepped:Connect(function()

        if GetLocalVehiclePacket() ~= nil then
		    
            RealModel = GetLocalVehiclePacket().Model
		    GetLocalVehiclePacket().Height = Height
		    GetLocalVehiclePacket().TurnSpeed = Handling
		    GetLocalVehiclePacket().GarageEngineSpeed = SpeedEngine
	        --speed Calculator not by Dydy------------
	
	    	local LocalPlayer = game:GetService("Players").LocalPlayer
	    	local humanoidRootPart = LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	    	local lookVector = humanoidRootPart.CFrame.LookVector
	    	local characterVelocity = humanoidRootPart.Velocity
	    	local resolvedVector = math.ceil(lookVector:Dot(characterVelocity)/lookVector.Magnitude)
	        
	        ------------------------------------------
		if Model:FindFirstChild("Interior1") and RealModel.Model:FindFirstChild("Interior") then
		        local SteerComponets = table.pack(Model.Engine.CFrame:ToObjectSpace(RealModel.Steer.CFrame):GetComponents())
		        local SteerComponets2 = table.pack(Model.Engine.CFrame:ToObjectSpace(RealModel.Model.SteeringWheel.CFrame):GetComponents())
		        SteerComponets[1] = SteerPos.X
		        SteerComponets[2] = SteerPos.Y
		        SteerComponets[3] = SteerPos.Z
		        SteerComponets2[1] = SteerPos2.X
		        SteerComponets2[2] = SteerPos2.Y 
		        SteerComponets2[3] = SteerPos2.Z
		        Model.Steer.CFrame = Model.Engine.CFrame:ToWorldSpace(CFrame.new(table.unpack(SteerComponets))) --* CFrame.Angles(0, math.rad(90), math.rad(90))
		        Model.SteeringWheel.PrimaryPart.CFrame = Model.Engine.CFrame:ToWorldSpace(CFrame.new(table.unpack(SteerComponets2)))-- * CFrame.Angles(0, math.rad(90), 0)
		end
	        if RealModel:FindFirstChild("Engine") then

	            Model.Windows.Transparency = RealModel.Model.Windows.Transparency
	            Model.Windows.BrickColor = BrickColor.new(RealModel.Model.Windows.Color)
	
	            if resolvedVector < 0 then
	                if RealModel.Model.Body:FindFirstChild("Brakelights") then
	                    RealModel.Model.Body.Brakelights.SpotLight.Color = Color3.fromRGB(255,255,255)
	                end
	                if Model:FindFirstChild("BrakeLights")  then
	                    if Model:FindFirstChild("BrakeLights2")  then
	                        Model.BrakeLights2.Material = Enum.Material.Neon
	                        Model.BrakeLights.Material = Enum.Material.SmoothPlastic
	                    else
	                        Model.BrakeLights.Material = Enum.Material.Neon
	                        Model.BrakeLights.BrickColor = BrickColor.new(255,255,255)
	                    end   
	                end
	            else
	                if RealModel.Model.Body:FindFirstChild("Brakelights") then
	                    Model.Brakelights.SpotLight.Color = Color3.fromRGB(255, 0, 0)
	                end
	                if Model:FindFirstChild("BrakeLights") and RealModel.Model:FindFirstChild("Brakelights") then
	                    Model.BrakeLights.Material = RealModel.Model.Brakelights.Material
	                    if Model:FindFirstChild("BrakeLights2") then
	                        Model.BrakeLights2.Material = Enum.Material.SmoothPlastic
	                    else
	                        Model.BrakeLights.BrickColor = BrickColor.new(41)
	                    end
	                end
	
	            end
	            if RealModel.Name ~= nil then
	                if OverDrive == true then
	                    if tonumber(Speed) >= 170 then
	                        Model.Turbine.Fire.Enabled = true
	                        Model.Turbine.Smoke.Enabled = true
	                   else
	                       Model.Turbine.Fire.Enabled = false
	                       Model.Turbine.Smoke.Enabled = false
	                   end
	                end
                    
                    if RealModel.Preset.WheelFrontRight:FindFirstChild("Rim") then
                        RealModel.Preset.WheelFrontRight.Wheel.Size = OGFR
                        RealModel.Preset.WheelFrontRight.Rim.Size = OGFR2
                        RealModel.Preset.WheelFrontLeft.Wheel.Size = OGFL
                        RealModel.Preset.WheelFrontLeft.Rim.Size = OGFL2
                        RealModel.Preset.WheelBackLeft.Wheel.Size = OGRL
                        RealModel.Preset.WheelBackLeft.Rim.Size = OGRL2
                        RealModel.Preset.WheelBackRight.Wheel.Size = OGRR
                        RealModel.Preset.WheelBackRight.Rim.Size = OGRR2
			if Rim then
                            AssignRim(Importer.Main.RimID.Text,RealModel.Preset.WheelFrontRight.Rim,RealModel.Preset.WheelFrontRight)
                            AssignRim(Importer.Main.RimID.Text,RealModel.Preset.WheelFrontLeft.Rim,RealModel.Preset.WheelFrontLeft)
                            AssignRim(Importer.Main.RimID.Text,RealModel.Preset.WheelBackLeft.Rim,RealModel.Preset.WheelBackLeft)
                            AssignRim(Importer.Main.RimID.Text,RealModel.Preset.WheelBackRight.Rim,RealModel.Preset.WheelBackRight)
                        end
                    end

	                if Spoiler == true then
	                    Model.Spoiler1.BrickColor, Model.Spoiler1.Reflectance, Model.Spoiler1.Material = BrickColor.new(RealModel.Model.Body.Color), RealModel.Model.Body.Reflectance, RealModel.Model.Body.Material
	                    if ActiveSpoiler == true then
	                        if Spoiler2Parts == true then
	                            local SpoilerComponets = table.pack(Model.Engine.CFrame:ToObjectSpace(RealModel.Preset.Wing.PrimaryPart.CFrame):GetComponents())
	                            SpoilerComponets[1] = Spoiler1Pos.X
	                            SpoilerComponets[3] = Spoiler1Pos.Z
	                            Model.Spoiler1.CFrame = Model.Engine.CFrame:ToWorldSpace(CFrame.new(table.unpack(SpoilerComponets))) * CFrame.Angles(0, math.rad(90), 0) * CFrame.new(0, -0.21, 0)
	                            local SpoilerComponets2 = table.pack(Model.Engine.CFrame:ToObjectSpace(RealModel.Preset.Wing.PrimaryPart.CFrame):GetComponents())
	                            SpoilerComponets2[1] = Spoiler2Pos.X
	                            SpoilerComponets2[3] = Spoiler2Pos.Z            
	                            Model.Spoiler2.CFrame = Model.Engine.CFrame:ToWorldSpace(CFrame.new(table.unpack(SpoilerComponets2))) * CFrame.Angles(0, math.rad(90), 0) * CFrame.new(0, -1.151, 0)
	                        else
	                            local SpoilerComponets = table.pack(Model.Engine.CFrame:ToObjectSpace(RealModel.Preset.Wing.PrimaryPart.CFrame):GetComponents())
	                            SpoilerComponets[1] = Spoiler1Pos.X
	                            SpoilerComponets[2] = Spoiler1Pos.Y
	                            SpoilerComponets[3] = Spoiler1Pos.Z
	                            Model.Spoiler1.CFrame = Model.Engine.CFrame:ToWorldSpace(CFrame.new(table.unpack(SpoilerComponets))) * CFrame.Angles(0, math.rad(90), 0)
	                        end
	                    end
	                end
	                Model:SetPrimaryPartCFrame(RealModel.PrimaryPart.CFrame)
	            end
	        end
        end
    end)
end

Importer.Main.Import.MouseButton1Click:Connect(ImportCar)
