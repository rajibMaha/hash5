∫
\C:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\CommomConstants.cs
	namespace 	
RforU
 
. 
DistributedPackage "
{ 
public 

class  
DistPackageConstants %
{ 
public 
const 
string 
PackageName '
=( )
$str* :
;: ;
} 
}		 £%
mC:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\Event\EventHubCustomEventService.cs
	namespace		 	
Common		
 
.		 
Events		 
{

 
public 

	interface (
IEventHubCoustomEventService 1
{ 
void 
createPayload 
( 
dynamic "
data# '
,' (
ref) ,
List- 1
<1 2

CloudEvent2 <
>< =
payload> E
,E F
stringG M
	eventTypeN W
,W X
stringY _
subject` g
=h i
$strj 
)	 Ä
;
Ä Å
void 
PublishEventAsync 
( 
List #
<# $

CloudEvent$ .
>. /
payload0 7
,7 8
string9 ?
topic@ E
=F G
$strH V
)V W
;W X
} 
public 

class &
EventHubCustomEventService +
:, -(
IEventHubCoustomEventService. J
{ 
private 
readonly 
string 
_eventHubDomainUrl  2
;2 3
private 
readonly 
string 
_eventHubAccesskey  2
;2 3
public &
EventHubCustomEventService )
() *
IConfiguration* 8
config9 ?
)? @
{ 	
_eventHubDomainUrl 
=  
config! '
.' (

GetSection( 2
(2 3
$str3 F
)F G
.G H
ValueH M
.M N
ToStringN V
(V W
)W X
;X Y
_eventHubDomainUrl 
=  
config! '
.' (

GetSection( 2
(2 3
$str3 F
)F G
.G H
ValueH M
.M N
ToStringN V
(V W
)W X
;X Y
_eventHubAccesskey 
=  
config! '
[' (
$str( ;
]; <
;< =
} 	
public   
void   
createPayload   !
(  ! "
dynamic  " )
data  * .
,  . /
ref  0 3
List  4 8
<  8 9

CloudEvent  9 C
>  C D
payload  E L
,  L M
string  N T
	eventType  U ^
,  ^ _
string  ` f
subject  g n
=  o p
$str	  q Ü
)
  Ü á
{!! 	
payload"" 
??="" 
new"" 
List""  
<""  !

CloudEvent""! +
>""+ ,
("", -
)""- .
;"". /

CloudEvent## 

cloudEvent## !
=##" #
new##$ '

CloudEvent##( 2
(##2 3
source$$ 
:$$ 
$"$$ 
{$$ 
subject$$ "
}$$" #
{$$# $
Guid$$$ (
.$$( )
NewGuid$$) 0
($$0 1
)$$1 2
.$$2 3
ToString$$3 ;
($$; <
)$$< =
}$$= >
"$$> ?
,$$? @
type%% 
:%% 
	eventType%% 
,%%   
jsonSerializableData&& $
:&&$ %
JsonSerializer&&& 4
.&&4 5
	Serialize&&5 >
<&&> ?
dynamic&&? F
>&&F G
(&&G H
data&&H L
)&&L M
)'' 
{(( 
Subject)) 
=)) 
subject)) !
,))! "
}** 
;** 
payload++ 
.++ 
Add++ 
(++ 

cloudEvent++ "
)++" #
;++# $
},, 	
public.. 
void.. 
PublishEventAsync.. %
(..% &
List..& *
<..* +

CloudEvent..+ 5
>..5 6
payload..7 >
,..> ?
string..@ F
topic..G L
=..M N
$str..O ]
)..] ^
{// 	$
EventGridPublisherClient00 $
client00% +
=00, -
new00. 1$
EventGridPublisherClient002 J
(00J K
new11 
Uri11 
(11 
$"11 
{11 
_eventHubDomainUrl11 -
}11- .
/11. /
{11/ 0
topic110 5
}115 6
"116 7
)117 8
,118 9
new22 
AzureKeyCredential22 &
(22& '
_eventHubAccesskey22' 9
)229 :
)22: ;
;22; <
client44 
.44 
SendEventsAsync44 "
(44" #
payload44# *
)44* +
;44+ ,
}55 	
}77 
}88 ü
^C:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\Event\EventsTypes.cs
	namespace 	
RforU
 
