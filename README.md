# Schizo Importer

The roblox Jailbreak car importer made by DydyWastaken with the help of Hazed_Mist.

Why Schizo you might ask, because everything custom car you see, everyone else won't lol

# How does it works ?

It replaces the model of the car you're sitting in, and put a custom on on top of it, ajust the wheels to the new model and voila, a custom car !

For Customization it picks the color of the car you're in and copies it to the new one, and for stats, only Height, speed and handling works.

I don't think stats will stay there for this version, for obvious reasons.

# Requirements

-[Synapse X](https://x.synapse.to/), [krnl](https://krnl.vip/) or [Fluxus](https://fluxteam.net) (Theses support local packages importing, anything else might need a model from the Roblox marketplace)

-As always, a good pc

# Setup

1. Download one of the executors i specified above, or yours if you want to.

2. Open the executor and then the game, when the executor is opened and you got the key for the it and the game loaded, press "inject" button and wait for the process to be done

# Once the executor injected, copy this code and paste it in your executor

```loadstring(game:HttpGet('https://raw.githubusercontent.com/Kyariko/Schizo_Importer/main/Schizo_Importer_Solo.lua'))()```  

To Import multiple cars version*

```loadstring(game:HttpGet('https://raw.githubusercontent.com/Kyariko/Schizo_Importer/main/Schizo_Importer_Multi.lua'))()```
#

3. Execute the line you just pasted in the executor

## Skip to step 5 if your executor don't support local packages or dont have any rbxm car models or save files.

4.Now go to the Executor Root file to place the car models and save files.:

### KRNL: 

Just go into File > Open Krnl Folder and then find schizo folder and then place save files to "Saves" and your rbxm car model to "Models"

![Capture d'écran 2023-08-20 053012](https://github.com/Kyariko/Schizo_Importer/assets/96693526/bbd67b64-701c-4deb-aac3-7e701fe3adfd)

### Synapse, Fluxus and executor that supports getsynassets():

Go to the Folder where you installed your executor and find a folder name "workspace", and then place save files to "Saves" and your rbxm car model to "Models".

(example with Fluxus)
![Capture d'écran 2023-08-20 053736](https://github.com/Kyariko/Schizo_Importer/assets/96693526/10c99228-47aa-44d3-9c40-f436c80389de)

5. You will now have access to the Inporter and the multiples options, it's ready to use now !

# How to use

First you gonna have a empty menu, here's everything you need to know:
![Capture d'écran 2023-08-20 050831](https://github.com/Kyariko/Schizo_Importer/assets/96693526/ecc9f910-1fcd-4ccf-90d8-f8f15233183e)

Press U to close it or open it again and press P to disable/Enable all gui

# Choosing the vehicle

For each car, you need to choose a base car depending on the Second body color being available or not, car size, number of interior colors;

-For monoplaces like f1 concepts etc, use base cars like airtail with a central seat or the mcl35m (F1)

-If your car has 2 body colors nor 2 interior color, use cars like ray9 or Bolide

-The car is big nor has big wheels/rims ? use cars like fire truck, sentinel or arachnid

## Car ID or Name:

To start, this is where you put the car ID from Roblox MarketPlace or [the name of the car if you have the package in the "Models", folder](https://github.com/Kyariko/Schizo_Importer/blob/main/README.md#skip-to-step-5-if-your-executor-dont-support-local-packages-or-dont-have-any-rbxm-car-models-or-save-files).

![adza](https://github.com/Kyariko/Schizo_Importer/assets/96693526/41889cda-f275-4205-be14-9c05e5cf3598)

## Checkboxes:

Here, you can enable Extra options:

![jjjjj](https://github.com/Kyariko/Schizo_Importer/assets/96693526/3d2cbef4-e276-4a4a-801a-a8c1887d2857)

-the Spoiler (translated to 'Aileron') just tells if you want a body color spoiler for the custom model.

-Active Spoiler, is when you want an Active Spoiler on the custom model, it requires the macaron to work.

-Spoiler in 2 parts, it to be enabled with active spoiler, it's a version for spoilers that works like the mclaren senna's one.

-OverDrive only works on the arachnid as a base vehicle, it uses the overdrive feature to add extra rocket fire at the back of the car and a custom overdrive sound.

-Carbon is if you want the full car body to be in carbon material, it can be colored.

-Sound is if you have custom sounds for your car, you have to type 5 sounds IDs to get it work.

## Offsets and sizes:

Here, you can ajust each wheel for the car you imported, you can also change size and thickness of each wheel

![Capture d'écran 2023-dbdfbd08-20 050831](https://github.com/Kyariko/Schizo_Importer/assets/96693526/c56be927-c5a9-41d4-a793-a6db12cc7ccc)

All values are offset, if you don't want to change anything just leave a 0 in the values, it can't be void.

###### be carefull, as i said it adds to the original size so if i use 0.5 for example, it gonna add 0.5 studs to the original wheel size and not set it to 0.5

## Vehicle Stats:

![Capture d'écran 2023-08-20zefzfezf 050831](https://github.com/Kyariko/Schizo_Importer/assets/96693526/b6e7de98-abcd-48a4-924a-c2e80cb06f7f)

### Important: Height, Speed('Vitesse') and handling are mandatory you need to specify a value, as for damping, Mass and traction, you can leave a void in it, it doesn't do anything yet:

## Sounds:

![sdfsfdsf831](https://github.com/Kyariko/Schizo_Importer/assets/96693526/eb50e23a-3a91-4b1d-9136-a88dd0b115cd)

Here you can specify if you want to add sounds or not, if yes then you need to put 5 sound IDs in this specific order:

#### OFF sound,Idle Sound,Low Sound,Mid Sound,High Sound (No Spaces)

![qsdqsd831](https://github.com/Kyariko/Schizo_Importer/assets/96693526/e52b54da-8d18-4b42-b31d-5895e2502e46)

(tip: Off sound and idle can be the same ID)

## Custom Rim import:

if you also have a custom Rim package from marketplace or from the "Models" file in your executor root file, you can check the box and specify the marketplace ID or the name of the local package.

![rim](https://github.com/Kyariko/Schizo_Importer/assets/96693526/05127d01-a20d-4574-b1f4-703c6aafbce6)

## Saving and loading Presets:

Here, you can save configs you made by typing the slot number you want and then pressing save, same method to load presets.

![ee](https://github.com/Kyariko/Schizo_Importer/assets/96693526/aecfc0ac-c8a0-4e9d-8efa-6251211d2e6f)

## Finally pressing the import button :)

Once you're done, you can finally press the import button, but keep in mind, you need to get in a new car everytime you import a new custom car, to avoid massive bugs.

# How to import your own car

1. So to start you need at least a car model, i will use the Corvette C6 i made for this tutorial

![Capture d'écran 2023-08-20 171721](https://github.com/Kyariko/Schizo_Importer/assets/96693526/d468f738-fac6-4042-9314-d24f02bdbd3b)

2. At the end of the tutorial, the Model Structure will look like this, check this color reference to see what's optional or not., so first thing you need to do is renaming all the car model part to this.

![Capture d'écran 2023-08-20 182408](https://github.com/Kyariko/Schizo_Importer/assets/96693526/c943f9d3-18c4-43c4-836d-3138eaa26172)
![Capture d'écran 2023-08-20 200227](https://github.com/Kyariko/Schizo_Importer/assets/96693526/242f87e1-53da-45c1-85ab-f5241a11ab7b)

Here's how the car model looks before and after:

#### Before:
![Capture d'écran 2023-08-20 171739](https://github.com/Kyariko/Schizo_Importer/assets/96693526/a0781b00-5a6c-4bef-9e86-2d4e8f34cdab)
#### After:
![Capture d'écran 2023-08-20 182740](https://github.com/Kyariko/Schizo_Importer/assets/96693526/47238ee7-c88c-48b9-9394-0ec7a4936348)

## Now for each part you will make, you have to set the transparency to 1 in properties of each part you add like, Steer, seat, Engine, etc.

3. So first, you need to put the steering wheel in a model called ```SteeringWheel``` the model created has to be in the car model.

https://github.com/Kyariko/Schizo_Importer/assets/96693526/84aa4da5-dbbf-451b-8121-b1a46b9e93a7

4. Then, create a new part inside the car model, copy and paste the car body CFrame to the new part CFrame in "Properties", and ajust the lenght and the width of the part to the car's one, don't touch the height, just adjust it by moving the part up or down, it should be near the bottom of the car. Once you're done, rename the new part to ```Engine```, and make it the Primary part of the car Model in the car model Properties.

https://github.com/Kyariko/Schizo_Importer/assets/96693526/838cc54f-8590-4d8d-b325-094660ff1ac7

5. Now go back to the Steering wheel model, and create a new part in it, copy and paste the car Steering wheel CFrame to the part you created, the new part has to face the front of the car, you can check it by right-clicking the part in the explorer, and selecting "Surface Orientation Indicator" as i do in the video. Once it faces the correct direction, you can ajust the tilt of the part to the angle of the steering wheel and then make the size of it about the same as the steering wheel in the car, make sure it a little wider than the original steering wheel for hands placement.

When it's done, you can create a weld constraint in the part you ajusted and in properties of the weld constraint, click on "Part0" and select the part you ajusted, click on "Part1" and select this time the steering Wheel (the mesh not the model), when you're done, rename the ajusted part to ```PrimaryPart```, and make it the PrimaryPart of the Steering wheel model in the Properties of it.

https://github.com/Kyariko/Schizo_Importer/assets/96693526/a81c29f8-2071-4b7e-8511-be9ed04fb6c0

6. After that, you need wheels, so you will now create in the car model a new model called ```Wheels```, and create a new part in it. For this part, place it at the center of the car and then move it to the front using the Z axis (blue arrow). Since you need symetric placement for both sides you need to move each part by an exact offset you can do on the other side, here i do first the front and then duplicate everything to the back and just adjust the height of the back wheels to be in the exact center, once it's done you rename the 4 part to it's respective place, for example the fron Right wheel will be called ```WheelFrontRight```, for the back left wheel it will be ```WheelBackLeft```, you can check names in the first part of the [rigging tutorial](https://github.com/Kyariko/Schizo_Importer/blob/main/README.md#how-to-import-your-own-car).

https://github.com/Kyariko/Schizo_Importer/assets/96693526/d1d47072-7713-4f18-aad6-1360977fa7d2

7. Next, you will go in the Steering Wheel model, and duplicate the primary part, place it in the car model but out of the steering wheel model, remove the weld constraint in it, and rename it Steer.

https://github.com/Kyariko/Schizo_Importer/assets/96693526/d7fdddac-2ee8-4f73-b6ce-7878ede35ca7

8. Then, make a new part, and place it at the center of the engine part by copying the CFrame of it to the part, then ajust it to the driver seat Position, it should be sitting on the seat not like in the video, and it should be a small part and a thin one like i did in the video, then duplaicate that part and place it on the passenger seat this time. once it's done, Rename each part you made here to ```Seat``` for the driver, and ```Passenger``` for the passenger.

https://github.com/Kyariko/Schizo_Importer/assets/96693526/c299256e-c413-4026-9974-b46176a15c8b

9. Now you select all parts of the car except the Engine and the Steer part and the Primary Part of the Steering Wheel and in properties you will:

- Uncheck "Anchored"
- Uncheck "CanCollide"
- Uncheck "CanTouch"
- Check "Massless"

- the same thing for the Engine, Steer and the Primary Part of the Steering Wheel, BUT IT HAS TO BE ANCHORED BOX CHECKED.

https://github.com/Kyariko/Schizo_Importer/assets/96693526/1b8ca370-32ad-429a-b3b4-7ab670497ba7

10. Then you need to add final details, so first you duplicate the Driver Seat called "Seat", and place the duplicated part to the same place but at the player head height, you will rename that part to ```InsideCamera```, once it's done, you will add a new part in the car model and rename it ```Plate``` and place it where you want the licence plate of the car to be.

https://github.com/Kyariko/Schizo_Importer/assets/96693526/c130023c-e878-4aed-8894-670b8fcab6bc

11. The car Rigging is done ! Now save it to a folder of your choice (the name you will use for it will be the same you gonna have to use in the car importer if you use the local Package option).

https://github.com/Kyariko/Schizo_Importer/assets/96693526/7409c2b9-1677-423d-87d3-4b10f2587e07

12. Now here's how i import the car i just rigged, hope you made it thought the tutorial, lemme know on Discord (dydywastaken) if you have issues or suggestions to make the tutorial easier :D

https://youtu.be/c9nliMFWk2U
