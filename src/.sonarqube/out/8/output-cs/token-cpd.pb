√
8C:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Program.cs
	namespace		 	
RforU		
 
{

 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
{ 	
return 
Host 
.  
CreateDefaultBuilder ,
(, -
args- 1
)1 2
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5

webBuilder 
. %
ConfigureAppConfiguration 8
(8 9
(9 :
hostingContext: H
,H I
configJ P
)P Q
=>R T
{ 
config 
. #
AddEnvironmentVariables 6
(6 7
)7 8
. 
AddJsonFile (
(( )
$str) =
,= >
true? C
,C D
falseE J
)J K
;K L
} 
) 
; 
} 
) 
; 
}   	
}!! 
}"" Ω
BC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\RegisterDIService.cs
	namespace

 	
RforU


 
{ 
public 

class 
RegisterDIService "
{ 
	protected 
RegisterDIService #
(# $
)$ %
{ 	
} 	
internal 
static 
void 
Register %
(% &
ref& )
IServiceCollection* <
service= D
)D E
{ 	
service 
. 
AddSingleton  
<  !
IMoveRepository! 0
,0 1
MoveRepository2 @
>@ A
(A B
)B C
;C D
service 
. 
	AddScoped 
< !
IActiveGameRepository 3
,3 4 
ActiveGameRepository5 I
>I J
(J K
)K L
;L M
service 
. 
	AddScoped 
< #
IOnlinePlayerRepository 5
,5 6"
OnlinePlayerRepository7 M
>M N
(N O
)O P
;P Q
service 
. 
	AddScoped 
< !
IStagedGameRepository 3
,3 4 
StagedGameRepository5 I
>I J
(J K
)K L
;L M
service 
. 
AddTransient  
<  !"
IGameControllerService! 7
,7 8!
GameControllerService9 N
>N O
(O P
)P Q
;Q R
service 
. 
AddTransient  
<  !
IGameService! -
,- .
GameService/ :
>: ;
(; <
)< =
;= >
}"" 	
}## 
}$$ ¡>
UC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Controllers\V1\GameController.cs
	namespace 	
RforU
 
. 
Controllers 
{ 
[ 
Route 

(
 
$str  
)  !
]! "
[ 
ApiController 
] 
public 

class 
GameController 
:  !
ControllerBase" 0
{ 
private 
readonly "
IGameControllerService /"
_gameControllerService0 F
;F G
public 
GameController 
( "
IGameControllerService 4!
gameControllerService5 J
)J K
{ 	"
_gameControllerService "
=# $!
gameControllerService% :
;: ;
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status200OK* 5
,5 6
Type7 ;
=< =
typeof> D
(D E
	IGameDataE N
)N O
)O P
]P Q
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *(
Status500InternalServerError* F
)F G
]G H
public 
async 
Task 
< 
ActionResult &
<& '
	IGameData' 0
