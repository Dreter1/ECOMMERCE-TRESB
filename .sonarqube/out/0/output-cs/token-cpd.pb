�
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
} �
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
} �	
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
} �
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
}== �
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
UnityMvcActivator	v �
.
� �
Start
� �
)
� �
)
� �
]
� �
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
UnityMvcActivator	v �
.
� �
Shutdown
� �
)
� �
)
� �
]
� �
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
}&& �
�C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Controllers\BaseAutController.cs
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
} �_
�C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Controllers\CategoriaController.cs
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
�� 
.
�� 
EliminarCategoria
�� *
(
��* +
IdCategoria
��+ 6
)
��6 7
;
��7 8
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 0
,
��0 1
$str
��2 =
)
��= >
;
��> ?
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
private
�� 
void
�� 
ValidarCategoria
�� %
(
��% &
CategoriaView
��& 3
categoriaView
��4 A
)
��A B
{
�� 	
string
�� 
LetrasRegex
�� 
=
��  
$str
��! 1
;
��1 2
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
categoriaView
��% 2
.
��2 3
Nombre
��3 9
)
��9 :
)
��: ;

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 F
)
��F G
;
��G H
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
categoriaView
��% 2
.
��2 3
Nombre
��3 9
)
��9 :
||
��; =
categoriaView
��> K
.
��K L
Nombre
��L R
.
��R S
Length
��S Y
<=
��Z \
$num
��] ^
)
��^ _

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
categoriaView
��% 2
.
��2 3
Nombre
��3 9
)
��9 :
||
��; =
categoriaView
��> K
.
��K L
Nombre
��L R
.
��R S
Length
��S Y
>
��Z [
$num
��\ _
)
��_ `

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 Y
)
��Y Z
;
��Z [
bool
�� 
isNombreValid
�� 
=
��  
string
��! '
.
��' (
IsNullOrEmpty
��( 5
(
��5 6
categoriaView
��6 C
.
��C D
Nombre
��D J
)
��J K
||
��L N
Regex
��O T
.
��T U
IsMatch
��U \
(
��\ ]
categoriaView
��] j
.
��j k
Nombre
��k q
,
��q r
LetrasRegex
��s ~
)
��~ 
;�� �
if
�� 
(
�� 
!
�� 
isNombreValid
�� 
)
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 K
)
��K L
;
��L M
}
�� 	
}
�� 
}�� �
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
} �
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
categoriaService	~ �
)
� �
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
�� 	
public
�� 
bool
�� 
IsLogged
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
Session
�� 
[
�� 
$str
�� #
]
��# $
!=
��% '
null
��( ,
&&
��- /
Session
��0 7
[
��7 8
$str
��8 ?
]
��? @
!=
��A C
null
��D H
)
��H I
return
�� 
true
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
Usuario
�� 
(
�� 
UsuarioView
�� (
usuarioView
��) 4
)
��4 5
{
�� 	
string
�� 
LetrasRegex
�� 
=
��  
$str
��! 1
;
��1 2
string
�� 
NumerosRegex
�� 
=
��  !
$str
��" 3
;
��3 4
string
�� 

EmailRegex
�� 
=
�� 
$str��  �
;��� �
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Email
��1 6
)
��6 7
)
��7 8

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 E
)
��E F
;
��F G
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Email
��1 6
)
��6 7
||
��8 :
usuarioView
��; F
.
��F G
Email
��G L
.
��L M
Length
��M S
<=
��T V
$num
��W X
)
��X Y

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 X
)
��X Y
;
��Y Z
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Email
��1 6
)
��6 7
||
��8 :
usuarioView
��; F
.
��F G
Email
��G L
.
��L M
Length
��M S
>
��T U
$num
��V Y
)
��Y Z

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 X
)
��X Y
;
��Y Z
bool
�� 
isEmailValid
�� 
=
�� 
string
��  &
.
��& '
IsNullOrEmpty
��' 4
(
��4 5
usuarioView
��5 @
.
��@ A
Email
��A F
)
��F G
||
��H J
Regex
��K P
.
��P Q
IsMatch
��Q X
(
��X Y
usuarioView
��Y d
.
��d e
Email
��e j
,
��j k

EmailRegex
��l v
)
��v w
;
��w x
if
�� 
(
�� 
!
�� 
isEmailValid
�� 
)
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 M
)
��M N
;
��N O
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Clave
��1 6
)
��6 7
)
��7 8

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 E
)
��E F
;
��F G
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Nombres
��1 8
)
��8 9
)
��9 :

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 G
)
��G H
;
��H I
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Nombres
��1 8
)
��8 9
||
��: <
usuarioView
��= H
.
��H I
Nombres
��I P
.
��P Q
Length
��Q W
<=
��X Z
$num
��[ \
)
��\ ]

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Nombres
��1 8
)
��8 9
||
��: <
usuarioView
��= H
.
��H I
Nombres
��I P
.
��P Q
Length
��Q W
>
��X Y
$num
��Z ]
)
��] ^

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
bool
�� 
isNombreValid
�� 
=
��  
string
��! '
.
��' (
IsNullOrEmpty
��( 5
(
��5 6
usuarioView
��6 A
.
��A B
Nombres
��B I
)
��I J
||
��K M
Regex
��N S
.
��S T
IsMatch
��T [
(
��[ \
usuarioView
��\ g
.
��g h
Nombres
��h o
,
��o p
LetrasRegex
��q |
)
��| }
;
��} ~
if
�� 
(
�� 
!
�� 
isNombreValid
�� 
)
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 L
)
��L M
;
��M N
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
	Apellidos
��1 :
)
��: ;
)
��; <

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 I
)
��I J
;
��J K
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
	Apellidos
��1 :
)
��: ;
||
��< >
usuarioView
��? J
.
��J K
	Apellidos
��K T
.
��T U
Length
��U [
<=
��\ ^
$num
��_ `
)
��` a

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 \
)
��\ ]
;
��] ^
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
	Apellidos
��1 :
)
��: ;
||
��< >
usuarioView
��? J
.
��J K
	Apellidos
��K T
.
��T U
Length
��U [
>
��\ ]
$num
��^ a
)
��a b

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 \
)
��\ ]
;
��] ^
bool
�� 
isApellidosValid
�� !
=
��" #
string
��$ *
.
��* +
IsNullOrEmpty
��+ 8
(
��8 9
usuarioView
��9 D
.
��D E
	Apellidos
��E N
)
��N O
||
��P R
Regex
��S X
.
��X Y
IsMatch
��Y `
(
��` a
usuarioView
��a l
.
��l m
	Apellidos
��m v
,
��v w
LetrasRegex��x �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isApellidosValid
�� !
)
��! "

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 N
)
��N O
;
��O P
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
FechaNacimiento
��1 @
.
��@ A
ToString
��A I
(
��I J
)
��J K
)
��K L
)
��L M

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) :
,
��: ;
$str
��< O
)
��O P
;
��P Q
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Celular
��1 8
)
��8 9
)
��9 :

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 G
)
��G H
;
��H I
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Celular
��1 8
)
��8 9
||
��: <
usuarioView
��= H
.
��H I
Celular
��I P
.
��P Q
Length
��Q W
<=
��X Z
$num
��[ \
)
��\ ]

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Celular
��1 8
)
��8 9
||
��: <
usuarioView
��= H
.
��H I
Celular
��I P
.
��P Q
Length
��Q W
>
��X Y
$num
��Z \
)
��\ ]

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Y
)
��Y Z
;
��Z [
bool
�� 
isCelularValid
�� 
=
��  !
string
��" (
.
��( )
IsNullOrEmpty
��) 6
(
��6 7
usuarioView
��7 B
.
��B C
Celular
��C J
)
��J K
||
��L N
Regex
��O T
.
��T U
IsMatch
��U \
(
��\ ]
usuarioView
��] h
.
��h i
Celular
��i p
,
��p q
NumerosRegex
��r ~
)
��~ 
;�� �
if
�� 
(
�� 
!
�� 
isCelularValid
�� 
)
��  

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 M
)
��M N
;
��N O
}
�� 	
}
�� 
}�� ��
�C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Controllers\ProductoController.cs
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
� �
comentarios
� �
,
� �
ISessionService
� �
session
� �
)
� �
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
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
Texto
��% *
)
��* +
)
��+ ,
return
�� 
false
�� 
;
�� 
comentarios
�� 
.
�� 
GuardarComentario
�� )
(
��) *
usuario
��* 1
,
��1 2
producto
��3 ;
,
��; <
Texto
��= B
)
��B C
;
��C D
return
�� 
true
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
bool
�� 5
'ExisteProductoIdYUsuarioIdEnComentarios
�� ;
(
��; <
int
��< ?
?
��? @
	IdUsuario
��A J
,
��J K
int
��L O
?
��O P

IdProducto
��Q [
)
��[ \
{
�� 	
if
�� 
(
�� 
	IdUsuario
�� 
==
�� 
null
�� !
&&
��" $

IdProducto
��% /
==
��0 2
null
��3 7
)
��7 8
return
�� 
false
�� 
;
�� 
var
�� (
existeEnProductoComentario
�� *
=
��+ ,
comentarios
��- 8
.
��8 93
%ExisteProductIdAndUserIdEnComentarios
��9 ^
(
��^ _
	IdUsuario
��_ h
,
��h i

IdProducto
��j t
)
��t u
;
��u v
if
�� 
(
�� 
!
�� (
existeEnProductoComentario
�� +
)
��+ ,
return
�� 
true
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
Editar
�� "
(
��" #
int
��# &
?
��& '

IdProducto
��( 2
)
��2 3
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
EsAdministrativo
�� (
(
��( )
)
��) *
)
��* +
{
�� 
if
�� 
(
�� 

IdProducto
�� 
==
�� !
null
��" &
)
��& '
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
Producto
�� 
producto
�� !
=
��" #
servicio
��$ ,
.
��, -
GetProductoById
��- <
(
��< =

IdProducto
��= G
)
��G H
;
��H I
if
�� 
(
�� 
producto
�� 
==
�� 
null
��  $
)
��$ %
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
ProductoView
�� 
productoView
�� )
=
��* +
servicio
��, 4
.
��4 5#
ProductoToProductView
��5 J
(
��J K
producto
��K S
)
��S T
;
��T U
ViewBag
�� 
.
�� 
ListaCategoria
�� &
=
��' (
categoriaService
��) 9
.
��9 :!
GetCategoriasAsList
��: M
(
��M N
)
��N O
;
��O P
return
�� 
View
�� 
(
�� 
productoView
�� (
)
��( )
;
��) *
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
Editar
�� "
(
��" #
int
��# &
?
��& '

IdProducto
��( 2
,
��2 3
ProductoView
��4 @
productoView
��A M
)
��M N
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
EsAdministrativo
�� (
(
��( )
)
��) *
)
��* +
{
�� 
if
�� 
(
�� 

IdProducto
�� 
==
�� !
null
��" &
)
��& '
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
validarProducto
�� 
(
��  
productoView
��  ,
)
��, -
;
��- .
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� &
&&
��' )
productoView
��* 6
.
��6 7
Stock
��7 <
>
��= >
$num
��? @
&&
��A C
productoView
��D P
.
��P Q
PrecioUnitario
��Q _
>
��` a
$num
��b c
)
��c d
{
�� 
Producto
�� 
producto
�� %
=
��& '
servicio
��( 0
.
��0 1#
ProductViewToProducto
��1 F
(
��F G
productoView
��G S
)
��S T
;
��T U
servicio
�� 
.
�� !
AsignarRutaDeImagen
�� 0
(
��0 1
productoView
��1 =
,
��= >
producto
��? G
)
��G H
;
��H I
servicio
�� 
.
�� 
EditarProducto
�� +
(
��+ ,

IdProducto
��, 6
,
��6 7
producto
��8 @
)
��@ A
;
��A B
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 4
,
��4 5
$str
��6 @
)
��@ A
;
��A B
}
�� 
ViewBag
�� 
.
�� 
StockPrecio
�� #
=
��$ %
$str
��& \
;
��\ ]
ViewBag
�� 
.
�� 
ListaCategoria
�� &
=
��' (
categoriaService
��) 9
.
��9 :!
GetCategoriasAsList
��: M
(
��M N
)
��N O
;
��O P
return
�� 
View
�� 
(
�� 
productoView
�� (
)
��( )
;
��) *
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
Eliminar
�� $
(
��$ %
int
��% (
?
��( )

IdProducto
��* 4
)
��4 5
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
EsAdministrativo
�� (
(
��( )
)
��) *
)
��* +
{
�� 
if
�� 
(
�� 

IdProducto
�� 
==
�� !
null
��" &
)
��& '
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
servicio
�� 
.
�� 
EliminarProducto
�� )
(
��) *

