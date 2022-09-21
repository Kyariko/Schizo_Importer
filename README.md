# RJBCI

The roblox Jailbreak car importer made by DydyWastaken with the help of Hazed_Mist.

This is the first release version, so expect bugs that gonna be fixed with time, also this version is for manual users, you gonna have to configure yourself the cars and then save them before using theses.
# How does it works ?

Well, it basicaly replaces the car model you're sitting in, and then places a model you imported with an id, everything on client side since accessing server scripts with a exploit is nearly impossible.

For cutomization, it's streaming the original color of the real car, since the real car become only invisible and not deleted, same method for textures, Windows tint, material reflectance and much more.

Stats of the car are in developement and some of them dont work yet, it modifies the real stats though modules and for now it's extremely unstable so that's why for now i won't explain how to use this part.

# Requirements

-[Synapse X](https://x.synapse.to/) or [krnl](https://krnl.vip/) (any other executor won't work or not gonna save presets)

-A vip server for a secure usage (with updates you won't be able to use this in any public server)

-As always, a good pc

# Setup

1. Download the RJBCI.lua file

2. Open the game and then the executor, when the executor is opened and the game loaded, press "inject" button and wait for the process to be done


3. With the executor, open the RJBCI.lua file and then execute the script

4. You will now have access to the Inporter and the multiples options, its ready to use now !

# How to use

First you gonna have a empty menu, here's everything you need to know:
![0](https://user-images.githubusercontent.com/96693526/191528182-7e0806f8-db93-4154-a4b7-7b40012ffe4a.png)

Press N to close it or open it again

# Choosing the vehicle

For each car, you need to choose a base car depending on the Second body color being available or not, car size, number of interior colors;

-For monoplaces like f1 concepts etc, use base cars like airtail with a central seat or the mcl35m (F1)

-If your car has 2 body colors nor 2 interior color, use cars like ray9 or Bolide

-The car is big nor has big wheels/rims ? use cars like fire truck, sentinel or arachnid

## Checkboxes:

Here, you can tell to the importer what the car you imported have or not by checking or uncheking boxes

![RobloxScreenShot20220921_160041905 - Copie](https://user-images.githubusercontent.com/96693526/191530161-954fa011-6693-47e4-8b66-61233576f072.png)

## Offsets and sizes:

Here, you can ajust each wheel, body and seat offset for the car you imported, you can also change size and thickness of each wheel

For offsets, you need a value like this: -x,-y,-z (move one side, move up, move foward)

For Sizes you need a number

###### be carefull it's adds to the original size so if i use 0.5, it gonna add 0.5 to the original wheel size and not set it to 0.5

###### if you dont have offsets values you can type 0,0,0 instead but it gonna be weird, same for sizes and thickness (use 0)

![1](https://user-images.githubusercontent.com/96693526/191531679-20b78def-bdc1-4409-bc3a-c0f525f8be86.png)

## Sounds:

Here you can tell to the importer if you want to add sounds or not, if yes then you need to put 5 sound IDs in this a specific order:

#### "OFF sound" , "Idle Sound" , "Low Sound" , "Mid Sound" , "High Sound"

(tip: Off sound and idle can be the same ID)

![2](https://user-images.githubusercontent.com/96693526/191539422-d5275651-56da-4053-84d1-c9a8480db24a.png)

## Saving and loading Presets:

Here, you can save configs you made by typing the slot number you want and then pressing save, same method to load presets, you can also directly load one of the 4th presets above

![3](https://user-images.githubusercontent.com/96693526/191532384-4f939e51-da44-4501-9708-b3a08e007116.png)

## Finally pressing the import button :)

Now you have every offset filled and checked necessary boxes, you can click the import button, but each time you do this, you need a new car and this isn't optional, you gonna get a glitched car if you stay in a already imported car, i told you.

## How to import configs:

First you gonna need the txt file, here's a sample for the Lexus lfa i made [here](https://drive.google.com/u/1/uc?id=1bGVH7eRrKlZloTd0oj-79yR6_xhBLx6c&export=download)

After this you gonna put this file in the "Workspace" folder in the root directory of your script executor:

https://user-images.githubusercontent.com/96693526/191542821-9323e82d-5727-41bf-b0af-ba5dd02c1965.mp4

And then to load it in game you can use the method i said [here](https://github.com/DydyWasTaken/RJBCI/blob/main/README.md#saving-and-loading-presets)

# How to import your own car

Soon™
