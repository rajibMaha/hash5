í
CC:\00PrLnScr\interview\Edge10\src\Dispatcher.Api\EventsConstants.cs
	namespace 	

Dispatcher
 
. 
Api 
{ 
public 

class 
EventsConstants  
{ 
public 
const 
string $
RforU_Events_Player_Join 4
=5 6
$str7 Q
;Q R
public 
const 
string .
"RforU_Events_Player_SelectOpponent >
=? @
$strA d
;d e
public		 
const		 
string		 %
RforU_Events_Game_Created		 5
=		6 7
$str		8 S
;		S T
public

 
const

 
string

 &
RforU_Events_Game_Submited

 6
=

7 8
$str

9 U
;

U V
public 
const 
string !
RforU_Events_Game_End 1
=2 3
$str4 K
;K L
} 
} û8
GC:\00PrLnScr\interview\Edge10\src\Dispatcher.Api\Function\EventProxy.cs
	namespace 	
RforU
 
{ 
public 

class 

Dispatcher 
{ 
private 
readonly 
IConfiguration '
_config( /
;/ 0
private 
string 
ApiManagerUrl $
;$ %
private 
string 
OAuthEndpoint $
;$ %
public 

Dispatcher 
( 
IConfiguration (
config) /
)/ 0
{ 	
_config 
= 
config 
; 
var 
ApiManagerUrl 
= 
System  &
.& '
Environment' 2
.2 3"
GetEnvironmentVariable3 I
(I J
$strJ Y
,Y Z%
EnvironmentVariableTarget[ t
.t u
Processu |
)| }
;} ~
var 
OAuthEndpoint 
= 
System  &
.& '
Environment' 2
.2 3"
GetEnvironmentVariable3 I
(I J
$strJ Y
,Y Z%
EnvironmentVariableTarget[ t
.t u
Processu |
)| }
;} ~
} 	
[ 	
FunctionName	 
( 
$str "
)" #
]# $
public   
async   
Task   
Run   
(   
[   
EventGridTrigger   /
]  / 0
EventGridEvent  1 ?
eventGridEvent  @ N
,  N O
ILogger  P W
log  X [
)  [ \
{!! 	
log"" 
."" 
LogInformation"" 
("" 
eventGridEvent"" -
.""- .
Data"". 2
.""2 3
ToString""3 ;
(""; <
)""< =
)""= >
;""> ?
var%% 
jobjectData%% 
=%% 
eventGridEvent%% ,
.%%, -
Data%%- 1
as%%2 4
JObject%%5 <
;%%< =
await'' 
workDispatchRoute'' #
(''# $
jobjectData''$ /
,''/ 0
eventGridEvent''1 ?
.''? @
	EventType''@ I
)''I J
;''J K
})) 	

RestClient,, 
client,, 
=,, 
null,,  
;,,  !
private-- 
async-- 
Task-- 
<-- 
IRestResponse-- (
>--( )
workDispatchRoute--* ;
(--; <
JObject--< C
payload--D K
,--K L
string--M S
	EventType--T ]
)--] ^
{.. 	
IRestResponse// 
response// "
=//# $
null//% )
;//) *
client22 
??=22 
new22 

RestClient22 %
(22% &
ApiManagerUrl22& 3
)223 4
;224 5
RestRequest33 
request33 
=33  !
new33" %
RestRequest33& 1
(331 2
Method332 8
.338 9
POST339 =
)33= >
;33> ?
string55 
bearerToken55 
=55  
await55! &
getBearerToken55' 5
(555 6
)556 7
;557 8
request66 
.66 
	AddHeader66 
(66 
$str66 -
,66- .
bearerToken66/ :
)66: ;
;66; <
request88 
.88 
	AddHeader88 
(88 
$str88 0
,880 1
$str882 <
)88< =
;88= >
request99 
.99 
	AddHeader99 
(99 
$str99 ,
,99, -
$str99. @
)99@ A
;99A B
request:: 
.:: 
	AddHeader:: 
(:: 
$str:: &
,::& '
$str::( :
)::: ;
;::; <
var<< 
datastr<< 
=<< 
JsonConvert<< %
.<<% &
SerializeObject<<& 5
(<<5 6
payload<<6 =
)<<= >
;<<> ?
request== 
.== 
AddJsonBody== 
(==  
datastr==  '
)==' (
;==( )
var@@ 
responce@@ 
=@@ 
await@@  
client@@! '
.@@' (
ExecuteAsync@@( 4
(@@4 5
request@@5 <
)@@< =
;@@= >
returnCC 
responceCC 
;CC 
}FF 	

RestClientGG 
OAuthClientGG 
=GG  
nullGG! %
;GG% &
privateHH 
asyncHH 
TaskHH 
<HH 
stringHH !
>HH! "
getBearerTokenHH# 1
(HH1 2
)HH2 3
{II 	
OAuthClientJJ 
??=JJ 
newJJ 

RestClientJJ  *
(JJ* +
OAuthEndpointJJ+ 8
)JJ8 9
;JJ9 :
stringKK 
clientIDKK 
=KK 
EnvironmentKK )
.KK) *"
GetEnvironmentVariableKK* @
(KK@ A
$strKKA K
,KKK L%
EnvironmentVariableTargetKKM f
.KKf g
ProcessKKg n
)KKn o
;KKo p
stringLL 
clientSecretLL 
=LL  !
EnvironmentLL" -
.LL- ."
GetEnvironmentVariableLL. D
(LLD E
$strLLE S
,LLS T%
EnvironmentVariableTargetLLU n
.LLn o
ProcessLLo v
)LLv w
;LLw x
RestRequestNN 
requestNN 
=NN  !
newNN" %
RestRequestNN& 1
(NN1 2
MethodNN2 8
.NN8 9
POSTNN9 =
)NN= >
;NN> ?
requestOO 
.OO 
	AddHeaderOO 
(OO 
$strOO ,
,OO, -
$strOO. Q
)OOQ R
;OOR S
requestPP 
.PP 
	AddHeaderPP 
(PP 
$strPP &
,PP& '
$strPP( :
)PP: ;
;PP; <
requestQQ 
.QQ 
AddParameterQQ  
(QQ  !
$strQQ! -
,QQ- .
$strQQ/ C
)QQC D
;QQD E
requestSS 
.SS 
AddParameterSS  
(SS  !
$strSS! ,
,SS, -
clientIDSS. 6
)SS6 7
;SS7 8
requestTT 
.TT 
AddParameterTT  
(TT  !
$strTT! 0
,TT0 1
clientSecretTT2 >
)TT> ?
;TT? @
IRestResponseWW 
responceWW "
=WW# $
awaitWW% *
OAuthClientWW+ 6
.WW6 7
ExecuteAsyncWW7 C
(WWC D
requestWWD K
)WWK L
;WWL M
dynamicXX 
respXX 
=XX 
JObjectXX "
.XX" #
ParseXX# (
(XX( )
responceXX) 1
.XX1 2
ContentXX2 9
)XX9 :
;XX: ;
varYY 
tokenYY 
=YY 
respYY 
.YY 
access_tokenYY )
;YY) *
return[[ 
$"[[ 
Bearer [[ 
{[[ 
token[[ "
}[[" #
"[[# $
;[[$ %
}^^ 	
}`` 
}aa ·
LC:\00PrLnScr\interview\Edge10\src\Dispatcher.Api\Model\EventProxcyPayload.cs
	namespace 	

EventProxy
 
. 
Model 
{ 
public 

class 
EventProxcyPayload #
{ 
public 
string 
TranzationID "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
RegimentHash "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
PatientCaringUnit '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public

 
string

 
	PatientID

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
string 
RefID 
{ 
get !
;! "
set# &
;& '
}( )
} 
} †	
;C:\00PrLnScr\interview\Edge10\src\Dispatcher.Api\Startup.cs
[ 
assembly 	
:	 

FunctionsStartup 
( 
typeof "
(" #
Startup# *
)* +
)+ ,
], -
	namespace 	

EventProxy
 
{ 
public 

class 
Startup 
: 
FunctionsStartup +
{ 
private		 
IConfiguration		 
configuration		 ,
;		, -
public

 
override

 
void

 
	Configure

 &
(

& '!
IFunctionsHostBuilder

' <
builder

= D
)

D E
{ 	
this 
. 
configuration 
=  
new! $ 
ConfigurationBuilder% 9
(9 :
): ;
. #
AddEnvironmentVariables (
(( )
)) *
. 
AddJsonFile 
( 
$str 1
)1 2
. 
Build 
( 
) 
; 
} 	
} 
} 