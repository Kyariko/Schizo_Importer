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

if you also have a custom Rim package from marketplace or from the "Models" file in you executor root file, you can check the box and specify the marketplace ID or the name of the loca package.

![rim](https://github.com/Kyariko/Schizo_Importer/assets/96693526/05127d01-a20d-4574-b1f4-703c6aafbce6)

## Saving and loading Presets:

Here, you can save configs you made by typing the slot number you want and then pressing save, same method to load presets.

![ee](https://github.com/Kyariko/Schizo_Importer/assets/96693526/aecfc0ac-c8a0-4e9d-8efa-6251211d2e6f)

## Finally pressing the import button :)

Now you have every offset filled and checked necessary boxes, you can click the import button, but each time you do this, you need a new car and this isn't optional, you gonna get a glitched car if you stay in a already imported car, i told you.

# How to import your own car

## Part 1

First open Roblox studio and then open a place

Upload the place

https://user-images.githubusercontent.com/96693526/191606101-8fc9fcb1-a2de-456d-8a0f-4e7f1d08c727.mp4

#### Skip to Part 2 if you already have a rbxm file of the choosen car

Import the car you with it's FBX file

https://user-images.githubusercontent.com/96693526/191606589-442b2206-3c77-47f8-92e5-deaf2d7385a1.mp4

Once the process is done on the left you will get many parts, select all of them, right click and select insert (or insert with location)

https://user-images.githubusercontent.com/96693526/191606893-fd8bd37f-84c0-4265-a7bd-12c7be31f8b4.mp4

Now you can scale the car to the JB vehicles by using free Jailreak Models as references, and then add colors as you want

## Part 2

Select all parts of the car and group them

https://user-images.githubusercontent.com/96693526/191607537-6a975fea-eac8-4bc4-9346-97a49cb2cf12.mp4

In the group you just created, rename all items like this:

-"HeadLights" for headlights (required)

-"BrakeLights" for breaklights (Optional)

-"Windows" for windows (required)

-"Interior1" for the main interior (Required)

-"Interior2" if you have a second interior color (Optional)

-"Body1" for the main body (required)

-"Body2" for the second body (optional)

-"BrakeLights2" if your car has reverse lights (optional)

-"Carbon" if your car has carbon parts (optional)

-"SteeringWheel" for the steering wheel (required)

-"Seat" for seat (Required)

everything else in your car you didn't saw above is optional and can be renamed in anyway you want

Now you gonna group the steering Wheel alone and rename it like this: 

![Group](https://user-images.githubusercontent.com/96693526/191608783-5976db7c-5227-4a2e-a0ee-eed9cf9e7cae.png)

## Part 3

Now add a part in the car Model and rename it "Engine", it should be in the center of the car or at the same position as the main body and should face in this direction:

![Positioning](https://user-images.githubusercontent.com/96693526/191609497-0ea4afeb-8dd8-43be-8e33-a941c373d4dd.png)

After this, select the car model and set the "Engine" part as PrimaryPart like this:

https://user-images.githubusercontent.com/96693526/191609605-c10c5ff4-25f1-441c-a3b7-84f48330383e.mp4

Create a new part called "PrimaryPart" in the "SteeringWheel" group you made earlier and then set the position the same as your steering wheel and make it face this direction:

![direction2](https://user-images.githubusercontent.com/96693526/191610126-5934d54c-a8ab-4a00-9ed7-86a6eaf8a58a.png)

Make the "PrimaryPart" a primary part of the "SteeringWheel" group:

https://user-images.githubusercontent.com/96693526/191610464-2b190305-2c7c-4dd5-a643-00778079630a.mp4

Now duplicate the "PrimaryPart" and rename it "Steer", place it outside of the "SteeringWheel" model

## Part 4

Once you have something similar to this (Engine, Steer and SteeringWheel Group): 

![Final Group](https://user-images.githubusercontent.com/96693526/191611108-95bb547c-a79d-44da-8a8a-80d75700a8eb.png)

You can start using welds:

add a weld constraint in "PrimaryPart", set "Part0" in properties and select "PrimaryPart", then set "Part1" and select "SteeringWheel" like that:

if your sterring wheel has multiple parts then repeat the process for each part (Part0 = "PrimaryPart", Part1 = the part of the sterring wheel)

https://user-images.githubusercontent.com/96693526/191612018-583e63ec-af4f-4539-b858-72464d19e525.mp4

Now you need to un-anchor some parts and anchor everything else, to Anchor a part you need to do this:

https://user-images.githubusercontent.com/96693526/191612896-6f09b203-5290-4462-8418-6482284c85fa.mp4

Now you know how to, Anchor everything except "SteeringWheel" part (not the group just the part)

and last thing, Everything need to be massless and CanCollide uunchecked or your car gonna go boom

## Part 5

Now you rigged the car, you can upload it like this:

https://user-images.githubusercontent.com/96693526/191613658-cd67e777-dac2-4c89-bd8e-13d42c5e994d.mp4

##### Don't forget to Check the box "Distribute on Market Place" to make the importer having an access to your car ID

You did it, you made a car ready to import in Jailbreak ! Now you can do the steps [here](https://github.com/DydyWasTaken/RJBCI/blob/main/README.md#how-to-use) to configure it and play with it !
