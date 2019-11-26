Ç
yC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\App_Start\BundleConfig.cs
	namespace 	
ECOMMERCE_TRESB
 
{ 
public 

class 
BundleConfig 
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ;
); <
.< =
Include= D
(D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
,. /
$str ,
), -
)- .
;. /
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} ´
yC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\App_Start\FilterConfig.cs
	namespace 	
ECOMMERCE_TRESB
 
{ 
public 

class 
FilterConfig 
{ 
public 
static 
void !
RegisterGlobalFilters 0
(0 1"
GlobalFilterCollection1 G
filtersH O
)O P
{		 	
filters

 
.

 
Add

 
(

 
new

  
HandleErrorAttribute

 0
(

0 1
)

1 2
)

2 3
;

3 4
} 	
} 
} â	
xC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\App_Start\RouteConfig.cs
	namespace 	
ECOMMERCE_TRESB
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} Û
xC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\App_Start\UnityConfig.cs
	namespace 	
ECOMMERCE_TRESB
 
{		 
public 

static 
class 
UnityConfig #
{ 
private 
static 
Lazy 
< 
IUnityContainer +
>+ ,
	container- 6
=7 8
new
 
Lazy 
< 
IUnityContainer "
>" #
(# $
($ %
)% &
=>' )
{
 
var 
	container 
= 
new !
UnityContainer" 0
(0 1
)1 2
;2 3
RegisterTypes 
( 
	container %
)% &
;& '
return 
	container 
; 
}
 
) 
; 
public 
static 
IUnityContainer %
	Container& /
=>0 2
	container3 <
.< =
Value= B
;B C
public(( 
static(( 
void(( 
RegisterTypes(( (
(((( )
IUnityContainer(() 8
	container((9 B
)((B C
{)) 	
	container00 
.00 
RegisterType00 "
<00" #
ICategoriaService00# 4
,004 5
CategoriaService006 F
>00F G
(00G H
)00H I
;00I J
	container11 
.11 
RegisterType11 "
<11" # 
IDetalleVentaService11# 7
,117 8
DetalleVentaService119 L
>11L M
(11M N
)11N O
;11O P
	container22 
.22 
RegisterType22 "
<22" #
IDireccionService22# 4
,224 5
DireccionService226 F
>22F G
(22G H
)22H I
;22I J
	container33 
.33 
RegisterType33 "
<33" #
IImagenService33# 1
,331 2
ImagenService333 @
>33@ A
(33A B
)33B C
;33C D
	container44 
.44 
RegisterType44 "
<44" #
IProductoService44# 3
,443 4
ProductoService445 D
>44D E
(44E F
)44F G
;44G H
	container55 
.55 
RegisterType55 "
<55" #
IUsuarioService55# 2
,552 3
UsuarioService554 B
>55B C
(55C D
)55D E
;55E F
	container66 
.66 
RegisterType66 "
<66" #
IVentaService66# 0
,660 1
VentaService662 >
>66> ?
(66? @
)66@ A
;66A B
	container77 
.77 
RegisterType77 "
<77" #
IAutManager77# .
,77. /

AutManager770 :
>77: ;
(77; <
)77< =
;77= >
	container88 
.88 
RegisterType88 "
<88" #
IValidacionService88# 5
,885 6
ValidacionService887 H
>88H I
(88I J
)88J K
;88K L
	container99 
.99 
RegisterType99 "
<99" #
IComentariosSerivce99# 6
,996 7
ComentariosSerivce998 J
>99J K
(99K L
)99L M
;99M N
	container:: 
.:: 
RegisterType:: "
<::" #
ISessionService::# 2
,::2 3
SessionService::4 B
>::B C
(::C D
)::D E
;::E F
};; 	
}<< 
}== ê
~C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\App_Start\UnityMvcActivator.cs
[ 
assembly 	
:	 

WebActivatorEx 
. %
PreApplicationStartMethod 3
(3 4
typeof4 :
(: ;
ECOMMERCE_TRESB; J
.J K
UnityMvcActivatorK \
)\ ]
,] ^
nameof_ e
(e f
ECOMMERCE_TRESBf u
.u v
UnityMvcActivator	v á
.
á à
Start
à ç
)
ç é
)
é è
]
è ê
[ 
assembly 	
:	 

WebActivatorEx 
. %
ApplicationShutdownMethod 3
(3 4
typeof4 :
(: ;
ECOMMERCE_TRESB; J
.J K
UnityMvcActivatorK \
)\ ]
,] ^
nameof_ e
(e f
ECOMMERCE_TRESBf u
.u v
UnityMvcActivator	v á
.
á à
Shutdown
à ê
)
ê ë
)
ë í
]
í ì
	namespace		 	
ECOMMERCE_TRESB		
 
{

 
public 

static 
class 
UnityMvcActivator )
{ 
public 
static 
void 
Start  
(  !
)! "
{ 	
FilterProviders 
. 
	Providers %
.% &
Remove& ,
(, -
FilterProviders- <
.< =
	Providers= F
.F G
OfTypeG M
<M N)
FilterAttributeFilterProviderN k
>k l
(l m
)m n
.n o
Firsto t
(t u
)u v
)v w
;w x
FilterProviders 
. 
	Providers %
.% &
Add& )
() *
new* -.
"UnityFilterAttributeFilterProvider. P
(P Q
UnityConfigQ \
.\ ]
	Container] f
)f g
)g h
;h i
DependencyResolver 
. 
SetResolver *
(* +
new+ .#
UnityDependencyResolver/ F
(F G
UnityConfigG R
.R S
	ContainerS \
)\ ]
)] ^
;^ _
} 	
public!! 
static!! 
void!! 
Shutdown!! #
(!!# $
)!!$ %
{"" 	
UnityConfig## 
.## 
	Container## !
.##! "
Dispose##" )
(##) *
)##* +
;##+ ,
}$$ 	
}%% 
}&& Õ
ÄC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Controllers\BaseAutController.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Controllers %
{ 
[		 
	Authorize		 
]		 
public

 

abstract

 
class

 
BaseAutController

 +
:

, -

Controller

. 8
{ 
} 
} ˆ_
ÇC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Controllers\CategoriaController.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Controllers %
{ 
public 

class 
CategoriaController $
:% &
BaseAutController' 8
{ 
private 
readonly 
ICategoriaService *
servicio+ 3
;3 4
private 
readonly 
IUsuarioService (
UsarioSession) 6
;6 7
private 
readonly 
ISessionService (
session) 0
;0 1
public 
CategoriaController "
(" #
ICategoriaService# 4
servicio5 =
,= >
IUsuarioService? N
UsuarioSessionO ]
,] ^
ISessionService_ n
sessiono v
)v w
{ 	
this 
. 
servicio 
= 
servicio $
;$ %
this 
. 
UsarioSession 
=  
UsuarioSession! /
;/ 0
this 
. 
session 
= 
session "
;" #
} 	
[ 	
HttpGet	 
] 
public 
ActionResult 
Listar "
(" #
)# $
{ 	
if 
( 
session 
. 
EsAdministrativo (
(( )
)) *
)* +
return 
View 
( 
servicio $
.$ %
GetCategoriasAsList% 8
(8 9
)9 :
): ;
;; <
return!! 
RedirectToAction!! #
(!!# $
$str!!$ +
,!!+ ,
$str!!, 3
)!!3 4
;!!4 5
}"" 	
[$$ 	
HttpGet$$	 
]$$ 
public%% 
ActionResult%% 
Crear%% !
(%%! "
)%%" #
{&& 	
if'' 
('' 
session'' 
.'' 
EsAdministrativo'' (
(''( )
)'') *
)''* +
return(( 
View(( 
((( 
new(( 
CategoriaView((  -
(((- .
)((. /
)((/ 0
;((0 1
return** 
RedirectToAction** #
(**# $
$str**$ +
,**+ ,
$str**- 4
)**4 5
;**5 6
}++ 	
[-- 	
HttpPost--	 
]-- 
public.. 
ActionResult.. 
Crear.. !
(..! "
CategoriaView.." /
categoriaView..0 =
)..= >
{// 	
if00 
(00 
session00 
.00 
EsAdministrativo00 (
(00( )
)00) *
)00* +
{11 
ValidarCategoria22  
(22  !
categoriaView22! .
)22. /
;22/ 0
if33 
(33 
!33 

ModelState33 
.33  
IsValid33  '
)33' (
return44 
View44 
(44  
categoriaView44  -
)44- .
;44. /
if66 
(66 
servicio66 
.66 
ExisteCategoria66 ,
(66, -
categoriaView66- :
.66: ;
Nombre66; A
)66A B
)66B C
{77 
ViewBag88 
.88 
ExisteCategoria88 +
=88, -
$str88. X
;88X Y
return99 
View99 
(99  
categoriaView99  -
)99- .
;99. /
}:: 
	Categoria<< 
	categoria<< #
=<<$ %
servicio<<& .
.<<. /$
CategoriaViewToCategoria<</ G
(<<G H
categoriaView<<H U
)<<U V
;<<V W
servicio== 
.== 
GuardarCategoria== )
(==) *
	categoria==* 3
)==3 4
;==4 5
return?? 
RedirectToAction?? '
(??' (
$str??( 0
,??0 1
$str??2 =
)??= >
;??> ?
}@@ 
returnBB 
RedirectToActionBB #
(BB# $
$strBB$ +
,BB+ ,
$strBB- 4
)BB4 5
;BB5 6
}CC 	
[EE 	
HttpGetEE	 
]EE 
publicFF 
ActionResultFF 
EditarFF "
(FF" #
intFF# &
?FF& '
IdCategoriaFF( 3
)FF3 4
{GG 	
ifHH 
(HH 
sessionHH 
.HH 
EsAdministrativoHH (
(HH( )
)HH) *
)HH* +
{II 
ifJJ 
(JJ 
IdCategoriaJJ 
==JJ  "
nullJJ# '
)JJ' (
returnKK 
RedirectToActionKK +
(KK+ ,
$strKK, 3
,KK3 4
$strKK5 <
)KK< =
;KK= >
	CategoriaMM 
	categoriaMM #
=MM$ %
servicioMM& .
.MM. /
GetCategoriaByIdMM/ ?
(MM? @
IdCategoriaMM@ K
)MMK L
;MML M
ifOO 
(OO 
	categoriaOO 
==OO  
nullOO! %
)OO% &
returnPP 
RedirectToActionPP +
(PP+ ,
$strPP, 3
,PP3 4
$strPP5 <
)PP< =
;PP= >
CategoriaViewRR 
categoriaViewRR +
=RR, -
servicioRR. 6
.RR6 7$
CategoriaToCategoriaViewRR7 O
(RRO P
	categoriaRRP Y
)RRY Z
;RRZ [
returnTT 
ViewTT 
(TT 
categoriaViewTT )
)TT) *
;TT* +
}UU 
returnWW 
RedirectToActionWW #
(WW# $
$strWW$ +
,WW+ ,
$strWW- 4
)WW4 5
;WW5 6
}XX 	
[ZZ 	
HttpPostZZ	 
]ZZ 
public[[ 
ActionResult[[ 
Editar[[ "
([[" #
int[[# &
?[[& '
IdCategoria[[( 3
,[[3 4
CategoriaView[[5 B
categoriaView[[C P
)[[P Q
{\\ 	
if]] 
(]] 
session]] 
.]] 
EsAdministrativo]] (
(]]( )
)]]) *
)]]* +
{^^ 
if__ 
(__ 
IdCategoria__ 
==__  "
null__# '
)__' (
return`` 
RedirectToAction`` +
(``+ ,
$str``, 3
,``3 4
$str``5 <
)``< =
;``= >
ValidarCategoriabb  
(bb  !
categoriaViewbb! .
)bb. /
;bb/ 0
ifcc 
(cc 
!cc 

ModelStatecc 
.cc  
IsValidcc  '
)cc' (
returndd 
Viewdd 
(dd  
categoriaViewdd  -
)dd- .
;dd. /
ifff 
(ff 
servicioff 
.ff 
ExisteCategoriaff ,
(ff, -
categoriaViewff- :
.ff: ;
Nombreff; A
)ffA B
)ffB C
{gg 
ViewBaghh 
.hh 
ExisteCategoriahh +
=hh, -
$strhh. X
;hhX Y
returnii 
Viewii 
(ii  
categoriaViewii  -
)ii- .
;ii. /
}jj 
	Categoriall 
	categoriall #
=ll$ %
servicioll& .
.ll. /$
CategoriaViewToCategoriall/ G
(llG H
categoriaViewllH U
)llU V
;llV W
serviciomm 
.mm 
EditarCategoriamm (
(mm( )
IdCategoriamm) 4
,mm4 5
	categoriamm6 ?
)mm? @
;mm@ A
returnoo 
RedirectToActionoo '
(oo' (
$stroo( 0
,oo0 1
$stroo2 =
)oo= >
;oo> ?
}pp 
returnrr 
RedirectToActionrr #
(rr# $
$strrr$ +
,rr+ ,
$strrr- 4
)rr4 5
;rr5 6
}ss 	
[uu 	
HttpGetuu	 
]uu 
publicvv 
ActionResultvv 
Eliminarvv $
(vv$ %
intvv% (
?vv( )
IdCategoriavv* 5
)vv5 6
{ww 	
ifxx 
(xx 
sessionxx 
.xx 
EsAdministrativoxx (
(xx( )
)xx) *
)xx* +
{yy 
ifzz 
(zz 
IdCategoriazz 
==zz  "
nullzz# '
)zz' (
return{{ 
RedirectToAction{{ +
({{+ ,
$str{{, 3
,{{3 4
$str{{5 <
){{< =
;{{= >
if}} 
(}} 
servicio}} 
.}} "
CategoriaTieneProducto}} 3
(}}3 4
IdCategoria}}4 ?
)}}? @
)}}@ A
return~~ 
RedirectToAction~~ +
(~~+ ,
$str~~, 4
,~~4 5
$str~~6 A
)~~A B
;~~B C
servicio
ÄÄ 
.
ÄÄ 
EliminarCategoria
ÄÄ *
(
ÄÄ* +
IdCategoria
ÄÄ+ 6
)
ÄÄ6 7
;
ÄÄ7 8
return
ÅÅ 
RedirectToAction
ÅÅ '
(
ÅÅ' (
$str
ÅÅ( 0
,
ÅÅ0 1
$str
ÅÅ2 =
)
ÅÅ= >
;
ÅÅ> ?
}
ÇÇ 
return
ÑÑ 
RedirectToAction
ÑÑ #
(
ÑÑ# $
$str
ÑÑ$ +
,
ÑÑ+ ,
$str
ÑÑ- 4
)
ÑÑ4 5
;
ÑÑ5 6
}
ÖÖ 	
private
áá 
void
áá 
ValidarCategoria
áá %
(
áá% &
CategoriaView
áá& 3
categoriaView
áá4 A
)
ááA B
{
àà 	
string
ââ 
LetrasRegex
ââ 
=
ââ  
$str
ââ! 1
;
ââ1 2
if
ãã 
(
ãã 
string
ãã 
.
ãã 
IsNullOrEmpty
ãã $
(
ãã$ %
categoriaView
ãã% 2
.
ãã2 3
Nombre
ãã3 9
)
ãã9 :
)
ãã: ;

ModelState
åå 
.
åå 
AddModelError
åå (
(
åå( )
$str
åå) 1
,
åå1 2
$str
åå3 F
)
ååF G
;
ååG H
if
çç 
(
çç 
string
çç 
.
çç 
IsNullOrEmpty
çç $
(
çç$ %
categoriaView
çç% 2
.
çç2 3
Nombre
çç3 9
)
çç9 :
||
çç; =
categoriaView
çç> K
.
ççK L
Nombre
ççL R
.
ççR S
Length
ççS Y
<=
ççZ \
$num
çç] ^
)
çç^ _

ModelState
éé 
.
éé 
AddModelError
éé (
(
éé( )
$str
éé) 1
,
éé1 2
$str
éé3 Y
)
ééY Z
;
ééZ [
if
èè 
(
èè 
string
èè 
.
èè 
IsNullOrEmpty
èè $
(
èè$ %
categoriaView
èè% 2
.
èè2 3
Nombre
èè3 9
)
èè9 :
||
èè; =
categoriaView
èè> K
.
èèK L
Nombre
èèL R
.
èèR S
Length
èèS Y
>
èèZ [
$num
èè\ _
)
èè_ `

ModelState
êê 
.
êê 
AddModelError
êê (
(
êê( )
$str
êê) 1
,
êê1 2
$str
êê3 Y
)
êêY Z
;
êêZ [
bool
ëë 
isNombreValid
ëë 
=
ëë  
string
ëë! '
.
ëë' (
IsNullOrEmpty
ëë( 5
(
ëë5 6
categoriaView
ëë6 C
.
ëëC D
Nombre
ëëD J
)
ëëJ K
||
ëëL N
Regex
ëëO T
.
ëëT U
IsMatch
ëëU \
(
ëë\ ]
categoriaView
ëë] j
.
ëëj k
Nombre
ëëk q
,
ëëq r
LetrasRegex
ëës ~
)
ëë~ 
;ëë Ä
if
íí 
(
íí 
!
íí 
isNombreValid
íí 
)
íí 

ModelState
ìì 
.
ìì 
AddModelError
ìì (
(
ìì( )
$str
ìì) 1
,
ìì1 2
$str
ìì3 K
)
ììK L
;
ììL M
}
îî 	
}
ïï 
}ññ Ä
~C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Controllers\ErrorController.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Controllers %
{ 
public		 

class		 
ErrorController		  
:		! "

Controller		# -
{

 
[ 	
HttpGet	 
] 
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
) 
; 
} 	
} 
} Ûù
}C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Controllers\HomeController.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Controllers %
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private 
readonly 
IUsuarioService (
servicio) 1
;1 2
private 
readonly 
IAutManager $
autenticacion% 2
;2 3
private 
readonly 
ISessionService (
session) 0
;0 1
private 
readonly 
ICategoriaService *
categoriaService+ ;
;; <
public 
HomeController 
( 
IUsuarioService -
servicio. 6
,6 7
IAutManager8 C
autenticacionD Q
,Q R
ISessionServiceS b
sessionc j
,j k
ICategoriaServicel }
categoriaService	~ é
)
é è
{ 	
this 
. 
servicio 
= 
servicio $
;$ %
this 
. 
autenticacion 
=  
autenticacion! .
;. /
this 
. 
session 
= 
session "
;" #
this 
. 
categoriaService !
=" #
categoriaService$ 4
;4 5
} 	
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag   
.   
ListaUsuarios   !
=  " #
servicio  $ ,
.  , -
GetUsuariosAsList  - >
(  > ?
)  ? @
;  @ A
return!! 
View!! 
(!! 
)!! 
;!! 
}"" 	
public$$ 
ActionResult$$ 
Nosotros$$ $
($$$ %
)$$% &
{%% 	
ViewBag&& 
.&& 
Nosotros&& 
=&& 
$str&& )
;&&) *
ViewBag'' 
.'' 
ListaUsuarios'' !
=''" #
servicio''$ ,
.'', -
GetUsuariosAsList''- >
(''> ?
)''? @
;''@ A
return(( 
View(( 
((( 
)(( 
;(( 
})) 	
public++ 
ActionResult++ 
Contacto++ $
(++$ %
)++% &
{,, 	
ViewBag-- 
.-- 
Contacto-- 
=-- 
$str-- )
;--) *
ViewBag.. 
... 
ListaUsuarios.. !
=.." #
servicio..$ ,
..., -
GetUsuariosAsList..- >
(..> ?
)..? @
;..@ A
return// 
View// 
(// 
)// 
;// 
}00 	
[22 	
HttpGet22	 
]22 
public33 
ActionResult33 
Registrarse33 '
(33' (
)33( )
{44 	
return55 
View55 
(55 
new55 
UsuarioView55 '
(55' (
)55( )
)55) *
;55* +
}66 	
[88 	
HttpPost88	 
]88 
public99 
ActionResult99 
Registrarse99 '
(99' (
UsuarioView99( 3
usuarioView994 ?
)99? @
{:: 	
Usuario;; 
(;; 
usuarioView;; 
);;  
;;;  !
if<< 
(<< 
!<< 

ModelState<< 
.<< 
IsValid<< #
)<<# $
return== 
View== 
(== 
usuarioView== '
)==' (
;==( )
if?? 
(?? 
servicio?? 
.?? 
ExisteElCorreo?? '
(??' (
usuarioView??( 3
.??3 4
Email??4 9
)??9 :
)??: ;
{@@ 
ViewBagAA 
.AA 
CorreoExistenteAA '
=AA( )
InfoAtributosAA* 7
.AA7 8
ErrorAA8 =
.AA= >
CORREO_REGISTRADOAA> O
;AAO P
ViewBagBB 
.BB 
ListaUsuariosBB %
=BB& '
servicioBB( 0
.BB0 1
GetUsuariosAsListBB1 B
(BBB C
)BBC D
;BBD E
returnCC 
ViewCC 
(CC 
usuarioViewCC '
)CC' (
;CC( )
}DD 
UsuarioFF 
usuarioFF 
=FF 
servicioFF &
.FF& ' 
UsuarioViewToUsuarioFF' ;
(FF; <
usuarioViewFF< G
)FFG H
;FFH I
servicioGG 
.GG 
GuardarUsuarioGG #
(GG# $
usuarioGG$ +
)GG+ ,
;GG, -
returnII 
RedirectToActionII #
(II# $
$strII$ +
,II+ ,
$strII- 3
)II3 4
;II4 5
}JJ 	
[LL 	
HttpGetLL	 
]LL 
publicMM 
ActionResultMM 
LoginMM !
(MM! "
)MM" #
{NN 	
returnOO 
ViewOO 
(OO 
)OO 
;OO 
}PP 	
[RR 	
HttpPostRR	 
]RR 
publicSS 
ActionResultSS 
LoginSS !
(SS! "
stringSS" (
CorreoSS) /
,SS/ 0
stringSS1 7
ClaveSS8 =
)SS= >
{TT 	
ifUU 
(UU 
CorreoUU 
==UU 
$strUU 
||UU 
ClaveUU  %
==UU& (
$strUU) +
)UU+ ,
{VV 
TempDataWW 
[WW 
$strWW  
]WW  !
=WW" #
$strWW$ @
;WW@ A
ViewBagXX 
.XX #
UsuarioOClaveIncorrectaXX /
=XX0 1
TempDataXX2 :
[XX: ;
$strXX; B
]XXB C
;XXC D
returnYY 
ViewYY 
(YY 
)YY 
;YY 
}ZZ 
Usuario\\ 
usuario\\ 
=\\ 
servicio\\ &
.\\& '&
GetUsuarioByCorreoAndClave\\' A
(\\A B
Correo\\B H
,\\H I
Clave\\J O
)\\O P
;\\P Q
if^^ 
(^^ 
usuario^^ 
!=^^ 
null^^ 
)^^  
{__ 
autenticacion`` 
.`` 
Login`` #
(``# $
usuario``$ +
)``+ ,
;``, -
sessionaa 
.aa 
GuardarSesionaa %
(aa% &
usuarioaa& -
)aa- .
;aa. /
returnbb 
RedirectToActionbb '
(bb' (
$strbb( /
,bb/ 0
$strbb1 ;
)bb; <
;bb< =
}cc 
TempDataee 
[ee 
$stree 
]ee 
=ee 
$stree  <
;ee< =
ViewBagff 
.ff #
UsuarioOClaveIncorrectaff +
=ff, -
TempDataff. 6
[ff6 7
$strff7 >
]ff> ?
;ff? @
returngg 
Viewgg 
(gg 
)gg 
;gg 
}hh 	
[jj 	
HttpGetjj	 
]jj 
publickk 
ActionResultkk 
	Productoskk %
(kk% &
intkk& )
?kk) *
	Categoriakk+ 4
,kk4 5
intkk6 9
?kk9 :
paginakk; A
)kkA B
{ll 	
ifnn 
(nn 
	Categoriann 
==nn 
nullnn !
)nn! "
	Categoriaoo 
=oo 
$numoo 
;oo 
ifqq 
(qq 
paginaqq 
==qq 
nullqq 
)qq 
paginarr 
=rr 
$numrr 
;rr 
	Categoriatt 
	categoriatt 
=tt  !
categoriaServicett" 2
.tt2 3
GetCategoriaByIdtt3 C
(ttC D
	CategoriattD M
)ttM N
;ttN O
ViewBaguu 
.uu 
Pageuu 
=uu 
paginauu !
;uu! "
ViewBagvv 
.vv 
ListaUsuariosvv !
=vv" #
serviciovv$ ,
.vv, -
GetUsuariosAsListvv- >
(vv> ?
)vv? @
;vv@ A
returnxx 
Viewxx 
(xx 
	categoriaxx !
)xx! "
;xx" #
}yy 	
public{{ 
ActionResult{{ 
LogOut{{ "
({{" #
){{# $
{|| 	
autenticacion}} 
.}} 
Logout}}  
(}}  !
)}}! "
;}}" #
session~~ 
.~~ 
LimpiarSesion~~ !
(~~! "
)~~" #
;~~# $
return 
RedirectToAction #
(# $
$str$ +
,+ ,
$str- 3
)3 4
;4 5
}
ÄÄ 	
public
ÇÇ 
bool
ÇÇ 
IsLogged
ÇÇ 
(
ÇÇ 
)
ÇÇ 
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
Session
ÑÑ 
[
ÑÑ 
$str
ÑÑ #
]
ÑÑ# $
!=
ÑÑ% '
null
ÑÑ( ,
&&
ÑÑ- /
Session
ÑÑ0 7
[
ÑÑ7 8
$str
ÑÑ8 ?
]
ÑÑ? @
!=
ÑÑA C
null
ÑÑD H
)
ÑÑH I
return
ÖÖ 
true
ÖÖ 
;
ÖÖ 
return
áá 
false
áá 
;
áá 
}
àà 	
private
ää 
void
ää 
Usuario
ää 
(
ää 
UsuarioView
ää (
usuarioView
ää) 4
)
ää4 5
{
ãã 	
string
åå 
LetrasRegex
åå 
=
åå  
$str
åå! 1
;
åå1 2
string
çç 
NumerosRegex
çç 
=
çç  !
$str
çç" 3
;
çç3 4
string
éé 

EmailRegex
éé 
=
éé 
$stréé  ¡
;éé¡ ¬
if
êê 
(
êê 
string
êê 
.
êê 
IsNullOrEmpty
êê $
(
êê$ %
usuarioView
êê% 0
.
êê0 1
Email
êê1 6
)
êê6 7
)
êê7 8

ModelState
ëë 
.
ëë 
AddModelError
ëë (
(
ëë( )
$str
ëë) 0
,
ëë0 1
$str
ëë2 E
)
ëëE F
;
ëëF G
if
íí 
(
íí 
string
íí 
.
íí 
IsNullOrEmpty
íí $
(
íí$ %
usuarioView
íí% 0
.
íí0 1
Email
íí1 6
)
íí6 7
||
íí8 :
usuarioView
íí; F
.
ííF G
Email
ííG L
.
ííL M
Length
ííM S
<=
ííT V
$num
ííW X
)
ííX Y

ModelState
ìì 
.
ìì 
AddModelError
ìì (
(
ìì( )
$str
ìì) 0
,
ìì0 1
$str
ìì2 X
)
ììX Y
;
ììY Z
if
îî 
(
îî 
string
îî 
.
îî 
IsNullOrEmpty
îî $
(
îî$ %
usuarioView
îî% 0
.
îî0 1
Email
îî1 6
)
îî6 7
||
îî8 :
usuarioView
îî; F
.
îîF G
Email
îîG L
.
îîL M
Length
îîM S
>
îîT U
$num
îîV Y
)
îîY Z

ModelState
ïï 
.
ïï 
AddModelError
ïï (
(
ïï( )
$str
ïï) 0
,
ïï0 1
$str
ïï2 X
)
ïïX Y
;
ïïY Z
bool
ññ 
isEmailValid
ññ 
=
ññ 
string
ññ  &
.
ññ& '
IsNullOrEmpty
ññ' 4
(
ññ4 5
usuarioView
ññ5 @
.
ññ@ A
Email
ññA F
)
ññF G
||
ññH J
Regex
ññK P
.
ññP Q
IsMatch
ññQ X
(
ññX Y
usuarioView
ññY d
.
ññd e
Email
ññe j
,
ññj k

EmailRegex
ññl v
)
ññv w
;
ññw x
if
óó 
(
óó 
!
óó 
isEmailValid
óó 
)
óó 

ModelState
òò 
.
òò 
AddModelError
òò (
(
òò( )
$str
òò) 0
,
òò0 1
$str
òò2 M
)
òòM N
;
òòN O
if
öö 
(
öö 
string
öö 
.
öö 
IsNullOrEmpty
öö $
(
öö$ %
usuarioView
öö% 0
.
öö0 1
Clave
öö1 6
)
öö6 7
)
öö7 8

ModelState
õõ 
.
õõ 
AddModelError
õõ (
(
õõ( )
$str
õõ) 0
,
õõ0 1
$str
õõ2 E
)
õõE F
;
õõF G
if
ùù 
(
ùù 
string
ùù 
.
ùù 
IsNullOrEmpty
ùù $
(
ùù$ %
usuarioView
ùù% 0
.
ùù0 1
Nombres
ùù1 8
)
ùù8 9
)
ùù9 :

ModelState
ûû 
.
ûû 
AddModelError
ûû (
(
ûû( )
$str
ûû) 2
,
ûû2 3
$str
ûû4 G
)
ûûG H
;
ûûH I
if
üü 
(
üü 
string
üü 
.
üü 
IsNullOrEmpty
üü $
(
üü$ %
usuarioView
üü% 0
.
üü0 1
Nombres
üü1 8
)
üü8 9
||
üü: <
usuarioView
üü= H
.
üüH I
Nombres
üüI P
.
üüP Q
Length
üüQ W
<=
üüX Z
$num
üü[ \
)
üü\ ]

ModelState
†† 
.
†† 
AddModelError
†† (
(
††( )
$str
††) 2
,
††2 3
$str
††4 Z
)
††Z [
;
††[ \
if
°° 
(
°° 
string
°° 
.
°° 
IsNullOrEmpty
°° $
(
°°$ %
usuarioView
°°% 0
.
°°0 1
Nombres
°°1 8
)
°°8 9
||
°°: <
usuarioView
°°= H
.
°°H I
Nombres
°°I P
.
°°P Q
Length
°°Q W
>
°°X Y
$num
°°Z ]
)
°°] ^

ModelState
¢¢ 
.
¢¢ 
AddModelError
¢¢ (
(
¢¢( )
$str
¢¢) 2
,
¢¢2 3
$str
¢¢4 Z
)
¢¢Z [
;
¢¢[ \
bool
££ 
isNombreValid
££ 
=
££  
string
££! '
.
££' (
IsNullOrEmpty
££( 5
(
££5 6
usuarioView
££6 A
.
££A B
Nombres
££B I
)
££I J
||
££K M
Regex
££N S
.
££S T
IsMatch
££T [
(
££[ \
usuarioView
££\ g
.
££g h
Nombres
££h o
,
££o p
LetrasRegex
££q |
)
££| }
;
££} ~
if
§§ 
(
§§ 
!
§§ 
isNombreValid
§§ 
)
§§ 

ModelState
•• 
.
•• 
AddModelError
•• (
(
••( )
$str
••) 2
,
••2 3
$str
••4 L
)
••L M
;
••M N
if
ßß 
(
ßß 
string
ßß 
.
ßß 
IsNullOrEmpty
ßß $
(
ßß$ %
usuarioView
ßß% 0
.
ßß0 1
	Apellidos
ßß1 :
)
ßß: ;
)
ßß; <

ModelState
®® 
.
®® 
AddModelError
®® (
(
®®( )
$str
®®) 4
,
®®4 5
$str
®®6 I
)
®®I J
;
®®J K
if
©© 
(
©© 
string
©© 
.
©© 
IsNullOrEmpty
©© $
(
©©$ %
usuarioView
©©% 0
.
©©0 1
	Apellidos
©©1 :
)
©©: ;
||
©©< >
usuarioView
©©? J
.
©©J K
	Apellidos
©©K T
.
©©T U
Length
©©U [
<=
©©\ ^
$num
©©_ `
)
©©` a

ModelState
™™ 
.
™™ 
AddModelError
™™ (
(
™™( )
$str
™™) 4
,
™™4 5
$str
™™6 \
)
™™\ ]
;
™™] ^
if
´´ 
(
´´ 
string
´´ 
.
´´ 
IsNullOrEmpty
´´ $
(
´´$ %
usuarioView
´´% 0
.
´´0 1
	Apellidos
´´1 :
)
´´: ;
||
´´< >
usuarioView
´´? J
.
´´J K
	Apellidos
´´K T
.
´´T U
Length
´´U [
>
´´\ ]
$num
´´^ a
)
´´a b

ModelState
¨¨ 
.
¨¨ 
AddModelError
¨¨ (
(
¨¨( )
$str
¨¨) 4
,
¨¨4 5
$str
¨¨6 \
)
¨¨\ ]
;
¨¨] ^
bool
≠≠ 
isApellidosValid
≠≠ !
=
≠≠" #
string
≠≠$ *
.
≠≠* +
IsNullOrEmpty
≠≠+ 8
(
≠≠8 9
usuarioView
≠≠9 D
.
≠≠D E
	Apellidos
≠≠E N
)
≠≠N O
||
≠≠P R
Regex
≠≠S X
.
≠≠X Y
IsMatch
≠≠Y `
(
≠≠` a
usuarioView
≠≠a l
.
≠≠l m
	Apellidos
≠≠m v
,
≠≠v w
LetrasRegex≠≠x É
)≠≠É Ñ
;≠≠Ñ Ö
if
ÆÆ 
(
ÆÆ 
!
ÆÆ 
isApellidosValid
ÆÆ !
)
ÆÆ! "

ModelState
ØØ 
.
ØØ 
AddModelError
ØØ (
(
ØØ( )
$str
ØØ) 4
,
ØØ4 5
$str
ØØ6 N
)
ØØN O
;
ØØO P
if
±± 
(
±± 
string
±± 
.
±± 
IsNullOrEmpty
±± $
(
±±$ %
usuarioView
±±% 0
.
±±0 1
FechaNacimiento
±±1 @
.
±±@ A
ToString
±±A I
(
±±I J
)
±±J K
)
±±K L
)
±±L M

ModelState
≤≤ 
.
≤≤ 
AddModelError
≤≤ (
(
≤≤( )
$str
≤≤) :
,
≤≤: ;
$str
≤≤< O
)
≤≤O P
;
≤≤P Q
if
¥¥ 
(
¥¥ 
string
¥¥ 
.
¥¥ 
IsNullOrEmpty
¥¥ $
(
¥¥$ %
usuarioView
¥¥% 0
.
¥¥0 1
Celular
¥¥1 8
)
¥¥8 9
)
¥¥9 :

ModelState
µµ 
.
µµ 
AddModelError
µµ (
(
µµ( )
$str
µµ) 2
,
µµ2 3
$str
µµ4 G
)
µµG H
;
µµH I
if
∂∂ 
(
∂∂ 
string
∂∂ 
.
∂∂ 
IsNullOrEmpty
∂∂ $
(
∂∂$ %
usuarioView
∂∂% 0
.
∂∂0 1
Celular
∂∂1 8
)
∂∂8 9
||
∂∂: <
usuarioView
∂∂= H
.
∂∂H I
Celular
∂∂I P
.
∂∂P Q
Length
∂∂Q W
<=
∂∂X Z
$num
∂∂[ \
)
∂∂\ ]

ModelState
∑∑ 
.
∑∑ 
AddModelError
∑∑ (
(
∑∑( )
$str
∑∑) 2
,
∑∑2 3
$str
∑∑4 Z
)
∑∑Z [
;
∑∑[ \
if
∏∏ 
(
∏∏ 
string
∏∏ 
.
∏∏ 
IsNullOrEmpty
∏∏ $
(
∏∏$ %
usuarioView
∏∏% 0
.
∏∏0 1
Celular
∏∏1 8
)
∏∏8 9
||
∏∏: <
usuarioView
∏∏= H
.
∏∏H I
Celular
∏∏I P
.
∏∏P Q
Length
∏∏Q W
>
∏∏X Y
$num
∏∏Z \
)
∏∏\ ]

ModelState
ππ 
.
ππ 
AddModelError
ππ (
(
ππ( )
$str
ππ) 2
,
ππ2 3
$str
ππ4 Y
)
ππY Z
;
ππZ [
bool
∫∫ 
isCelularValid
∫∫ 
=
∫∫  !
string
∫∫" (
.
∫∫( )
IsNullOrEmpty
∫∫) 6
(
∫∫6 7
usuarioView
∫∫7 B
.
∫∫B C
Celular
∫∫C J
)
∫∫J K
||
∫∫L N
Regex
∫∫O T
.
∫∫T U
IsMatch
∫∫U \
(
∫∫\ ]
usuarioView
∫∫] h
.
∫∫h i
Celular
∫∫i p
,
∫∫p q
NumerosRegex
∫∫r ~
)
∫∫~ 
;∫∫ Ä
if
ªª 
(
ªª 
!
ªª 
isCelularValid
ªª 
)
ªª  

ModelState
ºº 
.
ºº 
AddModelError
ºº (
(
ºº( )
$str
ºº) 2
,
ºº2 3
$str
ºº4 M
)
ººM N
;
ººN O
}
ΩΩ 	
}
ææ 
}øø À◊
ÅC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Controllers\ProductoController.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Controllers %
{ 
public 

class 
ProductoController #
:$ %
BaseAutController& 7
{ 
private 
readonly 
IProductoService )
servicio* 2
;2 3
private 
readonly 
IUsuarioService (
UsarioSession) 6
;6 7
private 
readonly 
ICategoriaService *
categoriaService+ ;
;; <
private 
readonly 
IComentariosSerivce ,
comentarios- 8
;8 9
private 
readonly 
ISessionService (
session) 0
;0 1
public 
ProductoController !
(! "
IProductoService" 2
servicio3 ;
,; <
IUsuarioService= L
UsarioSessionM Z
,Z [
ICategoriaService\ m
categoriaServicen ~
,~ !
IComentariosSerivce
Ä ì
comentarios
î ü
,
ü †
ISessionService
° ∞
session
± ∏
)
∏ π
{ 	
this 
. 
servicio 
= 
servicio $
;$ %
this 
. 
UsarioSession 
=  
UsarioSession! .
;. /
this 
. 
categoriaService !
=" #
categoriaService$ 4
;4 5
this 
. 
comentarios 
= 
comentarios *
;* +
this 
. 
session 
= 
session "
;" #
} 	
[ 	
AllowAnonymous	 
] 
[   	
HttpGet  	 
]   
public!! 
ActionResult!! 
Index!! !
(!!! "
int!!" %
?!!% &
IdCategoria!!' 2
,!!2 3
int!!4 7
?!!7 8
page!!9 =
)!!= >
{"" 	
if$$ 
($$ 
IdCategoria$$ 
==$$ 
null$$ #
)$$# $
IdCategoria%% 
=%% 
$num%% 
;%%  
if&& 
(&& 
page&& 
==&& 
null&& 
)&& 
page'' 
='' 
$num'' 
;'' 
ViewBag)) 
.)) 
ListaCategoria)) "
=))# $
categoriaService))% 5
.))5 6
GetCategoriasAsList))6 I
())I J
)))J K
;))K L
ViewBag** 
.** 
IdCategoria** 
=**  !
IdCategoria**" -
;**- .
ViewBag++ 
.++ 
	Categoria++ 
=++ 
categoriaService++  0
.++0 1
GetCategoriaById++1 A
(++A B
IdCategoria++B M
)++M N
.++N O
Nombre++O U
;++U V
ViewBag,, 
.,, 
Page,, 
=,, 
page,, 
;,,  
ViewBag-- 
.-- 

TotalPages-- 
=--  
servicio--! )
.--) *
GetTotalPages--* 7
(--7 8
IdCategoria--8 C
)--C D
;--D E
ViewBag.. 
... 
ListaUsuarios.. !
=.." #
UsarioSession..$ 1
...1 2
GetUsuariosAsList..2 C
(..C D
)..D E
;..E F
return00 
View00 
(00 
)00 
;00 
}11 	
[33 	
HttpGet33	 
]33 
public44 
ActionResult44 
Listar44 "
(44" #
)44# $
{55 	
if66 
(66 
session66 
.66  
EsPersonalDeLaTienda66 ,
(66, -
)66- .
)66. /
return77 
View77 
(77 
servicio77 $
.77$ %
GetProductosAsList77% 7
(777 8
)778 9
)779 :
;77: ;
return99 
RedirectToAction99 #
(99# $
$str99$ +
,99+ ,
$str99- 4
)994 5
;995 6
}:: 	
[<< 	
HttpGet<<	 
]<< 
public== 
ActionResult== 
Crear== !
(==! "
)==" #
{>> 	
if?? 
(?? 
session?? 
.??  
EsPersonalDeLaTienda?? ,
(??, -
)??- .
)??. /
{@@ 
ViewBagAA 
.AA 
ListaCategoriaAA &
=AA' (
categoriaServiceAA) 9
.AA9 :
GetCategoriasAsListAA: M
(AAM N
)AAN O
;AAO P
returnBB 
ViewBB 
(BB 
newBB 
ProductoViewBB  ,
(BB, -
)BB- .
)BB. /
;BB/ 0
}CC 
returnEE 
RedirectToActionEE #
(EE# $
$strEE$ +
,EE+ ,
$strEE- 4
)EE4 5
;EE5 6
}FF 	
[HH 	
HttpPostHH	 
]HH 
publicII 
ActionResultII 
CrearII !
(II! "
ProductoViewII" .
productoViewII/ ;
)II; <
{JJ 	
ifKK 
(KK 
sessionKK 
.KK  
EsPersonalDeLaTiendaKK ,
(KK, -
)KK- .
)KK. /
{LL 
validarProductoMM 
(MM  
productoViewMM  ,
)MM, -
;MM- .
ifNN 
(NN 
!NN 

ModelStateNN 
.NN  
IsValidNN  '
)NN' (
{OO 
ViewBagPP 
.PP 
ListaCategoriaPP *
=PP+ ,
categoriaServicePP- =
.PP= >
GetCategoriasAsListPP> Q
(PPQ R
)PPR S
;PPS T
returnQQ 
ViewQQ 
(QQ  
productoViewQQ  ,
)QQ, -
;QQ- .
}RR 
ifTT 
(TT 
productoViewTT  
.TT  !
StockTT! &
>TT' (
$numTT) *
&&TT+ -
productoViewTT. :
.TT: ;
PrecioUnitarioTT; I
>TTJ K
$numTTL M
)TTM N
{UU 
ProductoVV 
productoVV %
=VV& '
servicioVV( 0
.VV0 1!
ProductViewToProductoVV1 F
(VVF G
productoViewVVG S
)VVS T
;VVT U
servicioWW 
.WW 
AsignarRutaDeImagenWW 0
(WW0 1
productoViewWW1 =
,WW= >
productoWW? G
)WWG H
;WWH I
servicioXX 
.XX 
GuardarProductoXX ,
(XX, -
productoXX- 5
)XX5 6
;XX6 7
returnYY 
RedirectToActionYY +
(YY+ ,
$strYY, 4
,YY4 5
$strYY6 @
)YY@ A
;YYA B
}ZZ 
ViewBag[[ 
.[[ 
ListaCategoria[[ &
=[[' (
categoriaService[[) 9
.[[9 :
GetCategoriasAsList[[: M
([[M N
)[[N O
;[[O P
ViewBag\\ 
.\\ 
StockPrecio\\ #
=\\$ %
$str\\& \
;\\\ ]
return]] 
View]] 
(]] 
productoView]] (
)]]( )
;]]) *
}^^ 
return`` 
RedirectToAction`` #
(``# $
$str``$ +
,``+ ,
$str``- 4
)``4 5
;``5 6
}aa 	
[cc 	
AllowAnonymouscc	 
]cc 
[dd 	
HttpGetdd	 
]dd 
publicee 
ActionResultee 
Detalleee #
(ee# $
intee$ '
?ee' (

IdProductoee) 3
)ee3 4
{ff 	
ifgg 
(gg 

IdProductogg 
==gg 
nullgg "
)gg" #
returnhh 
RedirectToActionhh '
(hh' (
$strhh( /
,hh/ 0
$strhh1 8
)hh8 9
;hh9 :
Productojj 
productojj 
=jj 
serviciojj  (
.jj( )
GetProductoByIdjj) 8
(jj8 9

IdProductojj9 C
)jjC D
;jjD E
ifll 
(ll 
productoll 
==ll 
nullll  
)ll  !
{mm 
returnnn 
RedirectToActionnn '
(nn' (
$strnn( /
,nn/ 0
$strnn1 8
)nn8 9
;nn9 :
}oo 
ViewBagqq 
.qq 
ListaUsuariosqq !
=qq" #
UsarioSessionqq$ 1
.qq1 2
GetUsuariosAsListqq2 C
(qqC D
)qqD E
;qqE F
ViewBagrr 
.rr 
ComentariosUsuariosrr '
=rr( )
comentariosrr* 5
.rr5 6+
GetComentariosAsListByProductIdrr6 U
(rrU V

IdProductorrV `
)rr` a
;rra b
returntt 
Viewtt 
(tt 
productott  
)tt  !
;tt! "
}uu 	
[ww 	
HttpPostww	 
]ww 
publicxx 
boolxx &
GuardarComentarioAProductoxx .
(xx. /
intxx/ 2
	IdUsuarioxx3 <
,xx< =
intxx> A

IdProductoxxB L
,xxL M
stringxxN T
TextoxxU Z
)xxZ [
{yy 	
Usuario{{ 
usuario{{ 
={{ 
UsarioSession{{ +
.{{+ ,
GetUsuarioById{{, :
({{: ;
	IdUsuario{{; D
){{D E
;{{E F
Producto|| 
producto|| 
=|| 
servicio||  (
.||( )
GetProductoById||) 8
(||8 9

IdProducto||9 C
)||C D
;||D E
if~~ 
(~~ 
usuario~~ 
==~~ 
null~~ 
&&~~  "
producto~~# +
==~~, .
null~~/ 3
)~~3 4
return 
false 
; 
if
ÅÅ 
(
ÅÅ 
string
ÅÅ 
.
ÅÅ 
IsNullOrEmpty
ÅÅ $
(
ÅÅ$ %
Texto
ÅÅ% *
)
ÅÅ* +
)
ÅÅ+ ,
return
ÇÇ 
false
ÇÇ 
;
ÇÇ 
comentarios
ÑÑ 
.
ÑÑ 
GuardarComentario
ÑÑ )
(
ÑÑ) *
usuario
ÑÑ* 1
,
ÑÑ1 2
producto
ÑÑ3 ;
,
ÑÑ; <
Texto
ÑÑ= B
)
ÑÑB C
;
ÑÑC D
return
ÖÖ 
true
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
[
àà 	
HttpPost
àà	 
]
àà 
public
ââ 
bool
ââ 5
'ExisteProductoIdYUsuarioIdEnComentarios
ââ ;
(
ââ; <
int
ââ< ?
?
ââ? @
	IdUsuario
ââA J
,
ââJ K
int
ââL O
?
ââO P

IdProducto
ââQ [
)
ââ[ \
{
ää 	
if
ãã 
(
ãã 
	IdUsuario
ãã 
==
ãã 
null
ãã !
&&
ãã" $

IdProducto
ãã% /
==
ãã0 2
null
ãã3 7
)
ãã7 8
return
åå 
false
åå 
;
åå 
var
éé (
existeEnProductoComentario
éé *
=
éé+ ,
comentarios
éé- 8
.
éé8 93
%ExisteProductIdAndUserIdEnComentarios
éé9 ^
(
éé^ _
	IdUsuario
éé_ h
,
ééh i

IdProducto
ééj t
)
éét u
;
ééu v
if
êê 
(
êê 
!
êê (
existeEnProductoComentario
êê +
)
êê+ ,
return
ëë 
true
ëë 
;
ëë 
return
ìì 
false
ìì 
;
ìì 
}
îî 	
[
ññ 	
HttpGet
ññ	 
]
ññ 
public
óó 
ActionResult
óó 
Editar
óó "
(
óó" #
int
óó# &
?
óó& '

IdProducto
óó( 2
)
óó2 3
{
òò 	
if
ôô 
(
ôô 
session
ôô 
.
ôô 
EsAdministrativo
ôô (
(
ôô( )
)
ôô) *
)
ôô* +
{
öö 
if
õõ 
(
õõ 

IdProducto
õõ 
==
õõ !
null
õõ" &
)
õõ& '
return
úú 
RedirectToAction
úú +
(
úú+ ,
$str
úú, 3
,
úú3 4
$str
úú5 <
)
úú< =
;
úú= >
Producto
ûû 
producto
ûû !
=
ûû" #
servicio
ûû$ ,
.
ûû, -
GetProductoById
ûû- <
(
ûû< =

IdProducto
ûû= G
)
ûûG H
;
ûûH I
if
†† 
(
†† 
producto
†† 
==
†† 
null
††  $
)
††$ %
return
°° 
RedirectToAction
°° +
(
°°+ ,
$str
°°, 3
,
°°3 4
$str
°°5 <
)
°°< =
;
°°= >
ProductoView
££ 
productoView
££ )
=
££* +
servicio
££, 4
.
££4 5#
ProductoToProductView
££5 J
(
££J K
producto
££K S
)
££S T
;
££T U
ViewBag
•• 
.
•• 
ListaCategoria
•• &
=
••' (
categoriaService
••) 9
.
••9 :!
GetCategoriasAsList
••: M
(
••M N
)
••N O
;
••O P
return
¶¶ 
View
¶¶ 
(
¶¶ 
productoView
¶¶ (
)
¶¶( )
;
¶¶) *
}
ßß 
return
©© 
RedirectToAction
©© #
(
©©# $
$str
©©$ +
,
©©+ ,
$str
©©- 4
)
©©4 5
;
©©5 6
}
™™ 	
[
¨¨ 	
HttpPost
¨¨	 
]
¨¨ 
public
≠≠ 
ActionResult
≠≠ 
Editar
≠≠ "
(
≠≠" #
int
≠≠# &
?
≠≠& '

IdProducto
≠≠( 2
,
≠≠2 3
ProductoView
≠≠4 @
productoView
≠≠A M
)
≠≠M N
{
ÆÆ 	
if
ØØ 
(
ØØ 
session
ØØ 
.
ØØ 
EsAdministrativo
ØØ (
(
ØØ( )
)
ØØ) *
)
ØØ* +
{
∞∞ 
if
±± 
(
±± 

IdProducto
±± 
==
±± !
null
±±" &
)
±±& '
return
≤≤ 
RedirectToAction
≤≤ +
(
≤≤+ ,
$str
≤≤, 3
,
≤≤3 4
$str
≤≤5 <
)
≤≤< =
;
≤≤= >
validarProducto
¥¥ 
(
¥¥  
productoView
¥¥  ,
)
¥¥, -
;
¥¥- .
if
µµ 
(
µµ 

ModelState
µµ 
.
µµ 
IsValid
µµ &
&&
µµ' )
productoView
µµ* 6
.
µµ6 7
Stock
µµ7 <
>
µµ= >
$num
µµ? @
&&
µµA C
productoView
µµD P
.
µµP Q
PrecioUnitario
µµQ _
>
µµ` a
$num
µµb c
)
µµc d
{
∂∂ 
Producto
∑∑ 
producto
∑∑ %
=
∑∑& '
servicio
∑∑( 0
.
∑∑0 1#
ProductViewToProducto
∑∑1 F
(
∑∑F G
productoView
∑∑G S
)
∑∑S T
;
∑∑T U
servicio
∏∏ 
.
∏∏ !
AsignarRutaDeImagen
∏∏ 0
(
∏∏0 1
productoView
∏∏1 =
,
∏∏= >
producto
∏∏? G
)
∏∏G H
;
∏∏H I
servicio
ππ 
.
ππ 
EditarProducto
ππ +
(
ππ+ ,

IdProducto
ππ, 6
,
ππ6 7
producto
ππ8 @
)
ππ@ A
;
ππA B
return
∫∫ 
RedirectToAction
∫∫ +
(
∫∫+ ,
$str
∫∫, 4
,
∫∫4 5
$str
∫∫6 @
)
∫∫@ A
;
∫∫A B
}
ªª 
ViewBag
ºº 
.
ºº 
StockPrecio
ºº #
=
ºº$ %
$str
ºº& \
;
ºº\ ]
ViewBag
ΩΩ 
.
ΩΩ 
ListaCategoria
ΩΩ &
=
ΩΩ' (
categoriaService
ΩΩ) 9
.
ΩΩ9 :!
GetCategoriasAsList
ΩΩ: M
(
ΩΩM N
)
ΩΩN O
;
ΩΩO P
return
ææ 
View
ææ 
(
ææ 
productoView
ææ (
)
ææ( )
;
ææ) *
}
¿¿ 
return
¬¬ 
RedirectToAction
¬¬ #
(
¬¬# $
$str
¬¬$ +
,
¬¬+ ,
$str
¬¬- 4
)
¬¬4 5
;
¬¬5 6
}
√√ 	
[
≈≈ 	
HttpGet
≈≈	 
]
≈≈ 
public
∆∆ 
ActionResult
∆∆ 
Eliminar
∆∆ $
(
∆∆$ %
int
∆∆% (
?
∆∆( )

IdProducto
∆∆* 4
)
∆∆4 5
{
«« 	
if
»» 
(
»» 
session
»» 
.
»» 
EsAdministrativo
»» (
(
»»( )
)
»») *
)
»»* +
{
…… 
if
   
(
   

IdProducto
   
==
   !
null
  " &
)
  & '
return
ÀÀ 
RedirectToAction
ÀÀ +
(
ÀÀ+ ,
$str
ÀÀ, 3
,
ÀÀ3 4
$str
ÀÀ5 <
)
ÀÀ< =
;
ÀÀ= >
servicio
ÕÕ 
.
ÕÕ 
EliminarProducto
ÕÕ )
(
ÕÕ) *

IdProducto
ÕÕ* 4
)
ÕÕ4 5
;
ÕÕ5 6
return
ŒŒ 
RedirectToAction
ŒŒ '
(
ŒŒ' (
$str
ŒŒ( 0
,
ŒŒ0 1
$str
ŒŒ2 <
)
ŒŒ< =
;
ŒŒ= >
}
œœ 
return
—— 
RedirectToAction
—— #
(
——# $
$str
——$ +
,
——+ ,
$str
——- 4
)
——4 5
;
——5 6
}
““ 	
[
‘‘ 	
AllowAnonymous
‘‘	 
]
‘‘ 
[
’’ 	
HttpGet
’’	 
]
’’ 
public
÷÷ 
ActionResult
÷÷ "
GetProductByIdAsJson
÷÷ 0
(
÷÷0 1
int
÷÷1 4

idProducto
÷÷5 ?
)
÷÷? @
{
◊◊ 	
Producto
ŸŸ 
producto
ŸŸ 
=
ŸŸ 
servicio
ŸŸ  (
.
ŸŸ( )
GetProductoById
ŸŸ) 8
(
ŸŸ8 9

idProducto
ŸŸ9 C
)
ŸŸC D
;
ŸŸD E
return
€€ 
Json
€€ 
(
€€ 
new
€€ 
{
‹‹ 
producto
›› 
.
›› 
Id
›› 
,
›› 
producto
ﬁﬁ 
.
ﬁﬁ 
Nombre
ﬁﬁ 
,
ﬁﬁ  
producto
ﬂﬂ 
.
ﬂﬂ 
PrecioUnitario
ﬂﬂ '
,
ﬂﬂ' (
producto
‡‡ 
.
‡‡ 
Stock
‡‡ 
}
·· 
,
·· !
JsonRequestBehavior
·· "
.
··" #
AllowGet
··# +
)
··+ ,
;
··, -
}
‚‚ 	
[
‰‰ 	
AllowAnonymous
‰‰	 
]
‰‰ 
[
ÂÂ 	
HttpGet
ÂÂ	 
]
ÂÂ 
public
ÊÊ 
ActionResult
ÊÊ !
_GetProductosAsView
ÊÊ /
(
ÊÊ/ 0
int
ÊÊ0 3
IdCategoria
ÊÊ4 ?
,
ÊÊ? @
int
ÊÊA D
index
ÊÊE J
,
ÊÊJ K
int
ÊÊL O
NumItems
ÊÊP X
)
ÊÊX Y
{
ÁÁ 	
List
ËË 
<
ËË 
Producto
ËË 
>
ËË 
	productos
ËË $
=
ËË% &
servicio
ËË' /
.
ËË/ 0)
GetProductsAsListByCategory
ËË0 K
(
ËËK L
IdCategoria
ËËL W
,
ËËW X
index
ËËY ^
,
ËË^ _
NumItems
ËË` h
)
ËËh i
;
ËËi j
return
ÍÍ 
View
ÍÍ 
(
ÍÍ 
	productos
ÍÍ !
)
ÍÍ! "
;
ÍÍ" #
}
ÎÎ 	
private
ÌÌ 
void
ÌÌ 
validarProducto
ÌÌ $
(
ÌÌ$ %
ProductoView
ÌÌ% 1
productoView
ÌÌ2 >
)
ÌÌ> ?
{
ÓÓ 	
string
ÔÔ 
LetrasRegex
ÔÔ 
=
ÔÔ  
$str
ÔÔ! 1
;
ÔÔ1 2
string
 
NumerosRegex
 
=
  !
$str
" 3
;
3 4
string
ÒÒ  
NumeroDecimalRegex
ÒÒ %
=
ÒÒ& '
$str
ÒÒ( B
;
ÒÒB C
if
ÛÛ 
(
ÛÛ 
string
ÛÛ 
.
ÛÛ 
IsNullOrEmpty
ÛÛ $
(
ÛÛ$ %
productoView
ÛÛ% 1
.
ÛÛ1 2
Nombre
ÛÛ2 8
)
ÛÛ8 9
)
ÛÛ9 :

ModelState
ÙÙ 
.
ÙÙ 
AddModelError
ÙÙ (
(
ÙÙ( )
$str
ÙÙ) 1
,
ÙÙ1 2
$str
ÙÙ3 F
)
ÙÙF G
;
ÙÙG H
if
ıı 
(
ıı 
string
ıı 
.
ıı 
IsNullOrEmpty
ıı $
(
ıı$ %
productoView
ıı% 1
.
ıı1 2
Nombre
ıı2 8
)
ıı8 9
||
ıı: <
productoView
ıı= I
.
ııI J
Nombre
ııJ P
.
ııP Q
Length
ııQ W
<=
ııX Z
$num
ıı[ \
)
ıı\ ]

ModelState
ˆˆ 
.
ˆˆ 
AddModelError
ˆˆ (
(
ˆˆ( )
$str
ˆˆ) 1
,
ˆˆ1 2
$str
ˆˆ3 Y
)
ˆˆY Z
;
ˆˆZ [
if
˜˜ 
(
˜˜ 
string
˜˜ 
.
˜˜ 
IsNullOrEmpty
˜˜ $
(
˜˜$ %
productoView
˜˜% 1
.
˜˜1 2
Nombre
˜˜2 8
)
˜˜8 9
||
˜˜: <
productoView
˜˜= I
.
˜˜I J
Nombre
˜˜J P
.
˜˜P Q
Length
˜˜Q W
>
˜˜X Y
$num
˜˜Z ]
)
˜˜] ^

ModelState
¯¯ 
.
¯¯ 
AddModelError
¯¯ (
(
¯¯( )
$str
¯¯) 1
,
¯¯1 2
$str
¯¯3 Y
)
¯¯Y Z
;
¯¯Z [
bool
˘˘ 
isNombreValid
˘˘ 
=
˘˘  
string
˘˘! '
.
˘˘' (
IsNullOrEmpty
˘˘( 5
(
˘˘5 6
productoView
˘˘6 B
.
˘˘B C
Nombre
˘˘C I
)
˘˘I J
||
˘˘K M
Regex
˘˘N S
.
˘˘S T
IsMatch
˘˘T [
(
˘˘[ \
productoView
˘˘\ h
.
˘˘h i
Nombre
˘˘i o
,
˘˘o p
LetrasRegex
˘˘q |
)
˘˘| }
;
˘˘} ~
if
˙˙ 
(
˙˙ 
!
˙˙ 
isNombreValid
˙˙ 
)
˙˙ 

ModelState
˚˚ 
.
˚˚ 
AddModelError
˚˚ (
(
˚˚( )
$str
˚˚) 1
,
˚˚1 2
$str
˚˚3 K
)
˚˚K L
;
˚˚L M
if
˝˝ 
(
˝˝ 
string
˝˝ 
.
˝˝ 
IsNullOrEmpty
˝˝ $
(
˝˝$ %
productoView
˝˝% 1
.
˝˝1 2
Descripcion
˝˝2 =
)
˝˝= >
)
˝˝> ?

ModelState
˛˛ 
.
˛˛ 
AddModelError
˛˛ (
(
˛˛( )
$str
˛˛) 6
,
˛˛6 7
$str
˛˛8 K
)
˛˛K L
;
˛˛L M
if
ˇˇ 
(
ˇˇ 
string
ˇˇ 
.
ˇˇ 
IsNullOrEmpty
ˇˇ $
(
ˇˇ$ %
productoView
ˇˇ% 1
.
ˇˇ1 2
Descripcion
ˇˇ2 =
)
ˇˇ= >
||
ˇˇ? A
productoView
ˇˇB N
.
ˇˇN O
Descripcion
ˇˇO Z
.
ˇˇZ [
Length
ˇˇ[ a
<=
ˇˇb d
$num
ˇˇe f
)
ˇˇf g

ModelState
ÄÄ 
.
ÄÄ 
AddModelError
ÄÄ (
(
ÄÄ( )
$str
ÄÄ) 6
,
ÄÄ6 7
$str
ÄÄ8 ^
)
ÄÄ^ _
;
ÄÄ_ `
if
ÅÅ 
(
ÅÅ 
string
ÅÅ 
.
ÅÅ 
IsNullOrEmpty
ÅÅ $
(
ÅÅ$ %
productoView
ÅÅ% 1
.
ÅÅ1 2
Descripcion
ÅÅ2 =
)
ÅÅ= >
||
ÅÅ? A
productoView
ÅÅB N
.
ÅÅN O
Descripcion
ÅÅO Z
.
ÅÅZ [
Length
ÅÅ[ a
>
ÅÅb c
$num
ÅÅd h
)
ÅÅh i

ModelState
ÇÇ 
.
ÇÇ 
AddModelError
ÇÇ (
(
ÇÇ( )
$str
ÇÇ) 6
,
ÇÇ6 7
$str
ÇÇ8 _
)
ÇÇ_ `
;
ÇÇ` a
if
ÑÑ 
(
ÑÑ 
productoView
ÑÑ 
.
ÑÑ 
Stock
ÑÑ "
==
ÑÑ# %
$num
ÑÑ& '
||
ÑÑ( *
string
ÑÑ+ 1
.
ÑÑ1 2
IsNullOrEmpty
ÑÑ2 ?
(
ÑÑ? @
productoView
ÑÑ@ L
.
ÑÑL M
Stock
ÑÑM R
.
ÑÑR S
ToString
ÑÑS [
(
ÑÑ[ \
)
ÑÑ\ ]
)
ÑÑ] ^
)
ÑÑ^ _

ModelState
ÖÖ 
.
ÖÖ 
AddModelError
ÖÖ (
(
ÖÖ( )
$str
ÖÖ) 0
,
ÖÖ0 1
$str
ÖÖ2 E
)
ÖÖE F
;
ÖÖF G
bool
ÜÜ 
isStockValid
ÜÜ 
=
ÜÜ 
productoView
ÜÜ  ,
.
ÜÜ, -
Stock
ÜÜ- 2
==
ÜÜ3 5
$num
ÜÜ6 7
||
ÜÜ8 :
string
ÜÜ; A
.
ÜÜA B
IsNullOrEmpty
ÜÜB O
(
ÜÜO P
productoView
ÜÜP \
.
ÜÜ\ ]
Stock
ÜÜ] b
.
ÜÜb c
ToString
ÜÜc k
(
ÜÜk l
)
ÜÜl m
)
ÜÜm n
||
ÜÜo q
Regex
ÜÜr w
.
ÜÜw x
IsMatch
ÜÜx 
(ÜÜ Ä
productoViewÜÜÄ å
.ÜÜå ç
StockÜÜç í
.ÜÜí ì
ToStringÜÜì õ
(ÜÜõ ú
)ÜÜú ù
,ÜÜù û
NumerosRegexÜÜü ´
)ÜÜ´ ¨
;ÜÜ¨ ≠
if
áá 
(
áá 
!
áá 
isStockValid
áá 
)
áá 

ModelState
àà 
.
àà 
AddModelError
àà (
(
àà( )
$str
àà) 0
,
àà0 1
$str
àà2 Y
)
ààY Z
;
ààZ [
if
ää 
(
ää 
productoView
ää 
.
ää 
PrecioUnitario
ää +
==
ää, .
$num
ää/ 0
||
ää1 3
string
ää4 :
.
ää: ;
IsNullOrEmpty
ää; H
(
ääH I
productoView
ääI U
.
ääU V
PrecioUnitario
ääV d
.
ääd e
ToString
ääe m
(
ääm n
)
ään o
)
ääo p
)
ääp q

ModelState
ãã 
.
ãã 
AddModelError
ãã (
(
ãã( )
$str
ãã) 9
,
ãã9 :
$str
ãã; N
)
ããN O
;
ããO P
bool
åå #
isPrecioUnitarioValid
åå &
=
åå' (
productoView
åå) 5
.
åå5 6
PrecioUnitario
åå6 D
==
ååE G
$num
ååH I
||
ååJ L
string
ååM S
.
ååS T
IsNullOrEmpty
ååT a
(
ååa b
productoView
ååb n
.
åån o
PrecioUnitario
ååo }
.
åå} ~
ToStringåå~ Ü
(ååÜ á
)ååá à
)ååà â
||ååä å
Regexååç í
.ååí ì
IsMatchååì ö
(ååö õ
productoViewååõ ß
.ååß ®
PrecioUnitarioåå® ∂
.åå∂ ∑
ToStringåå∑ ø
(ååø ¿
)åå¿ ¡
,åå¡ ¬"
NumeroDecimalRegexåå√ ’
)åå’ ÷
;åå÷ ◊
if
çç 
(
çç 
!
çç #
isPrecioUnitarioValid
çç &
)
çç& '

ModelState
éé 
.
éé 
AddModelError
éé (
(
éé( )
$str
éé) 9
,
éé9 :
$str
éé; U
)
ééU V
;
ééV W
}
èè 	
}
êê 
}ëë °’
ÄC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Controllers\UsuarioController.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Controllers %
{ 
public 

class 
UsuarioController "
:# $
BaseAutController% 6
{ 
private 
readonly 
IUsuarioService (
servicio) 1
;1 2
private 
readonly 
ISessionService (
session) 0
;0 1
public 
UsuarioController  
(  !
IUsuarioService! 0
servicio1 9
,9 :
ISessionService; J
sessionK R
)R S
{ 	
this 
. 
servicio 
= 
servicio $
;$ %
this 
. 
session 
= 
session "
;" #
} 	
public 
ActionResult 
Index !
(! "
)" #
{ 	
if 
( 
session 
.  
EsPersonalDeLaTienda ,
(, -
)- .
). /
return 
View 
( 
) 
; 
return 
RedirectToAction #
(# $
$str$ +
,+ ,
$str- 4
)4 5
;5 6
} 	
[   	
HttpGet  	 
]   
public!! 
ActionResult!! 
Listar!! "
(!!" #
)!!# $
{"" 	
if## 
(## 
session## 
.## 
EsAdministrativo## (
(##( )
)##) *
)##* +
return$$ 
View$$ 
($$ 
servicio$$ $
.$$$ %+
GetUsuariosVendedorYAdminAsList$$% D
($$D E
)$$E F
)$$F G
;$$G H
return&& 
RedirectToAction&& #
(&&# $
$str&&$ +
,&&+ ,
$str&&- 4
)&&4 5
;&&5 6
}'' 	
[)) 	
HttpGet))	 
])) 
public** 
ActionResult** 
Crear** !
(**! "
)**" #
{++ 	
if,, 
(,, 
session,, 
.,, 
EsAdministrativo,, (
(,,( )
),,) *
),,* +
return-- 
View-- 
(-- 
new-- 
UsuarioView--  +
(--+ ,
)--, -
)--- .
;--. /
return// 
RedirectToAction// #
(//# $
$str//$ +
,//+ ,
$str//- 4
)//4 5
;//5 6
}00 	
[22 	
HttpPost22	 
]22 
public33 
ActionResult33 
Crear33 !
(33! "
UsuarioView33" -
UsuarioView33. 9
)339 :
{44 	
if55 
(55 
session55 
.55 
EsAdministrativo55 (
(55( )
)55) *
)55* +
{66 
ValidarUsuario77 
(77 
UsuarioView77 *
)77* +
;77+ ,
if88 
(88 
!88 

ModelState88 
.88  
IsValid88  '
)88' (
return99 
View99 
(99  
UsuarioView99  +
)99+ ,
;99, -
if;; 
(;; 
servicio;; 
.;; 
ExisteElCorreo;; +
(;;+ ,
UsuarioView;;, 7
.;;7 8
Email;;8 =
);;= >
);;> ?
{<< 
ViewBag== 
.== 
CorreoExistente== +
===, -
InfoAtributos==. ;
.==; <
Error==< A
.==A B
CORREO_REGISTRADO==B S
;==S T
ViewBag>> 
.>> 
ListaUsuarios>> )
=>>* +
servicio>>, 4
.>>4 5
GetUsuariosAsList>>5 F
(>>F G
)>>G H
;>>H I
return?? 
View?? 
(??  
UsuarioView??  +
)??+ ,
;??, -
}@@ 
UsuarioBB 
usuarioBB 
=BB  !
servicioBB" *
.BB* + 
UsuarioViewToUsuarioBB+ ?
(BB? @
UsuarioViewBB@ K
)BBK L
;BBL M
servicioCC 
.CC 
GuardarUsuarioCC '
(CC' (
usuarioCC( /
)CC/ 0
;CC0 1
returnEE 
RedirectToActionEE '
(EE' (
$strEE( 0
,EE0 1
$strEE2 ;
)EE; <
;EE< =
}FF 
returnHH 
RedirectToActionHH #
(HH# $
$strHH$ +
,HH+ ,
$strHH- 4
)HH4 5
;HH5 6
}II 	
[KK 	
HttpGetKK	 
]KK 
publicLL 
ActionResultLL 
DetalleLL #
(LL# $
intLL$ '
?LL' (
	IdUsuarioLL) 2
)LL2 3
{MM 	
ifNN 
(NN 
sessionNN 
.NN 
EsAdministrativoNN (
(NN( )
)NN) *
)NN* +
{OO 
ifPP 
(PP 
	IdUsuarioPP 
==PP  
nullPP! %
)PP% &
returnQQ 
RedirectToActionQQ +
(QQ+ ,
$strQQ, 3
,QQ3 4
$strQQ5 <
)QQ< =
;QQ= >
UsuarioSS 
usuarioSS 
=SS  !
servicioSS" *
.SS* +
GetUsuarioByIdSS+ 9
(SS9 :
	IdUsuarioSS: C
)SSC D
;SSD E
ifUU 
(UU 
usuarioUU 
==UU 
nullUU #
)UU# $
returnVV 
RedirectToActionVV +
(VV+ ,
$strVV, 3
,VV3 4
$strVV5 <
)VV< =
;VV= >
returnXX 
ViewXX 
(XX 
usuarioXX #
)XX# $
;XX$ %
}YY 
return[[ 
RedirectToAction[[ #
([[# $
$str[[$ +
,[[+ ,
$str[[- 4
)[[4 5
;[[5 6
}\\ 	
[^^ 	
HttpGet^^	 
]^^ 
public__ 
ActionResult__ 
Editar__ "
(__" #
int__# &
?__& '
	IdUsuario__( 1
)__1 2
{`` 	
ifaa 
(aa 
sessionaa 
.aa 
EsAdministrativoaa (
(aa( )
)aa) *
)aa* +
{bb 
ifcc 
(cc 
	IdUsuariocc 
==cc  
nullcc! %
)cc% &
returndd 
RedirectToActiondd +
(dd+ ,
$strdd, 3
,dd3 4
$strdd5 <
)dd< =
;dd= >
Usuarioff 
usuarioff 
=ff  !
servicioff" *
.ff* +
GetUsuarioByIdff+ 9
(ff9 :
	IdUsuarioff: C
)ffC D
;ffD E
ifhh 
(hh 
usuariohh 
==hh 
nullhh #
)hh# $
returnii 
RedirectToActionii +
(ii+ ,
$strii, 3
,ii3 4
$strii5 <
)ii< =
;ii= >
UsuarioEditarViewkk !
usuarioEditarViewkk" 3
=kk4 5
serviciokk6 >
.kk> ?&
UsuarioToUsuarioEditarViewkk? Y
(kkY Z
usuariokkZ a
)kka b
;kkb c
returnmm 
Viewmm 
(mm 
usuarioEditarViewmm -
)mm- .
;mm. /
}nn 
returnpp 
RedirectToActionpp #
(pp# $
$strpp$ +
,pp+ ,
$strpp- 4
)pp4 5
;pp5 6
}qq 	
[ss 	
HttpPostss	 
]ss 
publictt 
ActionResulttt 
Editartt "
(tt" #
inttt# &
?tt& '
	IdUsuariott( 1
,tt1 2
UsuarioEditarViewtt3 D
usuarioEditarViewttE V
)ttV W
{uu 	
ifvv 
(vv 
sessionvv 
.vv 
EsAdministrativovv (
(vv( )
)vv) *
)vv* +
{ww 
ifxx 
(xx 
	IdUsuarioxx 
==xx  
nullxx! %
)xx% &
returnyy 
RedirectToActionyy +
(yy+ ,
$stryy, 3
,yy3 4
$stryy5 <
)yy< =
;yy= > 
ValidarEditarUsuario{{ $
({{$ %
usuarioEditarView{{% 6
){{6 7
;{{7 8
if|| 
(|| 
!|| 

ModelState|| 
.||  
IsValid||  '
)||' (
return}} 
View}} 
(}}  
usuarioEditarView}}  1
)}}1 2
;}}2 3
Usuario 
usuario 
=  !
servicio" *
.* +&
UsuarioEditarViewToUsuario+ E
(E F
usuarioEditarViewF W
)W X
;X Y
servicio
ÄÄ 
.
ÄÄ 
EditarUsuario
ÄÄ &
(
ÄÄ& '
	IdUsuario
ÄÄ' 0
,
ÄÄ0 1
usuario
ÄÄ2 9
)
ÄÄ9 :
;
ÄÄ: ;
return
ÇÇ 
RedirectToAction
ÇÇ '
(
ÇÇ' (
$str
ÇÇ( 0
,
ÇÇ0 1
$str
ÇÇ2 ;
)
ÇÇ; <
;
ÇÇ< =
}
ÉÉ 
return
ÖÖ 
RedirectToAction
ÖÖ #
(
ÖÖ# $
$str
ÖÖ$ +
,
ÖÖ+ ,
$str
ÖÖ- 4
)
ÖÖ4 5
;
ÖÖ5 6
}
ÜÜ 	
[
àà 	
HttpGet
àà	 
]
àà 
public
ââ 
ActionResult
ââ 
Eliminar
ââ $
(
ââ$ %
int
ââ% (
?
ââ( )
	IdUsuario
ââ* 3
)
ââ3 4
{
ää 	
if
ãã 
(
ãã 
session
ãã 
.
ãã 
EsAdministrativo
ãã (
(
ãã( )
)
ãã) *
)
ãã* +
{
åå 
if
çç 
(
çç 
	IdUsuario
çç 
==
çç  
null
çç! %
)
çç% &
return
éé 
RedirectToAction
éé +
(
éé+ ,
$str
éé, 3
,
éé3 4
$str
éé5 <
)
éé< =
;
éé= >
servicio
êê 
.
êê 
EliminarUsuario
êê (
(
êê( )
	IdUsuario
êê) 2
)
êê2 3
;
êê3 4
return
ëë 
RedirectToAction
ëë '
(
ëë' (
$str
ëë( 0
,
ëë0 1
$str
ëë2 ;
)
ëë; <
;
ëë< =
}
íí 
return
îî 
RedirectToAction
îî #
(
îî# $
$str
îî$ +
,
îî+ ,
$str
îî- 4
)
îî4 5
;
îî5 6
}
ïï 	
[
óó 	
HttpGet
óó	 
]
óó 
public
òò 
ActionResult
òò 
Perfil
òò "
(
òò" #
int
òò# &
?
òò& '
	IdUsuario
òò( 1
)
òò1 2
{
ôô 	
if
öö 
(
öö 
session
öö 
.
öö 
IsLogged
öö  
(
öö  !
)
öö! "
)
öö" #
{
õõ 
if
úú 
(
úú 
	IdUsuario
úú 
==
úú  
null
úú! %
)
úú% &
return
ùù 
RedirectToAction
ùù +
(
ùù+ ,
$str
ùù, 3
,
ùù3 4
$str
ùù5 <
)
ùù< =
;
ùù= >
Usuario
üü 
usuario
üü 
=
üü  !
servicio
üü" *
.
üü* +
GetUsuarioById
üü+ 9
(
üü9 :
	IdUsuario
üü: C
)
üüC D
;
üüD E
if
°° 
(
°° 
usuario
°° 
==
°° 
null
°° #
)
°°# $
return
¢¢ 
RedirectToAction
¢¢ +
(
¢¢+ ,
$str
¢¢, 3
,
¢¢3 4
$str
¢¢5 <
)
¢¢< =
;
¢¢= >
if
§§ 
(
§§ 
!
§§ 
session
§§ 
.
§§ 
EsSuSession
§§ (
(
§§( )
	IdUsuario
§§) 2
)
§§2 3
)
§§3 4
return
•• 
RedirectToAction
•• +
(
••+ ,
$str
••, 3
,
••3 4
$str
••5 <
)
••< =
;
••= >#
UsuarioPerfilEditView
ßß %#
usuarioPerfilEditView
ßß& ;
=
ßß< =
servicio
ßß> F
.
ßßF G,
UsuarioToUsuarioPerfilEditView
ßßG e
(
ßße f
usuario
ßßf m
)
ßßm n
;
ßßn o
ViewBag
®® 
.
®® 
ListaUsuarios
®® %
=
®®& '
servicio
®®( 0
.
®®0 1
GetUsuariosAsList
®®1 B
(
®®B C
)
®®C D
;
®®D E
return
™™ 
View
™™ 
(
™™ #
usuarioPerfilEditView
™™ 1
)
™™1 2
;
™™2 3
}
´´ 
return
≠≠ 
RedirectToAction
≠≠ #
(
≠≠# $
$str
≠≠$ +
,
≠≠+ ,
$str
≠≠- 4
)
≠≠4 5
;
≠≠5 6
}
ÆÆ 	
[
∞∞ 	
HttpPost
∞∞	 
]
∞∞ 
public
±± 
ActionResult
±± 
Perfil
±± "
(
±±" #
int
±±# &
?
±±& '
	IdUsuario
±±( 1
,
±±1 2#
UsuarioPerfilEditView
±±3 H#
usuarioPerfilEditView
±±I ^
)
±±^ _
{
≤≤ 	
if
≥≥ 
(
≥≥ 
session
≥≥ 
.
≥≥ 
IsLogged
≥≥  
(
≥≥  !
)
≥≥! "
)
≥≥" #
{
¥¥ 
if
µµ 
(
µµ 
	IdUsuario
µµ 
==
µµ  
null
µµ! %
)
µµ% &
return
∂∂ 
RedirectToAction
∂∂ +
(
∂∂+ ,
$str
∂∂, 3
,
∂∂3 4
$str
∂∂5 <
)
∂∂< =
;
∂∂= >(
ValidarEditarPerfilUsuario
∏∏ *
(
∏∏* +#
usuarioPerfilEditView
∏∏+ @
)
∏∏@ A
;
∏∏A B
if
ππ 
(
ππ 
!
ππ 

ModelState
ππ 
.
ππ  
IsValid
ππ  '
)
ππ' (
{
ππ) *
ViewBag
∫∫ 
.
∫∫ 
ListaUsuarios
∫∫ )
=
∫∫* +
servicio
∫∫, 4
.
∫∫4 5
GetUsuariosAsList
∫∫5 F
(
∫∫F G
)
∫∫G H
;
∫∫H I
return
ªª 
View
ªª 
(
ªª  #
usuarioPerfilEditView
ªª  5
)
ªª5 6
;
ªª6 7
}
ºº 
if
ææ 
(
ææ 
	IdUsuario
ææ 
!=
ææ  
$num
ææ! "
)
ææ" #
{
øø 
Usuario
¿¿ 
usuario
¿¿ #
=
¿¿$ %
servicio
¿¿& .
.
¿¿. /,
UsuarioPerfilEditViewToUsuario
¿¿/ M
(
¿¿M N#
usuarioPerfilEditView
¿¿N c
)
¿¿c d
;
¿¿d e
servicio
¡¡ 
.
¡¡ 
EditarUsuario
¡¡ *
(
¡¡* +
	IdUsuario
¡¡+ 4
,
¡¡4 5
usuario
¡¡6 =
)
¡¡= >
;
¡¡> ?
ViewBag
¬¬ 
.
¬¬ 
ListaUsuarios
¬¬ )
=
¬¬* +
servicio
¬¬, 4
.
¬¬4 5
GetUsuariosAsList
¬¬5 F
(
¬¬F G
)
¬¬G H
;
¬¬H I
return
ƒƒ 
RedirectToAction
ƒƒ +
(
ƒƒ+ ,
$str
ƒƒ, 4
,
ƒƒ4 5
$str
ƒƒ6 ?
,
ƒƒ? @
new
ƒƒA D
{
ƒƒE F
	IdUsuario
ƒƒG P
=
ƒƒQ R
	IdUsuario
ƒƒS \
}
ƒƒ] ^
)
ƒƒ^ _
;
ƒƒ_ `
}
≈≈ 
return
«« 
RedirectToAction
«« '
(
««' (
$str
««( /
,
««/ 0
$str
««1 8
)
««8 9
;
««9 :
}
»» 
return
   
RedirectToAction
   #
(
  # $
$str
  $ +
,
  + ,
$str
  - 4
)
  4 5
;
  5 6
}
ÀÀ 	
[
ÕÕ 	
HttpPost
ÕÕ	 
]
ÕÕ 
public
ŒŒ 
bool
ŒŒ '
GuardarDireccionDeUsuario
ŒŒ -
(
ŒŒ- .
int
ŒŒ. 1
?
ŒŒ1 2
	IdUsuario
ŒŒ3 <
,
ŒŒ< =
string
ŒŒ> D
Calle
ŒŒE J
,
ŒŒJ K
string
ŒŒL R
Pais
ŒŒS W
,
ŒŒW X
string
ŒŒY _
Region
ŒŒ` f
,
ŒŒf g
string
ŒŒh n
Ciudad
ŒŒo u
,
ŒŒu v
string
ŒŒw }
CodigoPostalŒŒ~ ä
)ŒŒä ã
{
œœ 	
if
–– 
(
–– 
string
–– 
.
–– 
IsNullOrEmpty
–– $
(
––$ %
Calle
––% *
)
––* +
||
––, .
string
––/ 5
.
––5 6
IsNullOrEmpty
––6 C
(
––C D
Pais
––D H
)
––H I
||
––J L
string
––M S
.
––S T
IsNullOrEmpty
––T a
(
––a b
Ciudad
––b h
)
––h i
||
––j l
string
––m s
.
––s t
IsNullOrEmpty––t Å
(––Å Ç
CodigoPostal––Ç é
)––é è
)––è ê
return
—— 
false
—— 
;
—— 
Usuario
”” 
usuario
”” 
=
”” 
servicio
”” &
.
””& '
GetUsuarioById
””' 5
(
””5 6
	IdUsuario
””6 ?
)
””? @
;
””@ A
if
’’ 
(
’’ 
usuario
’’ 
==
’’ 
null
’’ 
)
’’  
return
÷÷ 
false
÷÷ 
;
÷÷ 
servicio
ÿÿ 
.
ÿÿ %
AgregarDireccionUsuario
ÿÿ ,
(
ÿÿ, -
usuario
ÿÿ- 4
,
ÿÿ4 5
Calle
ÿÿ6 ;
,
ÿÿ; <
Pais
ÿÿ= A
,
ÿÿA B
Region
ÿÿC I
,
ÿÿI J
Ciudad
ÿÿK Q
,
ÿÿQ R
CodigoPostal
ÿÿS _
)
ÿÿ_ `
;
ÿÿ` a
return
ŸŸ 
true
ŸŸ 
;
ŸŸ 
}
⁄⁄ 	
readonly
›› 
string
›› 
LetrasRegex
›› #
=
››$ %
$str
››& 6
;
››6 7
readonly
ﬁﬁ 
string
ﬁﬁ 
NumerosRegex
ﬁﬁ $
=
ﬁﬁ% &
$str
ﬁﬁ' 8
;
ﬁﬁ8 9
readonly
ﬂﬂ 
string
ﬂﬂ 

EmailRegex
ﬂﬂ "
=
ﬂﬂ# $
$strﬂﬂ% ∆
;ﬂﬂ∆ «
private
·· 
void
·· 
ValidarUsuario
·· #
(
··# $
UsuarioView
··$ /
usuarioView
··0 ;
)
··; <
{
‚‚ 	
if
„„ 
(
„„ 
string
„„ 
.
„„ 
IsNullOrEmpty
„„ $
(
„„$ %
usuarioView
„„% 0
.
„„0 1
Email
„„1 6
)
„„6 7
)
„„7 8

ModelState
‰‰ 
.
‰‰ 
AddModelError
‰‰ (
(
‰‰( )
$str
‰‰) 0
,
‰‰0 1
$str
‰‰2 E
)
‰‰E F
;
‰‰F G
if
ÂÂ 
(
ÂÂ 
string
ÂÂ 
.
ÂÂ 
IsNullOrEmpty
ÂÂ $
(
ÂÂ$ %
usuarioView
ÂÂ% 0
.
ÂÂ0 1
Email
ÂÂ1 6
)
ÂÂ6 7
||
ÂÂ8 :
usuarioView
ÂÂ; F
.
ÂÂF G
Email
ÂÂG L
.
ÂÂL M
Length
ÂÂM S
<=
ÂÂT V
$num
ÂÂW X
)
ÂÂX Y

ModelState
ÊÊ 
.
ÊÊ 
AddModelError
ÊÊ (
(
ÊÊ( )
$str
ÊÊ) 0
,
ÊÊ0 1
$str
ÊÊ2 X
)
ÊÊX Y
;
ÊÊY Z
if
ÁÁ 
(
ÁÁ 
string
ÁÁ 
.
ÁÁ 
IsNullOrEmpty
ÁÁ $
(
ÁÁ$ %
usuarioView
ÁÁ% 0
.
ÁÁ0 1
Email
ÁÁ1 6
)
ÁÁ6 7
||
ÁÁ8 :
usuarioView
ÁÁ; F
.
ÁÁF G
Email
ÁÁG L
.
ÁÁL M
Length
ÁÁM S
>
ÁÁT U
$num
ÁÁV Y
)
ÁÁY Z

ModelState
ËË 
.
ËË 
AddModelError
ËË (
(
ËË( )
$str
ËË) 0
,
ËË0 1
$str
ËË2 X
)
ËËX Y
;
ËËY Z
bool
ÈÈ 
isEmailValid
ÈÈ 
=
ÈÈ 
string
ÈÈ  &
.
ÈÈ& '
IsNullOrEmpty
ÈÈ' 4
(
ÈÈ4 5
usuarioView
ÈÈ5 @
.
ÈÈ@ A
Email
ÈÈA F
)
ÈÈF G
||
ÈÈH J
Regex
ÈÈK P
.
ÈÈP Q
IsMatch
ÈÈQ X
(
ÈÈX Y
usuarioView
ÈÈY d
.
ÈÈd e
Email
ÈÈe j
,
ÈÈj k

EmailRegex
ÈÈl v
)
ÈÈv w
;
ÈÈw x
if
ÍÍ 
(
ÍÍ 
!
ÍÍ 
isEmailValid
ÍÍ 
)
ÍÍ 

ModelState
ÎÎ 
.
ÎÎ 
AddModelError
ÎÎ (
(
ÎÎ( )
$str
ÎÎ) 0
,
ÎÎ0 1
$str
ÎÎ2 M
)
ÎÎM N
;
ÎÎN O
if
ÌÌ 
(
ÌÌ 
string
ÌÌ 
.
ÌÌ 
IsNullOrEmpty
ÌÌ $
(
ÌÌ$ %
usuarioView
ÌÌ% 0
.
ÌÌ0 1
Clave
ÌÌ1 6
)
ÌÌ6 7
)
ÌÌ7 8

ModelState
ÓÓ 
.
ÓÓ 
AddModelError
ÓÓ (
(
ÓÓ( )
$str
ÓÓ) 0
,
ÓÓ0 1
$str
ÓÓ2 E
)
ÓÓE F
;
ÓÓF G
if
 
(
 
string
 
.
 
IsNullOrEmpty
 $
(
$ %
usuarioView
% 0
.
0 1
Nombres
1 8
)
8 9
)
9 :

ModelState
ÒÒ 
.
ÒÒ 
AddModelError
ÒÒ (
(
ÒÒ( )
$str
ÒÒ) 2
,
ÒÒ2 3
$str
ÒÒ4 G
)
ÒÒG H
;
ÒÒH I
if
ÚÚ 
(
ÚÚ 
string
ÚÚ 
.
ÚÚ 
IsNullOrEmpty
ÚÚ $
(
ÚÚ$ %
usuarioView
ÚÚ% 0
.
ÚÚ0 1
Nombres
ÚÚ1 8
)
ÚÚ8 9
||
ÚÚ: <
usuarioView
ÚÚ= H
.
ÚÚH I
Nombres
ÚÚI P
.
ÚÚP Q
Length
ÚÚQ W
<=
ÚÚX Z
$num
ÚÚ[ \
)
ÚÚ\ ]

ModelState
ÛÛ 
.
ÛÛ 
AddModelError
ÛÛ (
(
ÛÛ( )
$str
ÛÛ) 2
,
ÛÛ2 3
$str
ÛÛ4 Z
)
ÛÛZ [
;
ÛÛ[ \
if
ÙÙ 
(
ÙÙ 
string
ÙÙ 
.
ÙÙ 
IsNullOrEmpty
ÙÙ $
(
ÙÙ$ %
usuarioView
ÙÙ% 0
.
ÙÙ0 1
Nombres
ÙÙ1 8
)
ÙÙ8 9
||
ÙÙ: <
usuarioView
ÙÙ= H
.
ÙÙH I
Nombres
ÙÙI P
.
ÙÙP Q
Length
ÙÙQ W
>
ÙÙX Y
$num
ÙÙZ ]
)
ÙÙ] ^

ModelState
ıı 
.
ıı 
AddModelError
ıı (
(
ıı( )
$str
ıı) 2
,
ıı2 3
$str
ıı4 Z
)
ııZ [
;
ıı[ \
bool
ˆˆ 
isNombreValid
ˆˆ 
=
ˆˆ  
string
ˆˆ! '
.
ˆˆ' (
IsNullOrEmpty
ˆˆ( 5
(
ˆˆ5 6
usuarioView
ˆˆ6 A
.
ˆˆA B
Nombres
ˆˆB I
)
ˆˆI J
||
ˆˆK M
Regex
ˆˆN S
.
ˆˆS T
IsMatch
ˆˆT [
(
ˆˆ[ \
usuarioView
ˆˆ\ g
.
ˆˆg h
Nombres
ˆˆh o
,
ˆˆo p
LetrasRegex
ˆˆq |
)
ˆˆ| }
;
ˆˆ} ~
if
˜˜ 
(
˜˜ 
!
˜˜ 
isNombreValid
˜˜ 
)
˜˜ 

ModelState
¯¯ 
.
¯¯ 
AddModelError
¯¯ (
(
¯¯( )
$str
¯¯) 2
,
¯¯2 3
$str
¯¯4 L
)
¯¯L M
;
¯¯M N
if
˙˙ 
(
˙˙ 
string
˙˙ 
.
˙˙ 
IsNullOrEmpty
˙˙ $
(
˙˙$ %
usuarioView
˙˙% 0
.
˙˙0 1
	Apellidos
˙˙1 :
)
˙˙: ;
)
˙˙; <

ModelState
˚˚ 
.
˚˚ 
AddModelError
˚˚ (
(
˚˚( )
$str
˚˚) 4
,
˚˚4 5
$str
˚˚6 I
)
˚˚I J
;
˚˚J K
if
¸¸ 
(
¸¸ 
string
¸¸ 
.
¸¸ 
IsNullOrEmpty
¸¸ $
(
¸¸$ %
usuarioView
¸¸% 0
.
¸¸0 1
	Apellidos
¸¸1 :
)
¸¸: ;
||
¸¸< >
usuarioView
¸¸? J
.
¸¸J K
	Apellidos
¸¸K T
.
¸¸T U
Length
¸¸U [
<=
¸¸\ ^
$num
¸¸_ `
)
¸¸` a

ModelState
˝˝ 
.
˝˝ 
AddModelError
˝˝ (
(
˝˝( )
$str
˝˝) 4
,
˝˝4 5
$str
˝˝6 \
)
˝˝\ ]
;
˝˝] ^
if
˛˛ 
(
˛˛ 
string
˛˛ 
.
˛˛ 
IsNullOrEmpty
˛˛ $
(
˛˛$ %
usuarioView
˛˛% 0
.
˛˛0 1
	Apellidos
˛˛1 :
)
˛˛: ;
||
˛˛< >
usuarioView
˛˛? J
.
˛˛J K
	Apellidos
˛˛K T
.
˛˛T U
Length
˛˛U [
>
˛˛\ ]
$num
˛˛^ a
)
˛˛a b

ModelState
ˇˇ 
.
ˇˇ 
AddModelError
ˇˇ (
(
ˇˇ( )
$str
ˇˇ) 4
,
ˇˇ4 5
$str
ˇˇ6 \
)
ˇˇ\ ]
;
ˇˇ] ^
bool
ÄÄ 
isApellidosValid
ÄÄ !
=
ÄÄ" #
string
ÄÄ$ *
.
ÄÄ* +
IsNullOrEmpty
ÄÄ+ 8
(
ÄÄ8 9
usuarioView
ÄÄ9 D
.
ÄÄD E
	Apellidos
ÄÄE N
)
ÄÄN O
||
ÄÄP R
Regex
ÄÄS X
.
ÄÄX Y
IsMatch
ÄÄY `
(
ÄÄ` a
usuarioView
ÄÄa l
.
ÄÄl m
	Apellidos
ÄÄm v
,
ÄÄv w
LetrasRegexÄÄx É
)ÄÄÉ Ñ
;ÄÄÑ Ö
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
isApellidosValid
ÅÅ !
)
ÅÅ! "

ModelState
ÇÇ 
.
ÇÇ 
AddModelError
ÇÇ (
(
ÇÇ( )
$str
ÇÇ) 4
,
ÇÇ4 5
$str
ÇÇ6 N
)
ÇÇN O
;
ÇÇO P
if
ÑÑ 
(
ÑÑ 
string
ÑÑ 
.
ÑÑ 
IsNullOrEmpty
ÑÑ $
(
ÑÑ$ %
usuarioView
ÑÑ% 0
.
ÑÑ0 1
FechaNacimiento
ÑÑ1 @
.
ÑÑ@ A
ToString
ÑÑA I
(
ÑÑI J
)
ÑÑJ K
)
ÑÑK L
)
ÑÑL M

ModelState
ÖÖ 
.
ÖÖ 
AddModelError
ÖÖ (
(
ÖÖ( )
$str
ÖÖ) :
,
ÖÖ: ;
$str
ÖÖ< O
)
ÖÖO P
;
ÖÖP Q
if
áá 
(
áá 
string
áá 
.
áá 
IsNullOrEmpty
áá $
(
áá$ %
usuarioView
áá% 0
.
áá0 1
Celular
áá1 8
)
áá8 9
)
áá9 :

ModelState
àà 
.
àà 
AddModelError
àà (
(
àà( )
$str
àà) 2
,
àà2 3
$str
àà4 G
)
ààG H
;
ààH I
if
ââ 
(
ââ 
string
ââ 
.
ââ 
IsNullOrEmpty
ââ $
(
ââ$ %
usuarioView
ââ% 0
.
ââ0 1
Celular
ââ1 8
)
ââ8 9
||
ââ: <
usuarioView
ââ= H
.
ââH I
Celular
ââI P
.
ââP Q
Length
ââQ W
<=
ââX Z
$num
ââ[ \
)
ââ\ ]

ModelState
ää 
.
ää 
AddModelError
ää (
(
ää( )
$str
ää) 2
,
ää2 3
$str
ää4 Z
)
ääZ [
;
ää[ \
if
ãã 
(
ãã 
string
ãã 
.
ãã 
IsNullOrEmpty
ãã $
(
ãã$ %
usuarioView
ãã% 0
.
ãã0 1
Celular
ãã1 8
)
ãã8 9
||
ãã: <
usuarioView
ãã= H
.
ããH I
Celular
ããI P
.
ããP Q
Length
ããQ W
>
ããX Y
$num
ããZ \
)
ãã\ ]

ModelState
åå 
.
åå 
AddModelError
åå (
(
åå( )
$str
åå) 2
,
åå2 3
$str
åå4 Y
)
ååY Z
;
ååZ [
bool
çç 
isCelularValid
çç 
=
çç  !
string
çç" (
.
çç( )
IsNullOrEmpty
çç) 6
(
çç6 7
usuarioView
çç7 B
.
ççB C
Celular
ççC J
)
ççJ K
||
ççL N
Regex
ççO T
.
ççT U
IsMatch
ççU \
(
çç\ ]
usuarioView
çç] h
.
ççh i
Celular
ççi p
,
ççp q
NumerosRegex
ççr ~
)
çç~ 
;çç Ä
if
éé 
(
éé 
!
éé 
isCelularValid
éé 
)
éé  

ModelState
èè 
.
èè 
AddModelError
èè (
(
èè( )
$str
èè) 2
,
èè2 3
$str
èè4 M
)
èèM N
;
èèN O
}
êê 	
private
íí 
void
íí "
ValidarEditarUsuario
íí )
(
íí) *
UsuarioEditarView
íí* ;
usuarioEditarView
íí< M
)
ííM N
{
ìì 	
if
îî 
(
îî 
string
îî 
.
îî 
IsNullOrEmpty
îî $
(
îî$ %
usuarioEditarView
îî% 6
.
îî6 7
Nombres
îî7 >
)
îî> ?
)
îî? @

ModelState
ïï 
.
ïï 
AddModelError
ïï (
(
ïï( )
$str
ïï) 2
,
ïï2 3
$str
ïï4 G
)
ïïG H
;
ïïH I
if
ññ 
(
ññ 
string
ññ 
.
ññ 
IsNullOrEmpty
ññ $
(
ññ$ %
usuarioEditarView
ññ% 6
.
ññ6 7
Nombres
ññ7 >
)
ññ> ?
||
ññ@ B
usuarioEditarView
ññC T
.
ññT U
Nombres
ññU \
.
ññ\ ]
Length
ññ] c
<=
ññd f
$num
ññg h
)
ññh i

ModelState
óó 
.
óó 
AddModelError
óó (
(
óó( )
$str
óó) 2
,
óó2 3
$str
óó4 Z
)
óóZ [
;
óó[ \
if
òò 
(
òò 
string
òò 
.
òò 
IsNullOrEmpty
òò $
(
òò$ %
usuarioEditarView
òò% 6
.
òò6 7
Nombres
òò7 >
)
òò> ?
||
òò@ B
usuarioEditarView
òòC T
.
òòT U
Nombres
òòU \
.
òò\ ]
Length
òò] c
>
òòd e
$num
òòf i
)
òòi j

ModelState
ôô 
.
ôô 
AddModelError
ôô (
(
ôô( )
$str
ôô) 2
,
ôô2 3
$str
ôô4 Z
)
ôôZ [
;
ôô[ \
bool
öö 
isNombreValid
öö 
=
öö  
string
öö! '
.
öö' (
IsNullOrEmpty
öö( 5
(
öö5 6
usuarioEditarView
öö6 G
.
ööG H
Nombres
ööH O
)
ööO P
||
ööQ S
Regex
ööT Y
.
ööY Z
IsMatch
ööZ a
(
ööa b
usuarioEditarView
ööb s
.
öös t
Nombres
ööt {
,
öö{ |
LetrasRegexöö} à
)ööà â
;ööâ ä
if
õõ 
(
õõ 
!
õõ 
isNombreValid
õõ 
)
õõ 

ModelState
úú 
.
úú 
AddModelError
úú (
(
úú( )
$str
úú) 2
,
úú2 3
$str
úú4 L
)
úúL M
;
úúM N
if
ûû 
(
ûû 
string
ûû 
.
ûû 
IsNullOrEmpty
ûû $
(
ûû$ %
usuarioEditarView
ûû% 6
.
ûû6 7
	Apellidos
ûû7 @
)
ûû@ A
)
ûûA B

ModelState
üü 
.
üü 
AddModelError
üü (
(
üü( )
$str
üü) 4
,
üü4 5
$str
üü6 I
)
üüI J
;
üüJ K
if
†† 
(
†† 
string
†† 
.
†† 
IsNullOrEmpty
†† $
(
††$ %
usuarioEditarView
††% 6
.
††6 7
	Apellidos
††7 @
)
††@ A
||
††B D
usuarioEditarView
††E V
.
††V W
	Apellidos
††W `
.
††` a
Length
††a g
<=
††h j
$num
††k l
)
††l m

ModelState
°° 
.
°° 
AddModelError
°° (
(
°°( )
$str
°°) 4
,
°°4 5
$str
°°6 \
)
°°\ ]
;
°°] ^
if
¢¢ 
(
¢¢ 
string
¢¢ 
.
¢¢ 
IsNullOrEmpty
¢¢ $
(
¢¢$ %
usuarioEditarView
¢¢% 6
.
¢¢6 7
	Apellidos
¢¢7 @
)
¢¢@ A
||
¢¢B D
usuarioEditarView
¢¢E V
.
¢¢V W
	Apellidos
¢¢W `
.
¢¢` a
Length
¢¢a g
>
¢¢h i
$num
¢¢j m
)
¢¢m n

ModelState
££ 
.
££ 
AddModelError
££ (
(
££( )
$str
££) 4
,
££4 5
$str
££6 \
)
££\ ]
;
££] ^
bool
§§ 
isApellidosValid
§§ !
=
§§" #
string
§§$ *
.
§§* +
IsNullOrEmpty
§§+ 8
(
§§8 9
usuarioEditarView
§§9 J
.
§§J K
	Apellidos
§§K T
)
§§T U
||
§§V X
Regex
§§Y ^
.
§§^ _
IsMatch
§§_ f
(
§§f g
usuarioEditarView
§§g x
.
§§x y
	Apellidos§§y Ç
,§§Ç É
LetrasRegex§§Ñ è
)§§è ê
;§§ê ë
if
•• 
(
•• 
!
•• 
isApellidosValid
•• !
)
••! "

ModelState
¶¶ 
.
¶¶ 
AddModelError
¶¶ (
(
¶¶( )
$str
¶¶) 4
,
¶¶4 5
$str
¶¶6 N
)
¶¶N O
;
¶¶O P
if
®® 
(
®® 
string
®® 
.
®® 
IsNullOrEmpty
®® $
(
®®$ %
usuarioEditarView
®®% 6
.
®®6 7
FechaNacimiento
®®7 F
.
®®F G
ToString
®®G O
(
®®O P
)
®®P Q
)
®®Q R
)
®®R S

ModelState
©© 
.
©© 
AddModelError
©© (
(
©©( )
$str
©©) :
,
©©: ;
$str
©©< O
)
©©O P
;
©©P Q
if
´´ 
(
´´ 
string
´´ 
.
´´ 
IsNullOrEmpty
´´ $
(
´´$ %
usuarioEditarView
´´% 6
.
´´6 7
Celular
´´7 >
)
´´> ?
)
´´? @

ModelState
¨¨ 
.
¨¨ 
AddModelError
¨¨ (
(
¨¨( )
$str
¨¨) 2
,
¨¨2 3
$str
¨¨4 G
)
¨¨G H
;
¨¨H I
if
≠≠ 
(
≠≠ 
string
≠≠ 
.
≠≠ 
IsNullOrEmpty
≠≠ $
(
≠≠$ %
usuarioEditarView
≠≠% 6
.
≠≠6 7
Celular
≠≠7 >
)
≠≠> ?
||
≠≠@ B
usuarioEditarView
≠≠C T
.
≠≠T U
Celular
≠≠U \
.
≠≠\ ]
Length
≠≠] c
<=
≠≠d f
$num
≠≠g h
)
≠≠h i

ModelState
ÆÆ 
.
ÆÆ 
AddModelError
ÆÆ (
(
ÆÆ( )
$str
ÆÆ) 2
,
ÆÆ2 3
$str
ÆÆ4 Z
)
ÆÆZ [
;
ÆÆ[ \
if
ØØ 
(
ØØ 
string
ØØ 
.
ØØ 
IsNullOrEmpty
ØØ $
(
ØØ$ %
usuarioEditarView
ØØ% 6
.
ØØ6 7
Celular
ØØ7 >
)
ØØ> ?
||
ØØ@ B
usuarioEditarView
ØØC T
.
ØØT U
Celular
ØØU \
.
ØØ\ ]
Length
ØØ] c
>
ØØd e
$num
ØØf h
)
ØØh i

ModelState
∞∞ 
.
∞∞ 
AddModelError
∞∞ (
(
∞∞( )
$str
∞∞) 2
,
∞∞2 3
$str
∞∞4 Y
)
∞∞Y Z
;
∞∞Z [
bool
±± 
isCelularValid
±± 
=
±±  !
string
±±" (
.
±±( )
IsNullOrEmpty
±±) 6
(
±±6 7
usuarioEditarView
±±7 H
.
±±H I
Celular
±±I P
)
±±P Q
||
±±R T
Regex
±±U Z
.
±±Z [
IsMatch
±±[ b
(
±±b c
usuarioEditarView
±±c t
.
±±t u
Celular
±±u |
,
±±| }
NumerosRegex±±~ ä
)±±ä ã
;±±ã å
if
≤≤ 
(
≤≤ 
!
≤≤ 
isCelularValid
≤≤ 
)
≤≤  

ModelState
≥≥ 
.
≥≥ 
AddModelError
≥≥ (
(
≥≥( )
$str
≥≥) 2
,
≥≥2 3
$str
≥≥4 M
)
≥≥M N
;
≥≥N O
}
¥¥ 	
private
∂∂ 
void
∂∂ (
ValidarEditarPerfilUsuario
∂∂ /
(
∂∂/ 0#
UsuarioPerfilEditView
∂∂0 E#
usuarioPerfilEditView
∂∂F [
)
∂∂[ \
{
∑∑ 	
if
∏∏ 
(
∏∏ 
string
∏∏ 
.
∏∏ 
IsNullOrEmpty
∏∏ $
(
∏∏$ %#
usuarioPerfilEditView
∏∏% :
.
∏∏: ;
Nombres
∏∏; B
)
∏∏B C
)
∏∏C D

ModelState
ππ 
.
ππ 
AddModelError
ππ (
(
ππ( )
$str
ππ) 2
,
ππ2 3
$str
ππ4 G
)
ππG H
;
ππH I
if
∫∫ 
(
∫∫ 
string
∫∫ 
.
∫∫ 
IsNullOrEmpty
∫∫ $
(
∫∫$ %#
usuarioPerfilEditView
∫∫% :
.
∫∫: ;
Nombres
∫∫; B
)
∫∫B C
||
∫∫D F#
usuarioPerfilEditView
∫∫G \
.
∫∫\ ]
Nombres
∫∫] d
.
∫∫d e
Length
∫∫e k
<=
∫∫l n
$num
∫∫o p
)
∫∫p q

ModelState
ªª 
.
ªª 
AddModelError
ªª (
(
ªª( )
$str
ªª) 2
,
ªª2 3
$str
ªª4 Z
)
ªªZ [
;
ªª[ \
if
ºº 
(
ºº 
string
ºº 
.
ºº 
IsNullOrEmpty
ºº $
(
ºº$ %#
usuarioPerfilEditView
ºº% :
.
ºº: ;
Nombres
ºº; B
)
ººB C
||
ººD F#
usuarioPerfilEditView
ººG \
.
ºº\ ]
Nombres
ºº] d
.
ººd e
Length
ººe k
>
ººl m
$num
ººn q
)
ººq r

ModelState
ΩΩ 
.
ΩΩ 
AddModelError
ΩΩ (
(
ΩΩ( )
$str
ΩΩ) 2
,
ΩΩ2 3
$str
ΩΩ4 Z
)
ΩΩZ [
;
ΩΩ[ \
bool
ææ 
isNombreValid
ææ 
=
ææ  
string
ææ! '
.
ææ' (
IsNullOrEmpty
ææ( 5
(
ææ5 6#
usuarioPerfilEditView
ææ6 K
.
ææK L
Nombres
ææL S
)
ææS T
||
ææU W
Regex
ææX ]
.
ææ] ^
IsMatch
ææ^ e
(
ææe f#
usuarioPerfilEditView
ææf {
.
ææ{ |
Nombresææ| É
,ææÉ Ñ
LetrasRegexææÖ ê
)ææê ë
;ææë í
if
øø 
(
øø 
!
øø 
isNombreValid
øø 
)
øø 

ModelState
¿¿ 
.
¿¿ 
AddModelError
¿¿ (
(
¿¿( )
$str
¿¿) 2
,
¿¿2 3
$str
¿¿4 L
)
¿¿L M
;
¿¿M N
if
¬¬ 
(
¬¬ 
string
¬¬ 
.
¬¬ 
IsNullOrEmpty
¬¬ $
(
¬¬$ %#
usuarioPerfilEditView
¬¬% :
.
¬¬: ;
	Apellidos
¬¬; D
)
¬¬D E
)
¬¬E F

ModelState
√√ 
.
√√ 
AddModelError
√√ (
(
√√( )
$str
√√) 4
,
√√4 5
$str
√√6 I
)
√√I J
;
√√J K
if
ƒƒ 
(
ƒƒ 
string
ƒƒ 
.
ƒƒ 
IsNullOrEmpty
ƒƒ $
(
ƒƒ$ %#
usuarioPerfilEditView
ƒƒ% :
.
ƒƒ: ;
	Apellidos
ƒƒ; D
)
ƒƒD E
||
ƒƒF H#
usuarioPerfilEditView
ƒƒI ^
.
ƒƒ^ _
	Apellidos
ƒƒ_ h
.
ƒƒh i
Length
ƒƒi o
<=
ƒƒp r
$num
ƒƒs t
)
ƒƒt u

ModelState
≈≈ 
.
≈≈ 
AddModelError
≈≈ (
(
≈≈( )
$str
≈≈) 4
,
≈≈4 5
$str
≈≈6 \
)
≈≈\ ]
;
≈≈] ^
if
∆∆ 
(
∆∆ 
string
∆∆ 
.
∆∆ 
IsNullOrEmpty
∆∆ $
(
∆∆$ %#
usuarioPerfilEditView
∆∆% :
.
∆∆: ;
	Apellidos
∆∆; D
)
∆∆D E
||
∆∆F H#
usuarioPerfilEditView
∆∆I ^
.
∆∆^ _
	Apellidos
∆∆_ h
.
∆∆h i
Length
∆∆i o
>
∆∆p q
$num
∆∆r u
)
∆∆u v

ModelState
«« 
.
«« 
AddModelError
«« (
(
««( )
$str
««) 4
,
««4 5
$str
««6 \
)
««\ ]
;
««] ^
bool
»» 
isApellidosValid
»» !
=
»»" #
string
»»$ *
.
»»* +
IsNullOrEmpty
»»+ 8
(
»»8 9#
usuarioPerfilEditView
»»9 N
.
»»N O
	Apellidos
»»O X
)
»»X Y
||
»»Z \
Regex
»»] b
.
»»b c
IsMatch
»»c j
(
»»j k$
usuarioPerfilEditView»»k Ä
.»»Ä Å
	Apellidos»»Å ä
,»»ä ã
LetrasRegex»»å ó
)»»ó ò
;»»ò ô
if
…… 
(
…… 
!
…… 
isApellidosValid
…… !
)
……! "

ModelState
   
.
   
AddModelError
   (
(
  ( )
$str
  ) 4
,
  4 5
$str
  6 N
)
  N O
;
  O P
if
ÃÃ 
(
ÃÃ 
string
ÃÃ 
.
ÃÃ 
IsNullOrEmpty
ÃÃ $
(
ÃÃ$ %#
usuarioPerfilEditView
ÃÃ% :
.
ÃÃ: ;
Celular
ÃÃ; B
)
ÃÃB C
)
ÃÃC D

ModelState
ÕÕ 
.
ÕÕ 
AddModelError
ÕÕ (
(
ÕÕ( )
$str
ÕÕ) 2
,
ÕÕ2 3
$str
ÕÕ4 G
)
ÕÕG H
;
ÕÕH I
if
ŒŒ 
(
ŒŒ 
string
ŒŒ 
.
ŒŒ 
IsNullOrEmpty
ŒŒ $
(
ŒŒ$ %#
usuarioPerfilEditView
ŒŒ% :
.
ŒŒ: ;
Celular
ŒŒ; B
)
ŒŒB C
||
ŒŒD F#
usuarioPerfilEditView
ŒŒG \
.
ŒŒ\ ]
Celular
ŒŒ] d
.
ŒŒd e
Length
ŒŒe k
<=
ŒŒl n
$num
ŒŒo p
)
ŒŒp q

ModelState
œœ 
.
œœ 
AddModelError
œœ (
(
œœ( )
$str
œœ) 2
,
œœ2 3
$str
œœ4 Z
)
œœZ [
;
œœ[ \
if
–– 
(
–– 
string
–– 
.
–– 
IsNullOrEmpty
–– $
(
––$ %#
usuarioPerfilEditView
––% :
.
––: ;
Celular
––; B
)
––B C
||
––D F#
usuarioPerfilEditView
––G \
.
––\ ]
Celular
––] d
.
––d e
Length
––e k
>
––l m
$num
––n p
)
––p q

ModelState
—— 
.
—— 
AddModelError
—— (
(
——( )
$str
——) 2
,
——2 3
$str
——4 Y
)
——Y Z
;
——Z [
bool
““ 
isCelularValid
““ 
=
““  !
string
““" (
.
““( )
IsNullOrEmpty
““) 6
(
““6 7#
usuarioPerfilEditView
““7 L
.
““L M
Celular
““M T
)
““T U
||
““V X
Regex
““Y ^
.
““^ _
IsMatch
““_ f
(
““f g#
usuarioPerfilEditView
““g |
.
““| }
Celular““} Ñ
,““Ñ Ö
NumerosRegex““Ü í
)““í ì
;““ì î
if
”” 
(
”” 
!
”” 
isCelularValid
”” 
)
””  

ModelState
‘‘ 
.
‘‘ 
AddModelError
‘‘ (
(
‘‘( )
$str
‘‘) 2
,
‘‘2 3
$str
‘‘4 M
)
‘‘M N
;
‘‘N O
}
’’ 	
}
÷÷ 
}◊◊ å”
~C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Controllers\VentaController.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Controllers %
{ 
public 

class 
VentaController  
:! "
BaseAutController# 4
{ 
private 
readonly 
IUsuarioService (
UsuarioSession) 7
;7 8
private 
readonly 
IDireccionService *
servicioDireccion+ <
;< =
private 
readonly 
IProductoService )
productoServicio* :
;: ;
private 
readonly 
IVentaService &
servicio' /
;/ 0
private 
readonly 
ISessionService (
session) 0
;0 1
public 
VentaController 
( 
IUsuarioService .
UsuarioSession/ =
,= >
IDireccionService? P
servicioDireccionQ b
,b c
IProductoServiced t
productoServicio	u Ö
,
Ö Ü
IVentaService
á î
servicio
ï ù
,
ù û
ISessionService
ü Æ
session
Ø ∂
)
∂ ∑
{ 	
this 
. 
UsuarioSession 
=  !
UsuarioSession" 0
;0 1
this 
. 
servicioDireccion "
=# $
servicioDireccion% 6
;6 7
this 
. 
productoServicio !
=" #
productoServicio$ 4
;4 5
this 
. 
servicio 
= 
servicio $
;$ %
this 
. 
session 
= 
session "
;" #
} 	
[ 	
HttpGet	 
] 
public 
ActionResult 
Index !
(! "
)" #
{   	
if!! 
(!! 
session!! 
.!!  
EsPersonalDeLaTienda!! ,
(!!, -
)!!- .
)!!. /
{"" 
ViewBag## 
.## 
ListaUsuarios## %
=##& '
UsuarioSession##( 6
.##6 7
GetUsuariosAsList##7 H
(##H I
)##I J
;##J K
ViewBag$$ 
.$$ !
ListaDireccionUsuario$$ -
=$$. /
servicioDireccion$$0 A
.$$A B
GetDireccionAsList$$B T
($$T U
)$$U V
;$$V W
return%% 
View%% 
(%% 
servicio%% $
.%%$ %
GetVentasAsList%%% 4
(%%4 5
)%%5 6
)%%6 7
;%%7 8
}&& 
return(( 
RedirectToAction(( #
(((# $
$str(($ +
,((+ ,
$str((- 4
)((4 5
;((5 6
})) 	
[++ 	
HttpGet++	 
]++ 
public,, 
ActionResult,, 
Compras,, #
(,,# $
int,,$ '
?,,' (
	IdUsuario,,) 2
),,2 3
{-- 	
if.. 
(.. 
session.. 
... 
IsLogged..  
(..  !
)..! "
).." #
{// 
if00 
(00 
	IdUsuario00 
!=00  
null00! %
)00% &
{11 
var22 
ListaVentas22 #
=22$ %
servicio22& .
.22. /"
GetVentasDeUsuarioById22/ E
(22E F
	IdUsuario22F O
)22O P
;22P Q
ViewBag33 
.33 
ListaDetalleVentas33 .
=33/ 0
servicio331 9
.339 :"
GetDetalleVentasAsList33: P
(33P Q
)33Q R
;33R S
ViewBag44 
.44 
ListaUsuarios44 )
=44* +
UsuarioSession44, :
.44: ;
GetUsuariosAsList44; L
(44L M
)44M N
;44N O
int55 
	UsuarioId55 !
=55" #
session55$ +
.55+ ,$
ConvertirSessionIdAIntId55, D
(55D E
)55E F
;55F G
ViewBag66 
.66 !
ListaDireccionUsuario66 1
=662 3
servicioDireccion664 E
.66E F%
GetDireccionByUsuarioList66F _
(66_ `
	UsuarioId66` i
)66i j
;66j k
return88 
View88 
(88  
ListaVentas88  +
)88+ ,
;88, -
}99 
return:: 
RedirectToAction:: '
(::' (
$str::( /
,::/ 0
$str::1 8
)::8 9
;::9 :
};; 
return== 
RedirectToAction== #
(==# $
$str==$ +
,==+ ,
$str==- 4
)==4 5
;==5 6
}>> 	
[@@ 	
HttpGet@@	 
]@@ 
publicAA 
ActionResultAA 
DetalleComprasAA *
(AA* +
intAA+ .
?AA. /
IdVentaAA0 7
)AA7 8
{BB 	
ifCC 
(CC 
sessionCC 
.CC 
IsLoggedCC  
(CC  !
)CC! "
)CC" #
{DD 
ifEE 
(EE 
IdVentaEE 
==EE 
nullEE #
)EE# $
returnFF 
RedirectToActionFF +
(FF+ ,
$strFF, 3
,FF3 4
$strFF5 <
)FF< =
;FF= >
VentaHH 
ventaHH 
=HH 
servicioHH &
.HH& '
GetVentaByIdHH' 3
(HH3 4
IdVentaHH4 ;
)HH; <
;HH< =
ViewBagJJ 
.JJ 
ListaUsuariosJJ %
=JJ& '
UsuarioSessionJJ( 6
.JJ6 7
GetUsuariosAsListJJ7 H
(JJH I
)JJI J
;JJJ K
ViewBagKK 
.KK 
ListaDetalleVentasKK *
=KK+ ,
servicioKK- 5
.KK5 6"
GetDetalleVentasAsListKK6 L
(KKL M
)KKM N
;KKN O
ifNN 
(NN 
ventaNN 
==NN 
nullNN !
)NN! "
{OO 
returnPP 
RedirectToActionPP +
(PP+ ,
$strPP, 3
,PP3 4
$strPP5 <
)PP< =
;PP= >
}QQ 
returnSS 
ViewSS 
(SS 
ventaSS !
)SS! "
;SS" #
}TT 
returnUU 
RedirectToActionUU #
(UU# $
$strUU$ +
,UU+ ,
$strUU- 4
)UU4 5
;UU5 6
}VV 	
[XX 	
HttpGetXX	 
]XX 
publicYY 
ActionResultYY 
CarritoYY #
(YY# $
intYY$ '
?YY' (
	IdUsuarioYY) 2
)YY2 3
{ZZ 	
if[[ 
([[ 
session[[ 
.[[ 
IsLogged[[  
([[  !
)[[! "
)[[" #
{\\ 
if]] 
(]] 
	IdUsuario]] 
==]]  
null]]! %
)]]% &
return^^ 
RedirectToAction^^ +
(^^+ ,
$str^^, 3
,^^3 4
$str^^5 <
)^^< =
;^^= >
if`` 
(`` 
!`` 
session`` 
.`` 
EsSuSession`` (
(``( )
	IdUsuario``) 2
)``2 3
)``3 4
returnaa 
RedirectToActionaa +
(aa+ ,
$straa, 3
,aa3 4
$straa5 <
)aa< =
;aa= >
varcc 
CarritoComprascc "
=cc# $
serviciocc% -
.cc- .)
GetCarritoComprasByUserAsListcc. K
(ccK L
	IdUsuarioccL U
)ccU V
;ccV W
ViewBagdd 
.dd 
ListaUsuariosdd %
=dd& '
UsuarioSessiondd( 6
.dd6 7
GetUsuariosAsListdd7 H
(ddH I
)ddI J
;ddJ K
sessionee 
.ee #
GuardarCarritoEnSessionee /
(ee/ 0
CarritoComprasee0 >
)ee> ?
;ee? @
returngg 
Viewgg 
(gg 
CarritoComprasgg *
)gg* +
;gg+ ,
}hh 
returnjj 
RedirectToActionjj #
(jj# $
$strjj$ +
,jj+ ,
$strjj- 3
)jj3 4
;jj4 5
}kk 	
[mm 	
HttpPostmm	 
]mm 
publicnn 
boolnn 6
*ExisteProductoIdYUsuarioIdEnCarritoComprasnn >
(nn> ?
intnn? B
?nnB C
	IdUsuarionnD M
,nnM N
intnnO R
?nnR S

IdProductonnT ^
)nn^ _
{oo 	
ifpp 
(pp 
	IdUsuariopp 
==pp 
nullpp !
&&pp" $

IdProductopp% /
==pp0 2
nullpp3 7
)pp7 8
returnqq 
falseqq 
;qq 
varss 
existeEnCarritoss 
=ss  !
servicioss" *
.ss* +4
(ExisteProductIdAndUserIdEnCarritoComprasss+ S
(ssS T
	IdUsuariossT ]
,ss] ^

IdProductoss_ i
)ssi j
;ssj k
ifuu 
(uu 
!uu 
existeEnCarritouu  
)uu  !
returnvv 
truevv 
;vv 
returnxx 
falsexx 
;xx 
}yy 	
[{{ 	
HttpPost{{	 
]{{ 
public|| 
bool|| #
GuardarProductoACarrito|| +
(||+ ,
int||, /
	IdUsuario||0 9
,||9 :
int||; >

IdProducto||? I
,||I J
int||K N
Cantidad||O W
)||W X
{}} 	
Usuario 
usuario 
= 
UsuarioSession ,
., -
GetUsuarioById- ;
(; <
	IdUsuario< E
)E F
;F G
Producto
ÄÄ 
producto
ÄÄ 
=
ÄÄ 
productoServicio
ÄÄ  0
.
ÄÄ0 1
GetProductoById
ÄÄ1 @
(
ÄÄ@ A

IdProducto
ÄÄA K
)
ÄÄK L
;
ÄÄL M
if
ÇÇ 
(
ÇÇ 
usuario
ÇÇ 
==
ÇÇ 
null
ÇÇ 
&&
ÇÇ  "
producto
ÇÇ# +
==
ÇÇ, .
null
ÇÇ/ 3
)
ÇÇ3 4
return
ÉÉ 
false
ÉÉ 
;
ÉÉ 
servicio
ÖÖ 
.
ÖÖ ,
AgregarProductoACarritoCompras
ÖÖ 3
(
ÖÖ3 4
usuario
ÖÖ4 ;
,
ÖÖ; <
producto
ÖÖ= E
,
ÖÖE F
Cantidad
ÖÖF N
)
ÖÖN O
;
ÖÖO P
return
áá 
true
áá 
;
áá 
}
àà 	
[
ää 	
HttpPost
ää	 
]
ää 
public
ãã 
bool
ãã /
!ActualizarCantidadProductoCarrito
ãã 5
(
ãã5 6
int
ãã6 9
?
ãã9 :
	IdUsuario
ãã; D
,
ããD E
int
ããF I
?
ããI J

IdProducto
ããK U
,
ããU V
int
ããW Z
NuevaCantidad
ãã[ h
)
ããh i
{
åå 	
if
çç 
(
çç 
	IdUsuario
çç 
==
çç 
null
çç !
&&
çç" $

IdProducto
çç% /
==
çç0 2
null
çç3 7
&&
çç8 :
NuevaCantidad
çç; H
<=
ççI K
$num
ççL M
)
ççM N
return
éé 
false
éé 
;
éé 
if
êê 
(
êê 
NuevaCantidad
êê 
>
êê 
$num
êê  !
)
êê! "
{
ëë 
servicio
íí 
.
íí 3
%ActualizarCantidadByIdProductoCarrito
íí >
(
íí> ?

IdProducto
íí? I
,
ííI J
	IdUsuario
ííK T
,
ííT U
NuevaCantidad
ííV c
)
ííc d
;
ííd e
return
ìì 
true
ìì 
;
ìì 
}
îî 
return
ññ 
false
ññ 
;
ññ 
}
òò 	
[
öö 	
HttpGet
öö	 
]
öö 
public
õõ 
ActionResult
õõ '
EliminarProductoDeCarrito
õõ 5
(
õõ5 6
int
õõ6 9
?
õõ9 :

IdProducto
õõ; E
,
õõE F
int
õõG J
?
õõJ K
	IdUsuario
õõL U
)
õõU V
{
úú 	
if
ùù 
(
ùù 
session
ùù 
.
ùù 
IsLogged
ùù  
(
ùù  !
)
ùù! "
)
ùù" #
{
ûû 
if
üü 
(
üü 

IdProducto
üü 
==
üü !
null
üü" &
&&
üü' )
	IdUsuario
üü* 3
==
üü4 6
null
üü7 ;
)
üü; <
return
†† 
RedirectToAction
†† +
(
††+ ,
$str
††, 3
,
††3 4
$str
††5 <
)
††< =
;
††= >
servicio
¢¢ 
.
¢¢ .
 EliminarProductoDeCarritoCompras
¢¢ 9
(
¢¢9 :

IdProducto
¢¢: D
,
¢¢D E
	IdUsuario
¢¢F O
)
¢¢O P
;
¢¢P Q
return
££ 
RedirectToAction
££ '
(
££' (
$str
££( 1
,
££1 2
$str
££3 :
,
££: ;
new
££< ?
{
££@ A
	IdUsuario
££B K
=
££L M
	IdUsuario
££N W
}
££X Y
)
££Y Z
;
££Z [
}
§§ 
return
¶¶ 
RedirectToAction
¶¶ #
(
¶¶# $
$str
¶¶$ +
,
¶¶+ ,
$str
¶¶- 4
)
¶¶4 5
;
¶¶5 6
}
ßß 	
[
©© 	
HttpGet
©©	 
]
©© 
public
™™ 
ActionResult
™™ 
CompletarOrden
™™ *
(
™™* +
)
™™+ ,
{
´´ 	
if
¨¨ 
(
¨¨ 
session
¨¨ 
.
¨¨ 
IsLogged
¨¨  
(
¨¨  !
)
¨¨! "
)
¨¨" #
{
≠≠ 
List
ÆÆ 
<
ÆÆ 
CarritoCompras
ÆÆ #
>
ÆÆ# $
carrito
ÆÆ% ,
=
ÆÆ- .
session
ÆÆ/ 6
.
ÆÆ6 70
"RetornarProductosDelCarritoSession
ÆÆ7 Y
(
ÆÆY Z
)
ÆÆZ [
;
ÆÆ[ \
ViewBag
ØØ 
.
ØØ 
ListaUsuarios
ØØ %
=
ØØ& '
UsuarioSession
ØØ( 6
.
ØØ6 7
GetUsuariosAsList
ØØ7 H
(
ØØH I
)
ØØI J
;
ØØJ K
int
∞∞ 
	UsuarioId
∞∞ 
=
∞∞ 
session
∞∞  '
.
∞∞' (&
ConvertirSessionIdAIntId
∞∞( @
(
∞∞@ A
)
∞∞A B
;
∞∞B C
ViewBag
±± 
.
±± #
ListaDireccionUsuario
±± -
=
±±. /
servicioDireccion
±±0 A
.
±±A B'
GetDireccionByUsuarioList
±±B [
(
±±[ \
	UsuarioId
±±\ e
)
±±e f
;
±±f g
return
≤≤ 
View
≤≤ 
(
≤≤ 
carrito
≤≤ #
)
≤≤# $
;
≤≤$ %
}
≥≥ 
return
¥¥ 
RedirectToAction
¥¥ #
(
¥¥# $
$str
¥¥$ +
,
¥¥+ ,
$str
¥¥- 4
)
¥¥4 5
;
¥¥5 6
}
µµ 	
[
∑∑ 	
HttpPost
∑∑	 
]
∑∑ 
public
∏∏ 
bool
∏∏ 
Guardar
∏∏ 
(
∏∏ 
int
∏∏ 
	IdUsuario
∏∏  )
,
∏∏) *
int
∏∏+ .
IdCalle
∏∏/ 6
,
∏∏6 7
byte
∏∏8 <
TipoPago
∏∏= E
)
∏∏E F
{
ππ 	
if
∫∫ 
(
∫∫ 
session
∫∫ 
.
∫∫ 
IsLogged
∫∫  
(
∫∫  !
)
∫∫! "
)
∫∫" #
{
ªª 
Usuario
ºº 
usuario
ºº 
=
ºº  !
UsuarioSession
ºº" 0
.
ºº0 1
GetUsuarioById
ºº1 ?
(
ºº? @
	IdUsuario
ºº@ I
)
ººI J
;
ººJ K
	Direccion
ΩΩ 
	direccion
ΩΩ #
=
ΩΩ$ %
servicioDireccion
ΩΩ& 7
.
ΩΩ7 8
GetDireccionById
ΩΩ8 H
(
ΩΩH I
IdCalle
ΩΩI P
)
ΩΩP Q
;
ΩΩQ R
List
ææ 
<
ææ 
CarritoCompras
ææ #
>
ææ# $!
productosDelCarrito
ææ% 8
=
ææ9 :
session
ææ; B
.
ææB C0
"RetornarProductosDelCarritoSession
ææC e
(
ææe f
)
ææf g
;
ææg h
if
¿¿ 
(
¿¿ 
usuario
¿¿ 
==
¿¿ 
null
¿¿ #
&&
¿¿$ &
	direccion
¿¿' 0
==
¿¿1 3
null
¿¿4 8
)
¿¿8 9
return
¡¡ 
false
¡¡  
;
¡¡  !
if
√√ 
(
√√ 
!
√√ 
productoServicio
√√ %
.
√√% &#
SiExistenLosProductos
√√& ;
(
√√; <!
productosDelCarrito
√√< O
)
√√O P
)
√√P Q
return
ƒƒ 
false
ƒƒ  
;
ƒƒ  !
if
∆∆ 
(
∆∆ 
!
∆∆ 
productoServicio
∆∆ %
.
∆∆% &"
SiHayStockDisponible
∆∆& :
(
∆∆: ;!
productosDelCarrito
∆∆; N
)
∆∆N O
)
∆∆O P
{
«« 
ViewBag
»» 
.
»» "
NoHayStockDisponible
»» 0
=
»»1 2
$str
»»3 o
;
»»o p
return
…… 
false
……  
;
……  !
}
   
productoServicio
ÃÃ  
.
ÃÃ  !
ActualizarStock
ÃÃ! 0
(
ÃÃ0 1!
productosDelCarrito
ÃÃ1 D
)
ÃÃD E
;
ÃÃE F
servicio
ŒŒ 
.
ŒŒ 
GuardarVenta
ŒŒ %
(
ŒŒ% &
usuario
ŒŒ& -
,
ŒŒ- .!
productosDelCarrito
ŒŒ/ B
,
ŒŒB C
	direccion
ŒŒD M
,
ŒŒM N
TipoPago
ŒŒO W
)
ŒŒW X
;
ŒŒX Y
return
–– 
true
–– 
;
–– 
}
—— 
return
““ 
false
““ 
;
““ 
}
”” 	
[
’’ 	
HttpGet
’’	 
]
’’ 
public
÷÷ 
ActionResult
÷÷ 
Detalle
÷÷ #
(
÷÷# $
int
÷÷$ '
?
÷÷' (
IdVenta
÷÷) 0
)
÷÷0 1
{
◊◊ 	
if
ÿÿ 
(
ÿÿ 
session
ÿÿ 
.
ÿÿ "
EsPersonalDeLaTienda
ÿÿ ,
(
ÿÿ, -
)
ÿÿ- .
)
ÿÿ. /
{
ŸŸ 
if
⁄⁄ 
(
⁄⁄ 
IdVenta
⁄⁄ 
==
⁄⁄ 
null
⁄⁄ #
)
⁄⁄# $
return
€€ 
RedirectToAction
€€ +
(
€€+ ,
$str
€€, 3
,
€€3 4
$str
€€5 <
)
€€< =
;
€€= >
ViewBag
›› 
.
›› 
ListaUsuarios
›› %
=
››& '
UsuarioSession
››( 6
.
››6 7
GetUsuariosAsList
››7 H
(
››H I
)
››I J
;
››J K
ViewBag
ﬁﬁ 
.
ﬁﬁ  
ListaDetalleVentas
ﬁﬁ *
=
ﬁﬁ+ ,
servicio
ﬁﬁ- 5
.
ﬁﬁ5 6$
GetDetalleVentasAsList
ﬁﬁ6 L
(
ﬁﬁL M
)
ﬁﬁM N
;
ﬁﬁN O
Venta
ﬂﬂ 
venta
ﬂﬂ 
=
ﬂﬂ 
servicio
ﬂﬂ &
.
ﬂﬂ& '
GetVentaById
ﬂﬂ' 3
(
ﬂﬂ3 4
IdVenta
ﬂﬂ4 ;
)
ﬂﬂ; <
;
ﬂﬂ< =
if
·· 
(
·· 
venta
·· 
==
·· 
null
·· !
)
··! "
{
‚‚ 
return
„„ 
RedirectToAction
„„ +
(
„„+ ,
$str
„„, 3
,
„„3 4
$str
„„5 <
)
„„< =
;
„„= >
}
‰‰ 
return
ÊÊ 
View
ÊÊ 
(
ÊÊ 
venta
ÊÊ !
)
ÊÊ! "
;
ÊÊ" #
}
ÁÁ 
return
ËË 
RedirectToAction
ËË #
(
ËË# $
$str
ËË$ +
,
ËË+ ,
$str
ËË- 4
)
ËË4 5
;
ËË5 6
}
ÈÈ 	
[
ÎÎ 	
HttpGet
ÎÎ	 
]
ÎÎ 
public
ÏÏ 
ActionResult
ÏÏ 
Eliminar
ÏÏ $
(
ÏÏ$ %
int
ÏÏ% (
?
ÏÏ( )
IdVenta
ÏÏ* 1
)
ÏÏ1 2
{
ÌÌ 	
if
ÓÓ 
(
ÓÓ 
session
ÓÓ 
.
ÓÓ 
EsAdministrativo
ÓÓ (
(
ÓÓ( )
)
ÓÓ) *
)
ÓÓ* +
{
ÔÔ 
if
 
(
 
IdVenta
 
==
 
null
 #
)
# $
return
ÒÒ 
RedirectToAction
ÒÒ +
(
ÒÒ+ ,
$str
ÒÒ, 3
,
ÒÒ3 4
$str
ÒÒ5 <
)
ÒÒ< =
;
ÒÒ= >
servicio
ÛÛ 
.
ÛÛ 
EliminarVenta
ÛÛ &
(
ÛÛ& '
IdVenta
ÛÛ' .
)
ÛÛ. /
;
ÛÛ/ 0
return
ÙÙ 
RedirectToAction
ÙÙ '
(
ÙÙ' (
$str
ÙÙ( /
,
ÙÙ/ 0
$str
ÙÙ1 8
)
ÙÙ8 9
;
ÙÙ9 :
}
ıı 
return
˜˜ 
RedirectToAction
˜˜ #
(
˜˜# $
$str
˜˜$ +
,
˜˜+ ,
$str
˜˜- 4
)
˜˜4 5
;
˜˜5 6
}
¯¯ 	
[
˙˙ 	
HttpGet
˙˙	 
]
˙˙ 
public
˚˚ 
ActionResult
˚˚ 
ListaFavoritos
˚˚ *
(
˚˚* +
int
˚˚+ .
?
˚˚. /
	IdUsuario
˚˚0 9
)
˚˚9 :
{
¸¸ 	
if
˝˝ 
(
˝˝ 
session
˝˝ 
.
˝˝ 
IsLogged
˝˝  
(
˝˝  !
)
˝˝! "
)
˝˝" #
{
˛˛ 
if
ˇˇ 
(
ˇˇ 
	IdUsuario
ˇˇ 
==
ˇˇ  
null
ˇˇ! %
)
ˇˇ% &
return
ÄÄ 
RedirectToAction
ÄÄ +
(
ÄÄ+ ,
$str
ÄÄ, 3
,
ÄÄ3 4
$str
ÄÄ5 <
)
ÄÄ< =
;
ÄÄ= >
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
session
ÇÇ 
.
ÇÇ 
EsSuSession
ÇÇ (
(
ÇÇ( )
	IdUsuario
ÇÇ) 2
)
ÇÇ2 3
)
ÇÇ3 4
return
ÉÉ 
RedirectToAction
ÉÉ +
(
ÉÉ+ ,
$str
ÉÉ, 3
,
ÉÉ3 4
$str
ÉÉ5 <
)
ÉÉ< =
;
ÉÉ= >
var
ÖÖ 
lista
ÖÖ 
=
ÖÖ 
servicio
ÖÖ $
.
ÖÖ$ %+
GetListaFavoritosByUserAsList
ÖÖ% B
(
ÖÖB C
	IdUsuario
ÖÖC L
)
ÖÖL M
;
ÖÖM N
ViewBag
ÜÜ 
.
ÜÜ 
ListaUsuarios
ÜÜ %
=
ÜÜ& '
UsuarioSession
ÜÜ( 6
.
ÜÜ6 7
GetUsuariosAsList
ÜÜ7 H
(
ÜÜH I
)
ÜÜI J
;
ÜÜJ K
return
áá 
View
áá 
(
áá 
lista
áá !
)
áá! "
;
áá" #
}
àà 
return
ää 
RedirectToAction
ää #
(
ää# $
$str
ää$ +
,
ää+ ,
$str
ää- 4
)
ää4 5
;
ää5 6
}
ãã 	
[
çç 	
HttpPost
çç	 
]
çç 
public
éé 
bool
éé #
GuardarProductoALista
éé )
(
éé) *
int
éé* -
	IdUsuario
éé. 7
,
éé7 8
int
éé9 <

IdProducto
éé= G
)
ééG H
{
èè 	
Usuario
êê 
usuario
êê 
=
êê 
UsuarioSession
êê ,
.
êê, -
GetUsuarioById
êê- ;
(
êê; <
	IdUsuario
êê< E
)
êêE F
;
êêF G
Producto
ëë 
producto
ëë 
=
ëë 
productoServicio
ëë  0
.
ëë0 1
GetProductoById
ëë1 @
(
ëë@ A

IdProducto
ëëA K
)
ëëK L
;
ëëL M
if
ìì 
(
ìì 
usuario
ìì 
==
ìì 
null
ìì 
&&
ìì  "
producto
ìì# +
==
ìì, .
null
ìì/ 3
)
ìì3 4
return
îî 
false
îî 
;
îî 
servicio
ññ 
.
ññ #
AgregarProductoALista
ññ *
(
ññ* +
usuario
ññ+ 2
,
ññ2 3
producto
ññ4 <
)
ññ< =
;
ññ= >
return
òò 
true
òò 
;
òò 
}
ôô 	
[
õõ 	
HttpPost
õõ	 
]
õõ 
public
úú 
bool
úú 8
*ExisteProductoIdYUsuarioIdEnListaFavoritos
úú >
(
úú> ?
int
úú? B
?
úúB C
	IdUsuario
úúD M
,
úúM N
int
úúO R
?
úúR S

IdProducto
úúT ^
)
úú^ _
{
ùù 	
if
ûû 
(
ûû 
	IdUsuario
ûû 
==
ûû 
null
ûû !
&&
ûû" $

IdProducto
ûû% /
==
ûû0 2
null
ûû3 7
)
ûû7 8
return
üü 
false
üü 
;
üü 
var
°° 
existeEnLista
°° 
=
°° 
servicio
°°  (
.
°°( )6
(ExisteProductIdAndUserIdEnListaFavoritos
°°) Q
(
°°Q R
	IdUsuario
°°R [
,
°°[ \

IdProducto
°°] g
)
°°g h
;
°°h i
if
££ 
(
££ 
!
££ 
existeEnLista
££ 
)
££ 
return
§§ 
true
§§ 
;
§§ 
return
¶¶ 
false
¶¶ 
;
¶¶ 
}
ßß 	
[
©© 	
HttpGet
©©	 
]
©© 
public
™™ 
ActionResult
™™ %
EliminarProductoDeLista
™™ 3
(
™™3 4
int
™™4 7
?
™™7 8

IdProducto
™™9 C
,
™™C D
int
™™E H
?
™™H I
	IdUsuario
™™J S
)
™™S T
{
´´ 	
if
¨¨ 
(
¨¨ 
session
¨¨ 
.
¨¨ 
IsLogged
¨¨  
(
¨¨  !
)
¨¨! "
)
¨¨" #
{
≠≠ 
if
ÆÆ 
(
ÆÆ 

IdProducto
ÆÆ 
==
ÆÆ !
null
ÆÆ" &
&&
ÆÆ' )
	IdUsuario
ÆÆ* 3
==
ÆÆ4 6
null
ÆÆ7 ;
)
ÆÆ; <
return
ØØ 
RedirectToAction
ØØ +
(
ØØ+ ,
$str
ØØ, 3
,
ØØ3 4
$str
ØØ5 <
)
ØØ< =
;
ØØ= >
servicio
±± 
.
±± %
EliminarProductoDeLista
±± 0
(
±±0 1

IdProducto
±±1 ;
,
±±; <
	IdUsuario
±±= F
)
±±F G
;
±±G H
return
≤≤ 
RedirectToAction
≤≤ '
(
≤≤' (
$str
≤≤( 8
,
≤≤8 9
$str
≤≤: A
,
≤≤A B
new
≤≤C F
{
≤≤G H
	IdUsuario
≤≤I R
=
≤≤S T
	IdUsuario
≤≤U ^
}
≤≤_ `
)
≤≤` a
;
≤≤a b
}
≥≥ 
return
µµ 
RedirectToAction
µµ #
(
µµ# $
$str
µµ$ +
,
µµ+ ,
$str
µµ- 4
)
µµ4 5
;
µµ5 6
}
∂∂ 	
}
∑∑ 
}∏∏ ™'
vC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\DbConexion.cs
	namespace		 	
ECOMMERCE_TRESB		
 
{

 
public 

class 

DbConexion 
: 
	DbContext '
{ 
public 
virtual 
IDbSet 
< 
Usuario %
>% &
Usuarios' /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
virtual 
IDbSet 
< 
Venta #
># $
Ventas% +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
virtual 
IDbSet 
< 
DetalleVenta *
>* +
DetallesVenta, 9
{: ;
get< ?
;? @
setA D
;D E
}F G
public 
virtual 
IDbSet 
< 
Producto &
>& '
	Productos( 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
virtual 
IDbSet 
< 
	Categoria '
>' (

Categorias) 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
virtual 
IDbSet 
< 
ListaFavoritos ,
>, -
ListaDeFavoritos. >
{? @
getA D
;D E
setF I
;I J
}K L
public 
virtual 
IDbSet 
< 
CarritoCompras ,
>, -
CarritoDeCompras. >
{? @
getA D
;D E
setF I
;I J
}K L
public 
virtual 
IDbSet 
< 
	Direccion '
>' (
	Direccion) 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
virtual 
IDbSet 
< 
Comentarios )
>) *

Comentario+ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 

DbConexion 
( 
) 
{ 	
Database 
. 
SetInitializer #
<# $

DbConexion$ .
>. /
(/ 0
null0 4
)4 5
;5 6
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
DbModelBuilder0 >
modelBuilder? K
)K L
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder   
.   
Configurations   '
.  ' (
Add  ( +
(  + ,
new  , /

UsuarioMap  0 :
(  : ;
)  ; <
)  < =
;  = >
modelBuilder!! 
.!! 
Configurations!! '
.!!' (
Add!!( +
(!!+ ,
new!!, /
VentaMap!!0 8
(!!8 9
)!!9 :
)!!: ;
;!!; <
modelBuilder"" 
."" 
Configurations"" '
.""' (
Add""( +
(""+ ,
new"", /
DetalleVentaMap""0 ?
(""? @
)""@ A
)""A B
;""B C
modelBuilder## 
.## 
Configurations## '
.##' (
Add##( +
(##+ ,
new##, /
ProductoMap##0 ;
(##; <
)##< =
)##= >
;##> ?
modelBuilder$$ 
.$$ 
Configurations$$ '
.$$' (
Add$$( +
($$+ ,
new$$, /
CategoriaMap$$0 <
($$< =
)$$= >
)$$> ?
;$$? @
modelBuilder%% 
.%% 
Configurations%% '
.%%' (
Add%%( +
(%%+ ,
new%%, /
ListaFavoritosMap%%0 A
(%%A B
)%%B C
)%%C D
;%%D E
modelBuilder&& 
.&& 
Configurations&& '
.&&' (
Add&&( +
(&&+ ,
new&&, /
CarritoComprasMap&&0 A
(&&A B
)&&B C
)&&C D
;&&D E
modelBuilder'' 
.'' 
Configurations'' '
.''' (
Add''( +
(''+ ,
new'', /
DireccionMap''0 <
(''< =
)''= >
)''> ?
;''? @
modelBuilder(( 
.(( 
Configurations(( '
.((' (
Add((( +
(((+ ,
new((, /
ComentariosMap((0 >
(((> ?
)((? @
)((@ A
;((A B
})) 	
}** 
}++ Ù
ÇC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\CarritoComprasMap.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
DataBase "
." #
Maps# '
{		 
public

 

class

 
CarritoComprasMap

 "
:

# $#
EntityTypeConfiguration

% <
<

< =
CarritoCompras

= K
>

K L
{ 
public 
CarritoComprasMap  
(  !
)! "
{ 	
ToTable 
( 
$str $
)$ %
;% &
HasKey 
( 
pk 
=> 
pk 
. 
Id 
) 
;  
HasRequired 
( 
u 
=> 
u 
. 
Usuario &
)& '
. 
WithMany 
( 
cc 
=> 
cc  "
." #
CarritoDeCompras# 3
)3 4
. 
HasForeignKey 
( 
fk !
=>" $
fk% '
.' (
	IdUsuario( 1
)1 2
;2 3
HasRequired 
( 
p 
=> 
p 
. 
	Productos (
)( )
. 
WithMany 
( 
cc 
=> 
cc  "
." #%
ProductosDeCarritoCompras# <
)< =
. 
HasForeignKey 
( 
fk !
=>" $
fk% '
.' (

IdProducto( 2
)2 3
;3 4
} 	
} 
} ß
}C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\CategoriaMap.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
DataBase "
." #
Maps# '
{		 
public

 

class

 
CategoriaMap

 
:

 #
EntityTypeConfiguration

  7
<

7 8
	Categoria

8 A
>

A B
{ 
public 
CategoriaMap 
( 
) 
{ 	
ToTable 
( 
$str 
)  
;  !
HasKey 
( 
pk 
=> 
pk 
. 
Id 
) 
;  
} 	
} 
} œ
C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\ComentariosMap.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
DataBase "
." #
Maps# '
{		 
public

 

class

 
ComentariosMap

 
:

  !#
EntityTypeConfiguration

" 9
<

9 :
Comentarios

: E
>

E F
{ 
public 
ComentariosMap 
( 
) 
{ 	
ToTable 
( 
$str !
)! "
;" #
HasKey 
( 
pk 
=> 
pk 
. 
Id 
) 
;  
HasRequired 
( 
u 
=> 
u 
. 
Usuario &
)& '
. 
WithMany 
( 
c 
=> 
c  
.  !
Comentarios! ,
), -
. 
HasForeignKey 
( 
fk !
=>" $
fk% '
.' (
	IdUsuario( 1
)1 2
;2 3
HasRequired 
( 
p 
=> 
p 
. 
Producto '
)' (
. 
WithMany 
( 
c 
=> 
c  
.  !
Comentarios! ,
), -
. 
HasForeignKey 
( 
fk !
=>" $
fk% '
.' (

IdProducto( 2
)2 3
;3 4
} 	
} 
} ÿ
ÄC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\DetalleVentaMap.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
DataBase "
." #
Maps# '
{		 
public

 

class

 
DetalleVentaMap

  
:

! "#
EntityTypeConfiguration

# :
<

: ;
DetalleVenta

; G
>

G H
{ 
public 
DetalleVentaMap 
( 
)  
{ 	
ToTable 
( 
$str "
)" #
;# $
HasKey 
( 
pk 
=> 
pk 
. 
Id 
) 
;  
HasRequired 
( 
v 
=> 
v 
. 
Venta $
)$ %
. 
WithMany 
( 
dv 
=> 
dv  "
." #
DetallesVenta# 0
)0 1
. 
HasForeignKey 
( 
fk !
=>" $
fk% '
.' (
IdVenta( /
)/ 0
;0 1
HasRequired 
( 
p 
=> 
p 
. 
Producto '
)' (
. 
WithMany 
( 
dv 
=> 
dv  "
." #
DetallesVenta# 0
)0 1
. 
HasForeignKey 
( 
fk !
=>" $
fk% '
.' (

IdProducto( 2
)2 3
;3 4
} 	
} 
} ˆ	
}C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\DireccionMap.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
DataBase "
." #
Maps# '
{		 
public

 

class

 
DireccionMap

 
:

 #
EntityTypeConfiguration

  7
<

7 8
	Direccion

8 A
>

A B
{ 
public 
DireccionMap 
( 
) 
{ 	
ToTable 
( 
$str 
)  
;  !
HasKey 
( 
pk 
=> 
pk 
. 
Id 
) 
;  
HasRequired 
( 
u 
=> 
u 
. 
Usuario &
)& '
. 
WithMany 
( 
d 
=> 
d  
.  !
Direcciones! ,
), -
. 
HasForeignKey 
( 
fk !
=>" $
fk% '
.' (
	IdUsuario( 1
)1 2
;2 3
} 	
} 
} Ê
ÇC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\ListaFavoritosMap.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
DataBase "
." #
Maps# '
{		 
public

 

class

 
ListaFavoritosMap

 "
:

# $#
EntityTypeConfiguration

% <
<

< =
ListaFavoritos

= K
>

K L
{ 
public 
ListaFavoritosMap  
(  !
)! "
{ 	
ToTable 
( 
$str $
)$ %
;% &
HasKey 
( 
pk 
=> 
pk 
. 
Id 
) 
;  
HasRequired 
( 
u 
=> 
u 
. 
Usuario &
)& '
. 
WithMany 
( 
lf 
=> 
lf  "
." #
	Favoritos# ,
), -
. 
HasForeignKey 
( 
fk !
=>" $
fk% '
.' (
	IdUsuario( 1
)1 2
;2 3
HasRequired 
( 
p 
=> 
p 
. 
	Productos (
)( )
. 
WithMany 
( 
lf 
=> 
lf  "
." #
ProductosFavoritos# 5
)5 6
. 
HasForeignKey 
( 
fk !
=>" $
fk% '
.' (

IdProducto( 2
)2 3
;3 4
} 	
} 
} Ú	
|C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\ProductoMap.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
DataBase "
." #
Maps# '
{		 
public

 

class

 
ProductoMap

 
:

 #
EntityTypeConfiguration

 6
<

6 7
Producto

7 ?
>

? @
{ 
public 
ProductoMap 
( 
) 
{ 	
ToTable 
( 
$str 
) 
;  
HasKey 
( 
o 
=> 
o 
. 
Id 
) 
; 
HasRequired 
( 
c 
=> 
c 
. 
	Categoria (
)( )
. 
WithMany 
( 
p 
=> 
p  
.  !
	Productos! *
)* +
. 
HasForeignKey 
( 
fk !
=>" $
fk% '
.' (
IdCategoria( 3
)3 4
;4 5
} 	
} 
} ù
{C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\UsuarioMap.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
DataBase "
." #
Maps# '
{		 
public

 

class

 

UsuarioMap

 
:

 #
EntityTypeConfiguration

 5
<

5 6
Usuario

6 =
>

= >
{ 
public 

UsuarioMap 
( 
) 
{ 	
ToTable 
( 
$str 
) 
; 
HasKey 
( 
o 
=> 
o 
. 
Id 
) 
; 
} 	
} 
} Ø
yC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\VentaMap.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
DataBase "
." #
Maps# '
{		 
public

 

class

 
VentaMap

 
:

 #
EntityTypeConfiguration

 3
<

3 4
Venta

4 9
>

9 :
{ 
public 
VentaMap 
( 
) 
{ 	
ToTable 
( 
$str 
) 
; 
HasKey 
( 
pk 
=> 
pk 
. 
Id 
) 
;  
HasRequired 
( 
u 
=> 
u 
. 
Usuario &
)& '
. 
WithMany 
( 
v 
=> 
v  
.  !
Ventas! '
)' (
. 
HasForeignKey 
( 
fk !
=>" $
fk% '
.' (
	IdUsuario( 1
)1 2
;2 3
HasRequired 
( 
d 
=> 
d 
. 
	Direccion (
)( )
. 
WithMany 
( 
v 
=> 
v  
.  !
Ventas! '
)' (
.( )
HasForeignKey 
( 
fk  
=>! #
fk$ &
.& '
IdDireccion' 2
)2 3
;3 4
} 	
} 
} ú	
nC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Global.asax.cs
	namespace		 	
ECOMMERCE_TRESB		
 
{

 
public 

class 
MvcApplication 
:  !
System" (
.( )
Web) ,
., -
HttpApplication- <
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} ‹
C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\ICategoriaService.cs
	namespace		 	
ECOMMERCE_TRESB		
 
.		 

Interfaces		 $
{

 
public 

	interface 
ICategoriaService &
{ 
	Categoria 
GetCategoriaById "
(" #
int# &
?& '
IdCategoria( 3
)3 4
;4 5
List 
< 
	Categoria 
> 
GetCategoriasAsList +
(+ ,
), -
;- .
	Categoria $
CategoriaViewToCategoria *
(* +
CategoriaView+ 8
CategoriaView9 F
)F G
;G H
CategoriaView $
CategoriaToCategoriaView .
(. /
	Categoria/ 8
	Categoria9 B
)B C
;C D
bool 
ExisteCategoria 
( 
string #
nombre$ *
)* +
;+ ,
void 
GuardarCategoria 
( 
	Categoria '
	Categoria( 1
)1 2
;2 3
void 
EditarCategoria 
( 
int  
?  !
IdCategoria" -
,- .
	Categoria/ 8
	Categoria9 B
)B C
;C D
void 
EliminarCategoria 
( 
int "
?" #
IdCategoria$ /
)/ 0
;0 1
bool "
CategoriaTieneProducto #
(# $
int$ '
?' (
IdCategoria) 4
)4 5
;5 6
} 
} Ã
ÅC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IComentariosSerivce.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

Interfaces $
{		 
public

 

	interface

 
IComentariosSerivce

 (
{ 
Comentarios 
GetComentarioById %
(% &
int& )
?) *
IdComentario+ 7
)7 8
;8 9
List 
< 
Comentarios 
>  
GetComentariosAsList .
(. /
)/ 0
;0 1
List 
< 
Comentarios 
> +
GetComentariosAsListByProductId 9
(9 :
int: =
?= >

IdProducto? I
)I J
;J K
void 
GuardarComentario 
( 
Usuario &
usuario' .
,. /
Producto0 8
producto9 A
,A B
stringC I
TextoJ O
)O P
;P Q
void 
EditarComentario 
( 
int !
?! "
IdComentario# /
,/ 0
Comentarios1 <

Comentario= G
)G H
;H I
void 
EliminarComentario 
(  
int  #
?# $
IdComentario% 1
)1 2
;2 3
bool 1
%ExisteProductIdAndUserIdEnComentarios 2
(2 3
int3 6
?6 7
	IdUsuario8 A
,A B
intC F
?F G

IdProductoH R
)R S
;S T
} 
} °
ÇC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IDetalleVentaService.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

Interfaces $
{		 
public

 

	interface

  
IDetalleVentaService

 )
{ 
DetalleVenta 
GetDetalleVentaById (
(( )
int) ,
?, -
IdDetalleVenta. <
)< =
;= >
List 
< 
DetalleVenta 
> !
GetDetalleVentaAsList 0
(0 1
)1 2
;2 3
} 
} ›
C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IDireccionService.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

Interfaces $
{		 
public

 

	interface

 
IDireccionService

 &
{ 
	Direccion 
GetDireccionById "
(" #
int# &
?& '
IdDireccion( 3
)3 4
;4 5
List 
< 
	Direccion 
> 
GetDireccionAsList *
(* +
)+ ,
;, -
List 
< 
	Direccion 
> %
GetDireccionByUsuarioList 1
(1 2
int2 5
?5 6
	IdUsuario7 @
)@ A
;A B
} 
} ü
|C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IImagenService.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

Interfaces $
{		 
public

 

	interface

 
IImagenService

 #
{ 
string 
GetRutaImagen 
( 
HttpPostedFileBase /
Archivo0 7
,7 8
string9 ?
Carpeta@ G
)G H
;H I
} 
} ¬
|C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IInfoAtributos.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

Interfaces $
{ 
	interface		 
IInfoAtributos		 
{

 
} 
} õ
~C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IProductoService.cs
	namespace		 	
ECOMMERCE_TRESB		
 
.		 

Interfaces		 $
{

 
public 

	interface 
IProductoService %
{ 
int '
CountProductosByCategoriaId '
(' (
int( +
?+ ,
IdCategoria- 8
)8 9
;9 :
int 
GetTotalPages 
( 
int 
? 
IdCategoria *
)* +
;+ ,
Producto 
GetProductoById  
(  !
int! $
?$ %

IdProducto& 0
)0 1
;1 2
List 
< 
Producto 
> 
GetProductosAsList )
() *
)* +
;+ ,
Producto !
ProductViewToProducto &
(& '
ProductoView' 3
ProductoView4 @
)@ A
;A B
ProductoView !
ProductoToProductView *
(* +
Producto+ 3
Producto4 <
)< =
;= >
Producto 
AsignarRutaDeImagen $
($ %
ProductoView% 1
ProductoView2 >
,> ?
Producto@ H
ProductoI Q
)Q R
;R S
void 
GuardarProducto 
( 
Producto %
Producto& .
). /
;/ 0
void 
EditarProducto 
( 
int 
?  

IdProducto! +
,+ ,
Producto- 5
Producto6 >
)> ?
;? @
void 
EliminarProducto 
( 
int !
?! "

IdProducto# -
)- .
;. /
List 
< 
Producto 
> '
GetProductsAsListByCategory 2
(2 3
int3 6
IdCategoria7 B
,B C
intD G
PageH L
,L M
intN Q
NumItemsR Z
)Z [
;[ \
bool !
SiExistenLosProductos "
(" #
List# '
<' (
CarritoCompras( 6
>6 7
	productos8 A
)A B
;B C
bool  
SiHayStockDisponible !
(! "
List" &
<& '
CarritoCompras' 5
>5 6
	productos7 @
)@ A
;A B
void 
ActualizarStock 
( 
List !
<! "
CarritoCompras" 0
>0 1
	productos2 ;
); <
;< =
} 
} ±
}C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\ISessionService.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

Interfaces $
{		 
public

 

	interface

 
ISessionService

 $
{ 
void 
GuardarSesion 
( 
Usuario "
Usuario# *
)* +
;+ ,
void 
LimpiarSesion 
( 
) 
; 
bool 
IsLogged 
( 
) 
; 
bool 
EsAdministrativo 
( 
) 
;  
bool  
EsPersonalDeLaTienda !
(! "
)" #
;# $
bool 
EsSuSession 
( 
int 
? 
	IdUsuario '
)' (
;( )
int $
ConvertirSessionIdAIntId $
($ %
)% &
;& '
void #
GuardarCarritoEnSession $
($ %
List% )
<) *
CarritoCompras* 8
>8 9
carritoCompras: H
)H I
;I J
List 
< 
CarritoCompras 
> .
"RetornarProductosDelCarritoSession ?
(? @
)@ A
;A B
} 
} ì
}C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IUsuarioService.cs
	namespace		 	
ECOMMERCE_TRESB		
 
.		 

Interfaces		 $
{

 
public 

	interface 
IUsuarioService $
{ 
Usuario 
GetUsuarioById 
( 
int "
?" #
	IdUsuario$ -
)- .
;. /
List 
< 
Usuario 
> 
GetUsuariosAsList '
(' (
)( )
;) *
List 
< 
Usuario 
> 
GetClienteAsList &
(& '
)' (
;( )
List 
< 
Usuario 
> +
GetUsuariosVendedorYAdminAsList 5
(5 6
)6 7
;7 8
Usuario  
UsuarioViewToUsuario $
($ %
UsuarioView% 0
UsuarioView1 <
)< =
;= >
UsuarioView  
UsuarioToUsuarioView (
(( )
Usuario) 0
Usuario1 8
)8 9
;9 :
void 
GuardarUsuario 
( 
Usuario #
Usuario$ +
)+ ,
;, -
Usuario &
UsuarioEditarViewToUsuario *
(* +
UsuarioEditarView+ <
UsuarioEditarView= N
)N O
;O P
UsuarioEditarView &
UsuarioToUsuarioEditarView 4
(4 5
Usuario5 <
Usuario= D
)D E
;E F
void 
EditarUsuario 
( 
int 
? 
	IdUsuario  )
,) *
Usuario+ 2
Usuario3 :
): ;
;; <
void 
EliminarUsuario 
( 
int  
?  !
	IdUsuario" +
)+ ,
;, -
bool 
ExisteElCorreo 
( 
string "
email# (
)( )
;) *
Usuario &
GetUsuarioByCorreoAndClave *
(* +
string+ 1
Correo2 8
,8 9
string: @
ClaveA F
)F G
;G H
Usuario *
UsuarioPerfilEditViewToUsuario .
(. /!
UsuarioPerfilEditView/ D!
UsuarioPerfilEditViewE Z
)Z [
;[ \!
UsuarioPerfilEditView *
UsuarioToUsuarioPerfilEditView <
(< =
Usuario= D
UsuarioE L
)L M
;M N
void 
EditarPerfil 
( 
int 
? 
	IdUsuario (
,( )
Usuario* 1
Usuario2 9
)9 :
;: ;
void #
AgregarDireccionUsuario $
($ %
Usuario% ,
usuario- 4
,4 5
string6 <
Calle= B
,B C
stringD J
PaisK O
,O P
stringQ W
RegionX ^
,^ _
string` f
Ciudadg m
,m n
stringo u
CodigoPostal	v Ç
)
Ç É
;
É Ñ
} 
} •
ÄC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IValidacionService.cs
	namespace		 	
ECOMMERCE_TRESB		
 
.		 

Interfaces		 $
{

 
public 

	interface 
IValidacionService '
{ 
void 
	Categoria 
( 
CategoriaView $
categoriaView% 2
,2 3 
ModelStateDictionary4 H

ModelStateI S
)S T
;T U
void 
Usuario 
( 
UsuarioView  
usuarioView! ,
,, - 
ModelStateDictionary. B

ModelStateC M
)M N
;N O
void 
EditarUsuario 
( 
UsuarioEditarView ,
usuarioEditarView- >
,> ? 
ModelStateDictionary@ T

ModelStateU _
)_ `
;` a
void 
EditarPerfilUsuario  
(  !!
UsuarioPerfilEditView! 6!
usuarioPerfilEditView7 L
,L M 
ModelStateDictionaryN b

ModelStatec m
)m n
;n o
void 
Producto 
( 
ProductoView "
productoView# /
,/ 0 
ModelStateDictionary1 E

ModelStateF P
)P Q
;Q R
} 
} ´
{C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IVentaService.cs
	namespace		 	
ECOMMERCE_TRESB		
 
.		 

Interfaces		 $
{

 
public 

	interface 
IVentaService "
{ 
Venta 
GetVentaById 
( 
int 
? 
IdVenta  '
)' (
;( )
List 
< 
Venta 
> 
GetVentasAsList #
(# $
)$ %
;% &
void 
EliminarVenta 
( 
int 
? 
IdVenta  '
)' (
;( )
List 
< 
Venta 
> "
GetVentasDeUsuarioById *
(* +
int+ .
?. /
	IdUsuario0 9
)9 :
;: ;
List 
< 
DetalleVenta 
> "
GetDetalleVentasAsList 1
(1 2
)2 3
;3 4
void 
GuardarVenta 
( 
Usuario !
usuario" )
,) *
List+ /
</ 0
CarritoCompras0 >
>> ?
	productos@ I
,I J
	DireccionK T
	direccionU ^
,^ _
byte` d

TipoDePagoe o
)o p
;p q
List 
< 
ListaFavoritos 
> )
GetListaFavoritosByUserAsList :
(: ;
int; >
?> ?
	IdUsuario@ I
)I J
;J K
bool 4
(ExisteProductIdAndUserIdEnListaFavoritos 5
(5 6
int6 9
?9 :
	IdUsuario; D
,D E
intF I
?I J

IdProductoK U
)U V
;V W
void !
AgregarProductoALista "
(" #
Usuario# *
usuario+ 2
,2 3
Producto4 <
producto= E
)E F
;F G
void #
EliminarProductoDeLista $
($ %
int% (
?( )

IdProducto* 4
,4 5
int6 9
?9 :
	IdUsuario; D
)D E
;E F
List 
< 
CarritoCompras 
> )
GetCarritoComprasByUserAsList :
(: ;
int; >
?> ?
	IdUsuario@ I
)I J
;J K
CarritoCompras 1
%GetCarritoComprasByProductIdAndUserId <
(< =
int= @
?@ A
	IdUsuarioB K
,K L
intM P
?P Q

IdProductoR \
)\ ]
;] ^
bool 4
(ExisteProductIdAndUserIdEnCarritoCompras 5
(5 6
int6 9
?9 :
	IdUsuario; D
,D E
intF I
?I J

IdProductoK U
)U V
;V W
void *
AgregarProductoACarritoCompras +
(+ ,
Usuario, 3
usuario4 ;
,; <
Producto= E
productoF N
,N O
intP S
cantidadT \
)\ ]
;] ^
void 1
%ActualizarCantidadByIdProductoCarrito 2
(2 3
int3 6
?6 7

IdProducto8 B
,B C
intD G
?G H
	IdUsuarioI R
,R S
intT W
NuevaCantidadX e
)e f
;f g
void ,
 EliminarProductoDeCarritoCompras -
(- .
int. 1
?1 2

IdProducto3 =
,= >
int? B
?B C
	IdUsuarioD M
)M N
;N O
} 
} Ô
uC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Manager\AutManager.cs
	namespace		 	
ECOMMERCE_TRESB		
 
.		 
Manager		 !
{

 
public 

class 

AutManager 
: 
IAutManager )
{ 
public 
void 
Login 
( 
Usuario !
Usuario" )
)) *
{ 	
FormsAuthentication 
.  
SetAuthCookie  -
(- .
Usuario. 5
.5 6
Email6 ;
,; <
false= B
)B C
;C D
HttpContext 
. 
Current 
.  
Session  '
[' (
$str( 1
]1 2
=3 4
Usuario5 <
;< =
} 	
public 
void 
Logout 
( 
) 
{ 	
FormsAuthentication 
.  
SignOut  '
(' (
)( )
;) *
} 	
public 
Usuario 
GetLoggedUser $
($ %
)% &
{ 	
return 
( 
Usuario 
) 
HttpContext '
.' (
Current( /
./ 0
Session0 7
[7 8
$str8 A
]A B
;B C
} 	
} 
} ˆ
vC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Manager\IAutManager.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Manager !
{		 
public

 

	interface

 
IAutManager

  
{ 
void 
Login 
( 
Usuario 
Usuario "
)" #
;# $
void 
Logout 
( 
) 
; 
Usuario 
GetLoggedUser 
( 
) 
;  
} 
} Ê	
xC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Models\CarritoCompras.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Models  
{ 
public 

class 
CarritoCompras 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
int 

IdProducto 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Cantidad 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
	IdUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Producto 
	Productos !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Usuario 
Usuario 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} º
sC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Models\Categoria.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Models  
{ 
public 

class 
	Categoria 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
List 
< 
Producto 
> 
	Productos '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ˙

uC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Models\Comentarios.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Models  
{ 
public 

class 
Comentarios 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
string 
Texto 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
Fecha 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	IdUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

IdProducto 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Producto 
Producto  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Usuario 
Usuario 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} õ
vC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Models\DetalleVenta.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Models  
{ 
public 

class 
DetalleVenta 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
int 
IdVenta 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 

IdProducto 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Decimal 
Subtotal 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Cantidad 
{ 
get !
;! "
set# &
;& '
}( )
public 
Decimal 
PrecioUnitario %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
Venta 
Venta 
{ 
get  
;  !
set" %
;% &
}' (
public 
Producto 
Producto  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ◊
sC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Models\Direccion.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Models  
{ 
public 

class 
	Direccion 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
string 
Calle 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Pais 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Region 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Ciudad 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
CodigoPostal "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
	IdUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Usuario 
Usuario 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
List 
< 
Venta 
> 
Ventas !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Õ
xC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Models\ListaFavoritos.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Models  
{ 
public 

class 
ListaFavoritos 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
int 

IdProducto 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	IdUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Producto 
	Productos !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Usuario 
Usuario 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} •
rC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Models\Producto.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Models  
{ 
public 

class 
Producto 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
int 
IdCategoria 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 

RutaImagen  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
Stock 
{ 
get 
; 
set  #
;# $
}% &
public 
Decimal 
PrecioUnitario %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
	Categoria 
	Categoria "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< 
DetalleVenta  
>  !
DetallesVenta" /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
List 
< 
ListaFavoritos "
>" #
ProductosFavoritos$ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
List 
< 
CarritoCompras "
>" #%
ProductosDeCarritoCompras$ =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
List 
< 
Comentarios 
>  
Comentarios! ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} °
qC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Models\Usuario.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Models  
{ 
public 

class 
Usuario 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Clave 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Salt 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Nombres 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	Apellidos 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
Sexo 
{ 
get 
; 
set  #
;# $
}% &
public 
DateTime 
FechaNacimiento '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
Celular 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Byte 
TipoUsuario 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
FechaRegistro %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
List 
< 
Venta 
> 
Ventas !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
List 
< 
ListaFavoritos "
>" #
	Favoritos$ -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
List 
< 
CarritoCompras "
>" #
CarritoDeCompras$ 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
List 
< 
	Direccion 
> 
Direcciones *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
List 
< 
Comentarios 
>  
Comentarios! ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} Ë
oC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Models\Venta.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Models  
{ 
public 

class 
Venta 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
int 
	IdUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
Fecha 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Decimal 

MontoTotal !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
byte 
TipoPago 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
IdDireccion 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Usuario 
Usuario 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
List 
< 
DetalleVenta  
>  !
DetallesVenta" /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
	Direccion 
	Direccion "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ˝
{C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\ModelViews\CategoriaView.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

ModelViews $
{ 
public		 

class		 
CategoriaView		 
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ı	
~C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\ModelViews\DetalleVentaView.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

ModelViews $
{ 
public 

class 
DetalleVentaView !
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
int 
IdVenta 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 

IdProducto 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Decimal 
Subtotal 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Cantidad 
{ 
get !
;! "
set# &
;& '
}( )
public 
Decimal 
PrecioUnitario %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ’
{C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\ModelViews\DireccionView.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

ModelViews $
{ 
public		 

class		 
DireccionView		 
{

 
public 
string 
Calle 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Pais 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Region 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Ciudad 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
CodigoPostal "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} Õ
zC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\ModelViews\ProductoView.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

ModelViews $
{ 
public		 

class		 
ProductoView		 
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
Stock 
{ 
get 
; 
set  #
;# $
}% &
public 
Decimal 
PrecioUnitario %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 

RutaImagen  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
IdCategoria 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
HttpPostedFileBase !
Imagen" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ∞
C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\ModelViews\UsuarioEditarView.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

ModelViews $
{ 
public		 

class		 
UsuarioEditarView		 "
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Nombres 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	Apellidos 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
Sexo 
{ 
get 
; 
set  #
;# $
}% &
public 
DateTime 
FechaNacimiento '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
Celular 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Byte 
TipoUsuario 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ›
ÉC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\ModelViews\UsuarioPerfilEditView.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

ModelViews $
{ 
public		 

class		 !
UsuarioPerfilEditView		 &
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Nombres 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	Apellidos 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
Sexo 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Celular 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Ø
yC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\ModelViews\UsuarioView.cs
	namespace

 	
ECOMMERCE_TRESB


 
.

 

ModelViews

 $
{ 
public 

class 
UsuarioView 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
DataType	 
( 
DataType 
. 
EmailAddress '
)' (
]( )
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
Clave 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Salt 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Nombres 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	Apellidos 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
Sexo 
{ 
get 
; 
set  #
;# $
}% &
public 
DateTime 
FechaNacimiento '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public   
string   
Celular   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public"" 
Byte"" 
TipoUsuario"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
public## 
DateTime## 
FechaRegistro## %
{##& '
get##( +
;##+ ,
set##- 0
;##0 1
}##2 3
public$$ 
bool$$ 
IsActive$$ 
{$$ 
get$$ "
;$$" #
set$$$ '
;$$' (
}$$) *
}%% 
}&& ˆ
wC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\ModelViews\VentaView.cs
	namespace 	
ECOMMERCE_TRESB
 
. 

ModelViews $
{ 
public		 

class		 
ProductoVentaView		 "
{

 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
int 
precio 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
cantidad 
{ 
get !
;! "
set# &
;& '
}( )
} 
public 

class 
	VentaView 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
int 
	IdUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Decimal 

MontoTotal !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
byte 
TipoPago 
{ 
get "
;" #
set$ '
;' (
}) *
public 
List 
< 
ProductoVentaView %
>% &
	Productos' 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
List 
< 
int 
> 
Cantidad !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} •
zC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str *
)* +
]+ ,
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *¯,
|C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Services\CategoriaService.cs
	namespace

 	
ECOMMERCE_TRESB


 
.

 
Services

 "
{ 
public 

class 
CategoriaService !
:" #
ICategoriaService$ 5
{ 
private 
readonly 

DbConexion #
conexion$ ,
;, -
public 
CategoriaService 
(  

DbConexion  *
conexion+ 3
)3 4
{ 	
this 
. 
conexion 
= 
conexion $
;$ %
} 	
public 
	Categoria 
GetCategoriaById )
() *
int* -
?- .
IdCategoria/ :
): ;
{ 	
if 
( 
IdCategoria 
== 
null #
)# $
return 
null 
; 
	Categoria 
	categoria 
=  !
conexion" *
.* +

Categorias+ 5
.5 6
Where6 ;
(; <
o< =
=>> @
oA B
.B C
IdC E
==F H
IdCategoriaI T
)T U
.U V
FirstOrDefaultV d
(d e
)e f
;f g
return 
	categoria 
; 
} 	
public 
List 
< 
	Categoria 
> 
GetCategoriasAsList 2
(2 3
)3 4
{ 	
return   
conexion   
.   

Categorias   &
.  & '
ToList  ' -
(  - .
)  . /
;  / 0
}!! 	
public## 
	Categoria## $
CategoriaViewToCategoria## 1
(##1 2
CategoriaView##2 ?
CategoriaView##@ M
)##M N
{$$ 	
return%% 
new%% 
	Categoria%%  
{&& 
Id'' 
='' 
CategoriaView'' "
.''" #
Id''# %
,''% &
Nombre(( 
=(( 
CategoriaView(( &
.((& '
Nombre((' -
})) 
;)) 
}** 	
public,, 
CategoriaView,, $
CategoriaToCategoriaView,, 5
(,,5 6
	Categoria,,6 ?
	Categoria,,@ I
),,I J
{-- 	
return.. 
new.. 
CategoriaView.. $
{// 
Id00 
=00 
	Categoria00 
.00 
Id00 !
,00! "
Nombre11 
=11 
	Categoria11 "
.11" #
Nombre11# )
}22 
;22 
}33 	
public55 
bool55 
ExisteCategoria55 #
(55# $
string55$ *
nombre55+ 1
)551 2
{66 	
if77 
(77 
conexion77 
.77 

Categorias77 #
.77# $
Any77$ '
(77' (
u77( )
=>77* ,
u77- .
.77. /
Nombre77/ 5
==776 8
nombre779 ?
)77? @
)77@ A
return88 
true88 
;88 
return99 
false99 
;99 
}:: 	
public<< 
void<< 
GuardarCategoria<< $
(<<$ %
	Categoria<<% .
	Categoria<</ 8
)<<8 9
{== 	
conexion>> 
.>> 

Categorias>> 
.>>  
Add>>  #
(>># $
	Categoria>>$ -
)>>- .
;>>. /
conexion?? 
.?? 
SaveChanges??  
(??  !
)??! "
;??" #
}@@ 	
publicBB 
voidBB 
EditarCategoriaBB #
(BB# $
intBB$ '
?BB' (
IdCategoriaBB) 4
,BB4 5
	CategoriaBB6 ?
	CategoriaBB@ I
)BBI J
{CC 	
varDD 
CategoriaDBDD 
=DD 
GetCategoriaByIdDD .
(DD. /
IdCategoriaDD/ :
)DD: ;
;DD; <
CategoriaDBEE 
.EE 
NombreEE 
=EE  
	CategoriaEE! *
.EE* +
NombreEE+ 1
;EE1 2
conexionFF 
.FF 
SaveChangesFF  
(FF  !
)FF! "
;FF" #
}GG 	
publicII 
voidII 
EliminarCategoriaII %
(II% &
intII& )
?II) *
IdCategoriaII+ 6
)II6 7
{JJ 	
varKK 
	categoriaKK 
=KK 
GetCategoriaByIdKK ,
(KK, -
IdCategoriaKK- 8
)KK8 9
;KK9 :
conexionLL 
.LL 

CategoriasLL 
.LL  
RemoveLL  &
(LL& '
	categoriaLL' 0
)LL0 1
;LL1 2
conexionMM 
.MM 
SaveChangesMM  
(MM  !
)MM! "
;MM" #
}NN 	
publicPP 
boolPP "
CategoriaTieneProductoPP *
(PP* +
intPP+ .
?PP. /
IdCategoriaPP0 ;
)PP; <
{QQ 	
ifRR 
(RR 
conexionRR 
.RR 
	ProductosRR "
.RR" #
AnyRR# &
(RR& '
pRR' (
=>RR) +
pRR, -
.RR- .
IdCategoriaRR. 9
==RR: <
IdCategoriaRR= H
)RRH I
)RRI J
returnSS 
trueSS 
;SS 
returnUU 
falseUU 
;UU 
}VV 	
}WW 
}XX ˛0
~C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Services\ComentariosSerivce.cs
	namespace		 	
ECOMMERCE_TRESB		
 
.		 
Services		 "
{

 
public 

class 
ComentariosSerivce #
:$ %
IComentariosSerivce& 9
{ 
private 
readonly 

DbConexion #
conexion$ ,
;, -
public 
ComentariosSerivce !
(! "

DbConexion" ,
conexion- 5
)5 6
{ 	
this 
. 
conexion 
= 
conexion $
;$ %
} 	
public 
Comentarios 
GetComentarioById ,
(, -
int- 0
?0 1
IdComentario2 >
)> ?
{ 	
if 
( 
IdComentario 
== 
null  $
)$ %
return 
null 
; 
Comentarios 

comentario "
=# $
conexion% -
.- .

Comentario. 8
.8 9
Where9 >
(> ?
o? @
=>A C
oD E
.E F
IdF H
==I K
IdComentarioL X
)X Y
.Y Z
FirstOrDefaultZ h
(h i
)i j
;j k
return 

comentario 
; 
} 	
public 
List 
< 
Comentarios 
>   
GetComentariosAsList! 5
(5 6
)6 7
{ 	
return 
conexion 
. 

Comentario &
.& '
Include' .
(. /
u/ 0
=>1 3
u4 5
.5 6
Usuario6 =
)= >
.> ?
Include? F
(F G
pG H
=>I K
pL M
.M N
ProductoN V
)V W
.W X
ToListX ^
(^ _
)_ `
;` a
} 	
public 
List 
< 
Comentarios 
>  +
GetComentariosAsListByProductId! @
(@ A
intA D
?D E

IdProductoF P
)P Q
{   	
return!! 
conexion!! 
.!! 

Comentario!! &
.!!& '
Where!!' ,
(!!, -
p!!- .
=>!!/ 1
p!!2 3
.!!3 4

IdProducto!!4 >
==!!? A

IdProducto!!B L
)!!L M
.!!M N
Include!!N U
(!!U V
u!!V W
=>!!X Z
u!![ \
.!!\ ]
Usuario!!] d
)!!d e
.!!e f
ToList!!f l
(!!l m
)!!m n
;!!n o
}## 	
public$$ 
void$$ 
GuardarComentario$$ %
($$% &
Usuario$$& -
usuario$$. 5
,$$5 6
Producto$$7 ?
producto$$@ H
,$$H I
string$$J P
Texto$$Q V
)$$V W
{%% 	
Comentarios&& 

comentario&& "
=&&# $
new&&% (
Comentarios&&) 4
{'' 
Texto(( 
=(( 
Texto(( 
,(( 
Fecha)) 
=)) 
DateTime))  
.))  !
Now))! $
,))$ %
	IdUsuario** 
=** 
usuario** #
.**# $
Id**$ &
,**& '

IdProducto++ 
=++ 
producto++ %
.++% &
Id++& (
},, 
;,, 
conexion.. 
... 

Comentario.. 
...  
Add..  #
(..# $

comentario..$ .
)... /
;../ 0
conexion// 
.// 
SaveChanges//  
(//  !
)//! "
;//" #
}00 	
public11 
void11 
EditarComentario11 $
(11$ %
int11% (
?11( )
IdComentario11* 6
,116 7
Comentarios118 C

Comentario11D N
)11N O
{22 	
var33 
ComentarioDB33 
=33 
GetComentarioById33 0
(330 1
IdComentario331 =
)33= >
;33> ?
ComentarioDB44 
.44 
Texto44 
=44  

Comentario44! +
.44+ ,
Texto44, 1
;441 2
conexion55 
.55 
SaveChanges55  
(55  !
)55! "
;55" #
}66 	
public77 
void77 
EliminarComentario77 &
(77& '
int77' *
?77* +
IdComentario77, 8
)778 9
{88 	
var99 

comentario99 
=99 
GetComentarioById99 .
(99. /
IdComentario99/ ;
)99; <
;99< =
conexion:: 
.:: 

Comentario:: 
.::  
Remove::  &
(::& '

comentario::' 1
)::1 2
;::2 3
conexion;; 
.;; 
SaveChanges;;  
(;;  !
);;! "
;;;" #
}<< 	
public>> 
bool>> 1
%ExisteProductIdAndUserIdEnComentarios>> 9
(>>9 :
int>>: =
?>>= >
	IdUsuario>>? H
,>>H I
int>>J M
?>>M N

IdProducto>>O Y
)>>Y Z
{?? 	
var@@ 
ComentariosDB@@ 
=@@  
GetComentariosAsList@@  4
(@@4 5
)@@5 6
;@@6 7
foreachAA 
(AA 
varAA 

comentarioAA #
inAA$ &
ComentariosDBAA' 4
)AA4 5
{BB 
ifCC 
(CC 

comentarioCC 
.CC 

IdProductoCC )
==CC* ,

IdProductoCC- 7
&&CC8 :

comentarioCC; E
.CCE F
	IdUsuarioCCF O
==CCP R
	IdUsuarioCCS \
)CC\ ]
returnDD 
trueDD 
;DD  
}EE 
returnFF 
falseFF 
;FF 
}GG 	
}HH 
}II ´
C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Services\DetalleVentaService.cs
	namespace

 	
ECOMMERCE_TRESB


 
.

 
Services

 "
{ 
public 

class 
DetalleVentaService $
:% & 
IDetalleVentaService' ;
{ 
private 
readonly 

DbConexion #
conexion$ ,
;, -
public 
DetalleVentaService "
(" #

DbConexion# -
conexion. 6
)6 7
{ 	
this 
. 
conexion 
= 
conexion $
;$ %
} 	
public 
DetalleVenta 
GetDetalleVentaById /
(/ 0
int0 3
?3 4
IdDetalleVenta5 C
)C D
{ 	
if 
( 
IdDetalleVenta 
== !
null" &
)& '
return 
null 
; 
DetalleVenta 
DetalleDeVenta '
=( )
conexion* 2
.2 3
DetallesVenta3 @
.@ A
WhereA F
(F G
oG H
=>I K
oL M
.M N
IdN P
==Q S
IdDetalleVentaT b
)b c
.c d
FirstOrDefaultd r
(r s
)s t
;t u
return 
DetalleDeVenta !
;! "
} 	
public 
List 
< 
DetalleVenta  
>  !!
GetDetalleVentaAsList" 7
(7 8
)8 9
{ 	
return   
conexion   
.   
DetallesVenta   )
.  ) *
Include  * 1
(  1 2
v  2 3
=>  4 6
v  7 8
.  8 9
Venta  9 >
)  > ?
.  ? @
ToList  @ F
(  F G
)  G H
;  H I
}!! 	
}"" 
}## €
|C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Services\DireccionService.cs
	namespace		 	
ECOMMERCE_TRESB		
 
.		 
Services		 "
{

 
public 

class 
DireccionService !
:" #
IDireccionService$ 5
{ 
private 
readonly 

DbConexion #
conexion$ ,
;, -
public 
DireccionService 
(  

DbConexion  *
conexion+ 3
)3 4
{ 	
this 
. 
conexion 
= 
conexion $
;$ %
} 	
public 
	Direccion 
GetDireccionById )
() *
int* -
?- .
IdDireccion/ :
): ;
{ 	
if 
( 
IdDireccion 
== 
null #
)# $
return 
null 
; 
	Direccion 
	direccion 
=  !
conexion" *
.* +
	Direccion+ 4
.4 5
Where5 :
(: ;
o; <
=>= ?
o@ A
.A B
IdB D
==E G
IdDireccionH S
)S T
.T U
FirstOrDefaultU c
(c d
)d e
;e f
return 
	direccion 
; 
} 	
public 
List 
< 
	Direccion 
> 
GetDireccionAsList 1
(1 2
)2 3
{ 	
return 
conexion 
. 
	Direccion %
.% &
Include& -
(- .
u. /
=>0 2
u3 4
.4 5
Usuario5 <
)< =
.= >
ToList> D
(D E
)E F
;F G
}   	
public"" 
List"" 
<"" 
	Direccion"" 
>"" %
GetDireccionByUsuarioList"" 8
(""8 9
int""9 <
?""< =
	IdUsuario""> G
)""G H
{## 	
return$$ 
conexion$$ 
.$$ 
	Direccion$$ %
.$$% &
Where$$& +
($$+ ,
d$$, -
=>$$. 0
d$$1 2
.$$2 3
	IdUsuario$$3 <
==$$= ?
	IdUsuario$$@ I
)$$I J
.$$J K
Include$$K R
($$R S
u$$S T
=>$$U W
u$$X Y
.$$Y Z
Usuario$$Z a
)$$a b
.$$b c
ToList$$c i
($$i j
)$$j k
;$$k l
}%% 	
}&& 
}'' ¶
yC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Services\ImagenService.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Services "
{		 
public

 

class

 
ImagenService

 
:

  
IImagenService

! /
{ 
public 
string 
GetRutaImagen #
(# $
HttpPostedFileBase$ 6
Archivo7 >
,> ?
string@ F
CarpetaG N
)N O
{ 	
var 
Ruta 
= 
string 
. 
Empty #
;# $
var 
Imagen 
= 
string 
.  
Empty  %
;% &
if 
( 
Archivo 
!= 
null 
)  
{ 
Imagen 
= 
Path 
. 
GetFileName )
() *
Archivo* 1
.1 2
FileName2 :
): ;
;; <
Ruta 
= 
Path 
. 
Combine #
(# $
HttpContext$ /
./ 0
Current0 7
.7 8
Server8 >
.> ?
MapPath? F
(F G
CarpetaG N
)N O
,O P
ImagenQ W
)W X
;X Y
Archivo 
. 
SaveAs 
( 
Ruta #
)# $
;$ %
} 
return 
Imagen 
; 
} 	
} 
} ú
yC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Services\InfoAtributos.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Services "
{ 
public 

class 
InfoAtributos 
{		 
public

 
struct

 
TipoUsuario

 !
{ 	
public 
const 
byte 
CLIENTE %
=& '
$num( )
;) *
public 
const 
byte 
VENDEDOR &
=' (
$num) *
;* +
public 
const 
byte 
ADMINISTRADOR +
=, -
$num. /
;/ 0
} 	
public 
struct 
Sexo 
{ 	
public 
const 
bool 
	MASCULINO '
=( )
true* .
;. /
public 
const 
bool 
FEMENINO &
=' (
false) .
;. /
} 	
public 
struct 
EstadoCuenta "
{ 	
public 
const 
bool 
ACTIVO $
=% &
true' +
;+ ,
public 
const 
bool 
INACTIVO &
=' (
false) .
;. /
} 	
public 
struct 
TipoPago 
{ 	
public 
const 
byte 
EFECTIVO &
=' (
$num) *
;* +
public   
const   
byte   
TARJETA_DEBITO   ,
=  - .
$num  / 0
;  0 1
public!! 
const!! 
byte!! 
TARJETA_CREDITO!! -
=!!. /
$num!!0 1
;!!1 2
}"" 	
public$$ 
struct$$ 
Error$$ 
{%% 	
public&& 
const&& 
string&& 
CORREO_REGISTRADO&&  1
=&&2 3
$str&&4 k
;&&k l
public'' 
const'' 
string'' &
CORREO_O_CLAVE_INCORRECTOS''  :
=''; <
$str''= h
;''h i
}(( 	
public** 
struct** 
Filtros** 
{++ 	
public,, 
const,, 
int,, 
MAS_VENDIDOS,, )
=,,* +
$num,,, -
;,,- .
public-- 
const-- 
int-- 
NEW_ARRIVALS-- )
=--* +
$num--, -
;--- .
}.. 	
}// 
}00 ˜w
{C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Services\ProductoService.cs
	namespace

 	
ECOMMERCE_TRESB


 
.

 
Services

 "
{ 
public 

class 
ProductoService  
:! "
IProductoService# 3
{ 
private 
readonly 

DbConexion #
conexion$ ,
;, -
private 
readonly 
ImagenService &
serviceImage' 3
;3 4
public 
ProductoService 
( 

DbConexion )
conexion* 2
)2 3
{ 	
this 
. 
conexion 
= 
conexion $
;$ %
serviceImage 
= 
new 
ImagenService ,
(, -
)- .
;. /
} 	
public 
int '
CountProductosByCategoriaId .
(/ 0
int0 3
?3 4
IdCategoria5 @
)@ A
{ 	
if 
( 
IdCategoria 
== 
null #
)# $
return 
$num 
; 
return 
conexion 
. 
	Productos %
.% &
Where& +
(+ ,
o, -
=>. 0
o1 2
.2 3
IdCategoria3 >
==? A
IdCategoriaB M
&&N P
oQ R
.R S
StockS X
>Y Z
$num[ \
&&] _
o` a
.a b
IsActiveb j
==k m
truen r
)r s
.s t
Countt y
(y z
)z {
;{ |
} 	
public 
int 
GetTotalPages  
(  !
int! $
?$ %
IdCategoria& 1
)1 2
{   	
if!! 
(!! 
IdCategoria!! 
==!! 
null!! #
)!!# $
return"" 
$num"" 
;"" 
int$$ 
TotalProductos$$ 
=$$  '
CountProductosByCategoriaId$$! <
($$< =
IdCategoria$$= H
)$$H I
;$$I J
if&& 
(&& 
TotalProductos&& 
%&&  
$num&&! #
>&&$ %
$num&&& '
)&&' (
return'' 
TotalProductos'' %
/''& '
$num''( *
+''+ ,
$num''- .
;''. /
return)) 
TotalProductos)) !
/))" #
$num))$ &
;))& '
}** 	
public,, 
Producto,, 
GetProductoById,, '
(,,' (
int,,( +
?,,+ ,

IdProducto,,- 7
),,7 8
{-- 	
if.. 
(.. 

IdProducto.. 
==.. 
null.. "
).." #
return// 
null// 
;// 
Producto11 
producto11 
=11 
conexion11  (
.11( )
	Productos11) 2
.112 3
Where113 8
(118 9
o119 :
=>11; =
o11> ?
.11? @
Id11@ B
==11C E

IdProducto11F P
)11P Q
.11Q R
Include11R Y
(11Y Z
c11Z [
=>11\ ^
c11_ `
.11` a
	Categoria11a j
)11j k
.11k l
FirstOrDefault11l z
(11z {
)11{ |
;11| }
return22 
producto22 
;22 
}33 	
public55 
List55 
<55 
Producto55 
>55 
GetProductosAsList55 0
(550 1
)551 2
{66 	
return77 
conexion77 
.77 
	Productos77 %
.77% &
Include77& -
(77- .
c77. /
=>770 2
c773 4
.774 5
	Categoria775 >
)77> ?
.77? @
ToList77@ F
(77F G
)77G H
;77H I
}88 	
public:: 
Producto:: !
ProductViewToProducto:: -
(::- .
ProductoView::. :
ProductoView::; G
)::G H
{;; 	
return<< 
new<< 
Producto<< 
{== 
Id>> 
=>> 
ProductoView>> !
.>>! "
Id>>" $
,>>$ %
Nombre?? 
=?? 
ProductoView?? %
.??% &
Nombre??& ,
,??, -
Descripcion@@ 
=@@ 
ProductoView@@ *
.@@* +
Descripcion@@+ 6
,@@6 7

RutaImagenAA 
=AA 
ProductoViewAA )
.AA) *

RutaImagenAA* 4
,AA4 5
StockBB 
=BB 
ProductoViewBB $
.BB$ %
StockBB% *
,BB* +
PrecioUnitarioCC 
=CC  
ProductoViewCC! -
.CC- .
PrecioUnitarioCC. <
,CC< =
IsActiveDD 
=DD 
ProductoViewDD '
.DD' (
IsActiveDD( 0
,DD0 1
IdCategoriaEE 
=EE 
ProductoViewEE *
.EE* +
IdCategoriaEE+ 6
}FF 
;FF 
}GG 	
publicII 
ProductoViewII !
ProductoToProductViewII 1
(II1 2
ProductoII2 :
ProductoII; C
)IIC D
{JJ 	
returnKK 
newKK 
ProductoViewKK #
{LL 
IdMM 
=MM 
ProductoMM 
.MM 
IdMM  
,MM  !
NombreNN 
=NN 
ProductoNN !
.NN! "
NombreNN" (
,NN( )
DescripcionOO 
=OO 
ProductoOO &
.OO& '
DescripcionOO' 2
,OO2 3

RutaImagenPP 
=PP 
ProductoPP %
.PP% &

RutaImagenPP& 0
,PP0 1
StockQQ 
=QQ 
ProductoQQ  
.QQ  !
StockQQ! &
,QQ& '
PrecioUnitarioRR 
=RR  
ProductoRR! )
.RR) *
PrecioUnitarioRR* 8
,RR8 9
IsActiveSS 
=SS 
ProductoSS #
.SS# $
IsActiveSS$ ,
,SS, -
IdCategoriaTT 
=TT 
ProductoTT &
.TT& '
IdCategoriaTT' 2
}UU 
;UU 
}VV 	
publicXX 
ProductoXX 
AsignarRutaDeImagenXX +
(XX+ ,
ProductoViewXX, 8
ProductoViewXX9 E
,XXE F
ProductoXXG O
ProductoXXP X
)XXX Y
{YY 	
varZZ 

RutaImagenZZ 
=ZZ 
stringZZ #
.ZZ# $
EmptyZZ$ )
;ZZ) *
var[[ 
Carpeta[[ 
=[[ 
$str[[ 0
;[[0 1
if]] 
(]] 
ProductoView]] 
.]] 

RutaImagen]] '
!=]]( *
null]]+ /
)]]/ 0

RutaImagen^^ 
=^^ 
ProductoView^^ )
.^^) *

RutaImagen^^* 4
;^^4 5
if`` 
(`` 
ProductoView`` 
.`` 
Imagen`` #
!=``$ &
null``' +
)``+ ,
{aa 

RutaImagenbb 
=bb 
serviceImagebb )
.bb) *
GetRutaImagenbb* 7
(bb7 8
ProductoViewbb8 D
.bbD E
ImagenbbE K
,bbK L
CarpetabbM T
)bbT U
;bbU V

RutaImagencc 
=cc 
stringcc #
.cc# $
Formatcc$ *
(cc* +
$strcc+ 4
,cc4 5
Carpetacc6 =
,cc= >

RutaImagencc? I
)ccI J
;ccJ K
}dd 
Productoff 
.ff 

RutaImagenff 
=ff  !

RutaImagenff" ,
;ff, -
returngg 
Productogg 
;gg 
}hh 	
publicjj 
voidjj 
GuardarProductojj #
(jj# $
Productojj$ ,
Productojj- 5
)jj5 6
{kk 	
conexionll 
.ll 
	Productosll 
.ll 
Addll "
(ll" #
Productoll# +
)ll+ ,
;ll, -
conexionmm 
.mm 
SaveChangesmm  
(mm  !
)mm! "
;mm" #
}nn 	
publicpp 
voidpp 
EditarProductopp "
(pp" #
intpp# &
?pp& '

IdProductopp( 2
,pp2 3
Productopp4 <
Productopp= E
)ppE F
{qq 	
varrr 

productoDBrr 
=rr 
GetProductoByIdrr ,
(rr, -

IdProductorr- 7
)rr7 8
;rr8 9

productoDBss 
.ss 
Nombress 
=ss 
Productoss  (
.ss( )
Nombress) /
;ss/ 0

productoDBtt 
.tt 
Descripciontt "
=tt# $
Productott% -
.tt- .
Descripciontt. 9
;tt9 :

productoDBuu 
.uu 
Stockuu 
=uu 
Productouu '
.uu' (
Stockuu( -
;uu- .

productoDBvv 
.vv 
PrecioUnitariovv %
=vv& '
Productovv( 0
.vv0 1
PrecioUnitariovv1 ?
;vv? @

productoDBww 
.ww 

RutaImagenww !
=ww" #
Productoww$ ,
.ww, -

RutaImagenww- 7
;ww7 8

productoDBxx 
.xx 
IsActivexx 
=xx  !
Productoxx" *
.xx* +
IsActivexx+ 3
;xx3 4

productoDByy 
.yy 
IdCategoriayy "
=yy# $
Productoyy% -
.yy- .
IdCategoriayy. 9
;yy9 :
conexionzz 
.zz 
SaveChangeszz  
(zz  !
)zz! "
;zz" #
}{{ 	
public}} 
void}} 
EliminarProducto}} $
(}}$ %
int}}% (
?}}( )

IdProducto}}* 4
)}}4 5
{~~ 	
var 
producto 
= 
GetProductoById *
(* +

IdProducto+ 5
)5 6
;6 7
conexion
ÄÄ 
.
ÄÄ 
	Productos
ÄÄ 
.
ÄÄ 
Remove
ÄÄ %
(
ÄÄ% &
producto
ÄÄ& .
)
ÄÄ. /
;
ÄÄ/ 0
conexion
ÅÅ 
.
ÅÅ 
SaveChanges
ÅÅ  
(
ÅÅ  !
)
ÅÅ! "
;
ÅÅ" #
}
ÇÇ 	
public
ÑÑ 
List
ÑÑ 
<
ÑÑ 
Producto
ÑÑ 
>
ÑÑ )
GetProductsAsListByCategory
ÑÑ 9
(
ÑÑ9 :
int
ÑÑ: =
IdCategoria
ÑÑ> I
,
ÑÑI J
int
ÑÑK N
Page
ÑÑO S
,
ÑÑS T
int
ÑÑU X
NumItems
ÑÑY a
)
ÑÑa b
{
ÖÖ 	
List
áá 
<
áá 
Producto
áá 
>
áá 
	productos
áá $
=
áá& '
conexion
áá( 0
.
áá0 1
	Productos
áá1 :
.
áá: ;
Where
àà, 1
(
àà1 2
o
àà2 3
=>
àà4 6
o
àà7 8
.
àà8 9
IdCategoria
àà9 D
==
ààE G
IdCategoria
ààH S
&&
ààT V
o
ààW X
.
ààX Y
Stock
ààY ^
>
àà_ `
$num
ààa b
&&
ààc e
o
ààf g
.
ààg h
IsActive
ààh p
==
ààq s
true
ààt x
)
ààx y
.
àày z
OrderBy
ââ, 3
(
ââ3 4
o
ââ4 5
=>
ââ6 8
o
ââ9 :
.
ââ: ;
Id
ââ; =
)
ââ= >
.
ââ> ?
Skip
ää, 0
(
ää0 1
(
ää1 2
Page
ää2 6
-
ää7 8
$num
ää9 :
)
ää: ;
*
ää< =
NumItems
ää> F
)
ääF G
.
ääG H
Take
ãã, 0
(
ãã0 1
NumItems
ãã1 9
)
ãã9 :
.
ãã: ;
ToList
åå, 2
(
åå2 3
)
åå3 4
;
åå4 5
return
éé 
	productos
éé 
;
éé 
}
èè 	
public
ëë 
bool
ëë #
SiExistenLosProductos
ëë )
(
ëë) *
List
ëë* .
<
ëë. /
CarritoCompras
ëë/ =
>
ëë= >
	productos
ëë? H
)
ëëH I
{
íí 	
foreach
ìì 
(
ìì 
var
ìì 
producto
ìì !
in
ìì" $
	productos
ìì% .
)
ìì. /
if
îî 
(
îî 
GetProductoById
îî #
(
îî# $
producto
îî$ ,
.
îî, -

IdProducto
îî- 7
)
îî7 8
==
îî9 ;
null
îî< @
)
îî@ A
return
ïï 
false
ïï  
;
ïï  !
return
óó 
true
óó 
;
óó 
}
òò 	
public
öö 
bool
öö "
SiHayStockDisponible
öö (
(
öö( )
List
öö) -
<
öö- .
CarritoCompras
öö. <
>
öö< =
	productos
öö> G
)
ööG H
{
õõ 	
Producto
úú 

productoBd
úú 
;
úú  
foreach
ûû 
(
ûû 
var
ûû 
producto
ûû !
in
ûû" $
	productos
ûû% .
)
ûû. /
{
üü 

productoBd
†† 
=
†† 
GetProductoById
†† ,
(
††, -
producto
††- 5
.
††5 6

IdProducto
††6 @
)
††@ A
;
††A B
if
°° 
(
°° 

productoBd
°° 
.
°° 
Stock
°° $
<
°°% &
producto
°°' /
.
°°/ 0
Cantidad
°°0 8
)
°°8 9
return
¢¢ 
false
¢¢  
;
¢¢  !
}
££ 
return
•• 
true
•• 
;
•• 
}
¶¶ 	
public
®® 
void
®® 
ActualizarStock
®® #
(
®®# $
List
®®$ (
<
®®( )
CarritoCompras
®®) 7
>
®®7 8
	productos
®®9 B
)
®®B C
{
©© 	
Producto
™™ 

productoBd
™™ 
;
™™  
foreach
¨¨ 
(
¨¨ 
var
¨¨ 
producto
¨¨ !
in
¨¨" $
	productos
¨¨% .
)
¨¨. /
{
≠≠ 

productoBd
ÆÆ 
=
ÆÆ 
conexion
ÆÆ %
.
ÆÆ% &
	Productos
ÆÆ& /
.
ÆÆ/ 0
Where
ÆÆ0 5
(
ÆÆ5 6
o
ÆÆ6 7
=>
ÆÆ8 :
o
ÆÆ; <
.
ÆÆ< =
Id
ÆÆ= ?
==
ÆÆ@ B
producto
ÆÆC K
.
ÆÆK L

IdProducto
ÆÆL V
)
ÆÆV W
.
ÆÆW X
FirstOrDefault
ÆÆX f
(
ÆÆf g
)
ÆÆg h
;
ÆÆh i

productoBd
ØØ 
.
ØØ 
Stock
ØØ  
-=
ØØ! #
producto
ØØ$ ,
.
ØØ, -
Cantidad
ØØ- 5
;
ØØ5 6
conexion
∞∞ 
.
∞∞ 
SaveChanges
∞∞ $
(
∞∞$ %
)
∞∞% &
;
∞∞& '
}
±± 
}
≤≤ 	
}
≥≥ 
}¥¥ ß>
zC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Services\SessionService.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Services "
{		 
public

 

class

 
SessionService

 
:

  !
ISessionService

" 1
{ 
private 
readonly 
HttpContext $
contexto% -
;- .
private 
readonly 
UsuarioService '
usuarioService( 6
;6 7
private 
readonly 

DbConexion #
conexion$ ,
;, -
public 
SessionService 
( 
) 
{ 	
contexto 
= 
HttpContext "
." #
Current# *
;* +
conexion 
= 
new 

DbConexion %
(% &
)& '
;' (
usuarioService 
= 
new  
UsuarioService! /
(/ 0
conexion0 8
)8 9
;9 :
} 	
public 
void 
GuardarSesion !
(! "
Usuario" )
Usuario* 1
)1 2
{ 	
contexto 
. 
Session 
[ 
$str (
]( )
=* +
Usuario, 3
.3 4
Id4 6
.6 7
ToString7 ?
(? @
)@ A
;A B
contexto 
. 
Session 
[ 
$str &
]& '
=( )
Usuario* 1
.1 2
Nombres2 9
.9 :
ToString: B
(B C
)C D
;D E
contexto 
. 
Session 
[ 
$str (
]( )
=* +
Usuario, 3
.3 4
	Apellidos4 =
.= >
ToString> F
(F G
)G H
;H I
contexto 
. 
Session 
[ 
$str $
]$ %
=& '
Usuario( /
./ 0
TipoUsuario0 ;
.; <
ToString< D
(D E
)E F
;F G
contexto 
. 
Session 
[ 
$str '
]' (
=) *
null+ /
;/ 0
} 	
public 
void 
LimpiarSesion !
(! "
)" #
{ 	
contexto   
.   
Session   
.   
Clear   "
(  " #
)  # $
;  $ %
}!! 	
public## 
bool## 
IsLogged## 
(## 
)## 
{$$ 	
if%% 
(%% 
contexto%% 
.%% 
Session%%  
[%%  !
$str%%! ,
]%%, -
!=%%. 0
null%%1 5
&&%%6 8
contexto%%9 A
.%%A B
Session%%B I
[%%I J
$str%%J Q
]%%Q R
!=%%S U
null%%V Z
)%%Z [
return&& 
true&& 
;&& 
return(( 
false(( 
;(( 
})) 	
public++ 
bool++ 
EsAdministrativo++ $
(++$ %
)++% &
{,, 	
if-- 
(-- 
IsLogged-- 
(-- 
)-- 
)-- 
{.. 
int// 
	UsuarioId// 
=// 
Convert//  '
.//' (
ToInt32//( /
(/// 0
contexto//0 8
.//8 9
Session//9 @
[//@ A
$str//A L
]//L M
)//M N
;//N O
Usuario00 
usuario00 
=00  !
usuarioService00" 0
.000 1
GetUsuarioById001 ?
(00? @
	UsuarioId00@ I
)00I J
;00J K
if11 
(11 
usuario11 
.11 
TipoUsuario11 '
==11( *
InfoAtributos11+ 8
.118 9
TipoUsuario119 D
.11D E
ADMINISTRADOR11E R
)11R S
return22 
true22 
;22  
}33 
return55 
false55 
;55 
}66 	
public88 
bool88  
EsPersonalDeLaTienda88 (
(88( )
)88) *
{99 	
if:: 
(:: 
IsLogged:: 
(:: 
):: 
):: 
{;; 
int<< 
	UsuarioId<< 
=<< 
Convert<<  '
.<<' (
ToInt32<<( /
(<</ 0
contexto<<0 8
.<<8 9
Session<<9 @
[<<@ A
$str<<A L
]<<L M
)<<M N
;<<N O
Usuario== 
usuario== 
===  !
usuarioService==" 0
.==0 1
GetUsuarioById==1 ?
(==? @
	UsuarioId==@ I
)==I J
;==J K
if>> 
(>> 
usuario>> 
.>> 
TipoUsuario>> '
==>>( *
InfoAtributos>>+ 8
.>>8 9
TipoUsuario>>9 D
.>>D E
VENDEDOR>>E M
||>>N P
usuario>>Q X
.>>X Y
TipoUsuario>>Y d
==>>e g
InfoAtributos>>h u
.>>u v
TipoUsuario	>>v Å
.
>>Å Ç
ADMINISTRADOR
>>Ç è
)
>>è ê
return?? 
true?? 
;??  
}@@ 
returnBB 
falseBB 
;BB 
}CC 	
publicEE 
boolEE 
EsSuSessionEE 
(EE  
intEE  #
?EE# $
	IdUsuarioEE% .
)EE. /
{FF 	
ifGG 
(GG 
IsLoggedGG 
(GG 
)GG 
)GG 
{HH 
intII 
	UsuarioIdII 
=II 
ConvertII  '
.II' (
ToInt32II( /
(II/ 0
contextoII0 8
.II8 9
SessionII9 @
[II@ A
$strIIA L
]IIL M
)IIM N
;IIN O
ifJJ 
(JJ 
	UsuarioIdJJ 
!=JJ  
	IdUsuarioJJ! *
)JJ* +
returnKK 
falseKK  
;KK  !
}LL 
returnMM 
trueMM 
;MM 
}NN 	
publicPP 
intPP $
ConvertirSessionIdAIntIdPP +
(PP+ ,
)PP, -
{QQ 	
intRR 
	UsuarioIdRR 
=RR 
ConvertRR #
.RR# $
ToInt32RR$ +
(RR+ ,
contextoRR, 4
.RR4 5
SessionRR5 <
[RR< =
$strRR= H
]RRH I
)RRI J
;RRJ K
returnSS 
	UsuarioIdSS 
;SS 
}TT 	
publicVV 
voidVV #
GuardarCarritoEnSessionVV +
(VV+ ,
ListVV, 0
<VV0 1
CarritoComprasVV1 ?
>VV? @
carritoComprasVVA O
)VVO P
{WW 	
contextoXX 
.XX 
SessionXX 
[XX 
$strXX -
]XX- .
=XX/ 0
carritoComprasXX1 ?
;XX? @
}YY 	
public[[ 
List[[ 
<[[ 
CarritoCompras[[ "
>[[" #.
"RetornarProductosDelCarritoSession[[$ F
([[F G
)[[G H
{\\ 	
List]] 
<]] 
CarritoCompras]] 
>]]  
productosDelCarrito]]! 4
=]]5 6
(]]7 8
List]]8 <
<]]< =
CarritoCompras]]= K
>]]K L
)]]L M
contexto]]M U
.]]U V
Session]]V ]
[]]] ^
$str]]^ n
]]]n o
;]]o p
return^^ 
productosDelCarrito^^ &
;^^& '
}`` 	
}aa 
}bb §î
zC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Services\UsuarioService.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Services "
{ 
public 

class 
UsuarioService 
:  !
IUsuarioService" 1
{ 
private 
readonly 

DbConexion #
conexion$ ,
;, -
public 
UsuarioService 
( 

DbConexion (
conexion) 1
)1 2
{ 	
this 
. 
conexion 
= 
conexion $
;$ %
} 	
public 
Usuario 
GetUsuarioById %
(% &
int& )
?) *
	IdUsuario+ 4
)4 5
{ 	
if 
( 
	IdUsuario 
== 
null !
)! "
return 
null 
; 
Usuario 
usuario 
= 
conexion &
.& '
Usuarios' /
./ 0
Where0 5
(5 6
o6 7
=>8 :
o; <
.< =
Id= ?
==@ B
	IdUsuarioC L
)L M
.M N
FirstOrDefaultN \
(\ ]
)] ^
;^ _
return 
usuario 
; 
} 	
public 
List 
< 
Usuario 
> 
GetUsuariosAsList .
(. /
)/ 0
{   	
return!! 
conexion!! 
.!! 
Usuarios!! $
.!!$ %
ToList!!% +
(!!+ ,
)!!, -
;!!- .
}"" 	
public$$ 
List$$ 
<$$ 
Usuario$$ 
>$$ 
GetClienteAsList$$ -
($$- .
)$$. /
{%% 	
return&& 
conexion&& 
.&& 
Usuarios&& $
.&&$ %
Where&&% *
(&&* +
u&&+ ,
=>&&- /
u&&0 1
.&&1 2
TipoUsuario&&2 =
==&&> @
InfoAtributos&&A N
.&&N O
TipoUsuario&&O Z
.&&Z [
CLIENTE&&[ b
)&&b c
.&&c d
ToList&&d j
(&&j k
)&&k l
;&&l m
}'' 	
public)) 
List)) 
<)) 
Usuario)) 
>)) +
GetUsuariosVendedorYAdminAsList)) <
())< =
)))= >
{** 	
return++ 
conexion++ 
.++ 
Usuarios++ $
.++$ %
Where++% *
(++* +
u+++ ,
=>++- /
u++0 1
.++1 2
TipoUsuario++2 =
!=++> @
InfoAtributos++A N
.++N O
TipoUsuario++O Z
.++Z [
CLIENTE++[ b
)++b c
.++c d
ToList++d j
(++j k
)++k l
;++l m
},, 	
public.. 
Usuario..  
UsuarioViewToUsuario.. +
(..+ ,
UsuarioView.., 7
UsuarioView..8 C
)..C D
{// 	
return00 
new00 
Usuario00 
{11 
Id22 
=22 
UsuarioView22  
.22  !
Id22! #
,22# $
Email33 
=33 
UsuarioView33 #
.33# $
Email33$ )
,33) *
Clave44 
=44 
UsuarioView44 #
.44# $
Clave44$ )
,44) *
Salt55 
=55 
UsuarioView55 "
.55" #
Salt55# '
,55' (
Nombres66 
=66 
UsuarioView66 %
.66% &
Nombres66& -
,66- .
	Apellidos77 
=77 
UsuarioView77 '
.77' (
	Apellidos77( 1
,771 2
Sexo88 
=88 
UsuarioView88 "
.88" #
Sexo88# '
,88' (
FechaNacimiento99 
=99  !
UsuarioView99" -
.99- .
FechaNacimiento99. =
,99= >
Celular:: 
=:: 
UsuarioView:: %
.::% &
Celular::& -
,::- .
TipoUsuario;; 
=;; 
UsuarioView;; )
.;;) *
TipoUsuario;;* 5
,;;5 6
IsActive<< 
=<< 
UsuarioView<< &
.<<& '
IsActive<<' /
,<</ 0
FechaRegistro== 
=== 
UsuarioView==  +
.==+ ,
FechaRegistro==, 9
}>> 
;>> 
}?? 	
publicAA 
UsuarioViewAA  
UsuarioToUsuarioViewAA /
(AA/ 0
UsuarioAA0 7
UsuarioAA8 ?
)AA? @
{BB 	
returnCC 
newCC 
UsuarioViewCC "
{DD 
IdEE 
=EE 
UsuarioEE 
.EE 
IdEE 
,EE  
EmailFF 
=FF 
UsuarioFF 
.FF  
EmailFF  %
,FF% &
ClaveGG 
=GG 
UsuarioGG 
.GG  
ClaveGG  %
,GG% &
SaltHH 
=HH 
UsuarioHH 
.HH 
SaltHH #
,HH# $
NombresII 
=II 
UsuarioII !
.II! "
NombresII" )
,II) *
	ApellidosJJ 
=JJ 
UsuarioJJ #
.JJ# $
	ApellidosJJ$ -
,JJ- .
SexoKK 
=KK 
UsuarioKK 
.KK 
SexoKK #
,KK# $
FechaNacimientoLL 
=LL  !
UsuarioLL" )
.LL) *
FechaNacimientoLL* 9
,LL9 :
CelularMM 
=MM 
UsuarioMM !
.MM! "
CelularMM" )
,MM) *
TipoUsuarioNN 
=NN 
UsuarioNN %
.NN% &
TipoUsuarioNN& 1
,NN1 2
IsActiveOO 
=OO 
UsuarioOO "
.OO" #
IsActiveOO# +
,OO+ ,
FechaRegistroPP 
=PP 
UsuarioPP  '
.PP' (
FechaRegistroPP( 5
}QQ 
;QQ 
}RR 	
publicTT 
voidTT 
GuardarUsuarioTT "
(TT" #
UsuarioTT# *
UsuarioTT+ 2
)TT2 3
{UU 	
UsuarioVV 
.VV 
FechaRegistroVV !
=VV" #
DateTimeVV$ ,
.VV, -
NowVV- 0
;VV0 1
ICryptoServiceWW 
cryptoServiceWW (
=WW) *
newWW+ .
PBKDF2WW/ 5
(WW5 6
)WW6 7
;WW7 8
UsuarioYY 
.YY 
SaltYY 
=YY 
cryptoServiceYY (
.YY( )
GenerateSaltYY) 5
(YY5 6
)YY6 7
;YY7 8
UsuarioZZ 
.ZZ 
ClaveZZ 
=ZZ 
cryptoServiceZZ )
.ZZ) *
ComputeZZ* 1
(ZZ1 2
UsuarioZZ2 9
.ZZ9 :
ClaveZZ: ?
)ZZ? @
;ZZ@ A
Usuario\\ 
.\\ 
TipoUsuario\\ 
=\\  !
InfoAtributos\\" /
.\\/ 0
TipoUsuario\\0 ;
.\\; <
CLIENTE\\< C
;\\C D
Usuario]] 
.]] 
IsActive]] 
=]] 
true]] #
;]]# $
conexion__ 
.__ 
Usuarios__ 
.__ 
Add__ !
(__! "
Usuario__" )
)__) *
;__* +
conexion`` 
.`` 
SaveChanges``  
(``  !
)``! "
;``" #
}aa 	
publiccc 
Usuariocc &
UsuarioEditarViewToUsuariocc 1
(cc1 2
UsuarioEditarViewcc2 C
UsuarioEditarViewccD U
)ccU V
{dd 	
returnee 
newee 
Usuarioee 
{ff 
Idgg 
=gg 
UsuarioEditarViewgg &
.gg& '
Idgg' )
,gg) *
Nombreshh 
=hh 
UsuarioEditarViewhh +
.hh+ ,
Nombreshh, 3
,hh3 4
	Apellidosii 
=ii 
UsuarioEditarViewii -
.ii- .
	Apellidosii. 7
,ii7 8
Sexojj 
=jj 
UsuarioEditarViewjj (
.jj( )
Sexojj) -
,jj- .
FechaNacimientokk 
=kk  !
UsuarioEditarViewkk" 3
.kk3 4
FechaNacimientokk4 C
,kkC D
Celularll 
=ll 
UsuarioEditarViewll +
.ll+ ,
Celularll, 3
,ll3 4
IsActivemm 
=mm 
UsuarioEditarViewmm ,
.mm, -
IsActivemm- 5
,mm5 6
TipoUsuarionn 
=nn 
UsuarioEditarViewnn /
.nn/ 0
TipoUsuarionn0 ;
}oo 
;oo 
}pp 	
publicrr 
UsuarioEditarViewrr  &
UsuarioToUsuarioEditarViewrr! ;
(rr; <
Usuariorr< C
UsuariorrD K
)rrK L
{ss 	
returntt 
newtt 
UsuarioEditarViewtt (
{uu 
Idvv 
=vv 
Usuariovv 
.vv 
Idvv 
,vv  
Nombresww 
=ww 
Usuarioww !
.ww! "
Nombresww" )
,ww) *
	Apellidosxx 
=xx 
Usuarioxx #
.xx# $
	Apellidosxx$ -
,xx- .
Sexoyy 
=yy 
Usuarioyy 
.yy 
Sexoyy #
,yy# $
FechaNacimientozz 
=zz  !
Usuariozz" )
.zz) *
FechaNacimientozz* 9
,zz9 :
Celular{{ 
={{ 
Usuario{{ !
.{{! "
Celular{{" )
,{{) *
IsActive|| 
=|| 
Usuario|| "
.||" #
IsActive||# +
,||+ ,
TipoUsuario}} 
=}} 
Usuario}} %
.}}% &
TipoUsuario}}& 1
,}}1 2
}~~ 
;~~ 
} 	
public
ÅÅ 
void
ÅÅ 
EditarUsuario
ÅÅ !
(
ÅÅ! "
int
ÅÅ" %
?
ÅÅ% &
	IdUsuario
ÅÅ' 0
,
ÅÅ0 1
Usuario
ÅÅ2 9
Usuario
ÅÅ: A
)
ÅÅA B
{
ÇÇ 	
var
ÉÉ 
	UsuarioDB
ÉÉ 
=
ÉÉ 
GetUsuarioById
ÉÉ *
(
ÉÉ* +
	IdUsuario
ÉÉ+ 4
)
ÉÉ4 5
;
ÉÉ5 6
	UsuarioDB
ÑÑ 
.
ÑÑ 
Nombres
ÑÑ 
=
ÑÑ 
Usuario
ÑÑ  '
.
ÑÑ' (
Nombres
ÑÑ( /
;
ÑÑ/ 0
	UsuarioDB
ÖÖ 
.
ÖÖ 
	Apellidos
ÖÖ 
=
ÖÖ  !
Usuario
ÖÖ" )
.
ÖÖ) *
	Apellidos
ÖÖ* 3
;
ÖÖ3 4
	UsuarioDB
ÜÜ 
.
ÜÜ 
Sexo
ÜÜ 
=
ÜÜ 
Usuario
ÜÜ $
.
ÜÜ$ %
Sexo
ÜÜ% )
;
ÜÜ) *
	UsuarioDB
áá 
.
áá 
Celular
áá 
=
áá 
Usuario
áá  '
.
áá' (
Celular
áá( /
;
áá/ 0
	UsuarioDB
àà 
.
àà 
IsActive
àà 
=
àà  
Usuario
àà! (
.
àà( )
IsActive
àà) 1
;
àà1 2
conexion
ââ 
.
ââ 
SaveChanges
ââ  
(
ââ  !
)
ââ! "
;
ââ" #
}
ää 	
public
åå 
void
åå 
EliminarUsuario
åå #
(
åå# $
int
åå$ '
?
åå' (
	IdUsuario
åå) 2
)
åå2 3
{
çç 	
var
éé 
usuario
éé 
=
éé 
GetUsuarioById
éé (
(
éé( )
	IdUsuario
éé) 2
)
éé2 3
;
éé3 4
conexion
èè 
.
èè 
Usuarios
èè 
.
èè 
Remove
èè $
(
èè$ %
usuario
èè% ,
)
èè, -
;
èè- .
conexion
êê 
.
êê 
SaveChanges
êê  
(
êê  !
)
êê! "
;
êê" #
}
ëë 	
public
ìì 
bool
ìì 
ExisteElCorreo
ìì "
(
ìì" #
string
ìì# )
email
ìì* /
)
ìì/ 0
{
îî 	
if
ïï 
(
ïï 
conexion
ïï 
.
ïï 
Usuarios
ïï !
.
ïï! "
Any
ïï" %
(
ïï% &
u
ïï& '
=>
ïï( *
u
ïï+ ,
.
ïï, -
Email
ïï- 2
==
ïï3 5
email
ïï6 ;
)
ïï; <
)
ïï< =
return
ññ 
true
ññ 
;
ññ 
return
óó 
false
óó 
;
óó 
}
òò 	
public
öö 
Usuario
öö (
GetUsuarioByCorreoAndClave
öö 1
(
öö1 2
string
öö2 8
Correo
öö9 ?
,
öö? @
string
ööA G
Clave
ööH M
)
ööM N
{
õõ 	
Usuario
ùù 
usuario
ùù 
=
ùù 
conexion
ùù &
.
ùù& '
Usuarios
ùù' /
.
ùù/ 0
Where
ùù0 5
(
ùù5 6
u
ùù6 7
=>
ùù8 :
u
ùù; <
.
ùù< =
Email
ùù= B
==
ùùC E
Correo
ùùF L
)
ùùL M
.
ùùM N
FirstOrDefault
ùùN \
(
ùù\ ]
)
ùù] ^
;
ùù^ _
if
üü 
(
üü 
usuario
üü 
==
üü 
null
üü 
)
üü  
return
†† 
null
†† 
;
†† 
ICryptoService
¢¢ 
cryptoService
¢¢ (
=
¢¢) *
new
¢¢+ .
PBKDF2
¢¢/ 5
(
¢¢5 6
)
¢¢6 7
;
¢¢7 8
if
§§ 
(
§§ 
cryptoService
§§ 
.
§§ 
Compare
§§ %
(
§§% &
cryptoService
§§& 3
.
§§3 4
Compute
§§4 ;
(
§§; <
Clave
§§< A
,
§§A B
usuario
§§C J
.
§§J K
Salt
§§K O
)
§§O P
,
§§P Q
usuario
§§R Y
.
§§Y Z
Clave
§§Z _
)
§§_ `
)
§§` a
return
•• 
usuario
•• 
;
•• 
return
ßß 
null
ßß 
;
ßß 
}
®® 	
public
´´ 
Usuario
´´ ,
UsuarioPerfilEditViewToUsuario
´´ 5
(
´´5 6#
UsuarioPerfilEditView
´´6 K#
UsuarioPerfilEditView
´´L a
)
´´a b
{
¨¨ 	
return
≠≠ 
new
≠≠ 
Usuario
≠≠ 
{
ÆÆ 
Id
ØØ 
=
ØØ #
UsuarioPerfilEditView
ØØ *
.
ØØ* +
Id
ØØ+ -
,
ØØ- .
Nombres
∞∞ 
=
∞∞ #
UsuarioPerfilEditView
∞∞ /
.
∞∞/ 0
Nombres
∞∞0 7
,
∞∞7 8
	Apellidos
±± 
=
±± #
UsuarioPerfilEditView
±± 1
.
±±1 2
	Apellidos
±±2 ;
,
±±; <
Sexo
≤≤ 
=
≤≤ #
UsuarioPerfilEditView
≤≤ ,
.
≤≤, -
Sexo
≤≤- 1
,
≤≤1 2
Celular
≥≥ 
=
≥≥ #
UsuarioPerfilEditView
≥≥ /
.
≥≥/ 0
Celular
≥≥0 7
}
¥¥ 
;
¥¥ 
}
µµ 	
public
∑∑ #
UsuarioPerfilEditView
∑∑ $,
UsuarioToUsuarioPerfilEditView
∑∑% C
(
∑∑C D
Usuario
∑∑D K
Usuario
∑∑L S
)
∑∑S T
{
∏∏ 	
return
ππ 
new
ππ #
UsuarioPerfilEditView
ππ ,
{
∫∫ 
Id
ªª 
=
ªª 
Usuario
ªª 
.
ªª 
Id
ªª 
,
ªª  
Nombres
ºº 
=
ºº 
Usuario
ºº !
.
ºº! "
Nombres
ºº" )
,
ºº) *
	Apellidos
ΩΩ 
=
ΩΩ 
Usuario
ΩΩ #
.
ΩΩ# $
	Apellidos
ΩΩ$ -
,
ΩΩ- .
Sexo
ææ 
=
ææ 
Usuario
ææ 
.
ææ 
Sexo
ææ #
,
ææ# $
Celular
øø 
=
øø 
Usuario
øø !
.
øø! "
Celular
øø" )
}
¿¿ 
;
¿¿ 
}
¡¡ 	
public
√√ 
void
√√ 
EditarPerfil
√√  
(
√√  !
int
√√! $
?
√√$ %
	IdUsuario
√√& /
,
√√/ 0
Usuario
√√1 8
Usuario
√√9 @
)
√√@ A
{
ƒƒ 	
var
≈≈ 
	UsuarioDB
≈≈ 
=
≈≈ 
GetUsuarioById
≈≈ *
(
≈≈* +
	IdUsuario
≈≈+ 4
)
≈≈4 5
;
≈≈5 6
	UsuarioDB
∆∆ 
.
∆∆ 
Nombres
∆∆ 
=
∆∆ 
Usuario
∆∆  '
.
∆∆' (
Nombres
∆∆( /
;
∆∆/ 0
	UsuarioDB
«« 
.
«« 
	Apellidos
«« 
=
««  !
Usuario
««" )
.
««) *
	Apellidos
««* 3
;
««3 4
	UsuarioDB
»» 
.
»» 
Sexo
»» 
=
»» 
Usuario
»» $
.
»»$ %
Sexo
»»% )
;
»») *
	UsuarioDB
…… 
.
…… 
Celular
…… 
=
…… 
Usuario
……  '
.
……' (
Celular
……( /
;
……/ 0
conexion
   
.
   
SaveChanges
    
(
    !
)
  ! "
;
  " #
}
ÀÀ 	
public
ÕÕ 
void
ÕÕ %
AgregarDireccionUsuario
ÕÕ +
(
ÕÕ+ ,
Usuario
ÕÕ, 3
usuario
ÕÕ4 ;
,
ÕÕ; <
string
ÕÕ= C
Calle
ÕÕD I
,
ÕÕI J
string
ÕÕK Q
Pais
ÕÕR V
,
ÕÕV W
string
ÕÕX ^
Region
ÕÕ_ e
,
ÕÕe f
string
ÕÕg m
Ciudad
ÕÕn t
,
ÕÕt u
string
ÕÕv |
CodigoPostalÕÕ} â
)ÕÕâ ä
{
ŒŒ 	
	Direccion
œœ 
NuevaDireccion
œœ $
=
œœ% &
new
œœ' *
	Direccion
œœ+ 4
{
–– 
Calle
—— 
=
—— 
Calle
—— 
,
—— 
Pais
““ 
=
““ 
Pais
““ 
,
““ 
Region
”” 
=
”” 
Region
”” 
,
””  
Ciudad
‘‘ 
=
‘‘ 
Ciudad
‘‘ 
,
‘‘  
CodigoPostal
’’ 
=
’’ 
CodigoPostal
’’ +
,
’’+ ,
	IdUsuario
÷÷ 
=
÷÷ 
usuario
÷÷ #
.
÷÷# $
Id
÷÷$ &
}
◊◊ 
;
◊◊ 
conexion
ÿÿ 
.
ÿÿ 
	Direccion
ÿÿ 
.
ÿÿ 
Add
ÿÿ "
(
ÿÿ" #
NuevaDireccion
ÿÿ# 1
)
ÿÿ1 2
;
ÿÿ2 3
conexion
ŸŸ 
.
ŸŸ 
SaveChanges
ŸŸ  
(
ŸŸ  !
)
ŸŸ! "
;
ŸŸ" #
}
⁄⁄ 	
}
‹‹ 
}›› ≥à
}C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Services\ValidacionService.cs
	namespace

 	
ECOMMERCE_TRESB


 
.

 
Services

 "
{ 
public 

class 
ValidacionService "
:# $
IValidacionService% 7
{ 
readonly 
string 
LetrasRegex #
=$ %
$str& 6
;6 7
readonly 
string 
NumerosRegex $
=% &
$str' 8
;8 9
readonly 
string 
NumeroDecimalRegex *
=+ ,
$str- G
;G H
readonly 
string 

EmailRegex "
=# $
$str	% ∆
;
∆ «
public 
void 
	Categoria 
( 
CategoriaView +
categoriaView, 9
,9 : 
ModelStateDictionary; O

ModelStateP Z
)Z [
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
categoriaView% 2
.2 3
Nombre3 9
)9 :
): ;

ModelState 
. 
AddModelError (
(( )
$str) 1
,1 2
$str3 F
)F G
;G H
if 
( 
string 
. 
IsNullOrEmpty $
($ %
categoriaView% 2
.2 3
Nombre3 9
)9 :
||; =
categoriaView> K
.K L
NombreL R
.R S
LengthS Y
<=Z \
$num] ^
)^ _

ModelState 
. 
AddModelError (
(( )
$str) 1
,1 2
$str3 Y
)Y Z
;Z [
if 
( 
string 
. 
IsNullOrEmpty $
($ %
categoriaView% 2
.2 3
Nombre3 9
)9 :
||; =
categoriaView> K
.K L
NombreL R
.R S
LengthS Y
>Z [
$num\ _
)_ `

ModelState 
. 
AddModelError (
(( )
$str) 1
,1 2
$str3 Y
)Y Z
;Z [
bool 
isNombreValid 
=  
string! '
.' (
IsNullOrEmpty( 5
(5 6
categoriaView6 C
.C D
NombreD J
)J K
||L N
RegexO T
.T U
IsMatchU \
(\ ]
categoriaView] j
.j k
Nombrek q
,q r
LetrasRegexs ~
)~ 
;	 Ä
if 
( 
! 
isNombreValid 
) 

ModelState 
. 
AddModelError (
(( )
$str) 1
,1 2
$str3 K
)K L
;L M
} 	
public 
void 
Usuario 
( 
UsuarioView '
usuarioView( 3
,3 4 
ModelStateDictionary5 I

ModelStateJ T
)T U
{   	
if!! 
(!! 
string!! 
.!! 
IsNullOrEmpty!! $
(!!$ %
usuarioView!!% 0
.!!0 1
Email!!1 6
)!!6 7
)!!7 8

ModelState"" 
."" 
AddModelError"" (
(""( )
$str"") 0
,""0 1
$str""2 E
)""E F
;""F G
if## 
(## 
string## 
.## 
IsNullOrEmpty## $
(##$ %
usuarioView##% 0
.##0 1
Email##1 6
)##6 7
||##8 :
usuarioView##; F
.##F G
Email##G L
.##L M
Length##M S
<=##T V
$num##W X
)##X Y

ModelState$$ 
.$$ 
AddModelError$$ (
($$( )
$str$$) 0
,$$0 1
$str$$2 X
)$$X Y
;$$Y Z
if%% 
(%% 
string%% 
.%% 
IsNullOrEmpty%% $
(%%$ %
usuarioView%%% 0
.%%0 1
Email%%1 6
)%%6 7
||%%8 :
usuarioView%%; F
.%%F G
Email%%G L
.%%L M
Length%%M S
>%%T U
$num%%V Y
)%%Y Z

ModelState&& 
.&& 
AddModelError&& (
(&&( )
$str&&) 0
,&&0 1
$str&&2 X
)&&X Y
;&&Y Z
bool'' 
isEmailValid'' 
='' 
string''  &
.''& '
IsNullOrEmpty''' 4
(''4 5
usuarioView''5 @
.''@ A
Email''A F
)''F G
||''H J
Regex''K P
.''P Q
IsMatch''Q X
(''X Y
usuarioView''Y d
.''d e
Email''e j
,''j k

EmailRegex''l v
)''v w
;''w x
if(( 
((( 
!(( 
isEmailValid(( 
)(( 

ModelState)) 
.)) 
AddModelError)) (
())( )
$str))) 0
,))0 1
$str))2 M
)))M N
;))N O
if++ 
(++ 
string++ 
.++ 
IsNullOrEmpty++ $
(++$ %
usuarioView++% 0
.++0 1
Clave++1 6
)++6 7
)++7 8

ModelState,, 
.,, 
AddModelError,, (
(,,( )
$str,,) 0
,,,0 1
$str,,2 E
),,E F
;,,F G
if.. 
(.. 
string.. 
... 
IsNullOrEmpty.. $
(..$ %
usuarioView..% 0
...0 1
Nombres..1 8
)..8 9
)..9 :

ModelState// 
.// 
AddModelError// (
(//( )
$str//) 2
,//2 3
$str//4 G
)//G H
;//H I
if00 
(00 
string00 
.00 
IsNullOrEmpty00 $
(00$ %
usuarioView00% 0
.000 1
Nombres001 8
)008 9
||00: <
usuarioView00= H
.00H I
Nombres00I P
.00P Q
Length00Q W
<=00X Z
$num00[ \
)00\ ]

ModelState11 
.11 
AddModelError11 (
(11( )
$str11) 2
,112 3
$str114 Z
)11Z [
;11[ \
if22 
(22 
string22 
.22 
IsNullOrEmpty22 $
(22$ %
usuarioView22% 0
.220 1
Nombres221 8
)228 9
||22: <
usuarioView22= H
.22H I
Nombres22I P
.22P Q
Length22Q W
>22X Y
$num22Z ]
)22] ^

ModelState33 
.33 
AddModelError33 (
(33( )
$str33) 2
,332 3
$str334 Z
)33Z [
;33[ \
bool44 
isNombreValid44 
=44  
string44! '
.44' (
IsNullOrEmpty44( 5
(445 6
usuarioView446 A
.44A B
Nombres44B I
)44I J
||44K M
Regex44N S
.44S T
IsMatch44T [
(44[ \
usuarioView44\ g
.44g h
Nombres44h o
,44o p
LetrasRegex44q |
)44| }
;44} ~
if55 
(55 
!55 
isNombreValid55 
)55 

ModelState66 
.66 
AddModelError66 (
(66( )
$str66) 2
,662 3
$str664 L
)66L M
;66M N
if88 
(88 
string88 
.88 
IsNullOrEmpty88 $
(88$ %
usuarioView88% 0
.880 1
	Apellidos881 :
)88: ;
)88; <

ModelState99 
.99 
AddModelError99 (
(99( )
$str99) 4
,994 5
$str996 I
)99I J
;99J K
if:: 
(:: 
string:: 
.:: 
IsNullOrEmpty:: $
(::$ %
usuarioView::% 0
.::0 1
	Apellidos::1 :
)::: ;
||::< >
usuarioView::? J
.::J K
	Apellidos::K T
.::T U
Length::U [
<=::\ ^
$num::_ `
)::` a

ModelState;; 
.;; 
AddModelError;; (
(;;( )
$str;;) 4
,;;4 5
$str;;6 \
);;\ ]
;;;] ^
if<< 
(<< 
string<< 
.<< 
IsNullOrEmpty<< $
(<<$ %
usuarioView<<% 0
.<<0 1
	Apellidos<<1 :
)<<: ;
||<<< >
usuarioView<<? J
.<<J K
	Apellidos<<K T
.<<T U
Length<<U [
><<\ ]
$num<<^ a
)<<a b

ModelState== 
.== 
AddModelError== (
(==( )
$str==) 4
,==4 5
$str==6 \
)==\ ]
;==] ^
bool>> 
isApellidosValid>> !
=>>" #
string>>$ *
.>>* +
IsNullOrEmpty>>+ 8
(>>8 9
usuarioView>>9 D
.>>D E
	Apellidos>>E N
)>>N O
||>>P R
Regex>>S X
.>>X Y
IsMatch>>Y `
(>>` a
usuarioView>>a l
.>>l m
	Apellidos>>m v
,>>v w
LetrasRegex	>>x É
)
>>É Ñ
;
>>Ñ Ö
if?? 
(?? 
!?? 
isApellidosValid?? !
)??! "

ModelState@@ 
.@@ 
AddModelError@@ (
(@@( )
$str@@) 4
,@@4 5
$str@@6 N
)@@N O
;@@O P
ifBB 
(BB 
usuarioViewBB 
.BB 
FechaNacimientoBB +
==BB, .
nullBB/ 3
)BB3 4

ModelStateCC 
.CC 
AddModelErrorCC (
(CC( )
$strCC) :
,CC: ;
$strCC< O
)CCO P
;CCP Q
ifEE 
(EE 
stringEE 
.EE 
IsNullOrEmptyEE $
(EE$ %
usuarioViewEE% 0
.EE0 1
CelularEE1 8
)EE8 9
)EE9 :

ModelStateFF 
.FF 
AddModelErrorFF (
(FF( )
$strFF) 2
,FF2 3
$strFF4 G
)FFG H
;FFH I
ifGG 
(GG 
stringGG 
.GG 
IsNullOrEmptyGG $
(GG$ %
usuarioViewGG% 0
.GG0 1
CelularGG1 8
)GG8 9
||GG: <
usuarioViewGG= H
.GGH I
CelularGGI P
.GGP Q
LengthGGQ W
<=GGX Z
$numGG[ \
)GG\ ]

ModelStateHH 
.HH 
AddModelErrorHH (
(HH( )
$strHH) 2
,HH2 3
$strHH4 Z
)HHZ [
;HH[ \
ifII 
(II 
stringII 
.II 
IsNullOrEmptyII $
(II$ %
usuarioViewII% 0
.II0 1
CelularII1 8
)II8 9
||II: <
usuarioViewII= H
.IIH I
CelularIII P
.IIP Q
LengthIIQ W
>IIX Y
$numIIZ \
)II\ ]

ModelStateJJ 
.JJ 
AddModelErrorJJ (
(JJ( )
$strJJ) 2
,JJ2 3
$strJJ4 Y
)JJY Z
;JJZ [
boolKK 
isCelularValidKK 
=KK  !
stringKK" (
.KK( )
IsNullOrEmptyKK) 6
(KK6 7
usuarioViewKK7 B
.KKB C
CelularKKC J
)KKJ K
||KKL N
RegexKKO T
.KKT U
IsMatchKKU \
(KK\ ]
usuarioViewKK] h
.KKh i
CelularKKi p
,KKp q
NumerosRegexKKr ~
)KK~ 
;	KK Ä
ifLL 
(LL 
!LL 
isCelularValidLL 
)LL  

ModelStateMM 
.MM 
AddModelErrorMM (
(MM( )
$strMM) 2
,MM2 3
$strMM4 M
)MMM N
;MMN O
}NN 	
publicPP 
voidPP 
EditarUsuarioPP !
(PP! "
UsuarioEditarViewPP" 3
usuarioEditarViewPP4 E
,PPE F 
ModelStateDictionaryPPG [

ModelStatePP\ f
)PPf g
{QQ 	
ifRR 
(RR 
stringRR 
.RR 
IsNullOrEmptyRR $
(RR$ %
usuarioEditarViewRR% 6
.RR6 7
NombresRR7 >
)RR> ?
)RR? @

ModelStateSS 
.SS 
AddModelErrorSS (
(SS( )
$strSS) 2
,SS2 3
$strSS4 G
)SSG H
;SSH I
ifTT 
(TT 
stringTT 
.TT 
IsNullOrEmptyTT $
(TT$ %
usuarioEditarViewTT% 6
.TT6 7
NombresTT7 >
)TT> ?
||TT@ B
usuarioEditarViewTTC T
.TTT U
NombresTTU \
.TT\ ]
LengthTT] c
<=TTd f
$numTTg h
)TTh i

ModelStateUU 
.UU 
AddModelErrorUU (
(UU( )
$strUU) 2
,UU2 3
$strUU4 Z
)UUZ [
;UU[ \
ifVV 
(VV 
stringVV 
.VV 
IsNullOrEmptyVV $
(VV$ %
usuarioEditarViewVV% 6
.VV6 7
NombresVV7 >
)VV> ?
||VV@ B
usuarioEditarViewVVC T
.VVT U
NombresVVU \
.VV\ ]
LengthVV] c
>VVd e
$numVVf i
)VVi j

ModelStateWW 
.WW 
AddModelErrorWW (
(WW( )
$strWW) 2
,WW2 3
$strWW4 Z
)WWZ [
;WW[ \
boolXX 
isNombreValidXX 
=XX  
stringXX! '
.XX' (
IsNullOrEmptyXX( 5
(XX5 6
usuarioEditarViewXX6 G
.XXG H
NombresXXH O
)XXO P
||XXQ S
RegexXXT Y
.XXY Z
IsMatchXXZ a
(XXa b
usuarioEditarViewXXb s
.XXs t
NombresXXt {
,XX{ |
LetrasRegex	XX} à
)
XXà â
;
XXâ ä
ifYY 
(YY 
!YY 
isNombreValidYY 
)YY 

ModelStateZZ 
.ZZ 
AddModelErrorZZ (
(ZZ( )
$strZZ) 2
,ZZ2 3
$strZZ4 L
)ZZL M
;ZZM N
if\\ 
(\\ 
string\\ 
.\\ 
IsNullOrEmpty\\ $
(\\$ %
usuarioEditarView\\% 6
.\\6 7
	Apellidos\\7 @
)\\@ A
)\\A B

ModelState]] 
.]] 
AddModelError]] (
(]]( )
$str]]) 4
,]]4 5
$str]]6 I
)]]I J
;]]J K
if^^ 
(^^ 
string^^ 
.^^ 
IsNullOrEmpty^^ $
(^^$ %
usuarioEditarView^^% 6
.^^6 7
	Apellidos^^7 @
)^^@ A
||^^B D
usuarioEditarView^^E V
.^^V W
	Apellidos^^W `
.^^` a
Length^^a g
<=^^h j
$num^^k l
)^^l m

ModelState__ 
.__ 
AddModelError__ (
(__( )
$str__) 4
,__4 5
$str__6 \
)__\ ]
;__] ^
if`` 
(`` 
string`` 
.`` 
IsNullOrEmpty`` $
(``$ %
usuarioEditarView``% 6
.``6 7
	Apellidos``7 @
)``@ A
||``B D
usuarioEditarView``E V
.``V W
	Apellidos``W `
.``` a
Length``a g
>``h i
$num``j m
)``m n

ModelStateaa 
.aa 
AddModelErroraa (
(aa( )
$straa) 4
,aa4 5
$straa6 \
)aa\ ]
;aa] ^
boolbb 
isApellidosValidbb !
=bb" #
stringbb$ *
.bb* +
IsNullOrEmptybb+ 8
(bb8 9
usuarioEditarViewbb9 J
.bbJ K
	ApellidosbbK T
)bbT U
||bbV X
RegexbbY ^
.bb^ _
IsMatchbb_ f
(bbf g
usuarioEditarViewbbg x
.bbx y
	Apellidos	bby Ç
,
bbÇ É
LetrasRegex
bbÑ è
)
bbè ê
;
bbê ë
ifcc 
(cc 
!cc 
isApellidosValidcc !
)cc! "

ModelStatedd 
.dd 
AddModelErrordd (
(dd( )
$strdd) 4
,dd4 5
$strdd6 N
)ddN O
;ddO P
ifff 
(ff 
usuarioEditarViewff !
.ff! "
FechaNacimientoff" 1
==ff2 4
nullff5 9
)ff9 :

ModelStategg 
.gg 
AddModelErrorgg (
(gg( )
$strgg) :
,gg: ;
$strgg< O
)ggO P
;ggP Q
ifii 
(ii 
stringii 
.ii 
IsNullOrEmptyii $
(ii$ %
usuarioEditarViewii% 6
.ii6 7
Celularii7 >
)ii> ?
)ii? @

ModelStatejj 
.jj 
AddModelErrorjj (
(jj( )
$strjj) 2
,jj2 3
$strjj4 G
)jjG H
;jjH I
ifkk 
(kk 
stringkk 
.kk 
IsNullOrEmptykk $
(kk$ %
usuarioEditarViewkk% 6
.kk6 7
Celularkk7 >
)kk> ?
||kk@ B
usuarioEditarViewkkC T
.kkT U
CelularkkU \
.kk\ ]
Lengthkk] c
<=kkd f
$numkkg h
)kkh i

ModelStatell 
.ll 
AddModelErrorll (
(ll( )
$strll) 2
,ll2 3
$strll4 Z
)llZ [
;ll[ \
ifmm 
(mm 
stringmm 
.mm 
IsNullOrEmptymm $
(mm$ %
usuarioEditarViewmm% 6
.mm6 7
Celularmm7 >
)mm> ?
||mm@ B
usuarioEditarViewmmC T
.mmT U
CelularmmU \
.mm\ ]
Lengthmm] c
>mmd e
$nummmf h
)mmh i

ModelStatenn 
.nn 
AddModelErrornn (
(nn( )
$strnn) 2
,nn2 3
$strnn4 Y
)nnY Z
;nnZ [
booloo 
isCelularValidoo 
=oo  !
stringoo" (
.oo( )
IsNullOrEmptyoo) 6
(oo6 7
usuarioEditarViewoo7 H
.ooH I
CelularooI P
)ooP Q
||ooR T
RegexooU Z
.ooZ [
IsMatchoo[ b
(oob c
usuarioEditarViewooc t
.oot u
Celularoou |
,oo| }
NumerosRegex	oo~ ä
)
ooä ã
;
ooã å
ifpp 
(pp 
!pp 
isCelularValidpp 
)pp  

ModelStateqq 
.qq 
AddModelErrorqq (
(qq( )
$strqq) 2
,qq2 3
$strqq4 M
)qqM N
;qqN O
}rr 	
publictt 
voidtt 
EditarPerfilUsuariott '
(tt' (!
UsuarioPerfilEditViewtt( =!
usuarioPerfilEditViewtt> S
,ttS T 
ModelStateDictionaryttU i

ModelStatettj t
)ttt u
{uu 	
ifvv 
(vv 
stringvv 
.vv 
IsNullOrEmptyvv $
(vv$ %!
usuarioPerfilEditViewvv% :
.vv: ;
Nombresvv; B
)vvB C
)vvC D

ModelStateww 
.ww 
AddModelErrorww (
(ww( )
$strww) 2
,ww2 3
$strww4 G
)wwG H
;wwH I
ifxx 
(xx 
stringxx 
.xx 
IsNullOrEmptyxx $
(xx$ %!
usuarioPerfilEditViewxx% :
.xx: ;
Nombresxx; B
)xxB C
||xxD F!
usuarioPerfilEditViewxxG \
.xx\ ]
Nombresxx] d
.xxd e
Lengthxxe k
<=xxl n
$numxxo p
)xxp q

ModelStateyy 
.yy 
AddModelErroryy (
(yy( )
$stryy) 2
,yy2 3
$stryy4 Z
)yyZ [
;yy[ \
ifzz 
(zz 
stringzz 
.zz 
IsNullOrEmptyzz $
(zz$ %!
usuarioPerfilEditViewzz% :
.zz: ;
Nombreszz; B
)zzB C
||zzD F!
usuarioPerfilEditViewzzG \
.zz\ ]
Nombreszz] d
.zzd e
Lengthzze k
>zzl m
$numzzn q
)zzq r

ModelState{{ 
.{{ 
AddModelError{{ (
({{( )
$str{{) 2
,{{2 3
$str{{4 Z
){{Z [
;{{[ \
bool|| 
isNombreValid|| 
=||  
string||! '
.||' (
IsNullOrEmpty||( 5
(||5 6!
usuarioPerfilEditView||6 K
.||K L
Nombres||L S
)||S T
||||U W
Regex||X ]
.||] ^
IsMatch||^ e
(||e f!
usuarioPerfilEditView||f {
.||{ |
Nombres	||| É
,
||É Ñ
LetrasRegex
||Ö ê
)
||ê ë
;
||ë í
if}} 
(}} 
!}} 
isNombreValid}} 
)}} 

ModelState~~ 
.~~ 
AddModelError~~ (
(~~( )
$str~~) 2
,~~2 3
$str~~4 L
)~~L M
;~~M N
if
ÄÄ 
(
ÄÄ 
string
ÄÄ 
.
ÄÄ 
IsNullOrEmpty
ÄÄ $
(
ÄÄ$ %#
usuarioPerfilEditView
ÄÄ% :
.
ÄÄ: ;
	Apellidos
ÄÄ; D
)
ÄÄD E
)
ÄÄE F

ModelState
ÅÅ 
.
ÅÅ 
AddModelError
ÅÅ (
(
ÅÅ( )
$str
ÅÅ) 4
,
ÅÅ4 5
$str
ÅÅ6 I
)
ÅÅI J
;
ÅÅJ K
if
ÇÇ 
(
ÇÇ 
string
ÇÇ 
.
ÇÇ 
IsNullOrEmpty
ÇÇ $
(
ÇÇ$ %#
usuarioPerfilEditView
ÇÇ% :
.
ÇÇ: ;
	Apellidos
ÇÇ; D
)
ÇÇD E
||
ÇÇF H#
usuarioPerfilEditView
ÇÇI ^
.
ÇÇ^ _
	Apellidos
ÇÇ_ h
.
ÇÇh i
Length
ÇÇi o
<=
ÇÇp r
$num
ÇÇs t
)
ÇÇt u

ModelState
ÉÉ 
.
ÉÉ 
AddModelError
ÉÉ (
(
ÉÉ( )
$str
ÉÉ) 4
,
ÉÉ4 5
$str
ÉÉ6 \
)
ÉÉ\ ]
;
ÉÉ] ^
if
ÑÑ 
(
ÑÑ 
string
ÑÑ 
.
ÑÑ 
IsNullOrEmpty
ÑÑ $
(
ÑÑ$ %#
usuarioPerfilEditView
ÑÑ% :
.
ÑÑ: ;
	Apellidos
ÑÑ; D
)
ÑÑD E
||
ÑÑF H#
usuarioPerfilEditView
ÑÑI ^
.
ÑÑ^ _
	Apellidos
ÑÑ_ h
.
ÑÑh i
Length
ÑÑi o
>
ÑÑp q
$num
ÑÑr u
)
ÑÑu v

ModelState
ÖÖ 
.
ÖÖ 
AddModelError
ÖÖ (
(
ÖÖ( )
$str
ÖÖ) 4
,
ÖÖ4 5
$str
ÖÖ6 \
)
ÖÖ\ ]
;
ÖÖ] ^
bool
ÜÜ 
isApellidosValid
ÜÜ !
=
ÜÜ" #
string
ÜÜ$ *
.
ÜÜ* +
IsNullOrEmpty
ÜÜ+ 8
(
ÜÜ8 9#
usuarioPerfilEditView
ÜÜ9 N
.
ÜÜN O
	Apellidos
ÜÜO X
)
ÜÜX Y
||
ÜÜZ \
Regex
ÜÜ] b
.
ÜÜb c
IsMatch
ÜÜc j
(
ÜÜj k$
usuarioPerfilEditViewÜÜk Ä
.ÜÜÄ Å
	ApellidosÜÜÅ ä
,ÜÜä ã
LetrasRegexÜÜå ó
)ÜÜó ò
;ÜÜò ô
if
áá 
(
áá 
!
áá 
isApellidosValid
áá !
)
áá! "

ModelState
àà 
.
àà 
AddModelError
àà (
(
àà( )
$str
àà) 4
,
àà4 5
$str
àà6 N
)
ààN O
;
ààO P
if
ää 
(
ää 
string
ää 
.
ää 
IsNullOrEmpty
ää $
(
ää$ %#
usuarioPerfilEditView
ää% :
.
ää: ;
Celular
ää; B
)
ääB C
)
ääC D

ModelState
ãã 
.
ãã 
AddModelError
ãã (
(
ãã( )
$str
ãã) 2
,
ãã2 3
$str
ãã4 G
)
ããG H
;
ããH I
if
åå 
(
åå 
string
åå 
.
åå 
IsNullOrEmpty
åå $
(
åå$ %#
usuarioPerfilEditView
åå% :
.
åå: ;
Celular
åå; B
)
ååB C
||
ååD F#
usuarioPerfilEditView
ååG \
.
åå\ ]
Celular
åå] d
.
ååd e
Length
ååe k
<=
åål n
$num
ååo p
)
ååp q

ModelState
çç 
.
çç 
AddModelError
çç (
(
çç( )
$str
çç) 2
,
çç2 3
$str
çç4 Z
)
ççZ [
;
çç[ \
if
éé 
(
éé 
string
éé 
.
éé 
IsNullOrEmpty
éé $
(
éé$ %#
usuarioPerfilEditView
éé% :
.
éé: ;
Celular
éé; B
)
ééB C
||
ééD F#
usuarioPerfilEditView
ééG \
.
éé\ ]
Celular
éé] d
.
ééd e
Length
éée k
>
éél m
$num
één p
)
éép q

ModelState
èè 
.
èè 
AddModelError
èè (
(
èè( )
$str
èè) 2
,
èè2 3
$str
èè4 Y
)
èèY Z
;
èèZ [
bool
êê 
isCelularValid
êê 
=
êê  !
string
êê" (
.
êê( )
IsNullOrEmpty
êê) 6
(
êê6 7#
usuarioPerfilEditView
êê7 L
.
êêL M
Celular
êêM T
)
êêT U
||
êêV X
Regex
êêY ^
.
êê^ _
IsMatch
êê_ f
(
êêf g#
usuarioPerfilEditView
êêg |
.
êê| }
Celularêê} Ñ
,êêÑ Ö
NumerosRegexêêÜ í
)êêí ì
;êêì î
if
ëë 
(
ëë 
!
ëë 
isCelularValid
ëë 
)
ëë  

ModelState
íí 
.
íí 
AddModelError
íí (
(
íí( )
$str
íí) 2
,
íí2 3
$str
íí4 M
)
ííM N
;
ííN O
}
ìì 	
public
ïï 
void
ïï 
Producto
ïï 
(
ïï 
ProductoView
ïï )
productoView
ïï* 6
,
ïï6 7"
ModelStateDictionary
ïï8 L

ModelState
ïïM W
)
ïïW X
{
ññ 	
if
óó 
(
óó 
string
óó 
.
óó 
IsNullOrEmpty
óó $
(
óó$ %
productoView
óó% 1
.
óó1 2
Nombre
óó2 8
)
óó8 9
)
óó9 :

ModelState
òò 
.
òò 
AddModelError
òò (
(
òò( )
$str
òò) 1
,
òò1 2
$str
òò3 F
)
òòF G
;
òòG H
if
ôô 
(
ôô 
string
ôô 
.
ôô 
IsNullOrEmpty
ôô $
(
ôô$ %
productoView
ôô% 1
.
ôô1 2
Nombre
ôô2 8
)
ôô8 9
||
ôô: <
productoView
ôô= I
.
ôôI J
Nombre
ôôJ P
.
ôôP Q
Length
ôôQ W
<=
ôôX Z
$num
ôô[ \
)
ôô\ ]

ModelState
öö 
.
öö 
AddModelError
öö (
(
öö( )
$str
öö) 1
,
öö1 2
$str
öö3 Y
)
ööY Z
;
ööZ [
if
õõ 
(
õõ 
string
õõ 
.
õõ 
IsNullOrEmpty
õõ $
(
õõ$ %
productoView
õõ% 1
.
õõ1 2
Nombre
õõ2 8
)
õõ8 9
||
õõ: <
productoView
õõ= I
.
õõI J
Nombre
õõJ P
.
õõP Q
Length
õõQ W
>
õõX Y
$num
õõZ ]
)
õõ] ^

ModelState
úú 
.
úú 
AddModelError
úú (
(
úú( )
$str
úú) 1
,
úú1 2
$str
úú3 Y
)
úúY Z
;
úúZ [
bool
ùù 
isNombreValid
ùù 
=
ùù  
string
ùù! '
.
ùù' (
IsNullOrEmpty
ùù( 5
(
ùù5 6
productoView
ùù6 B
.
ùùB C
Nombre
ùùC I
)
ùùI J
||
ùùK M
Regex
ùùN S
.
ùùS T
IsMatch
ùùT [
(
ùù[ \
productoView
ùù\ h
.
ùùh i
Nombre
ùùi o
,
ùùo p
LetrasRegex
ùùq |
)
ùù| }
;
ùù} ~
if
ûû 
(
ûû 
!
ûû 
isNombreValid
ûû 
)
ûû 

ModelState
üü 
.
üü 
AddModelError
üü (
(
üü( )
$str
üü) 1
,
üü1 2
$str
üü3 K
)
üüK L
;
üüL M
if
°° 
(
°° 
string
°° 
.
°° 
IsNullOrEmpty
°° $
(
°°$ %
productoView
°°% 1
.
°°1 2
Descripcion
°°2 =
)
°°= >
)
°°> ?

ModelState
¢¢ 
.
¢¢ 
AddModelError
¢¢ (
(
¢¢( )
$str
¢¢) 6
,
¢¢6 7
$str
¢¢8 K
)
¢¢K L
;
¢¢L M
if
££ 
(
££ 
string
££ 
.
££ 
IsNullOrEmpty
££ $
(
££$ %
productoView
££% 1
.
££1 2
Descripcion
££2 =
)
££= >
||
££? A
productoView
££B N
.
££N O
Descripcion
££O Z
.
££Z [
Length
££[ a
<=
££b d
$num
££e f
)
££f g

ModelState
§§ 
.
§§ 
AddModelError
§§ (
(
§§( )
$str
§§) 6
,
§§6 7
$str
§§8 ^
)
§§^ _
;
§§_ `
if
•• 
(
•• 
string
•• 
.
•• 
IsNullOrEmpty
•• $
(
••$ %
productoView
••% 1
.
••1 2
Descripcion
••2 =
)
••= >
||
••? A
productoView
••B N
.
••N O
Descripcion
••O Z
.
••Z [
Length
••[ a
>
••b c
$num
••d h
)
••h i

ModelState
¶¶ 
.
¶¶ 
AddModelError
¶¶ (
(
¶¶( )
$str
¶¶) 6
,
¶¶6 7
$str
¶¶8 _
)
¶¶_ `
;
¶¶` a
if
®® 
(
®® 
productoView
®® 
.
®® 
Stock
®® "
==
®®# %
$num
®®& '
||
®®( *
string
®®+ 1
.
®®1 2
IsNullOrEmpty
®®2 ?
(
®®? @
productoView
®®@ L
.
®®L M
Stock
®®M R
.
®®R S
ToString
®®S [
(
®®[ \
)
®®\ ]
)
®®] ^
)
®®^ _

ModelState
©© 
.
©© 
AddModelError
©© (
(
©©( )
$str
©©) 0
,
©©0 1
$str
©©2 E
)
©©E F
;
©©F G
bool
™™ 
isStockValid
™™ 
=
™™ 
productoView
™™  ,
.
™™, -
Stock
™™- 2
==
™™3 5
$num
™™6 7
||
™™8 :
string
™™; A
.
™™A B
IsNullOrEmpty
™™B O
(
™™O P
productoView
™™P \
.
™™\ ]
Stock
™™] b
.
™™b c
ToString
™™c k
(
™™k l
)
™™l m
)
™™m n
||
™™o q
Regex
™™r w
.
™™w x
IsMatch
™™x 
(™™ Ä
productoView™™Ä å
.™™å ç
Stock™™ç í
.™™í ì
ToString™™ì õ
(™™õ ú
)™™ú ù
,™™ù û
NumerosRegex™™ü ´
)™™´ ¨
;™™¨ ≠
if
´´ 
(
´´ 
!
´´ 
isStockValid
´´ 
)
´´ 

ModelState
¨¨ 
.
¨¨ 
AddModelError
¨¨ (
(
¨¨( )
$str
¨¨) 0
,
¨¨0 1
$str
¨¨2 Y
)
¨¨Y Z
;
¨¨Z [
if
ÆÆ 
(
ÆÆ 
productoView
ÆÆ 
.
ÆÆ 
PrecioUnitario
ÆÆ +
==
ÆÆ, .
$num
ÆÆ/ 0
||
ÆÆ1 3
string
ÆÆ4 :
.
ÆÆ: ;
IsNullOrEmpty
ÆÆ; H
(
ÆÆH I
productoView
ÆÆI U
.
ÆÆU V
PrecioUnitario
ÆÆV d
.
ÆÆd e
ToString
ÆÆe m
(
ÆÆm n
)
ÆÆn o
)
ÆÆo p
)
ÆÆp q

ModelState
ØØ 
.
ØØ 
AddModelError
ØØ (
(
ØØ( )
$str
ØØ) 9
,
ØØ9 :
$str
ØØ; N
)
ØØN O
;
ØØO P
bool
∞∞ #
isPrecioUnitarioValid
∞∞ &
=
∞∞' (
productoView
∞∞) 5
.
∞∞5 6
PrecioUnitario
∞∞6 D
==
∞∞E G
$num
∞∞H I
||
∞∞J L
string
∞∞M S
.
∞∞S T
IsNullOrEmpty
∞∞T a
(
∞∞a b
productoView
∞∞b n
.
∞∞n o
PrecioUnitario
∞∞o }
.
∞∞} ~
ToString∞∞~ Ü
(∞∞Ü á
)∞∞á à
)∞∞à â
||∞∞ä å
Regex∞∞ç í
.∞∞í ì
IsMatch∞∞ì ö
(∞∞ö õ
productoView∞∞õ ß
.∞∞ß ®
PrecioUnitario∞∞® ∂
.∞∞∂ ∑
ToString∞∞∑ ø
(∞∞ø ¿
)∞∞¿ ¡
,∞∞¡ ¬"
NumeroDecimalRegex∞∞√ ’
)∞∞’ ÷
;∞∞÷ ◊
if
±± 
(
±± 
!
±± #
isPrecioUnitarioValid
±± &
)
±±& '

ModelState
≤≤ 
.
≤≤ 
AddModelError
≤≤ (
(
≤≤( )
$str
≤≤) 9
,
≤≤9 :
$str
≤≤; U
)
≤≤U V
;
≤≤V W
}
≥≥ 	
}
¥¥ 
}µµ ˘ä
xC:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Services\VentaService.cs
	namespace 	
ECOMMERCE_TRESB
 
. 
Services "
{ 
public 

class 
VentaService 
: 
IVentaService  -
{ 
private 
readonly 

DbConexion #
conexion$ ,
;, -
private 
readonly 
IProductoService )
serviceProducto* 9
;9 :
public 
VentaService 
( 

DbConexion &
conexion' /
)/ 0
{ 	
this 
. 
conexion 
= 
conexion $
;$ %
serviceProducto 
= 
new !
ProductoService" 1
(1 2
conexion2 :
): ;
;; <
} 	
public 
Venta 
GetVentaById !
(! "
int" %
?% &
IdVenta' .
). /
{ 	
if 
( 
IdVenta 
== 
null 
)  
return 
null 
; 
Venta 
venta 
= 
conexion "
." #
Ventas# )
.) *
Where* /
(/ 0
o0 1
=>2 4
o5 6
.6 7
Id7 9
==: <
IdVenta= D
)D E
.E F
FirstOrDefaultF T
(T U
)U V
;V W
return 
venta 
; 
} 	
public!! 
List!! 
<!! 
Venta!! 
>!! 
GetVentasAsList!! *
(!!* +
)!!+ ,
{"" 	
return## 
conexion## 
.## 
Ventas## "
.##" #
Include### *
(##* +
u##+ ,
=>##- /
u##0 1
.##1 2
Usuario##2 9
)##9 :
.##: ;
ToList##; A
(##A B
)##B C
;##C D
}$$ 	
public&& 
List&& 
<&& 
Venta&& 
>&& "
GetVentasDeUsuarioById&& 1
(&&1 2
int&&2 5
?&&5 6
	IdUsuario&&7 @
)&&@ A
{'' 	
return(( 
conexion(( 
.(( 
Ventas(( "
.((" #
Where((# (
(((( )
v(() *
=>((+ -
v((. /
.((/ 0
	IdUsuario((0 9
==((: <
	IdUsuario((= F
)((F G
.((G H
Include((H O
(((O P
u((P Q
=>((R T
u((U V
.((V W
Usuario((W ^
)((^ _
.((_ `
ToList((` f
(((f g
)((g h
;((h i
})) 	
public++ 
void++ 
EliminarVenta++ !
(++! "
int++" %
?++% &
IdVenta++' .
)++. /
{,, 	
var-- 
VentaDB-- 
=-- 
GetVentaById-- &
(--& '
IdVenta--' .
)--. /
;--/ 0
conexion.. 
... 
Ventas.. 
... 
Remove.. "
(.." #
VentaDB..# *
)..* +
;..+ ,
conexion// 
.// 
SaveChanges//  
(//  !
)//! "
;//" #
}00 	
public22 
List22 
<22 
DetalleVenta22  
>22  !"
GetDetalleVentasAsList22" 8
(228 9
)229 :
{33 	
return44 
conexion44 
.44 
DetallesVenta44 )
.44) *
Include44* 1
(441 2
v442 3
=>444 6
v447 8
.448 9
Venta449 >
)44> ?
.44? @
Include44@ G
(44G H
p44H I
=>44J L
p44M N
.44N O
Producto44O W
)44W X
.44X Y
ToList44Y _
(44_ `
)44` a
;44a b
}55 	
public77 
void77 
GuardarVenta77  
(77  !
Usuario77! (
usuario77) 0
,770 1
List772 6
<776 7
CarritoCompras777 E
>77E F
	productos77G P
,77P Q
	Direccion77R [
	direccion77\ e
,77e f
byte77g k

TipoDePago77l v
)77v w
{88 	
var99 
venta99 
=99 
new99 
Venta99 !
{:: 
TipoPago;; 
=;; 

TipoDePago;; %
,;;% &
Fecha<< 
=<< 
DateTime<<  
.<<  !
Now<<! $
,<<$ %
	IdUsuario== 
=== 
usuario== #
.==# $
Id==$ &
,==& '
IdDireccion>> 
=>> 
	direccion>> '
.>>' (
Id>>( *
}?? 
;?? 
conexion@@ 
.@@ 
Ventas@@ 
.@@ 
Add@@ 
(@@  
venta@@  %
)@@% &
;@@& '
conexionAA 
.AA 
SaveChangesAA  
(AA  !
)AA! "
;AA" #
foreachCC 
(CC 
varCC 
productoCC !
inCC" $
	productosCC% .
)CC. /
{DD 
ProductoEE 

productoBdEE #
=EE$ %
serviceProductoEE& 5
.EE5 6
GetProductoByIdEE6 E
(EEE F
productoEEF N
.EEN O

IdProductoEEO Y
)EEY Z
;EEZ [
DetalleVentaFF 
detalleFF $
=FF% &
newFF' *
DetalleVentaFF+ 7
{GG 

IdProductoHH 
=HH  

productoBdHH! +
.HH+ ,
IdHH, .
,HH. /
IdVentaII 
=II 
ventaII #
.II# $
IdII$ &
,II& '
PrecioUnitarioJJ "
=JJ# $

productoBdJJ% /
.JJ/ 0
PrecioUnitarioJJ0 >
,JJ> ?
CantidadKK 
=KK 
productoKK '
.KK' (
CantidadKK( 0
,KK0 1
SubtotalLL 
=LL 

productoBdLL )
.LL) *
PrecioUnitarioLL* 8
*LL9 :
productoLL; C
.LLC D
CantidadLLD L
}MM 
;MM 
ventaOO 
.OO 

MontoTotalOO  
+=OO! #
detalleOO$ +
.OO+ ,
SubtotalOO, 4
;OO4 5
conexionPP 
.PP 
DetallesVentaPP &
.PP& '
AddPP' *
(PP* +
detallePP+ 2
)PP2 3
;PP3 4,
 EliminarProductoDeCarritoComprasRR 0
(RR0 1
productoRR1 9
.RR9 :

IdProductoRR: D
,RRD E
usuarioRRF M
.RRM N
IdRRN P
)RRP Q
;RRQ R
conexionSS 
.SS 
SaveChangesSS $
(SS$ %
)SS% &
;SS& '
}TT 
}UU 	
publicWW 
ListWW 
<WW 
ListaFavoritosWW "
>WW" #)
GetListaFavoritosByUserAsListWW$ A
(WWA B
intWWB E
?WWE F
	IdUsuarioWWG P
)WWP Q
{XX 	
returnYY 
conexionYY 
.YY 
ListaDeFavoritosYY ,
.YY, -
WhereYY- 2
(YY2 3
lfYY3 5
=>YY6 8
lfYY9 ;
.YY; <
	IdUsuarioYY< E
==YYF H
	IdUsuarioYYI R
)YYR S
.YYS T
IncludeYYT [
(YY[ \
uYY\ ]
=>YY^ `
uYYa b
.YYb c
UsuarioYYc j
)YYj k
.YYk l
IncludeYYl s
(YYs t
pYYt u
=>YYv x
pYYy z
.YYz {
	Productos	YY{ Ñ
)
YYÑ Ö
.
YYÖ Ü
ToList
YYÜ å
(
YYå ç
)
YYç é
;
YYé è
}ZZ 	
public\\ 
ListaFavoritos\\ 1
%GetListaFavoritosByProductIdAndUserId\\ C
(\\C D
int\\D G
?\\G H

IdProducto\\I S
,\\S T
int\\U X
?\\X Y
	IdUsuario\\Z c
)\\c d
{]] 	
if^^ 
(^^ 

IdProducto^^ 
==^^ 
null^^ "
&&^^# %
	IdUsuario^^& /
==^^0 2
null^^3 7
)^^7 8
return__ 
null__ 
;__ 
ListaFavoritosaa 
ListaFavoritosaa )
=aa* +
conexionaa, 4
.aa4 5
ListaDeFavoritosaa5 E
.aaE F
WhereaaF K
(aaK L
oaaL M
=>aaN P
oaaQ R
.aaR S

IdProductoaaS ]
==aa^ `

IdProductoaaa k
&&aal n
oaao p
.aap q
	IdUsuarioaaq z
==aa{ }
	IdUsuario	aa~ á
)
aaá à
.
aaà â
FirstOrDefault
aaâ ó
(
aaó ò
)
aaò ô
;
aaô ö
returnbb 
ListaFavoritosbb !
;bb! "
}cc 	
publicee 
boolee 4
(ExisteProductIdAndUserIdEnListaFavoritosee <
(ee< =
intee= @
?ee@ A
	IdUsuarioeeB K
,eeK L
inteeM P
?eeP Q

IdProductoeeR \
)ee\ ]
{ff 	
vargg 
ListaFavoritosgg 
=gg  )
GetListaFavoritosByUserAsListgg! >
(gg> ?
	IdUsuariogg? H
)ggH I
;ggI J
foreachhh 
(hh 
varhh 
productohh !
inhh" $
ListaFavoritoshh% 3
)hh3 4
{ii 
ifjj 
(jj 
productojj 
.jj 

IdProductojj '
==jj( *

IdProductojj+ 5
)jj5 6
returnkk 
truekk 
;kk  
}ll 
returnmm 
falsemm 
;mm 
}nn 	
publicpp 
voidpp !
AgregarProductoAListapp )
(pp) *
Usuariopp* 1
usuariopp2 9
,pp9 :
Productopp; C
productoppD L
)ppL M
{qq 	
ListaFavoritosrr 
agregarProductorr *
=rr+ ,
newrr- 0
ListaFavoritosrr1 ?
{ss 

IdProductott 
=tt 
productott %
.tt% &
Idtt& (
,tt( )
	IdUsuariouu 
=uu 
usuariouu #
.uu# $
Iduu$ &
}vv 
;vv 
conexionww 
.ww 
ListaDeFavoritosww %
.ww% &
Addww& )
(ww) *
agregarProductoww* 9
)ww9 :
;ww: ;
conexionxx 
.xx 
SaveChangesxx  
(xx  !
)xx! "
;xx" #
}yy 	
public{{ 
void{{ #
EliminarProductoDeLista{{ +
({{+ ,
int{{, /
?{{/ 0

IdProducto{{1 ;
,{{; <
int{{= @
?{{@ A
	IdUsuario{{B K
){{K L
{|| 	
var}} 
ListaDeseosDB}} 
=}} 1
%GetListaFavoritosByProductIdAndUserId}}  E
(}}E F

IdProducto}}F P
,}}P Q
	IdUsuario}}R [
)}}[ \
;}}\ ]
conexion~~ 
.~~ 
ListaDeFavoritos~~ %
.~~% &
Remove~~& ,
(~~, -
ListaDeseosDB~~- :
)~~: ;
;~~; <
conexion 
. 
SaveChanges  
(  !
)! "
;" #
}
ÄÄ 	
public
ÇÇ 
List
ÇÇ 
<
ÇÇ 
CarritoCompras
ÇÇ "
>
ÇÇ" #+
GetCarritoComprasByUserAsList
ÇÇ$ A
(
ÇÇA B
int
ÇÇB E
?
ÇÇE F
	IdUsuario
ÇÇG P
)
ÇÇP Q
{
ÉÉ 	
return
ÑÑ 
conexion
ÑÑ 
.
ÑÑ 
CarritoDeCompras
ÑÑ ,
.
ÑÑ, -
Where
ÑÑ- 2
(
ÑÑ2 3
lf
ÑÑ3 5
=>
ÑÑ6 8
lf
ÑÑ9 ;
.
ÑÑ; <
	IdUsuario
ÑÑ< E
==
ÑÑF H
	IdUsuario
ÑÑI R
)
ÑÑR S
.
ÑÑS T
Include
ÑÑT [
(
ÑÑ[ \
u
ÑÑ\ ]
=>
ÑÑ^ `
u
ÑÑa b
.
ÑÑb c
Usuario
ÑÑc j
)
ÑÑj k
.
ÑÑk l
Include
ÑÑl s
(
ÑÑs t
p
ÑÑt u
=>
ÑÑv x
p
ÑÑy z
.
ÑÑz {
	ProductosÑÑ{ Ñ
)ÑÑÑ Ö
.ÑÑÖ Ü
ToListÑÑÜ å
(ÑÑå ç
)ÑÑç é
;ÑÑé è
}
ÖÖ 	
public
áá 
CarritoCompras
áá 3
%GetCarritoComprasByProductIdAndUserId
áá C
(
ááC D
int
ááD G
?
ááG H
	IdUsuario
ááI R
,
ááR S
int
ááT W
?
ááW X

IdProducto
ááY c
)
áác d
{
àà 	
if
ââ 
(
ââ 

IdProducto
ââ 
==
ââ 
null
ââ "
&&
ââ# %
	IdUsuario
ââ& /
==
ââ0 2
null
ââ3 7
)
ââ7 8
return
ää 
null
ää 
;
ää 
CarritoCompras
åå 
CarritoDeCompras
åå +
=
åå, -
conexion
åå. 6
.
åå6 7
CarritoDeCompras
åå7 G
.
ååG H
Where
ååH M
(
ååM N
o
ååN O
=>
ååP R
o
ååS T
.
ååT U

IdProducto
ååU _
==
åå` b

IdProducto
ååc m
&&
åån p
o
ååq r
.
åår s
	IdUsuario
åås |
==
åå} 
	IdUsuarioååÄ â
)ååâ ä
.ååä ã
FirstOrDefaultååã ô
(ååô ö
)ååö õ
;ååõ ú
return
çç 
CarritoDeCompras
çç #
;
çç# $
}
éé 	
public
êê 
bool
êê 6
(ExisteProductIdAndUserIdEnCarritoCompras
êê <
(
êê< =
int
êê= @
?
êê@ A
	IdUsuario
êêB K
,
êêK L
int
êêM P
?
êêP Q

IdProducto
êêR \
)
êê\ ]
{
ëë 	
var
íí 
CarritoComprasDB
íí  
=
íí! "+
GetCarritoComprasByUserAsList
íí# @
(
íí@ A
	IdUsuario
ííA J
)
ííJ K
;
ííK L
foreach
ìì 
(
ìì 
var
ìì 
producto
ìì !
in
ìì" $
CarritoComprasDB
ìì% 5
)
ìì5 6
{
îî 
if
ïï 
(
ïï 
producto
ïï 
.
ïï 

IdProducto
ïï '
==
ïï( *

IdProducto
ïï+ 5
)
ïï5 6
return
ññ 
true
ññ 
;
ññ  
}
óó 
return
òò 
false
òò 
;
òò 
}
ôô 	
public
õõ 
void
õõ ,
AgregarProductoACarritoCompras
õõ 2
(
õõ2 3
Usuario
õõ3 :
usuario
õõ; B
,
õõB C
Producto
õõD L
producto
õõM U
,
õõU V
int
õõW Z
cantidad
õõ[ c
)
õõc d
{
úú 	
CarritoCompras
ùù 
agregarProducto
ùù *
=
ùù+ ,
new
ùù- 0
CarritoCompras
ùù1 ?
{
ûû 

IdProducto
üü 
=
üü 
producto
üü %
.
üü% &
Id
üü& (
,
üü( )
Cantidad
†† 
=
†† 
cantidad
†† #
,
††# $
	IdUsuario
°° 
=
°° 
usuario
°° #
.
°°# $
Id
°°$ &
}
¢¢ 
;
¢¢ 
conexion
££ 
.
££ 
CarritoDeCompras
££ %
.
££% &
Add
££& )
(
££) *
agregarProducto
££* 9
)
££9 :
;
££: ;
conexion
§§ 
.
§§ 
SaveChanges
§§  
(
§§  !
)
§§! "
;
§§" #
}
•• 	
public
ßß 
void
ßß 3
%ActualizarCantidadByIdProductoCarrito
ßß 9
(
ßß9 :
int
ßß: =
?
ßß= >

IdProducto
ßß? I
,
ßßI J
int
ßßK N
?
ßßN O
	IdUsuario
ßßP Y
,
ßßY Z
int
ßßZ ]
NuevaCantidad
ßß^ k
)
ßßk l
{
®® 	
var
©© 
CarritoComprasDB
©©  
=
©©! "3
%GetCarritoComprasByProductIdAndUserId
©©# H
(
©©H I
	IdUsuario
©©I R
,
©©R S

IdProducto
©©T ^
)
©©^ _
;
©©_ `
CarritoComprasDB
™™ 
.
™™ 
Cantidad
™™ %
=
™™& '
NuevaCantidad
™™( 5
;
™™5 6
conexion
´´ 
.
´´ 
SaveChanges
´´  
(
´´  !
)
´´! "
;
´´" #
}
¨¨ 	
public
ÆÆ 
void
ÆÆ .
 EliminarProductoDeCarritoCompras
ÆÆ 4
(
ÆÆ4 5
int
ÆÆ5 8
?
ÆÆ8 9

IdProducto
ÆÆ: D
,
ÆÆD E
int
ÆÆF I
?
ÆÆI J
	IdUsuario
ÆÆK T
)
ÆÆT U
{
ØØ 	
var
∞∞ 
CarritoComprasDB
∞∞  
=
∞∞! "3
%GetCarritoComprasByProductIdAndUserId
∞∞# H
(
∞∞H I
	IdUsuario
∞∞I R
,
∞∞R S

IdProducto
∞∞T ^
)
∞∞^ _
;
∞∞_ `
conexion
±± 
.
±± 
CarritoDeCompras
±± %
.
±±% &
Remove
±±& ,
(
±±, -
CarritoComprasDB
±±- =
)
±±= >
;
±±> ?
conexion
≤≤ 
.
≤≤ 
SaveChanges
≤≤  
(
≤≤  !
)
≤≤! "
;
≤≤" #
}
≥≥ 	
}
µµ 
}∂∂ 