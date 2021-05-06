∂1
[C:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Controllers\V1\GameController.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  
Controllers  +
{ 
[ 
Route 

(
 
$str  
)  !
]! "
[ 
ApiController 
] 
public 

class 
GameController 
:  !
ControllerBase" 0
{ 
private 
readonly "
IGameControllerService /"
_gameControllerService0 F
;F G
public 
GameController 
( "
IGameControllerService 4!
gameControllerService5 J
)J K
{ 	"
_gameControllerService "
=# $!
gameControllerService% :
;: ;
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status200OK* 5
,5 6
Type7 ;
=< =
typeof> D
(D E
	IGameDataE N
)N O
)O P
]P Q
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *(
Status500InternalServerError* F
)F G
]G H
public 
async 
Task 
< 
ActionResult &
<& '
	IGameData' 0
>0 1
>1 2
UserGameData3 ?
(? @
[@ A
	FromQueryA J
]J K
stringL R
userIdS Y
)Y Z
{ 	
try   
{!! 
var## 
initData## 
=## 
await## $"
_gameControllerService##% ;
.##; <
GetInitialData##< J
(##J K
userId##K Q
)##Q R
;##R S
return$$ 
Ok$$ 
($$ 
initData$$ "
)$$" #
;$$# $
}%% 
catch&& 
(&& 
	Exception&& 
ex&& 
)&&  
{'' 
return++ 

StatusCode++ !
(++! "
StatusCodes++" -
.++- .(
Status500InternalServerError++. J
,++J K
RforUErrorCodes,, #
.,,# $
GetError,,$ ,
(,,, -
	ErrorType,,- 6
.,,6 7
Application,,7 B
),,B C
),,C D
;,,D E
}-- 
}.. 	
[11 	
HttpPost11	 
]11 
[22 	
Route22	 
(22 
$str22 
)22 
]22  
[33 	 
ProducesResponseType33	 
(33 
StatusCodes33 )
.33) *
Status200OK33* 5
,335 6
Type337 ;
=33< =
typeof33> D
(33D E
	IGameData33E N
)33N O
)33O P
]33P Q
[44 	 
ProducesResponseType44	 
(44 
StatusCodes44 )
.44) *(
Status500InternalServerError44* F
)44F G
]44G H
public55 
async55 
Task55 
<55 
ActionResult55 &
<55& '
bool55' +
>55+ ,
>55, -
GameSubmitted55. ;
(55; <
[55< =
FromBody55= E
]55E F
IGame55G L
gameDetails55M X
)55X Y
{66 	
try88 
{99 
bool;; 
initData;; 
=;; 
await;;  %"
_gameControllerService;;& <
.;;< =
GameSubmitted;;= J
(;;J K
gameDetails;;K V
);;V W
;;;W X
return<< 
Ok<< 
(<< 
initData<< "
)<<" #
;<<# $
}== 
catch>> 
(>> 
	Exception>> 
ex>> 
)>>  
{?? 
returnCC 

StatusCodeCC !
(CC! "
StatusCodesCC" -
.CC- .(
Status500InternalServerErrorCC. J
,CCJ K
RforUErrorCodesDD #
.DD# $
GetErrorDD$ ,
(DD, -
	ErrorTypeDD- 6
.DD6 7
ApplicationDD7 B
)DDB C
)DDC D
;DDD E
}EE 
}HH 	
[JJ 	
HttpPutJJ	 
]JJ 
[KK 	
RouteKK	 
(KK 
$strKK #
)KK# $
]KK$ %
[LL 	 
ProducesResponseTypeLL	 
(LL 
StatusCodesLL )
.LL) *
Status200OKLL* 5
,LL5 6
TypeLL7 ;
=LL< =
typeofLL> D
(LLD E
	IGameDataLLE N
)LLN O
)LLO P
]LLP Q
[MM 	 
ProducesResponseTypeMM	 
(MM 
StatusCodesMM )
.MM) *(
Status500InternalServerErrorMM* F
)MMF G
]MMG H
publicNN 
asyncNN 
TaskNN 
<NN 
ActionResultNN &
<NN& '
boolNN' +
>NN+ ,
>NN, -
OnlineStatusUpdateNN. @
(NN@ A
[NNA B
FromBodyNNB J
]NNJ K
IGameNNL Q
gameDetailsNNR ]
)NN] ^
{OO 	
tryQQ 
{RR 
boolTT 
initDataTT 
=TT 
awaitTT  %"
_gameControllerServiceTT& <
.TT< =
GameSubmittedTT= J
(TTJ K
gameDetailsTTK V
)TTV W
;TTW X
returnUU 
OkUU 
(UU 
initDataUU "
)UU" #
;UU# $
}VV 
catchWW 
(WW 
	ExceptionWW 
exWW 
)WW  
{XX 
return\\ 

StatusCode\\ !
(\\! "
StatusCodes\\" -
.\\- .(
Status500InternalServerError\\. J
,\\J K
RforUErrorCodes]] #
.]]# $
GetError]]$ ,
(]], -
	ErrorType]]- 6
