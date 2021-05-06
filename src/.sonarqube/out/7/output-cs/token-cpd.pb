é@
_C:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\Controllers\V1\PlayerController.cs
	namespace 	
RforU
 
. 
PlayerManager 
. 
API !
.! "
Controllers" -
.- .
V1. 0
{ 
[ 
Route 

(
 
$str  
)  !
]! "
[ 
ApiController 
] 
public 

class 
PlayerController !
:" #
ControllerBase$ 2
{ 
private 
readonly $
IPlayerControllerService 1$
_playerControllerService2 J
;J K
public 
PlayerController 
(  $
IPlayerControllerService  8#
playerControllerService9 P
)P Q
{ 	$
_playerControllerService $
=% &#
playerControllerService' >
;> ?
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status200OK* 5
,5 6
Type7 ;
=< =
typeof> D
(D E
IPlayerE L
)L M
)M N
]N O
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *(
Status500InternalServerError* F
)F G
]G H
public   
async   
Task   
<   
ActionResult   &
<  & '
IPlayer  ' .
>  . /
>  / 0
	GetPlayer  1 :
(  : ;
[  ; <
	FromQuery  < E
]  E F
string  G M
playerId  N V
)  V W
{!! 	
try"" 
{## 
IPlayer$$ 
player$$ 
=$$  
await$$! &$
_playerControllerService$$' ?
.$$? @
	GetPlayer$$@ I
($$I J
playerId$$J R
)$$R S
;$$S T
return%% 
Ok%% 
(%% 
player%%  
)%%  !
;%%! "
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
$str22 
)22  
]22  !
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
(33D E
List33E I
<33I J
IPlayer33J Q
>33Q R
)33R S
)33S T
]33T U
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
>55/ 0
GetInitialData551 ?
(55? @
[55@ A
	FromQuery55A J
]55J K
string55L R
playerId55S [
)55[ \
{66 	
try77 
{88 
List99 
<99 
IPlayer99 
>99 
player99 $
=99% &
await99' ,$
_playerControllerService99- E
.99E F
GetInitialData99F T
(99T U
playerId99U ]
)99] ^
;99^ _
return:: 
Ok:: 
(:: 
player::  
)::  !
;::! "
};; 
catch<< 
(<< 
	Exception<< 
ex<< 
)<<  
{== 
returnAA 

StatusCodeAA !
(AA! "
StatusCodesAA" -
.AA- .(
Status500InternalServerErrorAA. J
,AAJ K
RforUErrorCodesBB #
.BB# $
GetErrorBB$ ,
(BB, -
	ErrorTypeBB- 6
.BB6 7
ApplicationBB7 B
)BBB C
)BBC D
;BBD E
}CC 
}DD 	
[FF 	
HttpGetFF	 
]FF 
[GG 	
RouteGG	 
(GG 
$strGG  
)GG  !
]GG! "
[HH 	 
ProducesResponseTypeHH	 
(HH 
StatusCodesHH )
.HH) *
Status200OKHH* 5
,HH5 6
TypeHH7 ;
=HH< =
typeofHH> D
(HHD E
ListHHE I
<HHI J
IPlayerHHJ Q
>HHQ R
)HHR S
)HHS T
]HHT U
[II 	 
ProducesResponseTypeII	 
(II 
StatusCodesII )
.II) *(
Status500InternalServerErrorII* F
)IIF G
]IIG H
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
ActionResultJJ &
<JJ& '
IPlayerJJ' .
>JJ. /
>JJ/ 0
GetOnlinePlayerJJ1 @
(JJ@ A
)JJA B
{KK 	
tryLL 
{MM 
ListNN 
<NN 
IPlayerNN 
>NN 
playerNN $
=NN% &
awaitNN' ,$
_playerControllerServiceNN- E
.NNE F
GetOnlinePlayerNNF U
(NNU V
)NNV W
;NNW X
returnOO 
OkOO 
(OO 
playerOO  
)OO  !
;OO! "
}PP 
catchQQ 
(QQ 
	ExceptionQQ 
exQQ 
)QQ  
{RR 
returnVV 

StatusCodeVV !
(VV! "
StatusCodesVV" -
.VV- .(
Status500InternalServerErrorVV. J
,VVJ K
RforUErrorCodesWW #
.WW# $
GetErrorWW$ ,
(WW, -
	ErrorTypeWW- 6
.WW6 7
ApplicationWW7 B
)WWB C
)WWC D
;WWD E
}XX 
}YY 	
[[[ 	
HttpPost[[	 
][[ 
[\\ 	
Route\\	 
(\\ 
$str\\ 
)\\ 
]\\ 
[]] 	 
ProducesResponseType]]	 
(]] 
StatusCodes]] )
.]]) *
Status200OK]]* 5
,]]5 6
Type]]7 ;
=]]< =
typeof]]> D
(]]D E
bool]]E I
)]]I J
)]]J K
]]]K L
[^^ 	 
ProducesResponseType^^	 
(^^ 
StatusCodes^^ )
.^^) *(
Status500InternalServerError^^* F
)^^F G
]^^G H
public__ 
async__ 
Task__ 
<__ 
ActionResult__ &
<__& '
bool__' +
>__+ ,
>__, -