>0 1
>1 2
UserGameData3 ?
(? @
[@ A
	FromQueryA J
]J K
stringL R
userIdS Y
)Y Z
{   	
try!! 
{"" 
var$$ 
initData$$ 
=$$ 
await$$ $"
_gameControllerService$$% ;
.$$; <
GetInitialData$$< J
($$J K
userId$$K Q
)$$Q R
;$$R S
return%% 
Ok%% 
(%% 
initData%% "
)%%" #
;%%# $
}&& 
catch'' 
('' 
	Exception'' 
ex'' 
)''  
{(( 
return,, 

StatusCode,, !
(,,! "
StatusCodes,," -
.,,- .(
Status500InternalServerError,,. J
,,,J K
RforUErrorCodes-- #
.--# $
GetError--$ ,
(--, -
	ErrorType--- 6
.--6 7
Application--7 B
)--B C
)--C D
;--D E
}.. 
}// 	
[11 	
HttpGet11	 
]11 
[22 	
Route22	 
(22 
$str22 
)22 
]22 
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
(33D E
IPlayer33E L
)33L M
)33M N
]33N O
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
<55& '
IPlayer55' .
>55. /
>55/ 0
	GetPlayer551 :
(55: ;
[55; <
	FromQuery55< E
]55E F
string55G M
playerId55N V
)55V W
{66 	
try77 
{88 
IPlayer:: 
player:: 
=::  
await::! &"
_gameControllerService::' =
.::= >
	GetPlayer::> G
(::G H
playerId::H P
)::P Q
;::Q R
return;; 
Ok;; 
(;; 
player;;  
);;  !
;;;! "
}<< 
catch== 
(== 
	Exception== 
ex== 
)==  
{>> 
returnBB 

StatusCodeBB !
(BB! "
StatusCodesBB" -
.BB- .(
Status500InternalServerErrorBB. J
,BBJ K
RforUErrorCodesCC #
.CC# $
GetErrorCC$ ,
(CC, -
	ErrorTypeCC- 6
.CC6 7
ApplicationCC7 B
)CCB C
)CCC D
;CCD E
}DD 
}EE 	
[HH 	
HttpPostHH	 
]HH 
[II 	
RouteII	 
(II 
$strII 
)II 
]II 
[JJ 	 
ProducesResponseTypeJJ	 
(JJ 
StatusCodesJJ )
.JJ) *
Status200OKJJ* 5
,JJ5 6
TypeJJ7 ;
=JJ< =
typeofJJ> D
(JJD E
	IGameDataJJE N
)JJN O
)JJO P
]JJP Q
[KK 	 
ProducesResponseTypeKK	 
(KK 
StatusCodesKK )
.KK) *(
Status500InternalServerErrorKK* F
)KKF G
]KKG H
publicLL 
asyncLL 
TaskLL 
<LL 
ActionResultLL &
<LL& '
boolLL' +
>LL+ ,
>LL, -

