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
    Importer = game:GetObjects("rbxassetid://14421297677")[1]
else
    Importer = game:GetObjects("rbxassetid://14421297677")[1]
end

Notification({Text = "Car importer by DydyWasTaken and the help of Hazed_Mist, Enjoy :D",Duration = 4})

local Importer = game:GetObjects("rbxassetid://14421297677")[1]

Importer.Parent = game.Players.LocalPlayer.PlayerGui

game:GetService("UserInputService").InputBegan:Connect(function(key)
    if key.KeyCode == Enum.KeyCode.U then
        if Importer.Enabled == false then
            Importer.Enabled = true
        else
            Importer.Enabled = false
        end
    end
end)

local MarketPlaceService = game:GetService("MarketplaceService")

local Spoiler = false
local Sound = false
local Rim = false
local Carbon = false
local Height

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
    Importer.Main.SoundID.Text,
    Importer.Main.RimID.Text,
    Rim,
    Height
    }
    local name = "PresetMulti"..Importer.Main.Slot.Text..".txt"
    writefile(name,httpservice:JSONEncode(the_table))
end)

local function Assign(tbl,Preset)
    Spoiler = tbl[1]
    Sound = tbl[2]
    Carbon = tbl[3]
    SFR = tonumber(tbl[4])
    SFL = tonumber(tbl[5])
    SRL = tonumber(tbl[6])
    SRR = tonumber(tbl[7])
    TFR = tonumber(tbl[8])
    TFL = tonumber(tbl[9])
    TRL = tonumber(tbl[10])
    TRR = tonumber(tbl[11])
    Id = tonumber(tbl[12])
    SoundID = tonumber(tbl[13])
    Height = tonumber(tbl[14])
    Importer.Main.FRSize.Text = tbl[4]
    Importer.Main.FLSize.Text = tbl[5]
    Importer.Main.RLSize.Text = tbl[6]
    Importer.Main.RRSize.Text = tbl[7]
    Importer.Main.FRThickness.Text = tbl[8]
    Importer.Main.FLThickness.Text = tbl[9]
    Importer.Main.RLThickness.Text = tbl[10]
    Importer.Main.RRThickness.Text = tbl[11]
    Importer.Main.CarID.Text = tbl[12]
    Importer.Main.SoundID.Text = tbl[13]
    Importer.Main.RimID.Text = tbl[14]
    Rim = tbl[15]
    Importer.Main.Height.Text = tbl[16]
    Notification({Text = "Loaded Preset "..Preset,Duration = 0.7}) 
    UpdateBools()
end