IdProducto
��* 4
)
��4 5
;
��5 6
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 0
,
��0 1
$str
��2 <
)
��< =
;
��= >
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� "
GetProductByIdAsJson
�� 0
(
��0 1
int
��1 4

idProducto
��5 ?
)
��? @
{
�� 	
Producto
�� 
producto
�� 
=
�� 
servicio
��  (
.
��( )
GetProductoById
��) 8
(
��8 9

idProducto
��9 C
)
��C D
;
��D E
return
�� 
Json
�� 
(
�� 
new
�� 
{
�� 
producto
�� 
.
�� 
Id
�� 
,
�� 
producto
�� 
.
�� 
Nombre
�� 
,
��  
producto
�� 
.
�� 
PrecioUnitario
�� '
,
��' (
producto
�� 
.
�� 
Stock
�� 
}
�� 
,
�� !
JsonRequestBehavior
�� "
.
��" #
AllowGet
��# +
)
��+ ,
;
��, -
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� !
_GetProductosAsView
�� /
(
��/ 0
int
��0 3
IdCategoria
��4 ?
,
��? @
int
��A D
index
��E J
,
��J K
int
��L O
NumItems
��P X
)
��X Y
{
�� 	
List
�� 
<
�� 
Producto
�� 
>
�� 
	productos
�� $
=
��% &
servicio
��' /
.
��/ 0)
GetProductsAsListByCategory
��0 K
(
��K L
IdCategoria
��L W
,
��W X
index
��Y ^
,
��^ _
NumItems
��` h
)
��h i
;
��i j
return
�� 
View
�� 
(
�� 
	productos
�� !
)
��! "
;
��" #
}
�� 	
private
�� 
void
�� 
validarProducto
�� $
(
��$ %
ProductoView
��% 1
productoView
��2 >
)
��> ?
{
�� 	
string
�� 
LetrasRegex
�� 
=
��  
$str
��! 1
;
��1 2
string
�� 
NumerosRegex
�� 
=
��  !
$str
��" 3
;
��3 4
string
��  
NumeroDecimalRegex
�� %
=
��& '
$str
��( B
;
��B C
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Nombre
��2 8
)
��8 9
)
��9 :

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 F
)
��F G
;
��G H
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Nombre
��2 8
)
��8 9
||
��: <
productoView
��= I
.
��I J
Nombre
��J P
.
��P Q
Length
��Q W
<=
��X Z
$num
��[ \
)
��\ ]

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Nombre
��2 8
)
��8 9
||
��: <
productoView
��= I
.
��I J
Nombre
��J P
.
��P Q
Length
��Q W
>
��X Y
$num
��Z ]
)
��] ^

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 Y
)
��Y Z
;
��Z [
bool
�� 
isNombreValid
�� 
=
��  
string
��! '
.
��' (
IsNullOrEmpty
��( 5
(
��5 6
productoView
��6 B
.
��B C
Nombre
��C I
)
��I J
||
��K M
Regex
��N S
.
��S T
IsMatch
��T [
(
��[ \
productoView
��\ h
.
��h i
Nombre
��i o
,
��o p
LetrasRegex
��q |
)
��| }
;
��} ~
if
�� 
(
�� 
!
�� 
isNombreValid
�� 
)
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 K
)
��K L
;
��L M
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Descripcion
��2 =
)
��= >
)
��> ?

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 6
,
��6 7
$str
��8 K
)
��K L
;
��L M
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Descripcion
��2 =
)
��= >
||
��? A
productoView
��B N
.
��N O
Descripcion
��O Z
.
��Z [
Length
��[ a
<=
��b d
$num
��e f
)
��f g

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 6
,
��6 7
$str
��8 ^
)
��^ _
;
��_ `
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Descripcion
��2 =
)
��= >
||
��? A
productoView
��B N
.
��N O
Descripcion
��O Z
.
��Z [
Length
��[ a
>
��b c
$num
��d h
)
��h i

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 6
,
��6 7
$str
��8 _
)
��_ `
;
��` a
if
�� 
(
�� 
productoView
�� 
.
�� 
Stock
�� "
==
��# %
$num
��& '
||
��( *
string
��+ 1
.
��1 2
IsNullOrEmpty
��2 ?
(
��? @
productoView
��@ L
.
��L M
Stock
��M R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
)
��] ^
)
��^ _

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 E
)
��E F
;
��F G
bool
�� 
isStockValid
�� 
=
�� 
productoView
��  ,
.
��, -
Stock
��- 2
==
��3 5
$num
��6 7
||
��8 :
string
��; A
.
��A B
IsNullOrEmpty
��B O
(
��O P
productoView
��P \
.
��\ ]
Stock
��] b
.
��b c
ToString
��c k
(
��k l
)
��l m
)
��m n
||
��o q
Regex
��r w
.
��w x
IsMatch
��x 
(�� �
productoView��� �
.��� �
Stock��� �
.��� �
ToString��� �
(��� �
)��� �
,��� �
NumerosRegex��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isStockValid
�� 
)
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
productoView
�� 
.
�� 
PrecioUnitario
�� +
==
��, .
$num
��/ 0
||
��1 3
string
��4 :
.
��: ;
IsNullOrEmpty
��; H
(
��H I
productoView
��I U
.
��U V
PrecioUnitario
��V d
.
��d e
ToString
��e m
(
��m n
)
��n o
)
��o p
)
��p q

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 9
,
��9 :
$str
��; N
)
��N O
;
��O P
bool
�� #
isPrecioUnitarioValid
�� &
=
��' (
productoView
��) 5
.
��5 6
PrecioUnitario
��6 D
==
��E G
$num
��H I
||
��J L
string
��M S
.
��S T
IsNullOrEmpty
��T a
(
��a b
productoView
��b n
.
��n o
PrecioUnitario
��o }
.
��} ~
ToString��~ �
(��� �
)��� �
)��� �
||��� �
Regex��� �
.��� �
IsMatch��� �
(��� �
productoView��� �
.��� �
PrecioUnitario��� �
.��� �
ToString��� �
(��� �
)��� �
,��� �"
NumeroDecimalRegex��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� #
isPrecioUnitarioValid
�� &
)
��& '

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 9
,
��9 :
$str
��; U
)
��U V
;
��V W
}
�� 	
}
�� 
}�� ��
�C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Controllers\UsuarioController.cs
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
�� 
.
�� 
EditarUsuario
�� &
(
��& '
	IdUsuario
��' 0
,
��0 1
usuario
��2 9
)
��9 :
;
��: ;
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 0
,
��0 1
$str
��2 ;
)
��; <
;
��< =
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
Eliminar
�� $
(
��$ %
int
��% (
?
��( )
	IdUsuario
��* 3
)
��3 4
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
EsAdministrativo
�� (
(
��( )
)
��) *
)
��* +
{
�� 
if
�� 
(
�� 
	IdUsuario
�� 
==
��  
null
��! %
)
��% &
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
servicio
�� 
.
�� 
EliminarUsuario
�� (
(
��( )
	IdUsuario
��) 2
)
��2 3
;
��3 4
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 0
,
��0 1
$str
��2 ;
)
��; <
;
��< =
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
Perfil
�� "
(
��" #
int
��# &
?
��& '
	IdUsuario
��( 1
)
��1 2
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
IsLogged
��  
(
��  !
)
��! "
)
��" #
{
�� 
if
�� 
(
�� 
	IdUsuario
�� 
==
��  
null
��! %
)
��% &
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
Usuario
�� 
usuario
�� 
=
��  !
servicio
��" *
.
��* +
GetUsuarioById
��+ 9
(
��9 :
	IdUsuario
��: C
)
��C D
;
��D E
if
�� 
(
�� 
usuario
�� 
==
�� 
null
�� #
)
��# $
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
if
�� 
(
�� 
!
�� 
session
�� 
.
�� 
EsSuSession
�� (
(
��( )
	IdUsuario
��) 2
)
��2 3
)
��3 4
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >#
UsuarioPerfilEditView
�� %#
usuarioPerfilEditView
��& ;
=
��< =
servicio
��> F
.
��F G,
UsuarioToUsuarioPerfilEditView
��G e
(
��e f
usuario
��f m
)
��m n
;
��n o
ViewBag
�� 
.
�� 
ListaUsuarios
�� %
=
��& '
servicio
��( 0
.
��0 1
GetUsuariosAsList
��1 B
(
��B C
)
��C D
;
��D E
return
�� 
View
�� 
(
�� #
usuarioPerfilEditView
�� 1
)
��1 2
;
��2 3
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
Perfil
�� "
(
��" #
int
��# &
?
��& '
	IdUsuario
��( 1
,
��1 2#
UsuarioPerfilEditView
��3 H#
usuarioPerfilEditView
��I ^
)
��^ _
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
IsLogged
��  
(
��  !
)
��! "
)
��" #
{
�� 
if
�� 
(
�� 
	IdUsuario
�� 
==
��  
null
��! %
)
��% &
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >(
ValidarEditarPerfilUsuario
�� *
(
��* +#
usuarioPerfilEditView
��+ @
)
��@ A
;
��A B
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
��  
IsValid
��  '
)
��' (
{
��) *
ViewBag
�� 
.
�� 
ListaUsuarios
�� )
=
��* +
servicio
��, 4
.
��4 5
GetUsuariosAsList
��5 F
(
��F G
)
��G H
;
��H I
return
�� 
View
�� 
(
��  #
usuarioPerfilEditView
��  5
)
��5 6
;
��6 7
}
�� 
if
�� 
(
�� 
	IdUsuario
�� 
!=
��  
$num
��! "
)
��" #
{
�� 
Usuario
�� 
usuario
�� #
=
��$ %
servicio
��& .
.
��. /,
UsuarioPerfilEditViewToUsuario
��/ M
(
��M N#
usuarioPerfilEditView
��N c
)
��c d
;
��d e
servicio
�� 
.
�� 
EditarUsuario
�� *
(
��* +
	IdUsuario
��+ 4
,
��4 5
usuario
��6 =
)
��= >
;
��> ?
ViewBag
�� 
.
�� 
ListaUsuarios
�� )
=
��* +
servicio
��, 4
.
��4 5
GetUsuariosAsList
��5 F
(
��F G
)
��G H
;
��H I
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 4
,
��4 5
$str
��6 ?
,
��? @
new
��A D
{
��E F
	IdUsuario
��G P
=
��Q R
	IdUsuario
��S \
}
��] ^
)
��^ _
;
��_ `
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 8
)
��8 9
;
��9 :
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
bool
�� '
GuardarDireccionDeUsuario
�� -
(
��- .
int
��. 1
?
��1 2
	IdUsuario
��3 <
,
��< =
string
��> D
Calle
��E J
,
��J K
string
��L R
Pais
��S W
,
��W X
string
��Y _
Region
��` f
,
��f g
string
��h n
Ciudad
��o u
,
��u v
string
��w }
CodigoPostal��~ �
)��� �
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
Calle
��% *
)
��* +
||
��, .
string
��/ 5
.
��5 6
IsNullOrEmpty
��6 C
(
��C D
Pais
��D H
)
��H I
||
��J L
string
��M S
.
��S T
IsNullOrEmpty
��T a
(
��a b
Ciudad
��b h
)
��h i
||
��j l
string
��m s
.
��s t
IsNullOrEmpty��t �
(��� �
CodigoPostal��� �
)��� �
)��� �
return
�� 
false
�� 
;
�� 
Usuario
�� 
usuario
�� 
=
�� 
servicio
�� &
.
��& '
GetUsuarioById
��' 5
(
��5 6
	IdUsuario
��6 ?
)
��? @
;
��@ A
if
�� 
(
�� 
usuario
�� 
==
�� 
null
�� 
)
��  
return
�� 
false
�� 
;
�� 
servicio
�� 
.
�� %
AgregarDireccionUsuario
�� ,
(
��, -
usuario
��- 4
,
��4 5
Calle
��6 ;
,
��; <
Pais
��= A
,
��A B
Region
��C I
,
��I J
Ciudad
��K Q
,
��Q R
CodigoPostal
��S _
)
��_ `
;
��` a
return
�� 
true
�� 
;
�� 
}
�� 	
readonly
�� 
string
�� 
LetrasRegex
�� #
=
��$ %
$str
��& 6
;
��6 7
readonly
�� 
string
�� 
NumerosRegex
�� $
=
��% &
$str
��' 8
;
��8 9
readonly
�� 
string
�� 

