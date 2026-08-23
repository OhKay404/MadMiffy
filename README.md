# MadMiffy
## A Miffy-themed WarioWare-style game that requires you to play minigames to win!

![til](./minigame1_demo.gif)


## Quick Start
Want to play? Play [MadMiffy on itch.io](https://ohkay404.itch.io/madmiffy "MadMiffy") now!

## Features
- 2D Platform Minigame: Collect all the hearts to pass.
- Clicker Minigame: Click all hearts using the cursor to pass.
- Timer Screen: Tracks the number of lives remaining and indicates the player's current level.
- Winner Screen: Miffy floats away when the player wins.
- Death Screen: Miffy descends when the player loses.

## How to Run MadMiffy Locally
1. Clone this repository.
2. Import the project into Godot ver. 4.4.1.
3. Click run project to start the game.

## How it Works
MadMiffy is a collection of minigames consisting of different mechanics depending on the minigame. To move the `Sprite2D` in minigame 1, the player relies on the left/right arrow keys to move, and the spacebar to jump. In minigame 2, the player clicks on each heart using the cursor.

The game uses global variables `minigames_done` and `lives` to track the player's progress, and a `ThemedTimer` tracks the time remaining in each minigame. The player starts with 5 lives in the form of hearts, and loses a life each time the player runs out of time before completing a minigame. If the player fails a minigame, the minigame repeats until the player passes or runs out of lives.