. 
DistributedPackage "
{ 
public 

class 
EventsTypes 
{ 
public 
const 
string $
RforU_Events_Player_Join 4
=5 6
$str7 Q
;Q R
public 
const 
string .
"RforU_Events_Player_SelectOpponent >
=? @
$strA e
;e f
public

 
const

 
string

 %
RforU_Events_Game_Created

 5
=

6 7
$str

8 S
;

S T
public 
const 
string &
RforU_Events_Game_Submited 6
=7 8
$str9 V
;V W
public 
const 
string ,
 RforU_Events_Game_Human_Evaluate <
== >
$str? a
;a b
public 
const 
string 5
)RforU_Events_Game_Human_Evaluate_Complete E
=F G
$strH s
;s t
public 
const 
string /
#RforU_Events_Game_Computer_Evaluate ?
=@ A
$strB g
;g h
public 
const 
string 8
,RforU_Events_Game_Computer_Evaluate_Complete H
=I J
$strK y
;y z
public 
const 
string '
RforU_Events_Game_Completed 7
=8 9
$str: W
;W X
public 
const 
string "
RforU_Events_Match_End 2
=3 4
$str5 M
;M N
} 
} …
`C:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\Exception\ErrorEnum.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #
	Exception# ,
{ 
public 

enum 
	ErrorType 
{ 
Application 
, 
SourceOfRecords 
, 
Connectivity 
, 

BadRequest		 
,		 
	Forbidden

 
,

 
RequestTimeOut 
, 
} 
} Æ
gC:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\Exception\Models\ErrorCode.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #
	Exception# ,
{ 
public 

class 
	ErrorCode 
{ 
public 
int 
Code 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
	ErrorName 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
ErrorMessage		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
}

 
} Ç
fC:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\Exception\RforUErrorCodes.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #
	Exception# ,
{ 
public 

class 
RforUErrorCodes  
{ 
	protected 
RforUErrorCodes !
(! "
)" #
{ 	
}		 	
public

 
static

 
	ErrorCode

 
GetError

  (
(

( )
	ErrorType

) 2
	errorType

3 <
)

< =
{ 	
return 
	errorType 
switch #
{ 
	ErrorType 
. 
Application %
=>& (
new 
	ErrorCode !
(! "
)" #
{ 
Code 
= 
-  
$num  $
,$ %
ErrorMessage $
=% &
$str' R
,R S
	ErrorName !
=" #
$str$ :
} 
, 
	ErrorType 
. 

BadRequest $
=>% '
new 
	ErrorCode !
(! "
)" #
{ 
Code 
= 
-  
$num  $
,$ %
ErrorMessage $
=% &
$str' R
,R S
	ErrorName !
=" #
$str$ 7
} 
, 
	ErrorType   
.   
Connectivity   &
=>  ' )
new!! 
	ErrorCode!! !
(!!! "
)!!" #
{"" 
Code## 
=## 
-##  
$num##  $
,##$ %
ErrorMessage$$ $
=$$% &
$str$$' a
,$$a b
	ErrorName%% !
=%%" #
$str%%$ ?
}&& 
,&& 
_'' 
=>'' 
new(( 
	ErrorCode(( !
(((! "
)((" #
{)) 
Code** 
=** 
$num** #
,**# $
ErrorMessage++ $
=++% &
$str++' R
,++R S
	ErrorName,, !
=,," #
$str,,$ :
}-- 
}// 
;// 
}11 	
}22 
}33 Ÿ
tC:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\Interfaces\ICloudStorageTableRepository.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #

Interfaces# -
{ 
public 

	interface (
ICloudStorageTableRepository 1
<1 2
TEntity2 9
>9 :
:; <
IRepository= H
<H I
TEntityI P
>P Q
whereR W
TEntityX _
:` a
classb g
{ 
} 
} —
cC:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\Interfaces\IRepository.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #

Interfaces# -
{ 
public 

	interface 
IRepository  
<  !
TEntity! (
>( )
where* /
TEntity0 7
:8 9
class: ?
{		 
Task

 
<

 
bool

 
>

 
Add

 
(

 
TEntity

 
entity

 %
)

% &
;

& '
void 
AddRange 
( 
IEnumerable !
<! "
TEntity" )
>) *
entities+ 3
)3 4
;4 5
void 
Update 
( 
TEntity 
entity "
)" #
;# $
void 
UpdateRange 
( 
IEnumerable $
<$ %
TEntity% ,
>, -
entities. 6
)6 7
;7 8
void 
Remove 
( 
TEntity 
entity "
)" #
;# $
void 
RemoveRange 
( 
IEnumerable $
<$ %
TEntity% ,
>, -
entities. 6
)6 7
;7 8
int 
Count 
( 
) 
; 
IEnumerable 
< 
TEntity 
> 
Find !
(! "

Expression" ,
<, -
Func- 1
<1 2
TEntity2 9
,9 :
bool; ?
>? @
>@ A
	predicateB K
)K L
;L M
TEntity 
GetSingleOrDefault "
(" #

Expression# -
<- .
Func. 2
<2 3
TEntity3 :
,: ;
bool< @
>@ A
>A B
	predicateC L
)L M
;M N
TEntity 
Get 
( 
dynamic 
id 
) 
;  
IEnumerable 
< 
TEntity 
> 
GetAll #
(# $
)$ %
;% &
} 
} û
hC:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\MiddleWare\RegisterServices.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #

