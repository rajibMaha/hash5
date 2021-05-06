È
]C:\00PrLnScr\interview\Edge10\src\Services\Manager.API\Controllers\V1\ApiManagerController.cs
	namespace 	
RforU
 
. 
Manager 
. 
API 
. 
Controllers '
.' (
V1( *
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class  
ApiManagerController %
:& '
ControllerBase( 6
{ 
private 
readonly (
IApiManagerControllerService 5(
_apiManagerControllerService6 R
;R S
public  
ApiManagerController #
(# $(
IApiManagerControllerService$ @'
apiManagerControllerServiceA \
)\ ]
{ 	(
_apiManagerControllerService (
=) *'
apiManagerControllerService+ F
;F G
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status200OK* 5
,5 6
Type7 ;
=< =
typeof> D
(D E
boolE I
)I J
)J K
]K L
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *(
Status500InternalServerError* F
)F G
]G H
public 
async 
Task 
< 
ActionResult &
<& '
bool' +
>+ ,
>, -
HandleEvents. :
(: ;
[; <
FromBody< D
]D E
JObjectF M
payloadN U
,U V
[W X
	FromQueryX a
]a b
stringc i
	EventTypej s
)s t
{ 	
await (
_apiManagerControllerService .
.. /
HandleEvents/ ;
(; <
payload< C
,C D
	EventTypeE N
)N O
;O P
return 
Ok 
( 
true 
) 
; 
} 	
} 
}   ∂
_C:\00PrLnScr\interview\Edge10\src\Services\Manager.API\Controllers\WeatherForecastController.cs
	namespace 	
RforU
 
. 
Manager 
. 
API 
. 
Controllers '
{ 
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private 
static 
readonly 
string  &
[& '
]' (
	Summaries) 2
=3 4
new5 8
[8 9
]9 :
{ 	
$str 
, 
$str !
,! "
$str# +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= C
,C D
$strE L
,L M
$strN S
,S T
$strU a
,a b
$strc n
} 	
;	 

private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
var 
rng 
= 
new 
Random  
(  !
)! "
;" #
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date 
= 
DateTime 
.  
Now  #
.# $
AddDays$ +
(+ ,
index, 1
)1 2
,2 3
TemperatureC   
=   
rng   "
.  " #
Next  # '
(  ' (
-  ( )
$num  ) +
,  + ,
$num  - /
)  / 0
,  0 1
Summary!! 
=!! 
	Summaries!! #
[!!# $
rng!!$ '
.!!' (
Next!!( ,
(!!, -
	Summaries!!- 6
.!!6 7
Length!!7 =
)!!= >
]!!> ?
}"" 
)"" 
.## 
ToArray## 
(## 
)## 
;## 
}$$ 	
}%% 
}&& ¬
aC:\00PrLnScr\interview\Edge10\src\Services\Manager.API\Interfaces\IApiManagerControllerService.cs
	namespace 	
RforU
 
. 
Manager 
. 
API 
. 

