# Hash5!

## Epics - Game
---

 1. select Type pf player

As a Player when i open the app then i will be present a option to select the type of player

Supported type of  player
- Human Player
- Random Computer Player
- Tactical Computer Player

backlog: 
New player types: we may want to add new computer player implementations as tactics improve

2. Show Online Player

As a player when I select Human Player , then a list of online player will be display
 
  3. Select Online Player

As a Player when I see  List of players , then i should be able to select one player
 - Once the palyer selected , the list should close and UI will move to the game mode
6. Computer Player

     - As a Player when I select Random Computer Player the UI will take me to Game Mode
    - As a Player when I select Tactical Computer Player the UI will take me to Game Mode

 7.Game Mode Move Selections
	
As a Player when i am in Game Mode , Then i should able to select my Move

Available Moves
- Rock
- Paper
- Scissors
  
  > Technical depth
Code to ensure below  Extensions can be accommodate
New “moves”: we may expand the possible moves that each player can make (e.g. Rock, Paper, Scissors, Lizard, Spock 
 
## Epics - Technical Depth
1. Add Docker Support
2. Add Kubernetes  Support
3.  DevOps
	-  modify gulp task to copy files to wwwroot with standard folder structure
	- Pipeline : use "npm install" and "npm run deployToSpaRoot" instaed of MSBuild for react app build
	- 
## Create files and folders




# Development Notes
- To start development 
	- Open the hash5 solution in visual studio and run the application
	- Open clientapp folder in visual code, and type 'npm run start'
		- react hot model loader is enabled 
- In react app the service , its test and the component are place in there own folder. this is mainly because we can move it to a Micro App. Micro App  is getting popularity among technologist.   