AddCurrentLL. 8
(LL8 9
[LL9 :
FromBodyLL: B
]LLB C
PlayerLLD J
userLLK O
)LLO P
{MM 	
tryOO 
{PP 
boolRR 
initDataRR 
=RR 
awaitRR  %"
_gameControllerServiceRR& <
.RR< =

AddCurrentRR= G
(RRG H
userRRH L
)RRL M
;RRM N
returnSS 
OkSS 
(SS 
initDataSS "
)SS" #
;SS# $
}TT 
catchUU 
(UU 
	ExceptionUU 
exUU 
)UU  
{VV 
returnZZ 

StatusCodeZZ !
(ZZ! "
StatusCodesZZ" -
.ZZ- .(
Status500InternalServerErrorZZ. J
,ZZJ K
RforUErrorCodes[[ #
.[[# $
GetError[[$ ,
([[, -
	ErrorType[[- 6
.[[6 7
Application[[7 B
)[[B C
)[[C D
;[[D E
}\\ 
}__ 	
[aa 	
HttpPostaa	 
]aa 
[bb 	
Routebb	 
(bb 
$strbb 
)bb 
]bb 
[cc 	 
ProducesResponseTypecc	 
(cc 
StatusCodescc )
.cc) *
Status200OKcc* 5
,cc5 6
Typecc7 ;
=cc< =
typeofcc> D
(ccD E
	IGameDataccE N
)ccN O
)ccO P
]ccP Q
[dd 	 
ProducesResponseTypedd	 
(dd 
StatusCodesdd )
.dd) *(
Status500InternalServerErrordd* F
)ddF G
]ddG H
publicee 
asyncee 
Taskee 
<ee 
ActionResultee &
<ee& '
boolee' +
>ee+ ,
>ee, -
RegisterMoveree. ;
(ee; <
[ee< =
FromBodyee= E
]eeE F
GameDetailseeG R
gameDetailseeS ^
)ee^ _
{ff 	
tryhh 
{ii 
boolkk 
initDatakk 
=kk 
awaitkk  %"
_gameControllerServicekk& <
.kk< =
RegisterMovekk= I
(kkI J
gameDetailskkJ U
)kkU V
;kkV W
returnll 
Okll 
(ll 
initDatall "
)ll" #
;ll# $
}mm 
catchnn 
(nn 
	Exceptionnn 
exnn 
)nn  
{oo 
returnss 

StatusCodess !
(ss! "
StatusCodesss" -
.ss- .(
Status500InternalServerErrorss. J
,ssJ K
RforUErrorCodestt #
.tt# $
GetErrortt$ ,
(tt, -
	ErrorTypett- 6
.tt6 7
Applicationtt7 B
)ttB C
)ttC D
;ttD E
}uu 
}xx 	
}yy 
}zz Û
`C:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Controllers\V1\WeatherForecastController.cs
	namespace 	
RforU
 
. 
Controllers 
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str  
)  !
]! "
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private 
static 
readonly 
string  &
[& '
]' (
	Summaries) 2
=3 4
new5 8
[8 9
]9 :
{ 	
$str 
, 
$str !
,! "
$str# +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= C
,C D
$strE L
,L M
$strN S
,S T
$strU a
,a b
$strc n
} 	
;	 

private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
var   
rng   
=   
new   
Random    
(    !
)  ! "
;  " #
return!! 

Enumerable!! 
.!! 
Range!! #
(!!# $
$num!!$ %
,!!% &
$num!!' (
)!!( )
.!!) *
Select!!* 0
(!!0 1
index!!1 6
=>!!7 9
new!!: =
WeatherForecast!!> M
{"" 
Date## 
=## 
DateTime## 
.##  
Now##  #
.### $
AddDays##$ +
(##+ ,
index##, 1
)##1 2
,##2 3
TemperatureC$$ 
=$$ 
rng$$ "
.$$" #
Next$$# '
($$' (
-$$( )
$num$$) +
,$$+ ,
$num$$- /
)$$/ 0
,$$0 1
Summary%% 
=%% 
	Summaries%% #
[%%# $
rng%%$ '
.%%' (
Next%%( ,
(%%, -
	Summaries%%- 6
.%%6 7
Length%%7 =
)%%= >
]%%> ?
}&& 
)&& 
.'' 
ToArray'' 
('' 
)'' 
;'' 
}(( 	
})) 
}** û
XC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IActiveGameRepository.cs
	namespace		 	
RforU		
 
.		 

Interfaces		 
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
} ù
ZC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IArchivedGameRepository.cs
	namespace 	
RforU
 
. 

Interfaces 
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
} Œ
VC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\ICurrentGameDetails.cs
	namespace 	
RforU
 
. 

Interfaces 
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
}& '
IPlayer 
PrimaryPlayer 
{ 
get  #
;# $
set% (
;( )
}* +
IPlayer 
Opponent 
{ 
get 
; 
set  #
;# $
}% &
} 
}		 –
HC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IGame.cs
	namespace 	
RforU
 
. 

Interfaces 
{ 
public 

	interface 
IGame 
{ 
string 
	SessionId 
{ 
get 
; 
set  #
;# $
}% &
string 
GameId 
{ 
get 
; 
set  
;  !
}" #
bool 
Active 
{ 
get 
; 
set 
; 
}  !
string 
PrimaryPlayerId 
{  
get! $
;$ %
set& )
;) *
}+ ,
bool

 "
PrimaryPlayerSubmitted

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
string 

OpponentId 
{ 
get 
;  
set! $
;$ %
}& '
bool 
OpponentSubmitted 
{  
get! $
;$ %
set& )
;) *
}+ ,
string 
PrimaryPlayerMove  
{! "
get# &
;& '
set( +
;+ ,
}- .
string 
OpponentMove 
{ 
get !
;! "
set# &
;& '
}( )
void 
InitGame 
( 
) 
; 
} 
} É
YC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IGameControllerService.cs
	namespace 	
RforU
 
. 

Interfaces 
{		 
public

 

	interface

 "
IGameControllerService

 +
{ 
Task 
< 
	IGameData 
> 
GetInitialData &
(& '
string' -
userId. 4
)4 5
;5 6
Task 
< 
bool 
> 

AddCurrent 
( 
IPlayer %
user& *
)* +
;+ ,
Task 
< 
IPlayer 
> 
	GetPlayer 
(  
string  &
userId' -
)- .
;. /
Task 
< 
bool 
> 
RegisterMove 
(  
GameDetails  +
gameDetails, 7
)7 8
;8 9
} 
} …
LC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IGameData.cs
	namespace 	
RforU
 
. 

Interfaces 
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
< 
IPlayer 
> 
OnlinePlayers #
{$ %
get& )
;) *
set+ .
;. /
}0 1
List 
< 
IGame 
> 
StagedGames 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} æ
OC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IGameDetails.cs
	namespace 	
RforU
 
. 

Interfaces 
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
}& '
IPlayer 
PrimaryPlayer 
{ 
get  #
;# $
set% (
;( )
}* +
IPlayer 
Opponent 
{ 
get 
; 
set  #
;# $
}% &
}		 
}

 ã
OC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IGameService.cs
	namespace 	
RforU
 
. 

Interfaces 
{ 
public		 

	interface		 
IGameService		 !
{

 
IMoveResult 
Play 
( 
string 
primaryPlayerId  /
,/ 0
List1 5
<5 6
IGame6 ;
>; <
games= B
)B C
;C D
} 
} «
HC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IMove.cs
	namespace 	
RforU
 
. 

Interfaces 
{ 
public		 

	interface		 
IMove		 
{

 
string 
Name 
{ 
get 
; 
set 
; 
}  !
int 
Id 
{ 
get 
; 
set 
; 
} 
List 
< 
string 
> 
Beats 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ÿ
RC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IMoveRepository.cs
	namespace 	
RforU
 
. 

Interfaces 
{ 
public		 

	interface		 
IMoveRepository		 $
{

 
List 
< 
IMove 
> 
Moves 
{ 
get 
;  
set! $
;$ %
}& '
List 
< 
IMove 
> 
Get 
( 
) 
; 
} 
} £
NC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IMoveResult.cs
	namespace 	
RforU
 
. 

Interfaces 
{ 
public 

	interface 
IMoveResult  
{ 
bool 
Win 
{ 
get 
; 
set 
; 
} 
string 
Message 
{ 
get 
; 
set !
;! "
}# $
} 
}		 Î
ZC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IOnlinePlayerRepository.cs
	namespace		 	
RforU		
 
.		 

Interfaces		 
{

 
public 

	interface #
IOnlinePlayerRepository ,
:- .
IRepository/ :
<: ;
List; ?
<? @
IPlayer@ G
>G H
>H I
{ 
Task 
< 
List 
< 
IPlayer 
> 
> 
GetOnlinePlayers ,
(, -
)- .
;. /
Task 
< 
bool 
> "
AddUpdateOnlinePlayers )
() *
IPlayer* 1
player2 8
)8 9
;9 :
Task 
< 
IPlayer 
> 
	GetPlayer 
(  
string  &
userId' -
)- .
;. /
} 
} ÿ	
JC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IPlayer.cs
	namespace 	
RforU
 
. 

Interfaces 
{ 
public		 

	interface		 
IPlayer		 
{

 
string 
PlayerId 
{ 
get 
; 
set "
;" #
}$ %
string 
Name 
{ 
get 
; 
set 
; 
}  !
bool 
Online 
{ 
get 
; 
set 
; 
}  !
bool 
	Available 
{ 
get 
; 
set !
;! "
}# $
public 
DateTime 
OnlineSince #
{$ %
get& )
;) *
set+ .
;. /
}0 1
string 
TypeOfPlayer 
{ 
get !
;! "
set# &
;& '
}( )
void 

InitPlayer 
( 
string 
playerId '
)' (
;( )
} 
} û
XC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Interfaces\IStagedGameRepository.cs
	namespace		 	
RforU		
 
.		 

Interfaces		 
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
} ¨
QC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Models\CurrentGameDetails.cs
	namespace 	
RforU
 
. 
Models 
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
}- .
public 
IPlayer 
PrimaryPlayer $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
IPlayer 
Opponent 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Ü
CC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Models\Game.cs
	namespace 	
RforU
 
. 
Models 
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
} ü
GC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Models\GameData.cs
	namespace 	
RforU
 
. 
Models 
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
< 
IPlayer 
> 
OnlinePlayers *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
List 
< 
IGame 
> 
StagedGames &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ï
JC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Models\GameDetails.cs
	namespace 	
RforU
 
. 
Models 
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
}- .
public 
IPlayer 
PrimaryPlayer $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
IPlayer 
Opponent 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ù
CC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Models\Move.cs
	namespace 	
RforU
 
. 
Models 
{		 
public

 

class

 
Move

 
:

 
IMove

 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
List 
< 
string 
> 
Beats !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Move 
( 
) 
{ 	
Beats 
= 
new 
List 
< 
string #
># $
($ %
)% &
;& '
} 	
} 
} Â
IC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Models\MoveResult.cs
	namespace 	
RforU
 
. 
Models 
{ 
public		 

class		 

MoveResult		 
:		 
IMoveResult		 )
{

 
public 
bool 
Win 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} È
EC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Models\Player.cs
	namespace

 	
RforU


 
.

 
Models

 
{ 
public 

class 
Player 
: 
IPlayer !
{ 
public 
string 
PlayerId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Online 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
	Available 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
OnlineSince #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
JsonConverter	 
( 
typeof 
( 
StringEnumConverter 1
)1 2
)2 3
]3 4
public 
string 
TypeOfPlayer "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
void 

InitPlayer 
( 
string %
playerId& .
). /
{ 	
PlayerId 
= 
playerId 
;  
} 	
} 
} ú
YC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Repositories\ActiveGameRepository.cs
	namespace 	
RforU
 
. 
Repositories 
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
}:: ¡
[C:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Repositories\ArchivedGameRepository.cs
	namespace 	
RforU
 
. 
Repositories 
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
}<< “
SC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Repositories\MoveRepository.cs
	namespace		 	
RforU		
 
.		 
Repositories		 
{

 
public 

class 
MoveRepository 
:  !
IMoveRepository" 1
{ 
public 
List 
< 
IMove 
> 
Moves  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
MoveRepository 
( 
) 
{ 	
Moves 
= 
new 
List 
< 
IMove "
>" #
(# $
)$ %
{ 
new 
Move 
{ 
Name 
=  
$str! '
,' (
Id) +
=, -
$num. 0
,0 1
Beats2 7
=8 9
new: =
List> B
<B C
stringC I
>I J
(J K
)K L
{M N
$strN X
}X Y
}Y Z
,Z [
new 
Move 
{ 
Name 
=  
$str! +
,+ ,
Id- /
=0 1
$num2 4
,4 5
Beats6 ;
=< =
new> A
ListB F
<F G
stringG M
>M N
(N O
)O P
{Q R
$strR Y
}Y Z
}Z [
,[ \
new 
Move 
{ 
Name 
=  
$str! (
,( )
Id* ,
=- .
$num/ 1
,1 2
Beats3 8
=9 :
new; >
List? C
<C D
stringD J
>J K
(K L
)L M
{N O
$strO U
}U V
}V W
} 
; 
} 	
public 
List 
< 
IMove 
> 
Get 
( 
)  
{ 	
return 
Moves 
; 
} 	
} 
} ù/
[C:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Repositories\OnlinePlayerRepository.cs
	namespace 	
RforU
 
. 
Repositories 
{ 
public 

class "
OnlinePlayerRepository '
:( )'
CloudStorageTableRepository* E
<E F
ListF J
<J K
IPlayerK R
>R S
>S T
,T U#
IOnlinePlayerRepositoryV m
{ 
public 
Task 
< 
List 
< 
IPlayer  
>  !
>! "
GetOnlinePlayers# 3
(3 4
)4 5
{ 	
return 
Task 
. 

FromResult "
<" #
List# '
<' (
IPlayer( /
>/ 0
>0 1
(1 2!
DummyOnlinePlayerData2 G
.G H
OnlinePlayerH T
)T U
;U V
} 	
public 
async 
Task 
< 
bool 
> "
AddUpdateOnlinePlayers  6
(6 7
IPlayer7 >
player? E
)E F
{ 	
await 
base 
. 
Add 
( 
new 
List #
<# $
IPlayer$ +
>+ ,
{- .
player/ 5
}6 7
)7 8
;8 9
if 
( !
DummyOnlinePlayerData %
.% &
OnlinePlayer& 2
.2 3
Any3 6
(6 7
p7 8
=>9 ;
p< =
.= >
PlayerId> F
==G I
playerJ P
.P Q
PlayerIdQ Y
)Y Z
)Z [
{   
_!! 
=!! !
DummyOnlinePlayerData!! )
.!!) *
OnlinePlayer!!* 6
.!!6 7
Where!!7 <
(!!< =
p!!= >
=>!!? A
p!!B C
.!!C D
PlayerId!!D L
==!!M O
player!!P V
.!!V W
PlayerId!!W _
)!!_ `
."" 
All"" 
("" 
x"" 
=>"" 
{## 
x$$ 
.$$ 
	Available$$ #
=$$$ %
true$$& *
;$$* +
x%% 
.%% 
Online%%  
=%%! "
true%%# '
;%%' (
x&& 
.&& 
TypeOfPlayer&& &
=&&' (
player&&) /
.&&/ 0
TypeOfPlayer&&0 <
;&&< =
x'' 
.'' 
OnlineSince'' %
=''& '
player''( .
.''. /
OnlineSince''/ :
;'': ;
return(( 
true(( #
;((# $
}** 
)** 
;** 
return++ 
true++ 
;++ 
},, !
DummyOnlinePlayerData.. !
...! "
OnlinePlayer.." .
.... /
Add../ 2
(..2 3
player..3 9
)..9 :
;..: ;
return// 
true// 
;// 
}00 	
public22 
Task22 
<22 
IPlayer22 
>22 
	GetPlayer22 &
(22& '
string22' -
playerId22. 6
)226 7
{33 	
var66 
player66 
=66 !
DummyOnlinePlayerData66 .
.66. /
OnlinePlayer66/ ;
.66; <
FirstOrDefault66< J
(66J K
p66K L
=>66M O
p66P Q
.66Q R
PlayerId66R Z
==66[ ]
playerId66^ f
)66f g
;66g h
return77 
Task77 
.77 

FromResult77 "
<77" #
IPlayer77# *
>77* +
(77+ ,
player77, 2
)772 3
;773 4
}88 	
}99 
class;; 	!
DummyOnlinePlayerData;;
 
{<< 
	protected== !
DummyOnlinePlayerData== '
(==' (
)==( )
{>> 	
}@@ 	
publicBB 
staticBB 
ListBB 
<BB 
IPlayerBB "
>BB" #
OnlinePlayerBB$ 0
=BB1 2
newCC 
ListCC 
<CC 
IPlayerCC 
>CC 
{DD 
newEE 
PlayerEE 
{EE 
NameEE  
=EE! "
$strEE# ,
,EE, -
PlayerIdEE. 6
=EE7 8
$strEE9 B
,EEB C
OnlineSinceEED O
=EEP Q
DateTimeEER Z
.EEZ [
NowEE[ ^
.EE^ _
AddHoursEE_ g
(EEg h
-EEh i
$numEEi j
)EEj k
}EEk l
,EEl m
newFF 
PlayerFF 
{FF 
NameFF  
=FF! "
$strFF# -
,FF- .
PlayerIdFF/ 7
=FF8 9
$strFF: D
,FFD E
OnlineSinceFFF Q
=FFR S
DateTimeFFT \
.FF\ ]
NowFF] `
.FF` a
AddHoursFFa i
(FFi j
-FFj k
$numFFk l
)FFl m
}FFm n
,FFn o
newGG 
PlayerGG 
{GG 
NameGG  
=GG! "
$strGG# -
,GG- .
PlayerIdGG/ 7
=GG8 9
$strGG: D
,GGD E
OnlineSinceGGF Q
=GGR S
DateTimeGGT \
.GG\ ]
NowGG] `
.GG` a
AddHoursGGa i
(GGi j
-GGj k
$numGGk l
)GGl m
}GGm n
,GGn o
newHH 
PlayerHH 
{HH 
NameHH  
=HH! "
$strHH# -
,HH- .
PlayerIdHH/ 7
=HH8 9
$strHH: D
,HHD E
OnlineSinceHHF Q
=HHR S
DateTimeHHT \
.HH\ ]
NowHH] `
.HH` a
AddHoursHHa i
(HHi j
-HHj k
$numHHk l
)HHl m
}HHm n
}II 
;II 
}JJ 
}LL ¸
YC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Repositories\StagedGameRepository.cs
	namespace 	
RforU
 
. 
Repositories 
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
}88 ó3
VC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Services\GameControllerService.cs
	namespace 	
RforU
 
. 
Services 
{ 
internal 
class !
GameControllerService (
:) *"
IGameControllerService+ A
{ 
private 
readonly !
IActiveGameRepository .!
_activeGameRepository/ D
;D E
private 
readonly #
IOnlinePlayerRepository 0#
_onlinePlayerRepository1 H
;H I
private 
readonly !
IStagedGameRepository .!
_stagedGameRepository/ D
;D E
public !
GameControllerService $
($ %!
IActiveGameRepository ! 
activeGameRepository" 6
,6 7#
IOnlinePlayerRepository #"
onlinePlayerRepository$ :
,: ;!
IStagedGameRepository ! 
stagedGameRepository" 6
) 	
{ 	!
_activeGameRepository !
=" # 
activeGameRepository$ 8
;8 9#
_onlinePlayerRepository #
=$ %"
onlinePlayerRepository& <
;< =!
_stagedGameRepository !
=" # 
stagedGameRepository$ 8
;8 9
}   	
public'' 
async'' 
Task'' 
<'' 
	IGameData'' #
>''# $
GetInitialData''% 3
(''3 4
string''4 :
playerId''; C
)''C D
{(( 	
var)) 
onlinePlayer)) 
=)) 
await)) $
GetOnlinePlayer))% 4
())4 5
)))5 6
;))6 7
var** 
activeGames** 
=** 
await** #
GetActiveGames**$ 2
(**2 3
playerId**3 ;
)**; <
;**< =
var++ 
stagedGames++ 
=++ 
await++ #
GeStagedGames++$ 1
(++1 2
playerId++2 :
)++: ;
;++; <
var-- 
initData-- 
=-- 
new-- 
GameData-- '
(--' (
)--( )
{.. 
OnlinePlayers// 
=// 
onlinePlayer//  ,
,//, -
ActiveGames00 
=00 
activeGames00 )
,00) *
StagedGames11 
=11 
stagedGames11 )
}33 
;33 
return44 
initData44 
;44 
}55 	
public77 
async77 
Task77 
<77 
bool77 
>77 

