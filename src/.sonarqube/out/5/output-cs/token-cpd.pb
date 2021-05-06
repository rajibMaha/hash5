³
lC:\00PrLnScr\interview\Edge10\src\Services\Opponents\ComputerAIOpponents\Controllers\EvaluationController.cs
	namespace 	
ComputerAIOpponents
 
. 
Controllers )
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public		 

class		  
EvaluationController		 %
:		& '
ControllerBase		( 6
{

 
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status200OK* 5
,5 6
Type7 ;
=< =
typeof> D
(D E
boolE I
)I J
)J K
]K L
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *(
Status500InternalServerError* F
)F G
]G H
public 
ActionResult 
< 
string "
>" #
Evaluate$ ,
(, -
[- .
FromBody. 6
]6 7

Dictionary8 B
<B C
stringC I
,I J
stringK Q
>Q R
gamesS X
)X Y
{ 	
return 
Ok 
( 
$str  
)  !
;! "
} 	
} 
} ’
qC:\00PrLnScr\interview\Edge10\src\Services\Opponents\ComputerAIOpponents\Controllers\WeatherForecastController.cs
	namespace 	
ComputerAIOpponents
 
. 
Controllers )
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
}&& ´

SC:\00PrLnScr\interview\Edge10\src\Services\Opponents\ComputerAIOpponents\Program.cs
	namespace 	
ComputerAIOpponents
 
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
} û
SC:\00PrLnScr\interview\Edge10\src\Services\Opponents\ComputerAIOpponents\Startup.cs
	namespace 	
ComputerAIOpponents
 
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
},, è
[C:\00PrLnScr\interview\Edge10\src\Services\Opponents\ComputerAIOpponents\WeatherForecast.cs
	namespace 	
ComputerAIOpponents
 
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