AddCurrent__. 8
(__8 9
[__9 :
FromBody__: B
]__B C
Player__D J
user__K O
)__O P
{`` 	
tryaa 
{bb 
boolcc 
initDatacc 
=cc 
awaitcc  %$
_playerControllerServicecc& >
.cc> ?

AddCurrentcc? I
(ccI J
userccJ N
)ccN O
;ccO P
returndd 
Okdd 
(dd 
initDatadd "
)dd" #
;dd# $
}ee 
catchff 
(ff 
	Exceptionff 
exff 
)ff  
{gg 
returnkk 

StatusCodekk !
(kk! "
StatusCodeskk" -
.kk- .(
Status500InternalServerErrorkk. J
,kkJ K
RforUErrorCodesll #
.ll# $
GetErrorll$ ,
(ll, -
	ErrorTypell- 6
.ll6 7
Applicationll7 B
)llB C
)llC D
;llD E
}mm 
}nn 	
}qq 
}rr ‰
hC:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\Controllers\V1\WeatherForecastController.cs
	namespace 	
RforU
 
. 
PlayerManager 
. 
API !
.! "
Controllers" -
.- .
V1. 0
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
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
}** Ω
bC:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\Interfaces\IOnlinePlayerRepository.cs
	namespace		 	
RforU		
 
.		 
PlayerManager		 
.		 
API		 !
.		! "

Interfaces		" ,
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
} ™

RC:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\Interfaces\IPlayer.cs
	namespace 	
RforU
 
. 
PlayerManager 
. 
API !
.! "

Interfaces" ,
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
} è	
cC:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\Interfaces\IPlayerControllerService.cs
	namespace 	
RforU
 
. 
PlayerManager 
. 
API !
.! "

Interfaces" ,
{ 
public 

	interface $
IPlayerControllerService -
{ 
Task 
< 
List 
< 
IPlayer 
> 
> 
GetInitialData *
(* +
string+ 1
playerId2 :
): ;
;; <
Task 
< 
bool 
> 

AddCurrent 
( 
IPlayer %
user& *
)* +
;+ ,
Task 
< 
List 
< 
IPlayer 
> 
> 
GetOnlinePlayer +
(+ ,
), -
;- .
Task 
< 
IPlayer 
> 
	GetPlayer 
(  
string  &
playerId' /
)/ 0
;0 1
} 
} ª
MC:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\Models\Player.cs
	namespace

 	
RforU


 
.

 
PlayerManager

 
.

 
API

 !
.

! "
Models

" (
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
[ 	
JsonConverter	 
( 
typeof 
( 
StringEnumConverter 1
)1 2
)2 3
]3 4
public 
string 
TypeOfPlayer "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
void 

InitPlayer 
( 
string %
playerId& .
). /
{ 	
PlayerId 
= 
playerId 
;  
} 	
} 
} Ü
GC:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\Program.cs
	namespace 	
RforU
 
. 
PlayerManager 
. 
API !
{		 
public

 

class

 
Program

 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
{ 	
return 
Host 
.  
CreateDefaultBuilder ,
(, -
args- 1
)1 2
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{8 9

webBuilder: D
.D E

UseStartupE O
<O P
StartupP W
>W X
(X Y
)Y Z
;Z [
}\ ]
)] ^
;^ _
} 	
} 
}  
QC:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\RegisterDIService.cs
	namespace

 	
RforU


 
.

 
PlayerManager

 
.

 
API

 !
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
service 
. 
	AddScoped 
