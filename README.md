# Hash5!
I strongly believe the importance of unit testing, But unfortunately my plan for executing this exercise got affected due to a pressing personal reason. 
I wish I could throw some unit test case, but instead showcasing my competency in cloud took higher  priority over unit test.
  
## Flow
It is a ReactJs app created on aspnetcore3.1 web API templates . With SPA enabled.

When user opens the application, they will be presented with a login screen. For now I am storing the user id in sessionstorage.

Step 0 :
---
User landing page has 3 live components.
- Online User : A list of users in OnlinePlayer table with the following criteria -
 `Online = true && Available = true && TypeOfPlayer =PlayerType.Human && OnlineSince > new DateTime().AddDays(-1)`
`DataSource : Azure Cloud Table "OnlinePlayer"`
ref files:  PlayerManager.API > PlayerControllerService.cs

- There is another live list which shows all the invitations other players send to join their challenge. `Data Source :  Azure Cloud Table "StagedGames"`
- Options to choose Computer player.

Step 1:
---
Once the player selects an opponent (apart from basic computer) -  
 1. they will be removed from the StagedGames table.
 2. An SelectOpponent Event will be created by client. This Event is captured by Azure Function. The function is configured for an Event Grid trigger. 
    -   Azure function will call API Manager microservice with event data and event Name.
    - API Manager will find the pre-defined  route for that event and call the endpoint.
    - Client will not call any of the Game/Play API  microservice directly. 
    - Any data aggregation is done by API Manager microservice which will  read SOR of other Microservice  and aggregate the data. 
    - Front End API (outer API) will be pulling both Game/Play microservice to check update.
    The React page  implements a pub sub-pattern `home.tsx, `
   -  Eg: 
   1.  user login > .Events.Player.Join" Event will be raised by client. After being routed through Azure Function and Manager Web API, it will be processed by Play.API 
	   - Play.api will add/update `OnlinePlayer`  table  with Player detail received from the request body. 
2. After Player selects an opponent(Human / Advance Computer Player)  an .`Events.Player.SelectOpponent` event will be raised.

	-	This will be captured by  - Game.API/CleanUpStage endpoint which will remove both the users form StageGame table.
	-	This event also triggers Player.API/UpdateAcitve endpoint. 
Please refer other events details here: `Manager.API/WorkflowProxy.json` 
 
Step 2 :
---

- When both players submit their choices, we mark the game as Inactive. A Game object has 2 properties Game Id and Session Id throughout the match (3-5 games) which will decide the winner.



## Epics - Game

 1. Select Type of player.

As a Player, when I open the app, I will be presented with an option to select the type of player.

Supported type of players:
- Human Player
- Random Computer Player
- Tactical Computer Player

2. Show Online Player

As a player, when I select Human Player , a list of online players will be displayed.
 
  3. Select Online Player

As a Player, when I see  List of players, I should be able to select an opponent to play with.
 - Once the player is selected, the list should close and UI will move to the game mode.
  
4. Computer Player

     - As a Player, when I select Random Computer Player, the UI will take me to Game Mode.
    - As a Player when I select Tactical Computer Player, the UI will take me to Game Mode.

 5.Game Mode Move Selections
	
As a Player when I am in Game Mode , I should be able to select my Move.

Available Moves
- Rock
- Paper
- Scissors
  
  > Technical depth
Code to ensure below  Extensions can be accommodated
New “moves”: we may expand the possible moves that each player can make (e.g. Rock, Paper, Scissors, Lizard, Spock)
 
## Epics - Technical Depth

1. Add Docker Support
2. Add Kubernetes  Support
3.  DevOps
	-  modify gulp task to copy files to wwwroot with standard folder structure.
4. Make DistributedPackage library to a nuget Package host in internal package manager like Jfrog Artifactory.


# Notes
- The fictional name of the Company is "Rajib For You" (&copy;RforU)
- To start development: 
	- Open the hash5 solution in visual studio and run the application.
	- Open clientapp folder in visual code, and type 'npm run start'
		- react hot model loader is enabled. 
	- The Solution Use VS  Secrets.json to substitute  System Environment Variables.
	
- In react app,  the component, its services, and its tests are placed in the respective component folders. This is mainly because we can move it to a Micro App. 

- Project structure Created for Microservice structure. 
	- Each WebApi has its own Infrastructure class library. This mainly allows us to use the same code base with REST and Grpc version. 
	- Both the projects are in one folder which will make the CICD pipeline simpler.
	- Naming: Game will be a better option than Hash5 but to make project anonymous, I chose Hash5.  
	- I have used 4 cloud Tables - "StagePlayer" , "OnlinePlayer", "ArchiveGames" and "ActiveGame".
	- We can reduce to two tables using flags in IPlayerObject i.e., active and available flags. But it might not be scalable. 
	- The Archive Game table can be moved to cloud blob storage or to DataLake.
	-  Need to finetune react page loading.  
	