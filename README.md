# fpga_vga_rs232_game
A game using VGA controller and a RS232 communication written for Xilinx Spartan-3E board.

This repository contains files of a project created for a _Digital circuits and embedded systems 2_ course taken at _Wrocław University of Science and Technology_.

Final report (in Polish) can be read [here](final-report.pdf).


The following text is a description of the game' mechanics.


## Vaste Hyper Dimensional Lurker
Cool game about a brave rectangle shooting squares to other evil rectangles.

### TL:DR
1. _Game **1024x768** **30fps**_
2. _player **200x50** colour: **white** speed: **6.9pix/frame**_
1. _enemy **160x160** colour: **red** speed: **2.56pix/frame**_
4. _projectile **40x40** colour: **yellow** speed: **8.5pix/frame**_

### Mechanics
***
#### Generals
Game is rendered in real time. So the game proceed even if player is not moving. The illusion of fluid movement is made by high render rate, approx. **30fps with 1024x768 resolution**. 

The game is preparing every frame of the game state and then displaying it, therefore we need a Update(), and Render() functions. The game state can be changed by enemy movement or player movemnt or shot. 

Game gemoetry is represented as the **array of coordinates**, maybe it's an array of 0 and 1 representing pixels of games. Game movement is represented by changing pixels from on to off.

#### 1. Shooting
Player can shoot the projectile (**one at the time** - previous projectile needs to disapear to shoot another) on button click. The projectile travels the screen from down to top. Once it **hits the enemy or passes the screen** height it is removed from game or pooled in location outside the screen.  

**The speed of projectile**: _768/90fps = 8.5_ pixels to pass in one frame


#### 2. Movement
Player can move allong bottom boundry of the screen. Its model travels from left to right in 4 seconds so in 120fps. It mustn't pass the vertical boundries of the screen. 

**Player speed**:_(1024pix - 200pix)/120fps =  6.9pix_ to pass in one frame


#### 3. Enemies
Enemies are the only obstacle of the game. They **spawn on the top boundry** of the screen **at random "altitude"**. The **randomness of position** is realised by this formula:

_(RandomNumber % 768) - 160_

Enemies are spawning one at the time. At the enemy kill there is spawned another one. 
After spawning, the enemy is slowly moving down. When it reach the bottom boundry it "kills the player" and the game is over.

**The speed of enemy**: _768pix/240fps = 2.56pix_  to pass in one frame