Interfaces &
{ 
public 

	interface (
IApiManagerControllerService 1
{ 
Task 
HandleEvents 
( 
JObject !
	eventData" +
,+ ,
string- 3
	eventType4 =
)= >
;> ?
}		 
}

 Å
OC:\00PrLnScr\interview\Edge10\src\Services\Manager.API\Model\WorkflowProxies.cs
	namespace 	
RforU
 
. 
Manager 
. 
API 
. 
Model !
{ 
public 

class 
WorkflowProxies  
{ 
public 
List 
< 
WorkflowProxy !
>! "
routes# )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
Baseurl 
{ 
get  #
;# $
set% (
;( )
}* +
public

 
string

 
OAuthEndpoint

 #
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
0 1
} 
public 

class 
WorkflowProxy 
{ 
public 
string 
	eventType 
{  !
get" %
;% &
set' *
;* +
}, -
public 
List 
< 
DispatchRoute !
>! "
dispatchRoutes# 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
} 
public 

class 
DispatchRoute 
{ 
public 
string 
URL 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Method 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
IsAsync 
{ 
get !
;! "
set# &
;& '
}( )
public 
dynamic 
data 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ÿ

AC:\00PrLnScr\interview\Edge10\src\Services\Manager.API\Program.cs
	namespace 	
RforU
 
. 
Manager 
. 
API 
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
} Â
KC:\00PrLnScr\interview\Edge10\src\Services\Manager.API\RegisterDIService.cs
	namespace		 	
RforU		
 
.		 
Manager		 
.		 
API		 
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
< (
IApiManagerControllerService :
,: ;'
ApiManagerControllerService< W
>W X
(X Y
)Y Z
;Z [
} 	
} 
} ÚH
^C:\00PrLnScr\interview\Edge10\src\Services\Manager.API\Services\ApiManagerControllerService.cs
	namespace 	
RforU
 
. 
Manager 
. 
API 
. 
Services $
{ 
public 

class '
ApiManagerControllerService ,
:- .(
IApiManagerControllerService/ K
{ 
private 
readonly 
WorkflowProxies (
_workflowProxies) 9
;9 :
public '
ApiManagerControllerService *
(* +
IConfiguration+ 9
config: @
)@ A
{ 	
_workflowProxies 
= 
config %
.% &
Get& )
<) *
WorkflowProxies* 9
>9 :
(: ;
); <
;< =
} 	
public 
async 
Task 
HandleEvents &
(& '
JObject' .
	eventData/ 8
,8 9
string: @
	eventTypeA J
)J K
{ 	
IEnumerable 
< 
WorkflowProxy %
>% &
workflowProxies' 6
=7 8
_workflowProxies9 I
.I J
routesJ P
.P Q
WhereQ V
(V W
rW X
=>Y [
string\ b
.b c
Equalsc i
(i j
rj k
.k l
	eventTypel u
,u v
	eventType	w Ä
)
Ä Å
)
Å Ç
;
Ç É
await 

SentEvents 
( 
workflowProxies ,
,, -
	eventData. 7
)7 8
;8 9
} 	
private 
async 
Task 

SentEvents %
(% &
IEnumerable& 1
<1 2
WorkflowProxy2 ?
>? @
workflowProxiesA P
,P Q
JObjectR Y
	eventDataZ c
)c d
{ 	
foreach   
(   
var   
workflowProxy   &
in  ' )
workflowProxies  * 9
)  9 :
{!! 
WorkWorkflowProxy"" !
(""! "
workflowProxy""" /
,""/ 0
	eventData""1 :
)"": ;
;""; <
}$$ 
}%% 	
private'' 
async'' 
Task'' 
WorkWorkflowProxy'' ,
('', -
WorkflowProxy''- :
workflowProxy''; H
,''H I
JObject''J Q
	eventData''R [
)''[ \
{(( 	
foreach++ 
(++ 
var++ 
dispatchRoute++ &
in++' )
workflowProxy++* 7
.++7 8
dispatchRoutes++8 F
)++F G
{,, 
await-- 
workDispatchRoute-- '
(--' (
dispatchRoute--( 5
,--5 6
	eventData--7 @
)--@ A
;--A B
}// 
}22 	

RestClient44 
client44 
=44 
null44  
;44  !
private55 
async55 
Task55 
<55 
IRestResponse55 (
>55( )
workDispatchRoute55* ;
(55; <
DispatchRoute55< I
dispatchRoute55J W
,55W X
JObject55Y `
payload55a h
)55h i
{66 	
IRestResponse77 
responce77 "
=77# $
null77% )
;77) *
client88 
=88 
client88 
??88 
new88 "

RestClient88# -
(88- .
_workflowProxies88. >
.88> ?
OAuthEndpoint88? L
)88L M
;88M N
Method99 
method99 
=99 
Method99 "
.99" #
GET99# &
;99& '
switch:: 
(:: 
dispatchRoute:: !
.::! "
Method::" (
)::( )
{;; 
case<< 
$str<< 
:<< 
method== 
=== 
Method== #
.==# $
POST==$ (
;==( )
break>> 
;>> 
case?? 
$str?? 
:?? 
method@@ 
=@@ 
Method@@ #
.@@# $
GET@@$ '
;@@' (
breakAA 
;AA 
defaultBB 
:BB 
breakCC 
;CC 
}DD 
RestRequestFF 
requestFF 
=FF  !
newFF" %
RestRequestFF& 1
(FF1 2
methodFF2 8
)FF8 9
;FF9 :
stringHH 
bearerTokenHH 
=HH  
awaitHH! &
getBearerTokenHH' 5
(HH5 6
)HH6 7
;HH7 8
requestII 
.II 
	AddHeaderII 
(II 
$strII -
,II- .
bearerTokenII/ :
)II: ;
;II; <
requestKK 
.KK 
	AddHeaderKK 
(KK 
$strKK 0
,KK0 1
$strKK2 <
)KK< =
;KK= >
requestLL 
.LL 
	AddHeaderLL 
(LL 
$strLL ,
,LL, -
$strLL. @
)LL@ A
;LLA B
requestMM 
.MM 
	AddHeaderMM 
(MM 
$strMM &
,MM& '
$strMM( :
)MM: ;
;MM; <
varOO 
datastrOO 
=OO 
JsonConvertOO %
.OO% &
SerializeObjectOO& 5
(OO5 6
payloadOO6 =
)OO= >
;OO> ?
requestPP 
.PP 
AddJsonBodyPP 
(PP  
datastrPP  '
)PP' (
;PP( )
ifQQ 
(QQ 
dispatchRouteQQ 
.QQ 
IsAsyncQQ %
)QQ% &
{RR 
clientSS 
.SS 
ExecuteAsyncSS #
(SS# $
requestSS$ +
)SS+ ,
;SS, -
returnTT 
awaitTT 
TaskTT !
.TT! "

FromResultTT" ,
<TT, -
IRestResponseTT- :
>TT: ;
(TT; <
nullTT< @
)TT@ A
;TTA B
}UU 
elseVV 
{WW 
responceXX 
=XX 
awaitXX  
clientXX! '
.XX' (
ExecuteAsyncXX( 4
(XX4 5
requestXX5 <
)XX< =
;XX= >
}YY 
return[[ 
responce[[ 
;[[ 
}^^ 	

RestClient__ 
OAuthClient__ 
=__  
null__! %
;__% &
private`` 
async`` 
Task`` 
<`` 
string`` !
>``! "
getBearerToken``# 1
(``1 2
)``2 3
{aa 	
OAuthClientbb 
=bb 
OAuthClientbb %
??bb& (
newbb) ,

RestClientbb- 7
(bb7 8
_workflowProxiesbb8 H
.bbH I
OAuthEndpointbbI V
)bbV W
;bbW X
stringcc 
clientIDcc 
=cc 
Environmentcc )
.cc) *"
GetEnvironmentVariablecc* @
(cc@ A
$strccA K
,ccK L%
EnvironmentVariableTargetccM f
.ccf g
Processccg n
)ccn o
;cco p
stringdd 
clientSecretdd 
=dd  !
Environmentdd" -
.dd- ."
GetEnvironmentVariabledd. D
(ddD E
$strddE S
,ddS T%
EnvironmentVariableTargetddU n
.ddn o
Processddo v
)ddv w
;ddw x
RestRequestff 
requestff 
=ff  !
newff" %
RestRequestff& 1
(ff1 2
Methodff2 8
.ff8 9
POSTff9 =
)ff= >
;ff> ?
requestgg 
.gg 
	AddHeadergg 
(gg 
$strgg ,
,gg, -
$strgg. Q
)ggQ R
;ggR S
requesthh 
.hh 
	AddHeaderhh 
(hh 
$strhh &
,hh& '
$strhh( :
)hh: ;
;hh; <
requestii 
.ii 
AddParameterii  
(ii  !
$strii! -
,ii- .
$strii/ C
)iiC D
;iiD E
requestkk 
.kk 
AddParameterkk  
(kk  !
$strkk! ,
,kk, -
clientIDkk. 6
)kk6 7
;kk7 8
requestll 
.ll 
AddParameterll  
(ll  !
$strll! 0
,ll0 1
clientSecretll2 >
)ll> ?
;ll? @
IRestResponseoo 
responceoo "
=oo# $
awaitoo% *
OAuthClientoo+ 6
.oo6 7
ExecuteAsyncoo7 C
(ooC D
requestooD K
)ooK L
;ooL M
dynamicpp 
resppp 
=pp 
JObjectpp "
.pp" #
Parsepp# (
(pp( )
responcepp) 1
.pp1 2
Contentpp2 9
)pp9 :
;pp: ;
varqq 
tokenqq 
=qq 
respqq 
.qq 
access_tokenqq )
;qq) *
returnss 
$"ss 
Bearer ss 
{ss 
tokenss "
}ss" #
"ss# $
;ss$ %
}vv 	
}ww 
}xx ü
AC:\00PrLnScr\interview\Edge10\src\Services\Manager.API\Startup.cs
	namespace 	
RforU
 
. 
Manager 
. 
API 
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
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IWebHostEnvironment7 J
envK N
)N O
{ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. %
UseDeveloperExceptionPage -
(- .
). /
;/ 0
} 
app   
.   
UseHttpsRedirection   #
(  # $
)  $ %
;  % &
app"" 
."" 

UseRouting"" 
("" 
)"" 
;"" 
app$$ 
.$$ 
UseAuthorization$$  
($$  !
)$$! "
;$$" #
app&& 
.&& 
UseEndpoints&& 
(&& 
	endpoints&& &
=>&&' )
{'' 
	endpoints(( 
.(( 
MapControllers(( (
(((( )
)(() *
;((* +
})) 
))) 
;)) 
}** 	
}++ 
},, å
IC:\00PrLnScr\interview\Edge10\src\Services\Manager.API\WeatherForecast.cs
	namespace 	
RforU
 
. 
Manager 
. 
API 
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