AddCurrent77  *
(77* +
IPlayer77+ 2
user773 7
)777 8
{88 	
try99 
{:: 
await<< #
_onlinePlayerRepository<< -
.<<- ."
AddUpdateOnlinePlayers<<. D
(<<D E
user<<E I
)<<I J
;<<J K
return== 
true== 
;== 
}>> 
catch?? 
(?? 
	Exception?? 
_?? 
)?? 
{@@ 
returnAA 
falseAA 
;AA 
}BB 
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
IPlayerGG !
>GG! "
	GetPlayerGG# ,
(GG, -
stringGG- 3
userIdGG4 :
)GG: ;
{HH 	
IPlayerII 
playerII 
=II 
awaitII "#
_onlinePlayerRepositoryII# :
.II: ;
	GetPlayerII; D
(IID E
userIdIIE K
)IIK L
;IIL M
returnJJ 
playerJJ 
;JJ 
}KK 	
publicMM 
TaskMM 
<MM 
boolMM 
>MM 
RegisterMoveMM &
(MM& '
GameDetailsMM' 2
gameDetailsMM3 >
)MM> ?
{NN 	
ifOO 
(OO 
gameDetailsOO 
==OO 
nullOO #
||OO$ &
gameDetailsOO' 2
.OO2 3
CurrentGameOO3 >
==OO? A
nullOOB F
)OOF G
{OOH I
returnOOJ P
TaskOOQ U
.OOU V

FromResultOOV `
<OO` a
boolOOa e
>OOe f
(OOf g
falseOOg l
)OOl m
;OOm n
}OOo p
returnQQ 
TaskQQ 
.QQ 

FromResultQQ "
<QQ" #
boolQQ# '
>QQ' (
(QQ( )
falseQQ) .
)QQ. /
;QQ/ 0
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
internal^^ 
async^^ 
Task^^ 
<^^ 
List^^  
<^^  !
IPlayer^^! (
>^^( )
>^^) *
GetOnlinePlayer^^+ :
(^^: ;
)^^; <
{__ 	
var`` 
onlinePlayer`` 
=`` 
await`` $#
_onlinePlayerRepository``% <
.``< =
GetOnlinePlayers``= M
(``M N
)``N O
;``O P
returnaa 
onlinePlayeraa 
;aa  
}bb 	
internaldd 
asyncdd 
Taskdd 
<dd 
Listdd  
<dd  !
IGamedd! &
>dd& '
>dd' (
GeStagedGamesdd) 6
(dd6 7
stringdd7 =
playerIddd> F
)ddF G
{ee 	
varff 
onlinePlayerff 
=ff 
awaitff $!
_stagedGameRepositoryff% :
.ff: ;
GetStagedGamesff; I
(ffI J
playerIdffJ R
)ffR S
;ffS T
returngg 
onlinePlayergg 
;gg  
}hh 	
}ii 
}jj ‡
LC:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Server\Services\GameService.cs
	namespace 	