MiddleWare# -
{ 
public 

class 
RegisterServices !
{ 
public		 
static		 
void		 
Register		 #
(		# $
ref		$ '
IServiceCollection		( :
service		; B
)		B C
{

 	
service 
. 
	AddScoped 
< (
IEventHubCoustomEventService :
,: ;&
EventHubCustomEventService< V
>V W
(W X
)X Y
;Y Z
} 	
} 
} ˙
{C:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\MiddleWare\RforUDistPackageMiddleWareExtension.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #

MiddleWare# -
{		 
public

 

static

 
class

 /
#RforUDistPackageMiddleWareExtension

 ;
{ 
public 
static 
IApplicationBuilder ))
UseRforUDistPackageMiddleWare* G
(G H
thisH L
IApplicationBuilderM `
appa d
,d e
Actionf l
<l m+
RforUDistributedPackageOptions	m ã
>
ã å
optionsAction
ç ö
)
ö õ
{ 	*
RforUDistributedPackageOptions *
option+ 1
=2 3
new4 7*
RforUDistributedPackageOptions8 V
(V W
)W X
;X Y
if 
( 
optionsAction 
!=  
null! %
)% &
optionsAction 
. 
Invoke $
($ %
option% +
)+ ,
;, -*
RforUDistributedPackageSetting *
.* +
Option+ 1
=2 3
option4 :
;: ;
app 
. 

UseSwagger 
( 
) 
. 
UseSwaggerUI )
() *
c* +
=>, .
c 
. 
SwaggerEndpoint !
(! "
$str" <
,< =
option> D
.D E
AppNameE L
??M O 
DistPackageConstantsP d
.d e
PackageNamee p
)p q
) 
; 
return 
app 
. 
UseMiddleware $
<$ %-
!RforUDistributedPackageMiddleWare% F
>F G
(G H
)H I
;I J
} 	
public 
static 
IServiceCollection ()
AddRforUDistPackageMiddleWare) F
(F G
thisG K
IServiceCollectionL ^
service_ f
)f g
{ 	
service   
.   
AddSwaggerGen   !
(  ! "
)  " #
;  # $
service!! 
.!! "
AddHttpContextAccessor!! *
(!!* +
)!!+ ,
;!!, -
service"" 
."" 
AddAntiforgery"" "
(""" #
options""# *
=>""+ -
options"". 5
.""5 6

HeaderName""6 @
=""A B
$str""C Q
)""Q R
;""R S
RegisterServices## 
.## 
Register## %
(##% &
ref##& )
service##* 1
)##1 2
;##2 3
return$$ 
service$$ 
;$$ 
}%% 	
}66 
}99 Ü
yC:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\MiddleWare\RforUDistributedPackageMiddleWare.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #

MiddleWare# -
{ 
public 

class -
!RforUDistributedPackageMiddleWare 2
{ 
private		 
readonly		 
RequestDelegate		 (
_next		) .
;		. /
public -
!RforUDistributedPackageMiddleWare 0
(0 1
RequestDelegate1 @
nextA E
)E F
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
context2 9
)9 :
{ 	
await 
_next 
( 
context 
)  
;  !
} 	
} 
} ∑
vC:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\MiddleWare\RforUDistributedPackageOptions.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #

MiddleWare# -
{ 
public 

class *
RforUDistributedPackageOptions /
{ 
public 
string 
Option1 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
AppName 
{ 
get  #
;# $
set% (
;( )
}* +
} 
}		  
vC:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\MiddleWare\RforUDistributedPackageSetting.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #

MiddleWare# -
{ 
internal 
class *
RforUDistributedPackageSetting 1
{ 
	protected *
RforUDistributedPackageSetting 0
(0 1
)1 2
{		 	
}

 	
internal 
static *
RforUDistributedPackageOptions 6
Option7 =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} %
uC:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\Repositories\CloudStorageTableRepository.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #
Repositories# /
{ 
public		 

class		 '
CloudStorageTableRepository		 ,
<		, -
TEntity		- 4
>		4 5
:		6 7(
ICloudStorageTableRepository		8 T
<		T U
TEntity		U \
>		\ ]
where		^ c
TEntity		d k
:		l m
class		n s
{

 
private 
readonly 
string $
_storageConnectionString  8
;8 9
private 
readonly 
string 

_tableName  *
;* +
public '
CloudStorageTableRepository *
(* +
)+ ,
{ 	
} 	
public 
virtual 
Task 
< 
bool  
>  !
Add" %
(% &
TEntity& -
entity. 4
)4 5
{ 	
return 
Task 
. 

FromResult "
<" #
bool# '
>' (
(( )
true) -
)- .
;. /
} 	
public 
virtual 
void 
AddRange $
($ %
IEnumerable% 0
<0 1
TEntity1 8
>8 9
entities: B
)B C
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
virtual 
void 
Update "
(" #
TEntity# *
entity+ 1
)1 2
{   	
throw!! 
new!! #
NotImplementedException!! -
(!!- .
)!!. /
;!!/ 0
}"" 	
public$$ 
virtual$$ 
void$$ 
UpdateRange$$ '
($$' (
IEnumerable$$( 3
<$$3 4
TEntity$$4 ;
>$$; <
entities$$= E
)$$E F
{%% 	
throw&& 
new&& #
NotImplementedException&& -
(&&- .
)&&. /
;&&/ 0
}'' 	
public)) 
virtual)) 
void)) 
Remove)) "
())" #
TEntity))# *
entity))+ 1
)))1 2
{** 	
throw++ 
new++ #
NotImplementedException++ -
(++- .
)++. /
;++/ 0
},, 	
public.. 
virtual.. 
void.. 
RemoveRange.. '
(..' (
IEnumerable..( 3
<..3 4
TEntity..4 ;
>..; <
entities..= E
)..E F
{// 	
throw00 
new00 #
NotImplementedException00 -
(00- .
)00. /
;00/ 0
}11 	
public33 
virtual33 
int33 
Count33  
(33  !
)33! "
{44 	
throw55 
new55 #
NotImplementedException55 -
(55- .
)55. /
;55/ 0
}66 	
public88 
virtual88 
IEnumerable88 "
<88" #
TEntity88# *
>88* +
Find88, 0
(880 1

Expression881 ;
<88; <
Func88< @
<88@ A
TEntity88A H
,88H I
bool88J N
>88N O
>88O P
	predicate88Q Z
)88Z [
{99 	
throw:: 
new:: #
NotImplementedException:: -
(::- .
)::. /
;::/ 0
};; 	
public>> 
virtual>> 
TEntity>> 
GetSingleOrDefault>> 1
(>>1 2

Expression>>2 <
<>>< =
Func>>= A
<>>A B
TEntity>>B I
,>>I J
bool>>K O
>>>O P
>>>P Q
	predicate>>R [
)>>[ \
{?? 	
throw@@ 
new@@ #
NotImplementedException@@ -
(@@- .
)@@. /
;@@/ 0
}AA 	
publicFF 
virtualFF 
TEntityFF 
GetFF "
(FF" #
dynamicFF# *
idFF+ -
)FF- .
{GG 	
throwHH 
newHH #
NotImplementedExceptionHH -
(HH- .
)HH. /
;HH/ 0
}II 	
publicKK 
virtualKK 
IEnumerableKK "
<KK" #
TEntityKK# *
>KK* +
GetAllKK, 2
(KK2 3
)KK3 4
{LL 	
throwMM 
newMM #
NotImplementedExceptionMM -
(MM- .
)MM. /
;MM/ 0
}NN 	
}OO 
}PP ì
cC:\00PrLnScr\interview\Edge10\src\BuildingBlocks\Rfor.UDistributedPackage\RetryLogic\RetryHelper.cs
	namespace 	
RforU
 
. 
DistributedPackage "
." #

RetryLogic# -
{ 
public 

class 
RetryHelper 
{ 
	protected		 
RetryHelper		 
(		 
)		 
{

 	
} 	
public 
static 
void 
ExecuteWithRetry +
<+ ,
T, -
>- .
(. /
ILogger/ 6
<6 7
T7 8
>8 9
logger: @
,@ A
intB E
	NoOfRetryF O
,O P
ActionQ W
	operationX a
)a b
{ 	
int 
attempt 
= 
$num 
; 
do 
{ 
try 
{ 
attempt 
++ 
; 
	operation 
. 
Invoke $
($ %
)% &
;& '
break 
; 
} 
catch 
( 
System 
. 
	Exception '
ex( *
)* +
{ 
if 
( 
attempt 
==  "
	NoOfRetry# ,
), -
throw. 3
;3 4
if 
( 
logger 
!= !
null" &
)& '
{ 
logger   
.   
LogError   '
(  ' (
$"  ( *)
Error Occurred. Retrying for   * G
{  G H
attempt  H O
}  O P"
 Time. Error Details:   P f
{  f g
ex  g i
.  i j
Message  j q
}  q r
"  r s
)  s t
;  t u
}!! 
Task## 
.## 
Delay## 
(## 
TimeSpan## '
.##' (
FromSeconds##( 3
(##3 4
Math##4 8
.##8 9
Pow##9 <
(##< =
$num##= @
,##@ A
attempt##B I
)##I J
)##J K
)##K L
.##L M
Wait##M Q
(##Q R
)##R S
;##S T
}$$ 
}&& 
while&& 
(&& 
true&& 
)&& 
;&& 
}'' 	
})) 
}** 