EmailRegex
�� "
=
��# $
$str��% �
;��� �
private
�� 
void
�� 
ValidarUsuario
�� #
(
��# $
UsuarioView
��$ /
usuarioView
��0 ;
)
��; <
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Email
��1 6
)
��6 7
)
��7 8

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 E
)
��E F
;
��F G
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Email
��1 6
)
��6 7
||
��8 :
usuarioView
��; F
.
��F G
Email
��G L
.
��L M
Length
��M S
<=
��T V
$num
��W X
)
��X Y

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 X
)
��X Y
;
��Y Z
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Email
��1 6
)
��6 7
||
��8 :
usuarioView
��; F
.
��F G
Email
��G L
.
��L M
Length
��M S
>
��T U
$num
��V Y
)
��Y Z

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 X
)
��X Y
;
��Y Z
bool
�� 
isEmailValid
�� 
=
�� 
string
��  &
.
��& '
IsNullOrEmpty
��' 4
(
��4 5
usuarioView
��5 @
.
��@ A
Email
��A F
)
��F G
||
��H J
Regex
��K P
.
��P Q
IsMatch
��Q X
(
��X Y
usuarioView
��Y d
.
��d e
Email
��e j
,
��j k

EmailRegex
��l v
)
��v w
;
��w x
if
�� 
(
�� 
!
�� 
isEmailValid
�� 
)
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 M
)
��M N
;
��N O
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Clave
��1 6
)
��6 7
)
��7 8

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 E
)
��E F
;
��F G
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Nombres
��1 8
)
��8 9
)
��9 :

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 G
)
��G H
;
��H I
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Nombres
��1 8
)
��8 9
||
��: <
usuarioView
��= H
.
��H I
Nombres
��I P
.
��P Q
Length
��Q W
<=
��X Z
$num
��[ \
)
��\ ]

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Nombres
��1 8
)
��8 9
||
��: <
usuarioView
��= H
.
��H I
Nombres
��I P
.
��P Q
Length
��Q W
>
��X Y
$num
��Z ]
)
��] ^

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
bool
�� 
isNombreValid
�� 
=
��  
string
��! '
.
��' (
IsNullOrEmpty
��( 5
(
��5 6
usuarioView
��6 A
.
��A B
Nombres
��B I
)
��I J
||
��K M
Regex
��N S
.
��S T
IsMatch
��T [
(
��[ \
usuarioView
��\ g
.
��g h
Nombres
��h o
,
��o p
LetrasRegex
��q |
)
��| }
;
��} ~
if
�� 
(
�� 
!
�� 
isNombreValid
�� 
)
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 L
)
��L M
;
��M N
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
	Apellidos
��1 :
)
��: ;
)
��; <

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 I
)
��I J
;
��J K
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
	Apellidos
��1 :
)
��: ;
||
��< >
usuarioView
��? J
.
��J K
	Apellidos
��K T
.
��T U
Length
��U [
<=
��\ ^
$num
��_ `
)
��` a

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 \
)
��\ ]
;
��] ^
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
	Apellidos
��1 :
)
��: ;
||
��< >
usuarioView
��? J
.
��J K
	Apellidos