RforU
 
. 
Services 
{ 
internal 
class 
GameService 
:  
IGameService! -
{ 
private 
readonly !
IActiveGameRepository .!
_activeGameRepository/ D
;D E
private 
readonly #
IOnlinePlayerRepository 0#
_onlinePlayerRepository1 H
;H I
private 
readonly !
IStagedGameRepository .!
_stagedGameRepository/ D
;D E
private 
readonly 
IMoveRepository (
_moveRepository) 8
;8 9
public 
GameService 
( !
IActiveGameRepository ! 
activeGameRepository" 6
,6 7#
IOnlinePlayerRepository #"
onlinePlayerRepository$ :
,: ;!
IStagedGameRepository ! 
stagedGameRepository" 6
,6 7
IMoveRepository 
moveRepository *
) 	
{ 	!
_activeGameRepository !
=" # 
activeGameRepository$ 8
;8 9#
_onlinePlayerRepository #
=$ %"
onlinePlayerRepository& <
;< =!
_stagedGameRepository !
=" # 
stagedGameRepository$ 8
;8 9
_moveRepository   
=   
moveRepository   ,
;  , -
}!! 	
public## 
IMoveResult## 
Play## 
(##  
string##  &
primaryPlayerId##' 6
,##6 7
List##8 <
<##< =
IGame##= B
>##B C
opponentsMoves##D R
)##R S
{$$ 	
return11 
new11 

MoveResult11 !
(11! "
)11" #
;11# $
}22 	
}33 
}44 ˙
8C:\00PrLnScr\interview\Edge10\src\Web\GameWeb\Startup.cs
	namespace 	