< #
IOnlinePlayerRepository 5
,5 6"
OnlinePlayerRepository7 M
>M N
(N O
)O P
;P Q
service 
. 
AddTransient  
<  !$
IPlayerControllerService! 9
,9 :#
PlayerControllerService; R
>R S
(S T
)T U
;U V
} 	
} 
} Ö0
cC:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\Repositories\OnlinePlayerRepository.cs
	namespace 	
RforU
 
. 
PlayerManager 
. 
API !
.! "
Repositories" .
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
public 
Task 
< 
List 
< 
IPlayer  
>  !
>! "
GetOnlinePlayers# 3
(3 4
)4 5
{ 	
return 
Task 
. 

FromResult "
<" #
List# '
<' (
IPlayer( /
>/ 0
>0 1
(1 2!
DummyOnlinePlayerData2 G
.G H
OnlinePlayerH T
)T U
;U V
} 	
public 
async 
Task 
< 
bool 
> "
AddUpdateOnlinePlayers  6
(6 7
IPlayer7 >
player? E
)E F
{ 	
await 
base 
. 
Add 
( 
new 
List #
<# $
IPlayer$ +
>+ ,
{- .
player/ 5
}6 7
)7 8
;8 9
if 
( !
DummyOnlinePlayerData %
.% &
OnlinePlayer& 2
.2 3
Any3 6
(6 7
p7 8
=>9 ;
p< =
.= >
PlayerId> F
==G I
playerJ P
.P Q
PlayerIdQ Y
)Y Z
)Z [
{ 
_ 
= !
DummyOnlinePlayerData )
.) *
OnlinePlayer* 6
.6 7
Where7 <
(< =
p= >
=>? A
pB C
.C D
PlayerIdD L
==M O
playerP V
.V W
PlayerIdW _
)_ `
.   
All   
(   
x   
=>   
{!! 
x"" 
."" 
	Available"" #
=""$ %
true""& *
;""* +
x## 
.## 
Online##  
=##! "
true### '
;##' (
x$$ 
.$$ 
TypeOfPlayer$$ &
=$$' (
player$$) /
.$$/ 0
TypeOfPlayer$$0 <
;$$< =
x%% 
.%% 
OnlineSince%% %
=%%& '
player%%( .
.%%. /
OnlineSince%%/ :
;%%: ;
return&& 
true&& #
;&&# $
}'' 
)'' 
;'' 
return(( 
true(( 
;(( 
})) !
DummyOnlinePlayerData++ !
.++! "
OnlinePlayer++" .
.++. /
Add++/ 2
(++2 3
player++3 9
)++9 :
;++: ;
return,, 
true,, 
;,, 
}-- 	
public// 
Task// 
<// 
IPlayer// 
>// 
	GetPlayer// &
(//& '
string//' -
playerId//. 6
)//6 7
{00 	
var33 
player33 
=33 !
DummyOnlinePlayerData33 .
.33. /
OnlinePlayer33/ ;
.33; <
FirstOrDefault33< J
(33J K
p33K L
=>33M O
p33P Q
.33Q R
PlayerId33R Z
==33[ ]
playerId33^ f
)33f g
;33g h
return44 
Task44 
.44 

FromResult44 "
<44" #
IPlayer44# *
>44* +
(44+ ,
player44, 2
)442 3
;443 4
}55 	
}66 
internal88 
class88 !
DummyOnlinePlayerData88 (
{99 
	protected:: !
DummyOnlinePlayerData:: '
(::' (
)::( )
{;; 	
}<< 	
public>> 
static>> 
List>> 
<>> 
IPlayer>> "
>>>" #
OnlinePlayer>>$ 0
=>>1 2
new?? 
List?? 
<?? 
IPlayer?? 
>?? 
{@@ 
newAA 
PlayerAA 
{AA 
NameAA  
=AA! "
$strAA# ,
,AA, -
PlayerIdAA. 6
=AA7 8
$strAA9 B
,AAB C
OnlineSinceAAD O
=AAP Q
DateTimeAAR Z
.AAZ [
NowAA[ ^
.AA^ _
AddHoursAA_ g
(AAg h
-AAh i
$numAAi j
)AAj k
}AAk l
,AAl m
newBB 
PlayerBB 
{BB 
NameBB  
=BB! "
$strBB# -
,BB- .
PlayerIdBB/ 7
=BB8 9
$strBB: D
,BBD E
OnlineSinceBBF Q
=BBR S
DateTimeBBT \
.BB\ ]
NowBB] `
.BB` a
AddHoursBBa i
(BBi j
-BBj k
$numBBk l
)BBl m
}BBm n
,BBn o
newCC 
PlayerCC 
{CC 
NameCC  
=CC! "
$strCC# -
,CC- .
PlayerIdCC/ 7
=CC8 9
$strCC: D
,CCD E
OnlineSinceCCF Q
=CCR S
DateTimeCCT \
.CC\ ]
NowCC] `
.CC` a
AddHoursCCa i
(CCi j
-CCj k
$numCCk l
)CCl m
}CCm n
,CCn o
newDD 
PlayerDD 
{DD 
NameDD  
=DD! "
$strDD# -
,DD- .
PlayerIdDD/ 7
=DD8 9
$strDD: D
,DDD E
OnlineSinceDDF Q
=DDR S
DateTimeDDT \
.DD\ ]
NowDD] `
.DD` a
AddHoursDDa i
(DDi j
-DDj k
$numDDk l
)DDl m
}DDm n
}EE 
;EE 
}FF 
}GG ﬂ
`C:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\Services\PlayerControllerService.cs
	namespace

 	
RforU


 
.

 
PlayerManager

 
.

 
API

 !
.

! "
Services

" *
{ 
internal 
class #
PlayerControllerService *
:+ ,$
IPlayerControllerService- E
{ 
private 
readonly #
IOnlinePlayerRepository 0#
_onlinePlayerRepository1 H
;H I
public #
PlayerControllerService &
(& '#
IOnlinePlayerRepository #"
onlinePlayerRepository$ :
) 	
{ 	#
_onlinePlayerRepository #
=$ %"
onlinePlayerRepository& <
;< =
} 	
public 
async 
Task 
< 
List 
< 
IPlayer &
>& '
>' (
GetInitialData) 7
(7 8
string8 >
playerId? G
)G H
{ 	
var   
onlinePlayer   
=   
await   $
GetOnlinePlayer  % 4
(  4 5
)  5 6
;  6 7
return!! 
onlinePlayer!! 
;!!  
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
bool$$ 
>$$ 

AddCurrent$$  *
($$* +
IPlayer$$+ 2
user$$3 7
)$$7 8
{%% 	
try&& 
{'' 
await)) #
_onlinePlayerRepository)) -
.))- ."
AddUpdateOnlinePlayers)). D
())D E
user))E I
)))I J
;))J K
return** 
true** 
;** 
}++ 
catch,, 
(,, 
	Exception,, 
_,, 
),, 
{-- 
return.. 
false.. 
;.. 
}// 
}00 	
public33 
async33 
Task33 
<33 
List33 
<33 
IPlayer33 &
>33& '
>33' (
GetOnlinePlayer33) 8
(338 9
)339 :
{44 	
var55 
onlinePlayer55 
=55 
await55 $#
_onlinePlayerRepository55% <
.55< =
GetOnlinePlayers55= M
(55M N
)55N O
;55O P
return66 
onlinePlayer66 
;66  
}77 	
public88 
async88 
Task88 
<88 
IPlayer88 !
>88! "
	GetPlayer88# ,
(88, -
string88- 3
userId884 :
)88: ;
{99 	
IPlayer:: 
player:: 
=:: 
await:: "#
_onlinePlayerRepository::# :
.::: ;
	GetPlayer::; D
(::D E
userId::E K
)::K L
;::L M
return;; 
player;; 
;;; 
}<< 	
}== 
}>> ç
GC:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\Startup.cs
	namespace 	
RforU
 
. 
PlayerManager 
. 
API !
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
;% &
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IWebHostEnvironment7 J
envK N
)N O
{ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
app% (
.( )%
UseDeveloperExceptionPage) B
(B C
)C D
;D E
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
{''* +
	endpoints'', 5
.''5 6
MapControllers''6 D
(''D E
)''E F
;''F G
}''H I
)''I J
;''J K
}(( 	
})) 
}** ò
OC:\00PrLnScr\interview\Edge10\src\Services\PlayerManager.API\WeatherForecast.cs
	namespace 	
RforU
 
. 
PlayerManager 
. 
API !
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