��K T
.
��T U
Length
��U [
>
��\ ]
$num
��^ a
)
��a b

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 \
)
��\ ]
;
��] ^
bool
�� 
isApellidosValid
�� !
=
��" #
string
��$ *
.
��* +
IsNullOrEmpty
��+ 8
(
��8 9
usuarioView
��9 D
.
��D E
	Apellidos
��E N
)
��N O
||
��P R
Regex
��S X
.
��X Y
IsMatch
��Y `
(
��` a
usuarioView
��a l
.
��l m
	Apellidos
��m v
,
��v w
LetrasRegex��x �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isApellidosValid
�� !
)
��! "

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 N
)
��N O
;
��O P
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
FechaNacimiento
��1 @
.
��@ A
ToString
��A I
(
��I J
)
��J K
)
��K L
)
��L M

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) :
,
��: ;
$str
��< O
)
��O P
;
��P Q
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Celular
��1 8
)
��8 9
)
��9 :

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 G
)
��G H
;
��H I
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Celular
��1 8
)
��8 9
||
��: <
usuarioView
��= H
.
��H I
Celular
��I P
.
��P Q
Length
��Q W
<=
��X Z
$num
��[ \
)
��\ ]

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioView
��% 0
.
��0 1
Celular
��1 8
)
��8 9
||
��: <
usuarioView
��= H
.
��H I
Celular
��I P
.
��P Q
Length
��Q W
>
��X Y
$num
��Z \
)
��\ ]

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Y
)
��Y Z
;
��Z [
bool
�� 
isCelularValid
�� 
=
��  !
string
��" (
.
��( )
IsNullOrEmpty
��) 6
(
��6 7
usuarioView
��7 B
.
��B C
Celular
��C J
)
��J K
||
��L N
Regex
��O T
.
��T U
IsMatch
��U \
(
��\ ]
usuarioView
��] h
.
��h i
Celular
��i p
,
��p q
NumerosRegex
��r ~
)
��~ 
;�� �
if
�� 
(
�� 
!
�� 
isCelularValid
�� 
)
��  

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 M
)
��M N
;
��N O
}
�� 	
private
�� 
void
�� "
ValidarEditarUsuario
�� )
(
��) *
UsuarioEditarView
��* ;
usuarioEditarView
��< M
)
��M N
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioEditarView
��% 6
.
��6 7
Nombres
��7 >
)
��> ?
)
��? @

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 G
)
��G H
;
��H I
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioEditarView
��% 6
.
��6 7
Nombres
��7 >
)
��> ?
||
��@ B
usuarioEditarView
��C T
.
��T U
Nombres
��U \
.
��\ ]
Length
��] c
<=
��d f
$num
��g h
)
��h i

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioEditarView
��% 6
.
��6 7
Nombres
��7 >
)
��> ?
||
��@ B
usuarioEditarView
��C T
.
��T U
Nombres
��U \
.
��\ ]
Length
��] c
>
��d e
$num
��f i
)
��i j

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
bool
�� 
isNombreValid
�� 
=
��  
string
��! '
.
��' (
IsNullOrEmpty
��( 5
(
��5 6
usuarioEditarView
��6 G
.
��G H
Nombres
��H O
)
��O P
||
��Q S
Regex
��T Y
.
��Y Z
IsMatch
��Z a
(
��a b
usuarioEditarView
��b s
.
��s t
Nombres
��t {
,
��{ |
LetrasRegex��} �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isNombreValid
�� 
)
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 L
)
��L M
;
��M N
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioEditarView
��% 6
.
��6 7
	Apellidos
��7 @
)
��@ A
)
��A B

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 I
)
��I J
;
��J K
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioEditarView
��% 6
.
��6 7
	Apellidos
��7 @
)
��@ A
||
��B D
usuarioEditarView
��E V
.
��V W
	Apellidos
��W `
.
��` a
Length
��a g
<=
��h j
$num
��k l
)
��l m

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 \
)
��\ ]
;
��] ^
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioEditarView
��% 6
.
��6 7
	Apellidos
��7 @
)
��@ A
||
��B D
usuarioEditarView
��E V
.
��V W
	Apellidos
��W `
.
��` a
Length
��a g
>
��h i
$num
��j m
)
��m n

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 \
)
��\ ]
;
��] ^
bool
�� 
isApellidosValid
�� !
=
��" #
string
��$ *
.
��* +
IsNullOrEmpty
��+ 8
(
��8 9
usuarioEditarView
��9 J
.
��J K
	Apellidos
��K T
)
��T U
||
��V X
Regex
��Y ^
.
��^ _
IsMatch
��_ f
(
��f g
usuarioEditarView
��g x
.
��x y
	Apellidos��y �
,��� �
LetrasRegex��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isApellidosValid
�� !
)
��! "

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 N
)
��N O
;
��O P
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioEditarView
��% 6
.
��6 7
FechaNacimiento
��7 F
.
��F G
ToString
��G O
(
��O P
)
��P Q
)
��Q R
)
��R S

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) :
,
��: ;
$str
��< O
)
��O P
;
��P Q
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioEditarView
��% 6
.
��6 7
Celular
��7 >
)
��> ?
)
��? @

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 G
)
��G H
;
��H I
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioEditarView
��% 6
.
��6 7
Celular
��7 >
)
��> ?
||
��@ B
usuarioEditarView
��C T
.
��T U
Celular
��U \
.
��\ ]
Length
��] c
<=
��d f
$num
��g h
)
��h i

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
usuarioEditarView
��% 6
.
��6 7
Celular
��7 >
)
��> ?
||
��@ B
usuarioEditarView
��C T
.
��T U
Celular
��U \
.
��\ ]
Length
��] c
>
��d e
$num
��f h
)
��h i

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Y
)
��Y Z
;
��Z [
bool
�� 
isCelularValid
�� 
=
��  !
string
��" (
.
��( )
IsNullOrEmpty
��) 6
(
��6 7
usuarioEditarView
��7 H
.
��H I
Celular
��I P
)
��P Q
||
��R T
Regex
��U Z
.
��Z [
IsMatch
��[ b
(
��b c
usuarioEditarView
��c t
.
��t u
Celular
��u |
,
��| }
NumerosRegex��~ �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isCelularValid
�� 
)
��  

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 M
)
��M N
;
��N O
}
�� 	
private
�� 
void
�� (
ValidarEditarPerfilUsuario
�� /
(
��/ 0#
UsuarioPerfilEditView
��0 E#
usuarioPerfilEditView
��F [
)
��[ \
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
Nombres
��; B
)
��B C
)
��C D

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 G
)
��G H
;
��H I
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
Nombres
��; B
)
��B C
||
��D F#
usuarioPerfilEditView
��G \
.
��\ ]
Nombres
��] d
.
��d e
Length
��e k
<=
��l n
$num
��o p
)
��p q

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
Nombres
��; B
)
��B C
||
��D F#
usuarioPerfilEditView
��G \
.
��\ ]
Nombres
��] d
.
��d e
Length
��e k
>
��l m
$num
��n q
)
��q r

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
bool
�� 
isNombreValid
�� 
=
��  
string
��! '
.
��' (
IsNullOrEmpty
��( 5
(
��5 6#
usuarioPerfilEditView
��6 K
.
��K L
Nombres
��L S
)
��S T
||
��U W
Regex
��X ]
.
��] ^
IsMatch
��^ e
(
��e f#
usuarioPerfilEditView
��f {
.
��{ |
Nombres��| �
,��� �
LetrasRegex��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isNombreValid
�� 
)
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 L
)
��L M
;
��M N
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
	Apellidos
��; D
)
��D E
)
��E F

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 I
)
��I J
;
��J K
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
	Apellidos
��; D
)
��D E
||
��F H#
usuarioPerfilEditView
��I ^
.
��^ _
	Apellidos
��_ h
.
��h i
Length
��i o
<=
��p r
$num
��s t
)
��t u

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 \
)
��\ ]
;
��] ^
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
	Apellidos
��; D
)
��D E
||
��F H#
usuarioPerfilEditView
��I ^
.
��^ _
	Apellidos