RforU
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddControllers #
(# $
)$ %
;% &
services 
. 
AddSpaStaticFiles &
(& '
configuration' 4
=>5 7
{8 9
configuration: G
.G H
RootPathH P
=Q R
$strS \
;\ ]
}^ _
)_ `
;` a
RegisterDIService 
. 
Register &
(& '
ref' *
services+ 3
)3 4
;4 5
} 	
public!! 
void!! 
	Configure!! 
(!! 
IApplicationBuilder!! 1
app!!2 5
,!!5 6
IWebHostEnvironment!!7 J
env!!K N
)!!N O
{"" 	
if## 
(## 
env## 
.## 
IsDevelopment## !
(##! "
)##" #
)### $
app##% (
.##( )%
UseDeveloperExceptionPage##) B
(##B C
)##C D
;##D E
app%% 
.%% 
UseHttpsRedirection%% #
(%%# $
)%%$ %
;%%% &
app'' 
.'' 

UseRouting'' 
('' 
)'' 
;'' 
app)) 
.)) 
UseAuthorization))  
())  !
)))! "
;))" #
app++ 
.++ 
UseEndpoints++ 
(++ 
	endpoints++ &
=>++' )
{,, 
	endpoints-- 
.-- 
MapControllerRoute-- ,
(--, -
$str..  
,..  !
$str// 8
)//8 9
;//9 :
}00 
)00 
;00 
app11 
.11 
UseSpa11 
(11 
spa11 
=>11 
{22 
spa33 
.33 
Options33 
.33 

SourcePath33 &
=33' (
$str33) 3
;333 4
spa44 
.44 
Options44 
.44 
DefaultPage44 '
=44( )
$str44* 7
;447 8
spa55 
.55 
Options55 
.55 (
DefaultPageStaticFileOptions55 8
=559 :
new55; >
StaticFileOptions55? P
{66 
RequestPath77 
=77  !
$str77" $
}88 
;88 
}99 
)99 
;99 
}:: 	
};; 
}<< ø
@C:\00PrLnScr\interview\Edge10\src\Web\GameWeb\WeatherForecast.cs
	namespace 	
RforU
 
{ 
public		 

class		 
WeatherForecast		  
{

 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
TemperatureC 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 