Importer.Main.Load.MouseButton1Click:Connect(function()
    local tbl = httpservice:JSONDecode(readfile("PresetMulti"..Importer.Main.Slot.Text..".txt"))
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

local function toVector3(String, Separator)
    local Separator = Separator or ','
    local axes = {}
    for axis in String:gmatch('[^'..Separator..']+') do
        axes[#axes + 1] = axis
    end
    return Vector3.new(axes[1],axes[2],axes[3])
end

local CurrentCars = {}

local function ImportCar()

    local RealModel = nil
    
    local Id = Importer.Main.CarID.Text
    if Id == "" then
        return
    end
    local RimID = Importer.Main.RimID.Text
    if isfile("Models/"..Importer.Main.CarID.Text..".rbxm") then
        Model = game:GetObjects(getsynasset("Models/"..Importer.Main.CarID.Text..".rbxm" ))[1]
    else
        Model = game:GetObjects("rbxassetid://" .. Importer.Main.CarID.Text)[1]
    end

    Model.Name = "Custom_Model"
    local NameAssigned = Instance.new("ObjectValue")
    NameAssigned.Name = "NameAssigned"
    NameAssigned.Parent = Model

    for i,PlayerCar in ipairs(game.Workspace.Vehicles:GetDescendants()) do
        if PlayerCar:IsA("Model") and PlayerCar.Name ~= "Custom_Model" then
            if PlayerCar:FindFirstChild("Engine") and PlayerCar:FindFirstChild("Seat") then
                if PlayerCar.Seat.PlayerName.Value == Importer.Main.Players.Text then
                    NameAssigned.Value = PlayerCar
                end
            end
        end
    end

    RealModel = NameAssigned.Value

    local ActualCar = {RealModel,Model}

    table.insert(CurrentCars,ActualCar)

    SFR = tonumber(Importer.Main.FRSize.Text)
    SFL = tonumber(Importer.Main.FLSize.Text)
    SRL = tonumber(Importer.Main.RLSize.Text)
    SRR = tonumber(Importer.Main.RRSize.Text)
    TFR = tonumber(Importer.Main.FRThickness.Text)
    TFL = tonumber(Importer.Main.FLThickness.Text)
    TRL = tonumber(Importer.Main.RLThickness.Text)
    TRR = tonumber(Importer.Main.RRThickness.Text)
    local CustomCam = true
    local Speed
    local RevTurbine
    Models[RealModel] = Model
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
    Model:SetPrimaryPartCFrame(RealModel.PrimaryPart.CFrame * CFrame.new(0,Height,0))

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

    RealModel.Model.plate.Position = Model.plate.Position
    RealModel.Model.plate.Orientation = Model.plate.Orientation

    local SteerPos = Model.Engine.CFrame:ToObjectSpace(Model.Steer.CFrame)
    local SteerPos2 = Model.Engine.CFrame:ToObjectSpace(Model.SteeringWheel.PrimaryPart.CFrame)

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local humanoidRootPart = LocalPlayer.Character:WaitForChild("Humanoid")

    local Bool
    local Controls = game.Players.LocalPlayer.PlayerGui.AppUI.Controls 
    local Speed

    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.P then
            Bool = not Bool
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
        if (v:IsA("BasePart") or v:IsA("MeshPart")) and (not v:IsA("Model")) then
            v.Anchored = false
            local Weld = Instance.new("WeldConstraint")
            Weld.Parent = v
            Weld.Part0 = v
            Weld.Part1 = Model.PrimaryPart
        end
    end

    local WeldEngine = Instance.new("WeldConstraint")
    WeldEngine.Parent = Model
    WeldEngine.Part0 = Model.PrimaryPart
    WeldEngine.Part1 = RealModel.PrimaryPart

    if Sound == true then
        local Table = Importer.Main.SoundID.Text

        local SOUND = Table:split(',')

        local Custom = {"rbxassetid://"..SOUND[1],"rbxassetid://"..SOUND[2],"rbxassetid://"..SOUND[3],"rbxassetid://"..SOUND[4],"rbxassetid://"..SOUND[5]}

        local Volume = 10
        for i,v in pairs(RealModel.Engine:GetDescendants()) do
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

    if Model.Preset:FindFirstChild("Wing") then
        Model.Preset.Wing:Destroy()
    end

    if Model.Preset:FindFirstChild("DoorLeft") then
        Model.Preset.DoorLeft:Destroy()
    end

    if Model.Preset:FindFirstChild("DoorRight") then
        Model.Preset.DoorRight:Destroy()
    end

    Model.Body1.BrickColor, Model.Body1.Reflectance, Model.Body1.Material, Model.Body1.TextureID = BrickColor.new(RealModel.Model.Body.Color), RealModel.Model.Body.Reflectance, RealModel.Model.Body.Material, RealModel.Model.Body.TextureID
    if Model:FindFirstChild("Body2") and RealModel.Model:FindFirstChild("SecondBody") then
        Model.Body2.BrickColor, Model.Body2.Reflectance, Model.Body2.Material, Model.Body2.TextureID = BrickColor.new(RealModel.Model.SecondBody.Color), RealModel.Model.SecondBody.Reflectance, RealModel.Model.SecondBody.Material, RealModel.Model.SecondBody.TextureID
        if Carbon then
            Model.Body2.Material = Enum.Material.Plastic
            game.MaterialService["CarbonFiber"].StudsPerTile = 0.5
            Model.Body2.MaterialVariant = "CarbonFiber"
        end
    else
        if Carbon then
            Model.Body1.Material = Enum.Material.Plastic
            Model.Body1.MaterialVariant = "CarbonFiber"
        end
    end
    Model.HeadLights.Material = RealModel.Model.Headlights.Material
    Model.HeadLights.BrickColor = BrickColor.new(RealModel.Model.Headlights.Color)

    if Model:FindFirstChild("Interior1") and RealModel.Model:FindFirstChild("Interior") then
        Model.Interior1.BrickColor  = BrickColor.new(RealModel.Model.Interior.Color)
    end
    if Model:FindFirstChild("Interior2") and RealModel.Model:FindFirstChild("SecondInterior") then
        Model.Interior2.BrickColor = BrickColor.new(RealModel.Model.SecondInterior.Color)
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
            function AssignRim(ImportedRim,OriginalRim,WheelModel)
                if RealModel.Preset[tostring(WheelModel)]:FindFirstChild(ImportedRim) == nil then
                    local RimClonedFunction
                    if isfile("Models/"..ImportedRim..".rbxm") then
                        RimClonedFunction = game:GetObjects(getsynasset("Models/"..ImportedRim..".rbxm" ))[1]
                    else
                        RimClonedFunction = game:GetObjects("rbxassetid://" .. ImportedRim)[1]
                    end
                    RimClonedFunction.Parent = WheelModel
                end
                WheelModel[ImportedRim].PrimaryPart.CFrame = OriginalRim.CFrame
                WheelModel[ImportedRim].PrimaryPart.Size = OriginalRim.Size
                WheelModel[ImportedRim].PrimaryPart.BrickColor = OriginalRim.BrickColor
                local WeldRim = Instance.new("WeldConstraint")
                WheelModel[ImportedRim].PrimaryPart.Anchored = false
                WeldRim.Parent = WheelModel[ImportedRim].PrimaryPart
                WeldRim.Part0 = WheelModel[ImportedRim].PrimaryPart
                WeldRim.Part1 = OriginalRim
                OriginalRim.Transparency = 1
            end
            AssignRim(Importer.Main.RimID.Text,RealModel.Preset.WheelFrontRight.Rim,RealModel.Preset.WheelFrontRight)
            AssignRim(Importer.Main.RimID.Text,RealModel.Preset.WheelFrontLeft.Rim,RealModel.Preset.WheelFrontLeft)
            AssignRim(Importer.Main.RimID.Text,RealModel.Preset.WheelBackLeft.Rim,RealModel.Preset.WheelBackLeft)
            AssignRim(Importer.Main.RimID.Text,RealModel.Preset.WheelBackRight.Rim,RealModel.Preset.WheelBackRight)
        end
    end
end

Importer.Main.Import.MouseButton1Click:Connect(ImportCar)