��_ h
.
��h i
Length
��i o
>
��p q
$num
��r u
)
��u v

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 \
)
��\ ]
;
��] ^
bool
�� 
isApellidosValid
�� !
=
��" #
string
��$ *
.
��* +
IsNullOrEmpty
��+ 8
(
��8 9#
usuarioPerfilEditView
��9 N
.
��N O
	Apellidos
��O X
)
��X Y
||
��Z \
Regex
��] b
.
��b c
IsMatch
��c j
(
��j k$
usuarioPerfilEditView��k �
.��� �
	Apellidos��� �
,��� �
LetrasRegex��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isApellidosValid
�� !
)
��! "

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 N
)
��N O
;
��O P
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
Celular
��; B
)
��B C
)
��C D

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 G
)
��G H
;
��H I
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
Celular
��; B
)
��B C
||
��D F#
usuarioPerfilEditView
��G \
.
��\ ]
Celular
��] d
.
��d e
Length
��e k
<=
��l n
$num
��o p
)
��p q

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
Celular
��; B
)
��B C
||
��D F#
usuarioPerfilEditView
��G \
.
��\ ]
Celular
��] d
.
��d e
Length
��e k
>
��l m
$num
��n p
)
��p q

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Y
)
��Y Z
;
��Z [
bool
�� 
isCelularValid
�� 
=
��  !
string
��" (
.
��( )
IsNullOrEmpty
��) 6
(
��6 7#
usuarioPerfilEditView
��7 L
.
��L M
Celular
��M T
)
��T U
||
��V X
Regex
��Y ^
.
��^ _
IsMatch
��_ f
(
��f g#
usuarioPerfilEditView
��g |
.
��| }
Celular��} �
,��� �
NumerosRegex��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isCelularValid
�� 
)
��  

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 M
)
��M N
;
��N O
}
�� 	
}
�� 
}�� ��
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
productoServicio	u �
,
� �
IVentaService
� �
servicio
� �
,
� �
ISessionService
� �
session
� �
)
� �
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
�� 
producto
�� 
=
�� 
productoServicio
��  0
.
��0 1
GetProductoById
��1 @
(
��@ A

IdProducto
��A K
)
��K L
;
��L M
if
�� 
(
�� 
usuario
�� 
==
�� 
null
�� 
&&
��  "
producto
��# +
==
��, .
null
��/ 3
)
��3 4
return
�� 
false
�� 
;
�� 
servicio
�� 
.
�� ,
AgregarProductoACarritoCompras
�� 3
(
��3 4
usuario
��4 ;
,
��; <
producto
��= E
,
��E F
Cantidad
��F N
)
��N O
;
��O P
return
�� 
true
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
bool
�� /
!ActualizarCantidadProductoCarrito
�� 5
(
��5 6
int
��6 9
?
��9 :
	IdUsuario
��; D
,
��D E
int
��F I
?
��I J

IdProducto
��K U
,
��U V
int
��W Z
NuevaCantidad
��[ h
)
��h i
{
�� 	
if
�� 
(
�� 
	IdUsuario
�� 
==
�� 
null
�� !
&&
��" $

IdProducto
��% /
==
��0 2
null
��3 7
&&
��8 :
NuevaCantidad
��; H
<=
��I K
$num
��L M
)
��M N
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
NuevaCantidad
�� 
>
�� 
$num
��  !
)
��! "
{
�� 
servicio
�� 
.
�� 3
%ActualizarCantidadByIdProductoCarrito
�� >
(
��> ?

IdProducto
��? I
,
��I J
	IdUsuario
��K T
,
��T U
NuevaCantidad
��V c
)
��c d
;
��d e
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� '
EliminarProductoDeCarrito
�� 5
(
��5 6
int
��6 9
?
��9 :

IdProducto
��; E
,
��E F
int
��G J
?
��J K
	IdUsuario
��L U
)
��U V
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
IsLogged
��  
(
��  !
)
��! "
)
��" #
{
�� 
if
�� 
(
�� 

IdProducto
�� 
==
�� !
null
��" &
&&
��' )
	IdUsuario
��* 3
==
��4 6
null
��7 ;
)
��; <
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
servicio
�� 
.
�� .
 EliminarProductoDeCarritoCompras
�� 9
(
��9 :

IdProducto
��: D
,
��D E
	IdUsuario
��F O
)
��O P
;
��P Q
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 1
,
��1 2
$str
��3 :
,
��: ;
new
��< ?
{
��@ A
	IdUsuario
��B K
=
��L M
	IdUsuario
��N W
}
��X Y
)
��Y Z
;
��Z [
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
CompletarOrden
�� *
(
��* +
)
��+ ,
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
IsLogged
��  
(
��  !
)
��! "
)
��" #
{
�� 
List
�� 
<
�� 
CarritoCompras
�� #
>
��# $
carrito
��% ,
=
��- .
session
��/ 6
.
��6 70
"RetornarProductosDelCarritoSession
��7 Y
(
��Y Z
)
��Z [
;
��[ \
ViewBag
�� 
.
�� 
ListaUsuarios
�� %
=
��& '
UsuarioSession
��( 6
.
��6 7
GetUsuariosAsList
��7 H
(
��H I
)
��I J
;
��J K
int
�� 
	UsuarioId
�� 
=
�� 
session
��  '
.
��' (&
ConvertirSessionIdAIntId
��( @
(
��@ A
)
��A B
;
��B C
ViewBag
�� 
.
�� #
ListaDireccionUsuario
�� -
=
��. /
servicioDireccion
��0 A
.
��A B'
GetDireccionByUsuarioList
��B [
(
��[ \
	UsuarioId
��\ e
)
��e f
;
��f g
return
�� 
View
�� 
(
�� 
carrito
�� #
)
��# $
;
��$ %
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
bool
�� 
Guardar
�� 
(
�� 
int
�� 
	IdUsuario
��  )
,
��) *
int
��+ .
IdCalle
��/ 6
,
��6 7
byte
��8 <
TipoPago
��= E
)
��E F
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
IsLogged
��  
(
��  !
)
��! "
)
��" #
{
�� 
Usuario
�� 
usuario
�� 
=
��  !
UsuarioSession
��" 0
.
��0 1
GetUsuarioById
��1 ?
(
��? @
	IdUsuario
��@ I
)
��I J
;
��J K
	Direccion
�� 
	direccion
�� #
=
��$ %
servicioDireccion
��& 7
.
��7 8
GetDireccionById
��8 H
(
��H I
IdCalle
��I P
)
��P Q
;
��Q R
List
�� 
<
�� 
CarritoCompras
�� #
>
��# $!
productosDelCarrito
��% 8
=
��9 :
session
��; B
.
��B C0
"RetornarProductosDelCarritoSession
��C e
(
��e f
)
��f g
;
��g h
if
�� 
(
�� 
usuario
�� 
==
�� 
null
�� #
&&
��$ &
	direccion
��' 0
==
��1 3
null
��4 8
)
��8 9
return
�� 
false
��  
;
��  !
if
�� 
(
�� 
!
�� 
productoServicio
�� %
.
��% &#
SiExistenLosProductos
��& ;
(
��; <!
productosDelCarrito
��< O
)
��O P
)
��P Q
return
�� 
false
��  
;
��  !
if
�� 
(
�� 
!
�� 
productoServicio
�� %
.
��% &"
SiHayStockDisponible
��& :
(
��: ;!
productosDelCarrito
��; N
)
��N O
)
��O P
{
�� 
ViewBag
�� 
.
�� "
NoHayStockDisponible
�� 0
=
��1 2
$str
��3 o
;
��o p
return
�� 
false
��  
;
��  !
}
�� 
productoServicio
��  
.
��  !
ActualizarStock
��! 0
(
��0 1!
productosDelCarrito
��1 D
)
��D E
;
��E F
servicio
�� 
.
�� 
GuardarVenta
�� %
(
��% &
usuario
��& -
,
��- .!
productosDelCarrito
��/ B
,
��B C
	direccion
��D M
,
��M N
TipoPago
��O W
)
��W X
;
��X Y
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
Detalle
�� #
(
��# $
int
��$ '
?
��' (
IdVenta
��) 0
)
��0 1
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� "
EsPersonalDeLaTienda
�� ,
(
��, -
)
��- .
)
��. /
{
�� 
if
�� 
(
�� 
IdVenta
�� 
==
�� 
null
�� #
)
��# $
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
ViewBag
�� 
.
�� 
ListaUsuarios
�� %
=
��& '
UsuarioSession
��( 6
.
��6 7
GetUsuariosAsList
��7 H
(
��H I
)
��I J
;
��J K
ViewBag
�� 
.
��  
ListaDetalleVentas
�� *
=
��+ ,
servicio
��- 5
.
��5 6$
GetDetalleVentasAsList
��6 L
(
��L M
)
��M N
;
��N O
Venta
�� 
venta
�� 
=
�� 
servicio
�� &
.
��& '
GetVentaById
��' 3
(
��3 4
IdVenta
��4 ;
)
��; <
;
��< =
if
�� 
(
�� 
venta
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
}
�� 
return
�� 
View
�� 
(
�� 
venta
�� !
)
��! "
;
��" #
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
Eliminar
�� $
(
��$ %
int
��% (
?
��( )
IdVenta
��* 1
)
��1 2
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
EsAdministrativo
�� (
(
��( )
)
��) *
)
��* +
{
�� 
if
�� 
(
�� 
IdVenta
�� 
==
�� 
null
�� #
)
��# $
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
servicio
�� 
.
�� 
EliminarVenta
�� &
(
��& '
IdVenta
��' .
)
��. /
;
��/ 0
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 8
)
��8 9
;
��9 :
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� 
ListaFavoritos
�� *
(
��* +
int
��+ .
?
��. /
	IdUsuario
��0 9
)
��9 :
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
IsLogged
��  
(
��  !
)
��! "
)
��" #
{
�� 
if
�� 
(
�� 
	IdUsuario
�� 
==
��  
null
��! %
)
��% &
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
if
�� 
(
�� 
!
�� 
session
�� 
.
�� 
EsSuSession
�� (
(
��( )
	IdUsuario
��) 2
)
��2 3
)
��3 4
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
var
�� 
lista
�� 
=
�� 
servicio
�� $
.
��$ %+
GetListaFavoritosByUserAsList
��% B
(
��B C
	IdUsuario
��C L
)
��L M
;
��M N
ViewBag
�� 
.
�� 
ListaUsuarios
�� %
=
��& '
UsuarioSession
��( 6
.
��6 7
GetUsuariosAsList
��7 H
(
��H I
)
��I J
;
��J K
return
�� 
View
�� 
(
�� 
lista
�� !
)
��! "
;
��" #
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
bool
�� #
GuardarProductoALista
�� )
(
��) *
int
��* -
	IdUsuario
��. 7
,
��7 8
int
��9 <

IdProducto
��= G
)
��G H
{
�� 	
Usuario
�� 
usuario
�� 
=
�� 
UsuarioSession
�� ,
.
��, -
GetUsuarioById
��- ;
(
��; <
	IdUsuario
��< E
)
��E F
;
��F G
Producto
�� 
producto
�� 
=
�� 
productoServicio
��  0
.
��0 1
GetProductoById
��1 @
(
��@ A

IdProducto
��A K
)
��K L
;
��L M
if
�� 
(
�� 
usuario
�� 
==
�� 
null
�� 
&&
��  "
producto
��# +
==
��, .
null
��/ 3
)
��3 4
return
�� 
false
�� 
;
�� 
servicio
�� 
.
�� #
AgregarProductoALista
�� *
(
��* +
usuario
��+ 2
,
��2 3
producto
��4 <
)
��< =
;
��= >
return
�� 
true
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
bool
�� 8
*ExisteProductoIdYUsuarioIdEnListaFavoritos
�� >
(
��> ?
int
��? B
?
��B C
	IdUsuario
��D M
,
��M N
int
��O R
?
��R S

IdProducto
��T ^
)
��^ _
{
�� 	
if
�� 
(
�� 
	IdUsuario
�� 
==
�� 
null
�� !
&&
��" $

IdProducto
��% /
==
��0 2
null
��3 7
)
��7 8
return
�� 
false
�� 
;
�� 
var
�� 
existeEnLista
�� 
=
�� 
servicio
��  (
.
��( )6
(ExisteProductIdAndUserIdEnListaFavoritos
��) Q
(
��Q R
	IdUsuario
��R [
,
��[ \

IdProducto
��] g
)
��g h
;
��h i
if
�� 
(
�� 
!
�� 
existeEnLista
�� 
)
�� 
return
�� 
true
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
ActionResult
�� %
EliminarProductoDeLista
�� 3
(
��3 4
int
��4 7
?
��7 8

IdProducto
��9 C
,
��C D
int
��E H
?
��H I
	IdUsuario
��J S
)
��S T
{
�� 	
if
�� 
(
�� 
session
�� 
.
�� 
IsLogged
��  
(
��  !
)
��! "
)
��" #
{
�� 
if
�� 
(
�� 

IdProducto
�� 
==
�� !
null
��" &
&&
��' )
	IdUsuario
��* 3
==
��4 6
null
��7 ;
)
��; <
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 <
)
��< =
;
��= >
servicio
�� 
.
�� %
EliminarProductoDeLista
�� 0
(
��0 1

IdProducto
��1 ;
,
��; <
	IdUsuario
��= F
)
��F G
;
��G H
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 8
,
��8 9
$str
��: A
,
��A B
new
��C F
{
��G H
	IdUsuario
��I R
=
��S T
	IdUsuario
��U ^
}
��_ `
)
��` a
;
��a b
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 4
)
��4 5
;
��5 6
}
�� 	
}
�� 
}�� �'
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
}++ �
�C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\CarritoComprasMap.cs
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
} �
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
} �
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
} �
�C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\DetalleVentaMap.cs
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
} �	
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
} �
�C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\DataBase\Maps\ListaFavoritosMap.cs
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
} �	
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
} �
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
} �
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
} �	
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
} �
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
} �
�C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IComentariosSerivce.cs
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
} �
�C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IDetalleVentaService.cs
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
CodigoPostal	v �
)
� �
;
� �
} 
} �
�C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\Interfaces\IValidacionService.cs
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
} �
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
} �
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
} �
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
} �	
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
} �
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
} �

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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �	
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
} �
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
} �
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
} �
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
} �
�C:\Users\Dre\Documents\0Dre\0TrabajosFerUPN\8tavo Ciclo\Calidad\ECOMMERCE_TRESB\ECOMMERCE_TRESB\ModelViews\UsuarioPerfilEditView.cs
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
} �
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
}&& �
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
} �
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
]##) *�,
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
}XX �0
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
}II �
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
}## �
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
}'' �
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
} �
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
}00 �w
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
�� 
.
�� 
	Productos