.]]6 7
Application]]7 B
)]]B C
)]]C D
;]]D E
}^^ 
}aa 	
}cc 
}dd Ï
^C:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Interfaces\IActiveGameRepository.cs
	namespace		 	
RforU		
 
.		 
GameManager		 
.		 
API		 
.		  

Interfaces		  *
{

 
public 

	interface !
IActiveGameRepository *
:+ ,
IRepository- 8
<8 9
List9 =
<= >
IGame> C
>C D
>D E
{ 
Task 
< 
List 
< 
IGame 
> 
> 
GetActiveGames (
(( )
string) /
playerId0 8
)8 9
;9 :
} 
} Î
`C:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Interfaces\IArchivedGameRepository.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  

Interfaces  *
{ 
public 

	interface #
IArchivedGameRepository ,
{ 
Task 
< 
List 
< 
IGame 
> 
> 
GetArchivedGames *
(* +
string+ 1
playerId2 :
): ;
;; <
Task		 
Archive		 
(		 
IGame		 
completedGame		 (
)		( )
;		) *
}

 
} Ö
\C:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Interfaces\ICurrentGameDetails.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  

Interfaces  *
{ 
internal 
	interface 
ICurrentGameDetails *
{ 
IGame 
CurrentGame 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ä
NC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Interfaces\IGame.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  

Interfaces  *
{ 
public 

	interface 
IGame 
{ 
string 
	SessionId 
{ 
get 
; 
set  #
;# $
}% &
string 
GameId 
{ 
get 
; 
set  
;  !
}" #
bool		 
Active		 
{		 
get		 
;		 
set		 
;		 
}		  !
string

 
PrimaryPlayerId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
bool "
PrimaryPlayerSubmitted #
{$ %
get& )
;) *
set+ .
;. /
}0 1
string 

OpponentId 
{ 
get 
;  
set! $
;$ %
}& '
bool 
OpponentSubmitted 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonPropertyName	 
( 
$str @
)@ A
]A B
string 
PrimaryPlayerMove  
{! "
get# &
;& '
set( +
;+ ,
}- .
string 
OpponentMove 
{ 
get !
;! "
set# &
;& '
}( )
void 
InitGame 
( 
) 
; 
} 
} ì

_C:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Interfaces\IGameControllerService.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  

Interfaces  *
{ 
public		 

	interface		 "
IGameControllerService		 +
{

 
Task 
< 
	IGameData 
> 
GetInitialData &
(& '
string' -
playerId. 6
)6 7
;7 8
Task 
< 
bool 
> 
GameSubmitted  
(  !
IGame! &
gameDetails' 2
)2 3
;3 4
Task 
< 
bool 
> 
OnlineStatusUpdate %
(% &
IGame& +
currentGame, 7
)7 8
;8 9
Task 
< 
bool 
> 

UpdateGame 
( 
IGame #
currentGame$ /
)/ 0
;0 1
Task 
< 
bool 
> 
MoveToArchive  
(  !
IGame! &
currentGame' 2
)2 3
;3 4
} 
} Ÿ
RC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Interfaces\IGameData.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  

Interfaces  *
{ 
public		 

	interface		 
	IGameData		 
{

 
List 
< 
IGame 
> 
ActiveGames 
{  !
get" %
;% &
set' *
;* +
}, -
List 
< 
IGame 
> 
StagedGames 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ı
UC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Interfaces\IGameDetails.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  

Interfaces  *
{ 
public 

	interface 
IGameDetails !
{ 
IGame 
CurrentGame 
{ 
get 
;  
set! $
;$ %
}& '
} 
} Ï
^C:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Interfaces\IStagedGameRepository.cs
	namespace		 	
RforU		
 
.		 
GameManager		 
.		 
API		 
.		  

Interfaces		  *
{

 
public 

	interface !
IStagedGameRepository *
:+ ,
IRepository- 8
<8 9
List9 =
<= >
IGame> C
>C D
>D E
{ 
Task 
< 
List 
< 
IGame 
> 
> 
GetStagedGames (
(( )
string) /
playerId0 8
)8 9
;9 :
} 
} ª
WC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Models\CurrentGameDetails.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  
Models  &
{ 
internal		 
class		 
CurrentGameDetails		 %
:		& '
ICurrentGameDetails		( ;
{

 
public 
IGame 
CurrentGame  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ‘
IC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Models\Game.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  
Models  &
{		 
internal

 
class

 
Game

 
:

 
IGame

 
{ 
public 
string 
	SessionId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
GameId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Active 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
PrimaryPlayerId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool "
PrimaryPlayerSubmitted *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 

OpponentId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
OpponentSubmitted %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
PrimaryPlayerMove '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
OpponentMove "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
void 
InitGame 
( 
) 
{ 	
GameId 
= 
Guid 
. 
NewGuid !
(! "
)" #
.# $
ToString$ ,
(, -
)- .
;. /
} 	
} 
} õ
MC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Models\GameData.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  
Models  &
{		 
internal

 
class

 
GameData

 
:

 
	IGameData

 '
{ 
public 
List 
< 
IGame 
> 
ActiveGames &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
List 
< 
IGame 
> 
StagedGames &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} §
PC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Models\GameDetails.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  
Models  &
{ 
public		 

class		 
GameDetails		 
:		 
IGameDetails		 +
{

 
public 
IGame 
CurrentGame  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} æ

EC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Program.cs
	namespace 	
GameManager
 
. 
API 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	
CreateHostBuilder

 
(

 
args

 "
)

" #
.

# $
Build

$ )
(

) *
)

* +
.

+ ,
Run

, /
(

/ 0
)

0 1
;

1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ó
OC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\RegisterDIService.cs
	namespace		 	
GameManager		
 
.		 
API		 
{

 
public 

class 
RegisterDIService "
{ 
	protected 
RegisterDIService #
(# $
)$ %
{ 	
} 	
internal 
static 
void 
Register %
(% &
ref& )
IServiceCollection* <
service= D
)D E
{ 	
service 
. 
	AddScoped 
< !
IActiveGameRepository 3
,3 4 
ActiveGameRepository5 I
>I J
(J K
)K L
;L M
service 
. 
	AddScoped 
< !
IStagedGameRepository 3
,3 4 
StagedGameRepository5 I
>I J
(J K
)K L
;L M
} 	
} 
}   Í
_C:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Repositories\ActiveGameRepository.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  
Repositories  ,
{ 
public 

class  
ActiveGameRepository %
:& ''
CloudStorageTableRepository( C
<C D
ListD H
<H I
IGameI N
>N O
>O P
,P Q!
IActiveGameRepositoryR g
{ 
public 
Task 
< 
List 
< 
IGame 
> 
>  
GetActiveGames! /
(/ 0
string0 6
PlayerId7 ?
)? @
{ 	
var 
userActivedGame 
=  !
DummyActiveGameData #
.# $

ActiveGame$ .
.. /
Where/ 4
(4 5
g5 6
=>7 9
g: ;
.; <

OpponentId< F
==G I
PlayerIdJ R
||S U
gV W
.W X
PrimaryPlayerIdX g
==h j
PlayerIdk s
)s t
.t u
ToListu {
({ |
)| }
;} ~
return 
Task 
. 

FromResult "
<" #
List# '
<' (
IGame( -
>- .
>. /
(/ 0
userActivedGame0 ?
)? @
;@ A
} 	
} 
static 

class 
DummyActiveGameData $
{ 
public 
static 
List 
< 
IGame  
>  !

ActiveGame" ,
=- .
new/ 2
List3 7
<7 8
IGame8 =
>= >
{   	
new!! 
Game!! 
{"" 
GameId## 
=## 
$str## "
,##" #
PrimaryPlayerId$$ 
=$$  !
$str$$" +
,$$+ ,

OpponentId%% 
=%% 
$str%% 
,%%  
PrimaryPlayerMove&& !
=&&" #
$str&&$ *
,&&* +
Active'' 
='' 
true'' 
}(( 
,(( 
new)) 
Game)) 
{** 
GameId++ 
=++ 
$str++ "
,++" #
PrimaryPlayerId,, 
=,,  !
$str,," +
,,,+ ,

OpponentId-- 
=-- 
$str-- (
,--( )
Active.. 
=.. 
true.. 
}// 
,// 
new00 
Game00 
{11 
GameId22 
=22 
$str22 "
,22" #
PrimaryPlayerId33 
=33  !
$str33" +
,33+ ,

OpponentId44 
=44 
$str44 &
,44& '
PrimaryPlayerMove55 !
=55" #
$str55$ +
,55+ ,
Active66 
=66 
true66 
}77 
}88 	
;88	 

}99 
}:: è
aC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Repositories\ArchivedGameRepository.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  
Repositories  ,
{ 
public 

class "
ArchivedGameRepository '
:( )'
CloudStorageTableRepository* E
<E F
ListF J
<J K
IGameK P
>P Q
>Q R
,R S#
IArchivedGameRepositoryT k
{ 
public 
Task 
< 
List 
< 
IGame 
> 
>  
GetArchivedGames! 1
(1 2
string2 8
playerId9 A
)A B
{ 	
var 
archivedGame 
= !
DummyArchivedGameData %
.% &
ArchivedGame& 2
.2 3
Where3 8
(8 9
g9 :
=>; =
g 
. 

OpponentId  
==! #
playerId$ ,
||- /
g0 1
.1 2
PrimaryPlayerId2 A
==B D
playerIdE M
)M N
.N O
ToListO U
(U V
)V W
;W X
return 
Task 
. 

FromResult "
<" #
List# '
<' (
IGame( -
>- .
>. /
(/ 0
archivedGame0 <
)< =
;= >
} 	
public 
Task 
Archive 
( 
IGame !
completedGame" /
)/ 0
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
static 

class !
DummyArchivedGameData &
{   
public!! 
static!! 
List!! 
<!! 
IGame!!  
>!!  !
ArchivedGame!!" .
=!!/ 0
new!!1 4
List!!5 9
<!!9 :
IGame!!: ?
>!!? @
{"" 	
new## 
Game## 
{$$ 
GameId%% 
=%% 
$str%% %
,%%% &
PrimaryPlayerId&& 
=&&  !
$str&&" +
,&&+ ,

OpponentId'' 
='' 
$str'' (
,''( )
PrimaryPlayerMove(( !
=((" #
$str(($ *
,((* +
Active)) 
=)) 
true)) 
}** 
,** 
new++ 
Game++ 
{,, 
GameId-- 
=-- 
$str-- "
,--" #
PrimaryPlayerId.. 
=..  !
$str.." +
,..+ ,

OpponentId// 
=// 
$str// &
,//& '
Active00 
=00 
true00 
}11 
,11 
new22 
Game22 
{33 
GameId44 
=44 
$str44 "
,44" #
PrimaryPlayerId55 
=55  !
$str55" +
,55+ ,

OpponentId66 
=66 
$str66 (
,66( )
PrimaryPlayerMove77 !
=77" #
$str77$ +
,77+ ,
Active88 
=88 
true88 
}99 
}:: 	
;::	 

};; 
}<<  
_C:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Repositories\StagedGameRepository.cs
	namespace 	
RforU
 
. 
GameManager 
. 
API 
.  
Repositories  ,
{ 
public 

class  
StagedGameRepository %
:& ''
CloudStorageTableRepository( C
<C D
ListD H
<H I
IGameI N
>N O
>O P
,P Q!
IStagedGameRepositoryR g
{ 
public 
Task 
< 
List 
< 
IGame 
> 
>  
GetStagedGames! /
(/ 0
string0 6
playerId7 ?
)? @
{ 	
var 
userStagedGame 
=  
DummyStagedGameData #
.# $

StagedGame$ .
.. /
Where/ 4
(4 5
g5 6
=>7 9
g: ;
.; <

OpponentId< F
==G I
playerIdJ R
||S U
gV W
.W X
PrimaryPlayerIdX g
==h j
playerIdk s
)s t
.t u
ToListu {
({ |
)| }
;} ~
return 
Task 
. 

FromResult "
<" #
List# '
<' (
IGame( -
>- .
>. /
(/ 0
userStagedGame0 >
)> ?
;? @
} 	
} 
static 

class 
DummyStagedGameData $
{ 
public 
static 
List 
< 
IGame  
>  !

StagedGame" ,
=- .
new/ 2
List3 7
<7 8
IGame8 =
>= >
{ 	
new   
Game   
{!! 
GameId"" 
="" 
$str"" #
,""# $
PrimaryPlayerId## 
=##  !
$str##" +
,##+ ,

OpponentId$$ 
=$$ 
$str$$ (
,$$( )
Active%% 
=%% 
true%% 
}&& 
,&& 
new'' 
Game'' 
{(( 
GameId)) 
=)) 
$str)) #
,))# $
PrimaryPlayerId** 
=**  !
$str**" +
,**+ ,

OpponentId++ 
=++ 
$str++ (
,++( )
Active,, 
=,, 
true,, 
}-- 
,-- 
new.. 
Game.. 
{// 
GameId00 
=00 
$str00 #
,00# $
PrimaryPlayerId11 
=11  !
$str11" +
,11+ ,

OpponentId22 
=22 
$str22 &
,22& '
Active33 
=33 
true33 
}44 
}55 	
;55	 

}77 
}88 Ø1
\C:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Services\GameControllerService.cs
	namespace 	
GameManager
 
. 
API 
. 
Services "
{ 
internal 
class !
GameControllerService (
:) *"
IGameControllerService+ A
{ 
public !
IActiveGameRepository $ 
ActiveGameRepository% 9
{: ;
get< ?
;? @
}A B
private 
readonly !
IActiveGameRepository .!
_activeGameRepository/ D
;D E
private 
readonly !
IStagedGameRepository .!
_stagedGameRepository/ D
;D E
private 
readonly (
IEventHubCoustomEventService 5(
_eventHubCoustomEventService6 R
;R S
public !
GameControllerService $
($ %!
IActiveGameRepository ! 
activeGameRepository" 6
,6 7!
IStagedGameRepository ! 
stagedGameRepository" 6
,6 7(
IEventHubCoustomEventService ('
eventHubCoustomEventService) D
) 	
{ 	 
ActiveGameRepository  
=! " 
activeGameRepository# 7
;7 8!
_stagedGameRepository   !
=  " # 
stagedGameRepository  $ 8
;  8 9(
_eventHubCoustomEventService!! (
=!!) *'
eventHubCoustomEventService!!+ F
;!!F G
}"" 	
public)) 
async)) 
Task)) 
<)) 
	IGameData)) #
>))# $
GetInitialData))% 3
())3 4
string))4 :
playerId)); C
)))C D
{** 	
var,, 
activeGames,, 
=,, 
await,, #
GetActiveGames,,$ 2
(,,2 3
playerId,,3 ;
),,; <
;,,< =
var-- 
stagedGames-- 
=-- 
await-- #
GeStagedGames--$ 1
(--1 2
playerId--2 :
)--: ;
;--; <
var// 
initData// 
=// 
new// 
GameData// '
(//' (
)//( )
{00 
ActiveGames22 
=22 
activeGames22 )
,22) *
StagedGames33 
=33 
stagedGames33 )
}55 
;55 
return66 
initData66 
;66 
}77 	
public99 
Task99 
<99 
bool99 
>99 
GameSubmitted99 '
(99' (
IGame99( -
gameDetails99. 9
)999 :
{:: 	
List== 
<== 

CloudEvent== 
>== 
eventpayload== )
===* +
new==, /
List==0 4
<==4 5

CloudEvent==5 ?
>==? @
(==@ A
)==A B
;==B C(
_eventHubCoustomEventService>> (
.>>( )
createPayload>>) 6
(>>6 7
gameDetails>>7 B
,>>B C
ref>>D G
eventpayload>>H T
,>>T U
$str>>V s
)>>s t
;>>t u(
_eventHubCoustomEventService?? (
.??( )
PublishEventAsync??) :
(??: ;
eventpayload??; G
,??G H
$str??I c
)??c d
;??d e
returnBB 
TaskBB 
.BB 

FromResultBB "
<BB" #
boolBB# '
>BB' (
(BB( )
falseBB) .
)BB. /
;BB/ 0
}DD 	
publicFF 
TaskFF 
<FF 
boolFF 
>FF 
OnlineStatusUpdateFF ,
(FF, -
IGameFF- 2
currentGameFF3 >
)FF> ?
{GG 	
returnHH 
TaskHH 
.HH 

FromResultHH "
<HH" #
boolHH# '
>HH' (
(HH( )
falseHH) .
)HH. /
;HH/ 0
}II 	
publicKK 
TaskKK 
<KK 
boolKK 
>KK 

UpdateGameKK $
(KK$ %
IGameKK% *
currentGameKK+ 6
)KK6 7
{LL 	
returnMM 
TaskMM 
.MM 

FromResultMM "
<MM" #
boolMM# '
>MM' (
(MM( )
falseMM) .
)MM. /
;MM/ 0
}NN 	
publicPP 
TaskPP 
<PP 
boolPP 
>PP 
MoveToArchivePP '
(PP' (
IGamePP( -
currentGamePP. 9
)PP9 :
{QQ 	
returnRR 
TaskRR 
.RR 

FromResultRR "
<RR" #
boolRR# '
>RR' (
(RR( )
falseRR) .
)RR. /
;RR/ 0
}SS 	
internalVV 
asyncVV 
TaskVV 
<VV 
ListVV  
<VV  !
IGameVV! &
>VV& '
>VV' (
GetActiveGamesVV) 7
(VV7 8
stringVV8 >
playerIdVV? G
)VVG H
{WW 	
varXX 

activeGameXX 
=XX 
awaitXX "!
_activeGameRepositoryXX# 8
.XX8 9
GetActiveGamesXX9 G
(XXG H
playerIdXXH P
)XXP Q
;XXQ R
returnZZ 

activeGameZZ 
.ZZ 
WhereZZ #
(ZZ# $
gZZ$ %
=>ZZ& (
stringZZ) /
.ZZ/ 0
IsNullOrEmptyZZ0 =
(ZZ= >
gZZ> ?
.ZZ? @
OpponentMoveZZ@ L
)ZZL M
)ZZM N
.ZZN O
ToListZZO U
(ZZU V
)ZZV W
;ZZW X
}[[ 	
internal]] 
async]] 
Task]] 
<]] 
List]]  
<]]  !
IGame]]! &
>]]& '
>]]' (
GeStagedGames]]) 6
(]]6 7
string]]7 =
playerId]]> F
)]]F G
{^^ 	
var__ 
onlinePlayer__ 
=__ 
await__ $!
_stagedGameRepository__% :
.__: ;
GetStagedGames__; I
(__I J
playerId__J R
)__R S
;__S T
return`` 
onlinePlayer`` 
;``  
}aa 	
}bb 
}cc ù
EC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\Startup.cs
	namespace 	
GameManager
 
. 
API 
{ 
public		 

class		 
Startup		 
{

 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddControllers #
(# $
)$ %
;% &
RegisterDIService 
. 
Register &
(& '
ref' *
services+ 3
)3 4
;4 5
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IWebHostEnvironment7 J
envK N
)N O
{ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. %
UseDeveloperExceptionPage -
(- .
). /
;/ 0
} 
app!! 
.!! 
UseHttpsRedirection!! #
(!!# $
)!!$ %
;!!% &
app## 
.## 

UseRouting## 
(## 
)## 
;## 
app%% 
.%% 
UseAuthorization%%  
(%%  !
)%%! "
;%%" #
app'' 
.'' 
UseEndpoints'' 
('' 
	endpoints'' &
=>''' )
{(( 
	endpoints)) 
.)) 
MapControllers)) (
())( )
)))) *
;))* +
}** 
)** 
;** 
}++ 	
},, 
}-- Ú
MC:\00PrLnScr\interview\Edge10\src\Services\GameManager.API\WeatherForecast.cs
	namespace 	
GameManager
 
. 
API 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
TemperatureC		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 