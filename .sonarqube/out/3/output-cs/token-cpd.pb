›0
sD:\BackendApplication\SocialDirectoryApplication\SocialDirectoryApplication\Controllers\ContactDetailsController.cs
	namespace 	&
SocialDirectoryApplication
 $
.$ %
Controllers% 0
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class $
ContactDetailsController )
:* +
ControllerBase, :
{ 
private 
readonly 
IContactDetailsBL *
contactDetailsBL+ ;
;; <
public 
readonly 
ILogger 
<  
UserController  .
>. /
logger0 6
;6 7
public!! $
ContactDetailsController!! '
(!!' (
IContactDetailsBL!!( 9
contactDetailsBL!!: J
,!!J K
ILogger!!L S
<!!S T
UserController!!T b
>!!b c
logger!!d j
)!!j k
{"" 	
this## 
.## 
contactDetailsBL## !
=##" #
contactDetailsBL##$ 4
;##4 5
this$$ 
.$$ 
logger$$ 
=$$ 
logger$$  
;$$  !
}%% 	
[++ 	
	Authorize++	 
]++ 
[,, 	
HttpGet,,	 
(,, 
$str,, 
),, 
],,  
public-- 
IActionResult-- 
GetAllContacts-- +
(--+ ,
)--, -
{.. 	
try// 
{00 
long11 
	jwtUserId11 
=11  
Convert11! (
.11( )
ToInt3211) 0
(110 1
User111 5
.115 6
Claims116 <
.11< =
FirstOrDefault11= K
(11K L
e11L M
=>11N P
e11Q R
.11R S
Type11S W
==11X Z
$str11[ c
)11c d
.11d e
Value11e j
)11j k
;11k l
IEnumerable22 
<22 
GetAllContacts22 *
>22* +
contacts22, 4
=225 6
contactDetailsBL227 G
.22G H
GetAllContacts22H V
(22V W
	jwtUserId22W `
)22` a
;22a b
if33 
(33 
contacts33 
==33 
null33  $
)33$ %
{44 
return55 

BadRequest55 %
(55% &
new55& )
{55* +
Success55, 3
=554 5
false556 ;
,55; <
message55= D
=55E F
$str55G g
}55h i
)55i j
;55j k
}66 
return77 
Ok77 
(77 
new77 
{77 
Success77  '
=77( )
true77* .
,77. /
message770 7
=778 9
$str77: [
,77[ \
contacts77] e
}77f g
)77g h
;77h i
}88 
catch99 
(99 
	Exception99 
ex99 
)99  
{:: 
return;; 

BadRequest;; !
(;;! "
new;;" %
{;;& '
ex;;( *
.;;* +
Message;;+ 2
};;3 4
);;4 5
;;;5 6
this<< 
.<< 
logger<< 
.<< 
Log<< 
(<<  
LogLevel<<  (
.<<( )
Error<<) .
,<<. /
ex<<0 2
.<<2 3
Message<<3 :
,<<: ;
ex<<< >
,<<> ?
ex<<@ B
.<<B C
Message<<C J
,<<J K
null<<L P
)<<P Q
;<<Q R
}== 
}>> 	
[EE 	
	AuthorizeEE	 
]EE 
[FF 	
HttpGetFF	 
(FF 
$strFF %
)FF% &
]FF& '
publicGG 
IActionResultGG 
GetContactsBySearchGG 0
(GG0 1
stringGG1 7
searchParametersGG8 H
)GGH I
{HH 	
tryII 
{JJ 
longKK 
	jwtUserIdKK 
=KK  
ConvertKK! (
.KK( )
ToInt32KK) 0
(KK0 1
UserKK1 5
.KK5 6
ClaimsKK6 <
.KK< =
FirstOrDefaultKK= K
(KKK L
eKKL M
=>KKN P
eKKQ R
.KKR S
TypeKKS W
==KKX Z
$strKK[ c
)KKc d
.KKd e
ValueKKe j
)KKj k
;KKk l
IEnumerableLL 
<LL 
GetAllContactsLL *
>LL* +
contactsLL, 4
=LL5 6
contactDetailsBLLL7 G
.LLG H
GetContactsBySearchLLH [
(LL[ \
searchParametersLL\ l
,LLl m
	jwtUserIdLLn w
)LLw x
;LLx y
ifMM 
(MM 
contactsMM 
==MM 
nullMM  $
)MM$ %
{NN 
returnOO 
NotFoundOO #
(OO# $
newOO$ '
{OO( )
SuccessOO* 1
=OO2 3
falseOO4 9
,OO9 :
messageOO; B
=OOC D
$strOOE i
}OOj k
)OOk l
;OOl m
}PP 
returnQQ 
OkQQ 
(QQ 
newQQ 
{QQ 
SuccessQQ  '
=QQ( )
trueQQ* .
,QQ. /
messageQQ0 7
=QQ8 9
$strQQ: e
,QQe f
contactsQQg o
}QQp q
)QQq r
;QQr s
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS  
{TT 
returnUU 

BadRequestUU !
(UU! "
newUU" %
{UU& '
exUU( *
.UU* +
MessageUU+ 2
}UU3 4
)UU4 5
;UU5 6
thisVV 
.VV 
loggerVV 
.VV 
LogVV 
(VV  
LogLevelVV  (
.VV( )
ErrorVV) .
,VV. /
exVV0 2
.VV2 3
MessageVV3 :
,VV: ;
exVV< >
,VV> ?
exVV@ B
.VVB C
MessageVVC J
,VVJ K
nullVVL P
)VVP Q
;VVQ R
}WW 
}XX 	
}YY 
}ZZ ≠P
nD:\BackendApplication\SocialDirectoryApplication\SocialDirectoryApplication\Controllers\MyContactController.cs
	namespace 	&
SocialDirectoryApplication
 $
.$ %
Controllers% 0
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
MyContactController $
:% &
ControllerBase' 5
{ 
private 
readonly 
IMyContactBL %
myContactBL& 1
;1 2
public 
readonly 
ILogger 
<  
UserController  .
>. /
logger0 6
;6 7
public"" 
MyContactController"" "
(""" #
IMyContactBL""# /
myContactBL""0 ;
,""; <
ILogger""= D
<""D E
UserController""E S
>""S T
logger""U [
)""[ \
{## 	
this$$ 
.$$ 
myContactBL$$ 
=$$ 
myContactBL$$ *
;$$* +
this%% 
.%% 
logger%% 
=%% 
logger%%  
;%%  !
}&& 	
[-- 	
HttpPost--	 
(-- 
$str-- 
)--  
]--  !
public.. 
IActionResult.. 

AddContact.. '
(..' (
long..( ,
	contactId..- 6
)..6 7
{// 	
try00 
{11 
long33 
	jwtUserId33 
=33  
$num33! "
;33" #
GetMyContactsModel44 "

myContacts44# -
=44. /
myContactBL440 ;
.44; <

AddContact44< F
(44F G
	contactId44G P
,44P Q
	jwtUserId44R [
)44[ \
;44\ ]
if55 
(55 

myContacts55 
!=55 !
null55" &
)55& '
{66 
return77 
Ok77 
(77 
new77 !
{77" #
Success77$ +
=77, -
true77. 2
,772 3
message774 ;
=77< =
$str77> X
,77X Y

myContacts77Z d
}77e f
)77f g
;77g h
}88 
return99 
NotFound99 
(99  
new99  #
{99$ %
Success99& -
=99. /
false990 5
,995 6
message997 >
=99? @
$str99A U
}99V W
)99W X
;99X Y
}:: 
catch;; 
(;; 
	Exception;; 
ex;; 
);;  
{<< 
return== 

BadRequest== !
(==! "
new==" %
{==& '
success==' .
===/ 0
false==1 6
,==6 7
message==9 @
===A B
ex==C E
.==E F
Message==F M
}==N O
)==O P
;==P Q
this>> 
.>> 
logger>> 
.>> 
Log>> 
(>>  
LogLevel>>  (
.>>( )
Error>>) .
,>>. /
ex>>0 2
.>>2 3
Message>>3 :
,>>: ;
ex>>< >
,>>> ?
ex>>@ B
.>>B C
Message>>C J
,>>J K
null>>L P
)>>P Q
;>>Q R
}?? 
}@@ 	
[GG 	

HttpDeleteGG	 
(GG 
$strGG !
)GG! "
]GG" #
publicHH 
IActionResultHH &
DeleteContactWithContactIdHH 7
(HH7 8
longHH8 <
	contactIdHH= F
)HHF G
{II 	
tryJJ 
{KK 
longMM 
	jwtUserIdMM 
=MM  
$numMM! "
;MM" #
ContactEntitiesNN 
contactNN  '
=NN( )
myContactBLNN* 5
.NN5 6#
GetContactWithContactIdNN6 M
(NNM N
	contactIdNNN W
,NNW X
	jwtUserIdNNY b
)NNb c
;NNc d
ifOO 
(OO 
contactOO 
==OO 
nullOO #
)OO# $
{PP 
returnQQ 
NotFoundQQ #
(QQ# $
newQQ$ '
{QQ( )
SuccessQQ* 1
=QQ2 3
falseQQ4 9
,QQ9 :
messageQQ; B
=QQC D
$strQQE W
}QQX Y
)QQY Z
;QQZ [
}RR 
myContactBLSS 
.SS &
DeleteContactWithContactIdSS 6
(SS6 7
contactSS7 >
,SS> ?
	jwtUserIdSS@ I
)SSI J
;SSJ K
returnTT 
OkTT 
(TT 
newTT 
{TT 
SuccessTT  '
=TT( )
trueTT* .
,TT. /
messageTT0 7
=TT8 9
$strTT: K
}TTL M
)TTM N
;TTN O
}UU 
catchVV 
(VV 
	ExceptionVV 
exVV 
)VV  
{WW 
returnXX 

BadRequestXX !
(XX! "
newXX" %
{XX& '
successXX( /
=XX0 1
falseXX2 7
,XX7 8
messageXX9 @
=XXA B
exXXC E
.XXE F
MessageXXF M
}XXN O
)XXO P
;XXP Q
thisYY 
.YY 
loggerYY 
.YY 
LogYY 
(YY  
LogLevelYY  (
.YY( )
ErrorYY) .
,YY. /
exYY0 2
.YY2 3
MessageYY3 :
,YY: ;
exYY< >
,YY> ?
exYY@ B
.YYB C
MessageYYC J
,YYJ K
nullYYL P
)YYP Q
;YYQ R
}ZZ 
}[[ 	
[aa 	
HttpGetaa	 
(aa 
$straa !
)aa! "
]aa" #
publicbb 
IActionResultbb 
GetContactsOfUsersbb /
(bb/ 0
)bb0 1
{cc 	
trydd 
{ee 
longgg 
	jwtUserIdgg 
=gg  
$numgg! "
;gg" #
IEnumerablehh 
<hh 
GetMyContactsModelhh .
>hh. /
contacthh0 7
=hh8 9
myContactBLhh: E
.hhE F
GetContactsOfUserhhF W
(hhW X
	jwtUserIdhhX a
)hha b
;hhb c
ifii 
(ii 
contactii 
==ii 
nullii #
)ii# $
{jj 
returnkk 
NotFoundkk #
(kk# $
newkk$ '
{kk( )
Successkk* 1
=kk2 3
falsekk4 9
,kk9 :
messagekk; B
=kkC D
$strkkE _
}kk` a
)kka b
;kkb c
}ll 
returnmm 
Okmm 
(mm 
newmm 
{mm 
Successmm  '
=mm( )
truemm* .
,mm. /
messagemm0 7
=mm8 9
$strmm: Z
,mmZ [
contactmm\ c
}mmd e
)mme f
;mmf g
}nn 
catchoo 
(oo 
	Exceptionoo 
exoo 
)oo  
{pp 
returnqq 

BadRequestqq !
(qq! "
newqq" %
{qq& '
successqq( /
=qq0 1
falseqq2 7
,qq7 8
messageqq9 @
=qqA B
exqqC E
.qqE F
MessageqqF M
}qqN O
)qqO P
;qqP Q
thisrr 
.rr 
loggerrr 
.rr 
Logrr 
(rr  
LogLevelrr  (
.rr( )
Errorrr) .
,rr. /
exrr0 2
.rr2 3
Messagerr3 :
,rr: ;
exrr< >
,rr> ?
exrr@ B
.rrB C
MessagerrC J
,rrJ K
nullrrL P
)rrP Q
;rrQ R
}ss 
}tt 	
[{{ 	
HttpGet{{	 
({{ 
$str{{ 
){{ 
]{{  
public|| 
IActionResult|| 
GetWithContactId|| -
(||- .
long||. 2
	contactId||3 <
)||< =
{}} 	
try~~ 
{ 
long
ÅÅ 
	jwtUserId
ÅÅ 
=
ÅÅ  
$num
ÅÅ! "
;
ÅÅ" #
IEnumerable
ÇÇ 
<
ÇÇ  
GetMyContactsModel
ÇÇ .
>
ÇÇ. /
contact
ÇÇ0 7
=
ÇÇ8 9
myContactBL
ÇÇ: E
.
ÇÇE F
GetWithContactId
ÇÇF V
(
ÇÇV W
	contactId
ÇÇW `
,
ÇÇ` a
	jwtUserId
ÇÇb k
)
ÇÇk l
;
ÇÇl m
if
ÉÉ 
(
ÉÉ 
contact
ÉÉ 
==
ÉÉ 
null
ÉÉ #
)
ÉÉ# $
{
ÑÑ 
return
ÖÖ 
NotFound
ÖÖ #
(
ÖÖ# $
new
ÖÖ$ '
{
ÖÖ( )
Success
ÖÖ* 1
=
ÖÖ2 3
false
ÖÖ4 9
,
ÖÖ9 :
message
ÖÖ; B
=
ÖÖC D
$str
ÖÖE W
}
ÖÖX Y
)
ÖÖY Z
;
ÖÖZ [
}
ÜÜ 
return
áá 
Ok
áá 
(
áá 
new
áá 
{
áá 
Success
áá  '
=
áá( )
true
áá* .
,
áá. /
message
áá0 7
=
áá8 9
$str
áá: L
,
ááL M
contact
ááN U
}
ááV W
)
ááW X
;
ááX Y
}
àà 
catch
ââ 
(
ââ 
	Exception
ââ 
ex
ââ 
)
ââ  
{
ää 
return
ãã 

BadRequest
ãã !
(
ãã! "
new
ãã" %
{
ãã& '
success
ãã( /
=
ãã0 1
false
ãã2 7
,
ãã7 8
message
ãã9 @
=
ããA B
ex
ããC E
.
ããE F
Message
ããF M
}
ããN O
)
ããO P
;
ããP Q
this
åå 
.
åå 
logger
åå 
.
åå 
Log
åå 
(
åå  
LogLevel
åå  (
.
åå( )
Error
åå) .
,
åå. /
ex
åå0 2
.
åå2 3
Message
åå3 :
,
åå: ;
ex
åå< >
,
åå> ?
ex
åå@ B
.
ååB C
Message
ååC J
,
ååJ K
null
ååL P
)
ååP Q
;
ååQ R
}
çç 
}
éé 	
}
èè 
}êê Â9
iD:\BackendApplication\SocialDirectoryApplication\SocialDirectoryApplication\Controllers\UserController.cs
	namespace 	&
SocialDirectoryApplication
 $
.$ %
Controllers% 0
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
UserController 
:  !
ControllerBase" 0
{ 
private 
readonly 
IUserBL  
userBL! '
;' (
public 
readonly 
ILogger 
<  
UserController  .
>. /
logger0 6
;6 7
public!! 
UserController!! 
(!! 
IUserBL!! %
userBL!!& ,
,!!, -
ILogger!!. 5
<!!5 6
UserController!!6 D
>!!D E
logger!!F L
)!!L M
{"" 	
this## 
.## 
userBL## 
=## 
userBL##  
;##  !
this$$ 
.$$ 
logger$$ 
=$$ 
logger$$  
;$$  !
}%% 	
[++ 	
HttpPost++	 
(++ 
$str++ 
)++ 
]++ 
public,, 
IActionResult,, 
Registration,, )
(,,) *
RegistrationModel,,* ;
model,,< A
),,A B
{-- 	
try.. 
{// %
RegistrationResponseModel00 )
user00* .
=00/ 0
userBL001 7
.007 8
Registration008 D
(00D E
model00E J
)00J K
;00K L
if11 
(11 
user11 
==11 
null11  
)11  !
{22 
return33 
NotFound33 #
(33# $
new33$ '
{33( )
Success33* 1
=332 3
false334 9
,339 :
message33; B
=33C D
$str	33E ò
}
33ô ö
)
33ö õ
;
33õ ú
}44 
return55 
Ok55 
(55 
new55 
{55 
Success55  '
=55( )
true55* .
,55. /
message550 7
=558 9
$str55: U
,55U V
user55W [
}55\ ]
)55] ^
;55^ _
}66 
catch77 
(77 
	Exception77 
ex77 
)77  
{88 
return99 

BadRequest99 !
(99! "
new99" %
{99& '
ex99( *
.99* +
Message99+ 2
}993 4
)994 5
;995 6
this:: 
.:: 
logger:: 
.:: 
Log:: 
(::  
LogLevel::  (
.::( )
Error::) .
,::. /
ex::0 2
.::2 3
Message::3 :
,::: ;
ex::< >
,::> ?
ex::@ B
.::B C
Message::C J
,::J K
null::L P
)::P Q
;::Q R
};; 
}<< 	
[CC 	
HttpPostCC	 
(CC 
$strCC 
)CC 
]CC 
publicDD 
IActionResultDD 
LoginDD "
(DD" #

LoginModelDD# -
modelDD. 3
)DD3 4
{EE 	
tryFF 
{GG 
LoginResponseModelHH "
credentialsHH# .
=HH/ 0
userBLHH1 7
.HH7 8
LoginHH8 =
(HH= >
modelHH> C
)HHC D
;HHD E
ifII 
(II 
credentialsII 
==II  "
nullII# '
)II' (
{JJ 
returnKK 
NotFoundKK #
(KK# $
newKK$ '
{KK( )
SuccessKK* 1
=KK2 3
falseKK4 9
,KK9 :
messageKK; B
=KKC D
$strKKE b
}KKc d
)KKd e
;KKe f
}LL 
returnMM 
OkMM 
(MM 
newMM 
{MM 
SuccessMM  '
=MM( )
trueMM* .
,MM. /
messageMM0 7
=MM8 9
$strMM: L
,MML M
credentialsMMN Y
}MMZ [
)MM[ \
;MM\ ]
}NN 
catchOO 
(OO 
	ExceptionOO 
exOO 
)OO  
{PP 
returnQQ 

BadRequestQQ !
(QQ! "
newQQ" %
{QQ& '
exQQ( *
.QQ* +
MessageQQ+ 2
}QQ3 4
)QQ4 5
;QQ5 6
thisRR 
.RR 
loggerRR 
.RR 
LogRR 
(RR  
LogLevelRR  (
.RR( )
ErrorRR) .
,RR. /
exRR0 2
.RR2 3
MessageRR3 :
,RR: ;
exRR< >
,RR> ?
exRR@ B
.RRB C
MessageRRC J
,RRJ K
nullRRL P
)RRP Q
;RRQ R
}SS 
}TT 	
[ZZ 	
	AuthorizeZZ	 
]ZZ 
[[[ 	
HttpGet[[	 
([[ 
$str[[ 
)[[ 
][[ 
public\\ 
IActionResult\\ 
	MyProfile\\ &
(\\& '
)\\' (
{]] 	
try^^ 
{__ 
long`` 
	jwtUserId`` 
=``  
Convert``! (
.``( )
ToInt32``) 0
(``0 1
User``1 5
.``5 6
Claims``6 <
.``< =
FirstOrDefault``= K
(``K L
e``L M
=>``N P
e``Q R
.``R S
Type``S W
==``X Z
$str``[ c
)``c d
.``d e
Value``e j
)``j k
;``k l
IEnumerableaa 
<aa 
MyProfileModelaa *
>aa* +
profileaa, 3
=aa4 5
userBLaa6 <
.aa< =
	MyProfileaa= F
(aaF G
	jwtUserIdaaG P
)aaP Q
;aaQ R
ifbb 
(bb 
profilebb 
==bb 
nullbb #
)bb# $
{cc 
returndd 
NotFounddd #
(dd# $
newdd$ '
{dd( )
Successdd* 1
=dd2 3
falsedd4 9
,dd9 :
messagedd; B
=ddC D
$strddE a
}ddb c
)ddc d
;ddd e
}ee 
returnff 
Okff 
(ff 
newff 
{ff 
Successff  '
=ff( )
trueff* .
,ff. /
messageff0 7
=ff8 9
$strff: O
,ffO P
profileffQ X
}ffY Z
)ffZ [
;ff[ \
}gg 
catchhh 
(hh 
	Exceptionhh 
exhh 
)hh  
{ii 
returnjj 

BadRequestjj !
(jj! "
newjj" %
{jj& '
exjj( *
.jj* +
Messagejj+ 2
}jj3 4
)jj4 5
;jj5 6
thiskk 
.kk 
loggerkk 
.kk 
Logkk 
(kk  
LogLevelkk  (
.kk( )
Errorkk) .
,kk. /
exkk0 2
.kk2 3
Messagekk3 :
,kk: ;
exkk< >
,kk> ?
exkk@ B
.kkB C
MessagekkC J
,kkJ K
nullkkL P
)kkP Q
;kkQ R
}ll 
}mm 	
}nn 
}oo  F
VD:\BackendApplication\SocialDirectoryApplication\SocialDirectoryApplication\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddDbContext 
< "
SocialDirectoryContext 4
>4 5
(5 6
opts6 :
=>; =
opts> B
.B C
UseSqlServerC O
(O P
builderP W
.W X
ConfigurationX e
.e f
GetConnectionStringf y
(y z
$str	z ç
)
ç é
)
é è
)
è ê
;
ê ë
builder 
. 
Services 
. 
AddTransient 
< 
IUserBL %
,% &
UserBL' -
>- .
(. /
)/ 0
;0 1
builder 
. 
Services 
. 
AddTransient 
< 
IUserRL %
,% &
UserRL' -
>- .
(. /
)/ 0
;0 1
builder 
. 
Services 
. 
AddTransient 
< 
IContactDetailsBL /
,/ 0
ContactDetailsBL1 A
>A B
(B C
)C D
;D E
builder 
. 
Services 
. 
AddTransient 
< 
IContactDetailsRL /
,/ 0
ContactDetailsRL1 A
>A B
(B C
)C D
;D E
builder 
. 
Services 
. 
AddTransient 
< 
IMyContactBL *
,* +
MyContactBL, 7
>7 8
(8 9
)9 :
;: ;
builder 
. 
Services 
. 
AddTransient 
< 
IMyContactRL *
,* +
MyContactRL, 7
>7 8
(8 9
)9 :
;: ;
builder 
. 
Services 
. 
AddAuthentication "
(" #
)# $
;$ %
builder 
. 
Host 
. 
ConfigureLogging 
( 
( 
hostingContext -
,- .
logging/ 6
)6 7
=>8 :
{; <
logging 
. 
AddNLog 
( 
hostingContext "
." #
Configuration# 0
.0 1

GetSection1 ;
(; <
$str< E
)E F
)F G
;G H
}   
)   
;   
builder"" 
."" 
Services"" 
."" 
AddCors"" 
("" 
options""  
=>""! #
{## 
options$$ 
.$$ 
	AddPolicy$$ 
($$ 
name%% 
:%% 	
$str%%
 
,%% 
builder&& 	
=>&&
 
{&& 
builder'' 
.'' 
AllowAnyOrigin'' 
('' 
)'' 
.'' 
AllowAnyMethod'' -
(''- .
)''. /
.''/ 0
AllowAnyHeader''0 >
(''> ?
)''? @
;''@ A
}(( 
)(( 
;(( 
})) 
))) 
;)) 
builder** 
.** 
Services** 
.** 
AddSwaggerGen** 
(** 
c**  
=>**! #
{++ 
var,, 
jwtSecurityScheme,, 
=,, 
new,, !
OpenApiSecurityScheme,,  5
{-- 
Scheme.. 
=.. 
$str.. 
,.. 
BearerFormat// 
=// 
$str// 
,// 
Name00 
=00 
$str00 #
,00# $
In11 

=11 
ParameterLocation11 
.11 
Header11 %
,11% &
Type22 
=22 
SecuritySchemeType22 !
.22! "
Http22" &
,22& '
Description33 
=33 
$str33 @
,33@ A
	Reference55 
=55 
new55 
OpenApiReference55 (
{66 	
Id77 
=77 
JwtBearerDefaults77 "
.77" # 
AuthenticationScheme77# 7
,777 8
Type88 
=88 
ReferenceType88  
.88  !
SecurityScheme88! /
}99 	
}:: 
;:: 
c<< 
.<< !
AddSecurityDefinition<< 
(<< 
jwtSecurityScheme<< -
.<<- .
	Reference<<. 7
.<<7 8
Id<<8 :
,<<: ;
jwtSecurityScheme<<< M
)<<M N
;<<N O
c>> 
.>> "
AddSecurityRequirement>> 
(>> 
new>>  &
OpenApiSecurityRequirement>>! ;
{?? 
{@@ 
jwtSecurityScheme@@ $
,@@$ %
Array@@& +
.@@+ ,
Empty@@, 1
<@@1 2
string@@2 8
>@@8 9
(@@9 :
)@@: ;
}@@< =
}AA 
)AA 
;AA 
}BB 
)BB 
;BB 
varCC 
tokenKeyCC 
=CC 
builderCC 
.CC 
ConfigurationCC $
.CC$ %
GetValueCC% -
<CC- .
stringCC. 4
>CC4 5
(CC5 6
$strCC6 ?
)CC? @
;CC@ A
varDD 
keyDD 
=DD 	
EncodingDD
 
.DD 
ASCIIDD 
.DD 
GetBytesDD !
(DD! "
tokenKeyDD" *
)DD* +
;DD+ ,
builderFF 
.FF 
ServicesFF 
.FF 
AddAuthenticationFF "
(FF" #
xFF# $
=>FF% '
{GG 
xHH 
.HH %
DefaultAuthenticateSchemeHH 
=HH  !
JwtBearerDefaultsHH" 3
.HH3 4 
AuthenticationSchemeHH4 H
;HHH I
xII 
.II "
DefaultChallengeSchemeII 
=II 
JwtBearerDefaultsII 0
.II0 1 
AuthenticationSchemeII1 E
;IIE F
}JJ 
)JJ 
.KK 
AddJwtBearerKK 
(KK 
xKK 
=>KK 
{LL 
xMM 
.MM  
RequireHttpsMetadataMM 
=MM 
falseMM "
;MM" #
xNN 
.NN 
	SaveTokenNN 
=NN 
trueNN 
;NN 
xOO 
.OO %
TokenValidationParametersOO 
=OO  !
newOO" %%
TokenValidationParametersOO& ?
{PP $
ValidateIssuerSigningKeyQQ  
=QQ! "
trueQQ# '
,QQ' (
IssuerSigningKeyRR 
=RR 
newRR  
SymmetricSecurityKeyRR 3
(RR3 4
keyRR4 7
)RR7 8
,RR8 9
ValidateIssuerSS 
=SS 
falseSS 
,SS 
ValidateAudienceTT 
=TT 
falseTT  
}UU 
;UU 
}VV 
)VV 
;VV 
varXX 
appXX 
=XX 	
builderXX
 
.XX 
BuildXX 
(XX 
)XX 
;XX 
if[[ 
([[ 
app[[ 
.[[ 
Environment[[ 
.[[ 
IsDevelopment[[ !
([[! "
)[[" #
)[[# $
{\\ 
app]] 
.]] 

UseSwagger]] 
(]] 
)]] 
;]] 
app^^ 
.^^ 
UseSwaggerUI^^ 
(^^ 
)^^ 
;^^ 
}__ 
app`` 
.`` 
UseCors`` 
(`` 
$str`` 
)`` 
;`` 
appbb 
.bb 
UseHttpsRedirectionbb 
(bb 
)bb 
;bb 
appdd 
.dd 
UseAuthenticationdd 
(dd 
)dd 
;dd 
appff 
.ff 
UseAuthorizationff 
(ff 
)ff 
;ff 
apphh 
.hh 
MapControllershh 
(hh 
)hh 
;hh 
appjj 
.jj 
Runjj 
(jj 
)jj 	
;jj	 

appll 
.ll 
UseMiddlewarell 
<ll "
ErrorHandlerMiddlewarell (
>ll( )
(ll) *
)ll* +
;ll+ ,