�� 
.
�� 
Remove
�� %
(
��% &
producto
��& .
)
��. /
;
��/ 0
conexion
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
List
�� 
<
�� 
Producto
�� 
>
�� )
GetProductsAsListByCategory
�� 9
(
��9 :
int
��: =
IdCategoria
��> I
,
��I J
int
��K N
Page
��O S
,
��S T
int
��U X
NumItems
��Y a
)
��a b
{
�� 	
List
�� 
<
�� 
Producto
�� 
>
�� 
	productos
�� $
=
��& '
conexion
��( 0
.
��0 1
	Productos
��1 :
.
��: ;
Where
��, 1
(
��1 2
o
��2 3
=>
��4 6
o
��7 8
.
��8 9
IdCategoria
��9 D
==
��E G
IdCategoria
��H S
&&
��T V
o
��W X
.
��X Y
Stock
��Y ^
>
��_ `
$num
��a b
&&
��c e
o
��f g
.
��g h
IsActive
��h p
==
��q s
true
��t x
)
��x y
.
��y z
OrderBy
��, 3
(
��3 4
o
��4 5
=>
��6 8
o
��9 :
.
��: ;
Id
��; =
)
��= >
.
��> ?
Skip
��, 0
(
��0 1
(
��1 2
Page
��2 6
-
��7 8
$num
��9 :
)
��: ;
*
��< =
NumItems
��> F
)
��F G
.
��G H
Take
��, 0
(
��0 1
NumItems
��1 9
)
��9 :
.
��: ;
ToList
��, 2
(
��2 3
)
��3 4
;
��4 5
return
�� 
	productos
�� 
;
�� 
}
�� 	
public
�� 
bool
�� #
SiExistenLosProductos
�� )
(
��) *
List
��* .
<
��. /
CarritoCompras
��/ =
>
��= >
	productos
��? H
)
��H I
{
�� 	
foreach
�� 
(
�� 
var
�� 
producto
�� !
in
��" $
	productos
��% .
)
��. /
if
�� 
(
�� 
GetProductoById
�� #
(
��# $
producto
��$ ,
.
��, -

IdProducto
��- 7
)
��7 8
==
��9 ;
null
��< @
)
��@ A
return
�� 
false
��  
;
��  !
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
bool
�� "
SiHayStockDisponible
�� (
(
��( )
List
��) -
<
��- .
CarritoCompras
��. <
>
��< =
	productos
��> G
)
��G H
{
�� 	
Producto
�� 

productoBd
�� 
;
��  
foreach
�� 
(
�� 
var
�� 
producto
�� !
in
��" $
	productos
��% .
)
��. /
{
�� 

productoBd
�� 
=
�� 
GetProductoById
�� ,
(
��, -
producto
��- 5
.
��5 6

IdProducto
��6 @
)
��@ A
;
��A B
if
�� 
(
�� 

productoBd
�� 
.
�� 
Stock
�� $
<
��% &
producto
��' /
.
��/ 0
Cantidad
��0 8
)
��8 9
return
�� 
false
��  
;
��  !
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
ActualizarStock
�� #
(
��# $
List
��$ (
<
��( )
CarritoCompras
��) 7
>
��7 8
	productos
��9 B
)
��B C
{
�� 	
Producto
�� 

productoBd
�� 
;
��  
foreach
�� 
(
�� 
var
�� 
producto
�� !
in
��" $
	productos
��% .
)
��. /
{
�� 

productoBd
�� 
=
�� 
conexion
�� %
.
��% &
	Productos
��& /
.
��/ 0
Where
��0 5
(
��5 6
o
��6 7
=>
��8 :
o
��; <
.
��< =
Id
��= ?
==
��@ B
producto
��C K
.
��K L

IdProducto
��L V
)
��V W
.
��W X
FirstOrDefault
��X f
(
��f g
)
��g h
;
��h i

productoBd
�� 
.
�� 
Stock
��  
-=
��! #
producto
��$ ,
.
��, -
Cantidad
��- 5
;
��5 6
conexion
�� 
.
�� 
SaveChanges
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
}
�� 	
}
�� 
}�� �>
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
TipoUsuario	>>v �
.
>>� �
ADMINISTRADOR
>>� �
)
>>� �
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
}bb ��
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
�� 
void
�� 
EditarUsuario
�� !
(
��! "
int
��" %
?
��% &
	IdUsuario
��' 0
,
��0 1
Usuario
��2 9
Usuario
��: A
)
��A B
{
�� 	
var
�� 
	UsuarioDB
�� 
=
�� 
GetUsuarioById
�� *
(
��* +
	IdUsuario
��+ 4
)
��4 5
;
��5 6
	UsuarioDB
�� 
.
�� 
Nombres
�� 
=
�� 
Usuario
��  '
.
��' (
Nombres
��( /
;
��/ 0
	UsuarioDB
�� 
.
�� 
	Apellidos
�� 
=
��  !
Usuario
��" )
.
��) *
	Apellidos
��* 3
;
��3 4
	UsuarioDB
�� 
.
�� 
Sexo
�� 
=
�� 
Usuario
�� $
.
��$ %
Sexo
��% )
;
��) *
	UsuarioDB
�� 
.
�� 
Celular
�� 
=
�� 
Usuario
��  '
.
��' (
Celular
��( /
;
��/ 0
	UsuarioDB
�� 
.
�� 
IsActive
�� 
=
��  
Usuario
��! (
.
��( )
IsActive
��) 1
;
��1 2
conexion
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� 
EliminarUsuario
�� #
(
��# $
int
��$ '
?
��' (
	IdUsuario
��) 2
)
��2 3
{
�� 	
var
�� 
usuario
�� 
=
�� 
GetUsuarioById
�� (
(
��( )
	IdUsuario
��) 2
)
��2 3
;
��3 4
conexion
�� 
.
�� 
Usuarios
�� 
.
�� 
Remove
�� $
(
��$ %
usuario
��% ,
)
��, -
;
��- .
conexion
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
bool
�� 
ExisteElCorreo
�� "
(
��" #
string
��# )
email
��* /
)
��/ 0
{
�� 	
if
�� 
(
�� 
conexion
�� 
.
�� 
Usuarios
�� !
.
��! "
Any
��" %
(
��% &
u
��& '
=>
��( *
u
��+ ,
.
��, -
Email
��- 2
==
��3 5
email
��6 ;
)
��; <
)
��< =
return
�� 
true
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
Usuario
�� (
GetUsuarioByCorreoAndClave
�� 1
(
��1 2
string
��2 8
Correo
��9 ?
,
��? @
string
��A G
Clave
��H M
)
��M N
{
�� 	
Usuario
�� 
usuario
�� 
=
�� 
conexion
�� &
.
��& '
Usuarios
��' /
.
��/ 0
Where
��0 5
(
��5 6
u
��6 7
=>
��8 :
u
��; <
.
��< =
Email
��= B
==
��C E
Correo
��F L
)
��L M
.
��M N
FirstOrDefault
��N \
(
��\ ]
)
��] ^
;
��^ _
if
�� 
(
�� 
usuario
�� 
==
�� 
null
�� 
)
��  
return
�� 
null
�� 
;
�� 
ICryptoService
�� 
cryptoService
�� (
=
��) *
new
��+ .
PBKDF2
��/ 5
(
��5 6
)
��6 7
;
��7 8
if
�� 
(
�� 
cryptoService
�� 
.
�� 
Compare
�� %
(
��% &
cryptoService
��& 3
.
��3 4
Compute
��4 ;
(
��; <
Clave
��< A
,
��A B
usuario
��C J
.
��J K
Salt
��K O
)
��O P
,
��P Q
usuario
��R Y
.
��Y Z
Clave
��Z _
)
��_ `
)
��` a
return
�� 
usuario
�� 
;
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
Usuario
�� ,
UsuarioPerfilEditViewToUsuario
�� 5
(
��5 6#
UsuarioPerfilEditView
��6 K#
UsuarioPerfilEditView
��L a
)
��a b
{
�� 	
return
�� 
new
�� 
Usuario
�� 
{
�� 
Id
�� 
=
�� #
UsuarioPerfilEditView
�� *
.
��* +
Id
��+ -
,
��- .
Nombres
�� 
=
�� #
UsuarioPerfilEditView
�� /
.
��/ 0
Nombres
��0 7
,
��7 8
	Apellidos
�� 
=
�� #
UsuarioPerfilEditView
�� 1
.
��1 2
	Apellidos
��2 ;
,
��; <
Sexo
�� 
=
�� #
UsuarioPerfilEditView
�� ,
.
��, -
Sexo
��- 1
,
��1 2
Celular
�� 
=
�� #
UsuarioPerfilEditView
�� /
.
��/ 0
Celular
��0 7
}
�� 
;
�� 
}
�� 	
public
�� #
UsuarioPerfilEditView
�� $,
UsuarioToUsuarioPerfilEditView
��% C
(
��C D
Usuario
��D K
Usuario
��L S
)
��S T
{
�� 	
return
�� 
new
�� #
UsuarioPerfilEditView
�� ,
{
�� 
Id
�� 
=
�� 
Usuario
�� 
.
�� 
Id
�� 
,
��  
Nombres
�� 
=
�� 
Usuario
�� !
.
��! "
Nombres
��" )
,
��) *
	Apellidos
�� 
=
�� 
Usuario
�� #
.
��# $
	Apellidos
��$ -
,
��- .
Sexo
�� 
=
�� 
Usuario
�� 
.
�� 
Sexo
�� #
,
��# $
Celular
�� 
=
�� 
Usuario
�� !
.
��! "
Celular
��" )
}
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
EditarPerfil
��  
(
��  !
int
��! $
?
��$ %
	IdUsuario
��& /
,
��/ 0
Usuario
��1 8
Usuario
��9 @
)
��@ A
{
�� 	
var
�� 
	UsuarioDB
�� 
=
�� 
GetUsuarioById
�� *
(
��* +
	IdUsuario
��+ 4
)
��4 5
;
��5 6
	UsuarioDB
�� 
.
�� 
Nombres
�� 
=
�� 
Usuario
��  '
.
��' (
Nombres
��( /
;
��/ 0
	UsuarioDB
�� 
.
�� 
	Apellidos
�� 
=
��  !
Usuario
��" )
.
��) *
	Apellidos
��* 3
;
��3 4
	UsuarioDB
�� 
.
�� 
Sexo
�� 
=
�� 
Usuario
�� $
.
��$ %
Sexo
��% )
;
��) *
	UsuarioDB
�� 
.
�� 
Celular
�� 
=
�� 
Usuario
��  '
.
��' (
Celular
��( /
;
��/ 0
conexion
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� %
AgregarDireccionUsuario
�� +
(
��+ ,
Usuario
��, 3
usuario
��4 ;
,
��; <
string
��= C
Calle
��D I
,
��I J
string
��K Q
Pais
��R V
,
��V W
string
��X ^
Region
��_ e
,
��e f
string
��g m
Ciudad
��n t
,
��t u
string
��v |
CodigoPostal��} �
)��� �
{
�� 	
	Direccion
�� 
NuevaDireccion
�� $
=
��% &
new
��' *
	Direccion
��+ 4
{
�� 
Calle
�� 
=
�� 
Calle
�� 
,
�� 
Pais
�� 
=
�� 
Pais
�� 
,
�� 
Region
�� 
=
�� 
Region
�� 
,
��  
Ciudad
�� 
=
�� 
Ciudad
�� 
,
��  
CodigoPostal
�� 
=
�� 
CodigoPostal
�� +
,
��+ ,
	IdUsuario
�� 
=
�� 
usuario
�� #
.
��# $
Id
��$ &
}
�� 
;
�� 
conexion
�� 
.
�� 
	Direccion
�� 
.
�� 
Add
�� "
(
��" #
NuevaDireccion
��# 1
)
��1 2
;
��2 3
conexion
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
}
�� 
}�� ��
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
$str	% �
;
� �
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
;	 �
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
LetrasRegex	>>x �
)
>>� �
;
>>� �
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
;	KK �
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
LetrasRegex	XX} �
)
XX� �
;
XX� �
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
	Apellidos	bby �
,
bb� �
LetrasRegex
bb� �
)
bb� �
;
bb� �
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
NumerosRegex	oo~ �
)
oo� �
;
oo� �
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
Nombres	||| �
,
||� �
LetrasRegex
||� �
)
||� �
;
||� �
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
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
	Apellidos
��; D
)
��D E
)
��E F

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 I
)
��I J
;
��J K
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
	Apellidos
��; D
)
��D E
||
��F H#
usuarioPerfilEditView
��I ^
.
��^ _
	Apellidos
��_ h
.
��h i
Length
��i o
<=
��p r
$num
��s t
)
��t u

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 \
)
��\ ]
;
��] ^
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
	Apellidos
��; D
)
��D E
||
��F H#
usuarioPerfilEditView
��I ^
.
��^ _
	Apellidos
��_ h
.
��h i
Length
��i o
>
��p q
$num
��r u
)
��u v

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 \
)
��\ ]
;
��] ^
bool
�� 
isApellidosValid
�� !
=
��" #
string
��$ *
.
��* +
IsNullOrEmpty
��+ 8
(
��8 9#
usuarioPerfilEditView
��9 N
.
��N O
	Apellidos
��O X
)
��X Y
||
��Z \
Regex
��] b
.
��b c
IsMatch
��c j
(
��j k$
usuarioPerfilEditView��k �
.��� �
	Apellidos��� �
,��� �
LetrasRegex��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isApellidosValid
�� !
)
��! "

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 4
,
��4 5
$str
��6 N
)
��N O
;
��O P
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
Celular
��; B
)
��B C
)
��C D

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 G
)
��G H
;
��H I
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
Celular
��; B
)
��B C
||
��D F#
usuarioPerfilEditView
��G \
.
��\ ]
Celular
��] d
.
��d e
Length
��e k
<=
��l n
$num
��o p
)
��p q

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Z
)
��Z [
;
��[ \
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %#
usuarioPerfilEditView
��% :
.
��: ;
Celular
��; B
)
��B C
||
��D F#
usuarioPerfilEditView
��G \
.
��\ ]
Celular
��] d
.
��d e
Length
��e k
>
��l m
$num
��n p
)
��p q

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 Y
)
��Y Z
;
��Z [
bool
�� 
isCelularValid
�� 
=
��  !
string
��" (
.
��( )
IsNullOrEmpty
��) 6
(
��6 7#
usuarioPerfilEditView
��7 L
.
��L M
Celular
��M T
)
��T U
||
��V X
Regex
��Y ^
.
��^ _
IsMatch
��_ f
(
��f g#
usuarioPerfilEditView
��g |
.
��| }
Celular��} �
,��� �
NumerosRegex��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isCelularValid
�� 
)
��  

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 2
,
��2 3
$str
��4 M
)
��M N
;
��N O
}
�� 	
public
�� 
void
�� 
Producto
�� 
(
�� 
ProductoView
�� )
productoView
��* 6
,
��6 7"
ModelStateDictionary
��8 L

ModelState
��M W
)
��W X
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Nombre
��2 8
)
��8 9
)
��9 :

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 F
)
��F G
;
��G H
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Nombre
��2 8
)
��8 9
||
��: <
productoView
��= I
.
��I J
Nombre
��J P
.
��P Q
Length
��Q W
<=
��X Z
$num
��[ \
)
��\ ]

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Nombre
��2 8
)
��8 9
||
��: <
productoView
��= I
.
��I J
Nombre
��J P
.
��P Q
Length
��Q W
>
��X Y
$num
��Z ]
)
��] ^

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 Y
)
��Y Z
;
��Z [
bool
�� 
isNombreValid
�� 
=
��  
string
��! '
.
��' (
IsNullOrEmpty
��( 5
(
��5 6
productoView
��6 B
.
��B C
Nombre
��C I
)
��I J
||
��K M
Regex
��N S
.
��S T
IsMatch
��T [
(
��[ \
productoView
��\ h
.
��h i
Nombre
��i o
,
��o p
LetrasRegex
��q |
)
��| }
;
��} ~
if
�� 
(
�� 
!
�� 
isNombreValid
�� 
)
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 1
,
��1 2
$str
��3 K
)
��K L
;
��L M
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Descripcion
��2 =
)
��= >
)
��> ?

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 6
,
��6 7
$str
��8 K
)
��K L
;
��L M
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Descripcion
��2 =
)
��= >
||
��? A
productoView
��B N
.
��N O
Descripcion
��O Z
.
��Z [
Length
��[ a
<=
��b d
$num
��e f
)
��f g

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 6
,
��6 7
$str
��8 ^
)
��^ _
;
��_ `
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
productoView
��% 1
.
��1 2
Descripcion
��2 =
)
��= >
||
��? A
productoView
��B N
.
��N O
Descripcion
��O Z
.
��Z [
Length
��[ a
>
��b c
$num
��d h
)
��h i

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 6
,
��6 7
$str
��8 _
)
��_ `
;
��` a
if
�� 
(
�� 
productoView
�� 
.
�� 
Stock
�� "
==
��# %
$num
��& '
||
��( *
string
��+ 1
.
��1 2
IsNullOrEmpty
��2 ?
(
��? @
productoView
��@ L
.
��L M
Stock
��M R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
)
��] ^
)
��^ _

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 E
)
��E F
;
��F G
bool
�� 
isStockValid
�� 
=
�� 
productoView
��  ,
.
��, -
Stock
��- 2
==
��3 5
$num
��6 7
||
��8 :
string
��; A
.
��A B
IsNullOrEmpty
��B O
(
��O P
productoView
��P \
.
��\ ]
Stock
��] b
.
��b c
ToString
��c k
(
��k l
)
��l m
)
��m n
||
��o q
Regex
��r w
.
��w x
IsMatch
��x 
(�� �
productoView��� �
.��� �
Stock��� �
.��� �
ToString��� �
(��� �
)��� �
,��� �
NumerosRegex��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isStockValid
�� 
)
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 0
,
��0 1
$str
��2 Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
productoView
�� 
.
�� 
PrecioUnitario
�� +
==
��, .
$num
��/ 0
||
��1 3
string
��4 :
.
��: ;
IsNullOrEmpty
��; H
(
��H I
productoView
��I U
.
��U V
PrecioUnitario
��V d
.
��d e
ToString
��e m
(
��m n
)
��n o
)
��o p
)
��p q

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 9
,
��9 :
$str
��; N
)
��N O
;
��O P
bool
�� #
isPrecioUnitarioValid
�� &
=
��' (
productoView
��) 5
.
��5 6
PrecioUnitario
��6 D
==
��E G
$num
��H I
||
��J L
string
��M S
.
��S T
IsNullOrEmpty
��T a
(
��a b
productoView
��b n
.
��n o
PrecioUnitario
��o }
.
��} ~
ToString��~ �
(��� �
)��� �
)��� �
||��� �
Regex��� �
.��� �
IsMatch��� �
(��� �
productoView��� �
.��� �
PrecioUnitario��� �
.��� �
ToString��� �
(��� �
)��� �
,��� �"
NumeroDecimalRegex��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� #
isPrecioUnitarioValid
�� &
)
��& '

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) 9
,
��9 :
$str
��; U
)
��U V
;
��V W
}
�� 	
}
�� 
}�� ��
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
	Productos	YY{ �
)
YY� �
.
YY� �
ToList
YY� �
(
YY� �
)
YY� �
;
YY� �
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
	IdUsuario	aa~ �
)
aa� �
.
aa� �
FirstOrDefault
aa� �
(
aa� �
)
aa� �
;
aa� �
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
�� 	
public
�� 
List
�� 
<
�� 
CarritoCompras
�� "
>
��" #+
GetCarritoComprasByUserAsList
��$ A
(
��A B
int
��B E
?
��E F
	IdUsuario
��G P
)
��P Q
{
�� 	
return
�� 
conexion
�� 
.
�� 
CarritoDeCompras
�� ,
.
��, -
Where
��- 2
(
��2 3
lf
��3 5
=>
��6 8
lf
��9 ;
.
��; <
	IdUsuario
��< E
==
��F H
	IdUsuario
��I R
)
��R S
.
��S T
Include
��T [
(
��[ \
u
��\ ]
=>
��^ `
u
��a b
.
��b c
Usuario
��c j
)
��j k
.
��k l
Include
��l s
(
��s t
p
��t u
=>
��v x
p
��y z
.
��z {
	Productos��{ �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
}
�� 	
public
�� 
CarritoCompras
�� 3
%GetCarritoComprasByProductIdAndUserId
�� C
(
��C D
int
��D G
?
��G H
	IdUsuario
��I R
,
��R S
int
��T W
?
��W X

IdProducto
��Y c
)
��c d
{
�� 	
if
�� 
(
�� 

IdProducto
�� 
==
�� 
null
�� "
&&
��# %
	IdUsuario
��& /
==
��0 2
null
��3 7
)
��7 8
return
�� 
null
�� 
;
�� 
CarritoCompras
�� 
CarritoDeCompras
�� +
=
��, -
conexion
��. 6
.
��6 7
CarritoDeCompras
��7 G
.
��G H
Where
��H M
(
��M N
o
��N O
=>
��P R
o
��S T
.
��T U

IdProducto
��U _
==
��` b

IdProducto
��c m
&&
��n p
o
��q r
.
��r s
	IdUsuario
��s |
==
��} 
	IdUsuario��� �
)��� �
.��� �
FirstOrDefault��� �
(��� �
)��� �
;��� �
return
�� 
CarritoDeCompras
�� #
;
��# $
}
�� 	
public
�� 
bool
�� 6
(ExisteProductIdAndUserIdEnCarritoCompras
�� <
(
��< =
int
��= @
?
��@ A
	IdUsuario
��B K
,
��K L
int
��M P
?
��P Q

IdProducto
��R \
)
��\ ]
{
�� 	
var
�� 
CarritoComprasDB
��  
=
��! "+
GetCarritoComprasByUserAsList
��# @
(
��@ A
	IdUsuario
��A J
)
��J K
;
��K L
foreach
�� 
(
�� 
var
�� 
producto
�� !
in
��" $
CarritoComprasDB
��% 5
)
��5 6
{
�� 
if
�� 
(
�� 
producto
�� 
.
�� 

IdProducto
�� '
==
��( *

IdProducto
��+ 5
)
��5 6
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
void
�� ,
AgregarProductoACarritoCompras
�� 2
(
��2 3
Usuario
��3 :
usuario
��; B
,
��B C
Producto
��D L
producto
��M U
,
��U V
int
��W Z
cantidad
��[ c
)
��c d
{
�� 	
CarritoCompras
�� 
agregarProducto
�� *
=
��+ ,
new
��- 0
CarritoCompras
��1 ?
{
�� 

IdProducto
�� 
=
�� 
producto
�� %
.
��% &
Id
��& (
,
��( )
Cantidad
�� 
=
�� 
cantidad
�� #
,
��# $
	IdUsuario
�� 
=
�� 
usuario
�� #
.
��# $
Id
��$ &
}
�� 
;
�� 
conexion
�� 
.
�� 
CarritoDeCompras
�� %
.
��% &
Add
��& )
(
��) *
agregarProducto
��* 9
)
��9 :
;
��: ;
conexion
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� 3
%ActualizarCantidadByIdProductoCarrito
�� 9
(
��9 :
int
��: =
?
��= >

IdProducto
��? I
,
��I J
int
��K N
?
��N O
	IdUsuario
��P Y
,
��Y Z
int
��Z ]
NuevaCantidad
��^ k
)
��k l
{
�� 	
var
�� 
CarritoComprasDB
��  
=
��! "3
%GetCarritoComprasByProductIdAndUserId
��# H
(
��H I
	IdUsuario
��I R
,
��R S

IdProducto
��T ^
)
��^ _
;
��_ `
CarritoComprasDB
�� 
.
�� 
Cantidad
�� %
=
��& '
NuevaCantidad
��( 5
;
��5 6
conexion
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� .
 EliminarProductoDeCarritoCompras
�� 4
(
��4 5
int
��5 8
?
��8 9

IdProducto
��: D
,
��D E
int
��F I
?
��I J
	IdUsuario
��K T
)
��T U
{
�� 	
var
�� 
CarritoComprasDB
��  
=
��! "3
%GetCarritoComprasByProductIdAndUserId
��# H
(
��H I
	IdUsuario
��I R
,
��R S

IdProducto
��T ^
)
��^ _
;
��_ `
conexion
�� 
.
�� 
CarritoDeCompras
�� %
.
��% &
Remove
��& ,
(
��, -
CarritoComprasDB
��- =
)
��= >
;
��> ?
conexion
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
}
�� 
}�� 