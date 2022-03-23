◊
bD:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\Context\SocialDirectoryContext.cs
	namespace 	
RepositoryLayer
 
. 
Context !
{ 
public 

class "
SocialDirectoryContext '
:( )
	DbContext* 3
{ 
public "
SocialDirectoryContext %
(% &
DbContextOptions& 6
options7 >
)> ?
:@ A
baseB F
(F G
optionsG N
)N O
{ 	
} 	
public'' 
DbSet'' 
<'' 
UserEntities'' !
>''! "
	UserTable''# ,
{''- .
get''/ 2
;''2 3
set''4 7
;''7 8
}''9 :
public// 
DbSet// 
<// 
ContactEntities// $
>//$ %
ContactTable//& 2
{//3 4
get//5 8
;//8 9
set//: =
;//= >
}//? @
	protectedBB 
overrideBB 
voidBB 
OnModelCreatingBB  /
(BB/ 0
ModelBuilderBB0 <
modelBuilderBB= I
)BBI J
{CC 	
modelBuilderDD 
.DD 
EntityDD 
<DD  
ContactEntitiesDD  /
>DD/ 0
(DD0 1
)DD1 2
.EE 
HasKeyEE 
(EE 
eEE 
=>EE 
newEE  
{EE! "
eEE# $
.EE$ %
UserIdEE% +
,EE+ ,
eEE, -
.EE- .
	ContactIdEE. 7
}EE8 9
)EE9 :
;EE: ;
modelBuilderFF 
.FF 
EntityFF 
<FF  
ContactEntitiesFF  /
>FF/ 0
(FF0 1
)FF1 2
.GG 
HasOneGG 
(GG 
eGG 
=>GG 
eGG 
.GG 
UserGG #
)GG# $
.HH 
WithManyHH 
(HH 
eHH 
=>HH 
eHH  
.HH  !
MyDetailHH! )
)HH) *
.II 
HasForeignKeyII 
(II 
eII  
=>II! #
eII$ %
.II% &
UserIdII& ,
)II, -
;II- .
modelBuilderJJ 
.JJ 
EntityJJ 
<JJ  
ContactEntitiesJJ  /
>JJ/ 0
(JJ0 1
)JJ1 2
.KK 
HasOneKK 
(KK 
eKK 
=>KK 
eKK 
.KK 

UserFriendKK )
)KK) *
.LL 
WithManyLL 
(LL 
eLL 
=>LL 
eLL  
.LL  !
FriendDetailLL! -
)LL- .
.MM 
HasForeignKeyMM 
(MM 
eMM  
=>MM! #
eMM$ %
.MM% &
	ContactIdMM& /
)MM/ 0
;MM0 1
}NN 	
}OO 
}PP ¶
\D:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\Entities\ContactEntities.cs
	namespace 	
RepositoryLayer
 
. 
Entities "
{ 
public 

class 
ContactEntities  
{ 
public 
long 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public"" 
UserEntities"" 
User""  
{""! "
get""# &
;""& '
set""( +
;""+ ,
}""- .
public** 
long** 
	ContactId** 
{** 
get**  #
;**# $
set**% (
;**( )
}*** +
public22 
UserEntities22 

UserFriend22 &
{22' (
get22) ,
;22, -
set22. 1
;221 2
}223 4
}44 
}55 π,
YD:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\Entities\UserEntities.cs
	namespace 	
RepositoryLayer
 
. 
Entities "
{ 
public 

class 
UserEntities 
{ 
[ 	
Key	 
] 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
public 
long 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
[$$ 	
Required$$	 
($$ 
ErrorMessage$$ 
=$$  
$str$$! 3
)$$3 4
]$$4 5
[%% 	
DataType%%	 
(%% 
DataType%% 
.%% 
Text%% 
)%%  
]%%  !
[&& 	
Display&&	 
(&& 
Name&& 
=&& 
$str&& 
)&& 
]&&  
public'' 
string'' 
Name'' 
{'' 
get''  
;''  !
set''" %
;''% &
}''' (
[// 	
Required//	 
(// 
ErrorMessage// 
=//  
$str//! 6
)//6 7
]//7 8
[00 	
DataType00	 
(00 
DataType00 
.00 
EmailAddress00 '
)00' (
]00( )
[11 	
Display11	 
(11 
Name11 
=11 
$str11 !
)11! "
]11" #
public22 
string22 
EmailId22 
{22 
get22  #
;22# $
set22% (
;22( )
}22* +
[:: 	
Required::	 
(:: 
ErrorMessage:: 
=::  
$str::! 7
)::7 8
]::8 9
[;; 	
DataType;;	 
(;; 
DataType;; 
.;; 
Password;; #
);;# $
];;$ %
[<< 	
Display<<	 
(<< 
Name<< 
=<< 
$str<< "
)<<" #
]<<# $
public== 
string== 
Password== 
{==  
get==! $
;==$ %
set==& )
;==) *
}==+ ,
[EE 	
RequiredEE	 
(EE 
ErrorMessageEE 
=EE  
$strEE! 3
)EE3 4
]EE4 5
[FF 	
DataTypeFF	 
(FF 
DataTypeFF 
.FF 
TextFF 
)FF  
]FF  !
[GG 	
DisplayGG	 
(GG 
NameGG 
=GG 
$strGG 
)GG 
]GG  
publicHH 
stringHH 
GenderHH 
{HH 
getHH "
;HH" #
setHH$ '
;HH' (
}HH) *
[PP 	
RequiredPP	 
(PP 
ErrorMessagePP 
=PP  
$strPP! <
)PP< =
]PP= >
[QQ 	
DataTypeQQ	 
(QQ 
DataTypeQQ 
.QQ 
TextQQ 
)QQ  
]QQ  !
[RR 	
DisplayRR	 
(RR 
NameRR 
=RR 
$strRR '
)RR' (
]RR( )
publicSS 
stringSS 
DateOfBirthSS !
{SS" #
getSS$ '
;SS' (
setSS) ,
;SS, -
}SS. /
[[[ 	
Required[[	 
([[ 
ErrorMessage[[ 
=[[  
$str[[! <
)[[< =
][[= >
[\\ 	
DataType\\	 
(\\ 
DataType\\ 
.\\ 
Text\\ 
)\\  
]\\  !
[]] 	
Display]]	 
(]] 
Name]] 
=]] 
$str]] '
)]]' (
]]]( )
public^^ 
string^^ 
MobileNumber^^ "
{^^# $
get^^% (
;^^( )
set^^* -
;^^- .
}^^/ 0
[ff 	
Requiredff	 
(ff 
ErrorMessageff 
=ff  
$strff! 7
)ff7 8
]ff8 9
[gg 	
DataTypegg	 
(gg 
DataTypegg 
.gg 
Textgg 
)gg  
]gg  !
[hh 	
Displayhh	 
(hh 
Namehh 
=hh 
$strhh "
)hh" #
]hh# $
publicii 
stringii 
Interestii 
{ii  
getii! $
;ii$ %
setii& )
;ii) *
}ii+ ,
[qq 	
Requiredqq	 
(qq 
ErrorMessageqq 
=qq  
$strqq! 7
)qq7 8
]qq8 9
[rr 	
DataTyperr	 
(rr 
DataTyperr 
.rr 
Textrr 
)rr  
]rr  !
[ss 	
Displayss	 
(ss 
Namess 
=ss 
$strss "
)ss" #
]ss# $
publictt 
stringtt 
Locationtt 
{tt  
gettt! $
;tt$ %
settt& )
;tt) *
}tt+ ,
publicvv 
virtualvv 
ICollectionvv "
<vv" #
ContactEntitiesvv# 2
>vv2 3
MyDetailvv4 <
{vv= >
getvv? B
;vvB C
setvvD G
;vvG H
}vvI J
publicww 
virtualww 
ICollectionww "
<ww" #
ContactEntitiesww# 2
>ww2 3
FriendDetailww4 @
{wwA B
getwwC F
;wwF G
setwwH K
;wwK L
}wwM N
}xx 
}yy á
eD:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\ExceptionHandling\CustomException.cs
	namespace 	
RepositoryLayer
 
. 
ExceptionHandling +
{ 
public 

class 
CustomException  
:! "
	Exception# ,
{ 
public 
HttpStatusCode 
Status $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
public## 
CustomException## 
(## 
HttpStatusCode## -
status##. 4
,##4 5
string##6 <
msg##= @
)##@ A
:##B C
base##D H
(##H I
msg##I L
)##L M
{$$ 	
Status%% 
=%% 
status%% 
;%% 
}&& 	
}'' 
}(( ú
lD:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\ExceptionHandling\ErrorHandlerMiddleware.cs
	namespace 	
RepositoryLayer
 
. 
ExceptionHandling +
{ 
public 

class "
ErrorHandlerMiddleware '
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
public "
ErrorHandlerMiddleware %
(% &
RequestDelegate& 5
next6 :
): ;
{ 	
_next   
=   
next   
;   
}!! 	
public'' 
async'' 
Task'' 
Invoke''  
(''  !
HttpContext''! ,
context''- 4
)''4 5
{(( 	
try)) 
{** 
await++ 
_next++ 
(++ 
context++ #
)++# $
;++$ %
},, 
catch-- 
(-- 
	Exception-- 
error-- "
)--" #
{.. 
var// 
response// 
=// 
context// &
.//& '
Response//' /
;/// 0
response00 
.00 
ContentType00 $
=00% &
$str00' 9
;009 :
switch22 
(22 
error22 
)22 
{33 
case44 
CustomException44 (
e44) *
:44* +
response66  
.66  !

StatusCode66! +
=66, -
(66. /
int66/ 2
)662 3
HttpStatusCode663 A
.66A B

BadRequest66B L
;66L M
break77 
;77 
case88  
KeyNotFoundException88 -
e88. /
:88/ 0
response::  
.::  !

StatusCode::! +
=::, -
(::. /
int::/ 2
)::2 3
HttpStatusCode::3 A
.::A B
NotFound::B J
;::J K
break;; 
;;; 
default<< 
:<< 
response>>  
.>>  !

StatusCode>>! +
=>>, -
(>>. /
int>>/ 2
)>>2 3
HttpStatusCode>>3 A
.>>A B
InternalServerError>>B U
;>>U V
break?? 
;?? 
}@@ 
varBB 
resultBB 
=BB 
JsonSerializerBB +
.BB+ ,
	SerializeBB, 5
(BB5 6
newBB6 9
{BB: ;
messageBB< C
=BBD E
errorBBF K
?BBK L
.BBL M
MessageBBM T
}BBU V
)BBV W
;BBW X
awaitCC 
responseCC 
.CC 

WriteAsyncCC )
(CC) *
resultCC* 0
)CC0 1
;CC1 2
}DD 
}EE 	
}FF 
}GG ã
_D:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\Intefaces\IContactDetailsRL.cs
	namespace 	
RepositoryLayer
 
. 
	Intefaces #
{ 
public 

	interface 
IContactDetailsRL &
{ 
IEnumerable 
< 
GetAllContacts "
>" #
GetAllContacts$ 2
(2 3
long3 7
	jwtUserId8 A
)A B
;B C
IEnumerable 
< 
GetAllContacts "
>" #
GetContactsBySearch$ 7
(7 8
string8 >
searchParameters? O
,O P
longQ U
	jwtUserIdV _
)_ `
;` a
}   
}!! Á

ZD:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\Intefaces\IMyContactRL.cs
	namespace 	
RepositoryLayer
 
. 
	Intefaces #
{ 
public 

	interface 
IMyContactRL !
{ 
GetMyContactsModel 

AddContact %
(% &
long& *
	contactId+ 4
,4 5
long6 :
	jwtUserId; D
)D E
;E F
ContactEntities"" #
GetContactWithContactId"" /
(""/ 0
long""0 4
	contactId""5 >
,""> ?
long""@ D
	jwtUserId""E N
)""N O
;""O P
void)) &
DeleteContactWithContactId)) '
())' (
ContactEntities))( 7
contact))8 ?
,))? @
long))A E
	jwtUserId))F O
)))O P
;))P Q
IEnumerable00 
<00 
GetMyContactsModel00 &
>00& '
GetContactsOfUser00( 9
(009 :
long00: >
	jwtUserId00? H
)00H I
;00I J
IEnumerable88 
<88 
GetMyContactsModel88 &
>88& '
GetWithContactId88( 8
(888 9
long889 =
	contactId88> G
,88G H
long88I M
	jwtUserId88N W
)88W X
;88X Y
}99 
}:: í
UD:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\Intefaces\IUserRL.cs
	namespace 	
RepositoryLayer
 
. 
	Intefaces #
{ 
public 

	interface 
IUserRL 
{ %
RegistrationResponseModel !
Registration" .
(. /
RegistrationModel/ @
modelA F
)F G
;G H
LoginResponseModel   
Login    
(    !

LoginModel  ! +
model  , 1
)  1 2
;  2 3
IEnumerable'' 
<'' 
MyProfileModel'' "
>''" #
	MyProfile''$ -
(''- .
long''. 2
	jwtUserId''3 <
)''< =
;''= >
}(( 
})) €9
mD:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\Migrations\20220311140011_SocialDirectory.cs
	namespace 	
RepositoryLayer
 
. 

Migrations $
{ 
public 

partial 
class 
SocialDirectory (
:) *
	Migration+ 4
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str !
,! "
columns 
: 
table 
=> !
new" %
{ 
UserId 
= 
table "
." #
Column# )
<) *
long* .
>. /
(/ 0
type0 4
:4 5
$str6 >
,> ?
nullable@ H
:H I
falseJ O
)O P
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
nullableG O
:O P
falseQ V
)V W
,W X
EmailId 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
type3 7
:7 8
$str9 H
,H I
nullableJ R
:R S
falseT Y
)Y Z
,Z [
Password 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
,[ \
Gender 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 G
,G H
nullableI Q
:Q R
falseS X
)X Y
,Y Z
DateOfBirth 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
falseX ]
)] ^
,^ _
MobileNumber  
=! "
table# (
.( )
Column) /
</ 0
string0 6
>6 7
(7 8
type8 <
:< =
$str> M
,M N
nullableO W
:W X
falseY ^
)^ _
,_ `
Interest 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
,[ \
Location 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 3
,3 4
x5 6
=>7 9
x: ;
.; <
UserId< B
)B C
;C D
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name   
:   
$str   $
,  $ %
columns!! 
:!! 
table!! 
=>!! !
new!!" %
{"" 
UserId## 
=## 
table## "
.##" #
Column### )
<##) *
long##* .
>##. /
(##/ 0
type##0 4
:##4 5
$str##6 >
,##> ?
nullable##@ H
:##H I
false##J O
)##O P
,##P Q
	ContactId$$ 
=$$ 
table$$  %
.$$% &
Column$$& ,
<$$, -
long$$- 1
>$$1 2
($$2 3
type$$3 7
:$$7 8
$str$$9 A
,$$A B
nullable$$C K
:$$K L
false$$M R
)$$R S
}%% 
,%% 
constraints&& 
:&& 
table&& "
=>&&# %
{'' 
table(( 
.(( 

PrimaryKey(( $
((($ %
$str((% 6
,((6 7
x((8 9
=>((: <
new((= @
{((A B
x((C D
.((D E
UserId((E K
,((K L
x((M N
.((N O
	ContactId((O X
}((Y Z
)((Z [
;(([ \
table)) 
.)) 

ForeignKey)) $
())$ %
name** 
:** 
$str** C
,**C D
column++ 
:++ 
x++  !
=>++" $
x++% &
.++& '
	ContactId++' 0
,++0 1
principalTable,, &
:,,& '
$str,,( 3
,,,3 4
principalColumn-- '
:--' (
$str--) 1
,--1 2
onDelete..  
:..  !
ReferentialAction.." 3
...3 4
NoAction..4 <
)..< =
;..= >
table// 
.// 

ForeignKey// $
(//$ %
name00 
:00 
$str00 @
,00@ A
column11 
:11 
x11  !
=>11" $
x11% &
.11& '
UserId11' -
,11- .
principalTable22 &
:22& '
$str22( 3
,223 4
principalColumn33 '
:33' (
$str33) 1
,331 2
onDelete44  
:44  !
ReferentialAction44" 3
.443 4
NoAction444 <
)44< =
;44= >
}55 
)55 
;55 
migrationBuilder77 
.77 
CreateIndex77 (
(77( )
name88 
:88 
$str88 1
,881 2
table99 
:99 
$str99 %
,99% &
column:: 
::: 
$str:: #
)::# $
;::$ %
};; 	
	protected== 
override== 
void== 
Down==  $
(==$ %
MigrationBuilder==% 5
migrationBuilder==6 F
)==F G
{>> 	
migrationBuilder?? 
.?? 
	DropTable?? &
(??& '
name@@ 
:@@ 
$str@@ $
)@@$ %
;@@% &
migrationBuilderBB 
.BB 
	DropTableBB &
(BB& '
nameCC 
:CC 
$strCC !
)CC! "
;CC" #
}DD 	
}EE 
}FF Ì4
]D:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\Services\ContactDetailsRL.cs
	namespace 	
RepositoryLayer
 
. 
Services "
{ 
public 

class 
ContactDetailsRL !
:" #
IContactDetailsRL$ 5
{ 
public "
SocialDirectoryContext %
context& -
;- .
public!! 
ContactDetailsRL!! 
(!!  "
SocialDirectoryContext!!  6
context!!7 >
)!!> ?
{"" 	
this## 
.## 
context## 
=## 
context## "
;##" #
}$$ 	
public++ 
IEnumerable++ 
<++ 
GetAllContacts++ )
>++) *
GetAllContacts+++ 9
(++9 :
long++: >
	jwtUserId++? H
)++H I
{,, 	
try-- 
{.. 
var// 
allUsers// 
=// 
this// #
.//# $
context//$ +
.//+ ,
	UserTable//, 5
.//5 6
Where//6 ;
(//; <
e//< =
=>//= ?
e//@ A
.//A B
UserId//B H
!=//I K
	jwtUserId//L U
)//U V
;//V W
IList00 
<00 
GetAllContacts00 $
>00$ %
userList00& .
=00/ 0
new001 4
List005 9
<009 :
GetAllContacts00: H
>00H I
(00I J
)00J K
;00K L
foreach11 
(11 
var11 
contact11 $
in11% '
allUsers11( 0
)110 1
{22 
userList33 
.33 
Add33  
(33  !
new33! $
GetAllContacts33% 3
(333 4
)334 5
{44 
UserId55 
=55  
contact55! (
.55( )
UserId55) /
,55/ 0
Name66 
=66 
contact66 &
.66& '
Name66' +
,66+ ,
EmailId77 
=77  !
contact77" )
.77) *
EmailId77* 1
,771 2
Gender88 
=88  
contact88! (
.88( )
Gender88) /
,88/ 0
DateOfBirth99 #
=99$ %
contact99& -
.99- .
DateOfBirth99. 9
,999 :
MobileNumber:: $
=::% &
contact::' .
.::. /
MobileNumber::/ ;
,::; <
Interest;;  
=;;! "
contact;;# *
.;;* +
Interest;;+ 3
,;;3 4
Location<<  
=<<! "
contact<<# *
.<<* +
Location<<+ 3
}== 
)== 
;== 
}>> 
return?? 
userList?? 
;??  
}@@ 
catchAA 
(AA 
	ExceptionAA 
exAA 
)AA  
{BB 
throwCC 
newCC 
CustomExceptionCC )
(CC) *
HttpStatusCodeCC* 8
.CC8 9

BadRequestCC9 C
,CCC D
$strCCE i
)CCi j
;CCj k
}DD 
}EE 	
publicLL 
IEnumerableLL 
<LL 
GetAllContactsLL )
>LL) *
GetContactsBySearchLL+ >
(LL> ?
stringLL? E
searchParametersLLF V
,LLV W
longLLX \
	jwtUserIdLL] f
)LLf g
{MM 	
tryNN 
{OO 
varPP 
allUsersPP 
=PP 
thisPP #
.PP# $
contextPP$ +
.PP+ ,
	UserTablePP, 5
.PP5 6
WherePP6 ;
(PP; <
ePP< =
=>PP= ?
ePP@ A
.PPA B
EmailIdPPB I
==PPJ L
searchParametersPPM ]
||PP^ `
ePPa b
.PPb c
NamePPc g
==PPh j
searchParametersPPk {
||PP| ~
e	PP Ä
.
PPÄ Å
Gender
PPÅ á
==
PPà ä
searchParameters
PPã õ
||
PPú û
eQQ  
.QQ  !
DateOfBirthQQ! ,
==QQ- /
searchParametersQQ0 @
||QQA C
eQQD E
.QQE F
MobileNumberQQF R
==QQS U
searchParametersQQV f
||QQg i
eQQj k
.QQk l
InterestQQl t
==QQu w
searchParameters	QQx à
||
QQâ ã
e
QQå ç
.
QQç é
Location
QQé ñ
==
QQó ô
searchParameters
QQö ™
)
QQ™ ´
.
QQ´ ¨
ToList
QQ¨ ≤
(
QQ≤ ≥
)
QQ≥ ¥
;
QQ¥ µ
ifRR 
(RR 
allUsersRR 
.RR 
CountRR !
>RR" #
$numRR$ %
)RR% &
{SS 
IListTT 
<TT 
GetAllContactsTT (
>TT( )
userListTT* 2
=TT3 4
newTT5 8
ListTT9 =
<TT= >
GetAllContactsTT> L
>TTL M
(TTM N
)TTN O
;TTO P
foreachUU 
(UU 
varUU  
contactUU! (
inUU) +
allUsersUU, 4
)UU4 5
{VV 
userListWW  
.WW  !
AddWW! $
(WW$ %
newWW% (
GetAllContactsWW) 7
(WW7 8
)WW8 9
{XX 
UserIdYY "
=YY# $
contactYY% ,
.YY, -
UserIdYY- 3
,YY3 4
NameZZ  
=ZZ! "
contactZZ# *
.ZZ* +
NameZZ+ /
,ZZ/ 0
EmailId[[ #
=[[$ %
contact[[& -
.[[- .
EmailId[[. 5
,[[5 6
Gender\\ "
=\\# $
contact\\% ,
.\\, -
Gender\\- 3
,\\3 4
DateOfBirth]] '
=]]( )
contact]]* 1
.]]1 2
DateOfBirth]]2 =
,]]= >
MobileNumber^^ (
=^^) *
contact^^+ 2
.^^2 3
MobileNumber^^3 ?
,^^? @
Interest__ $
=__% &
contact__' .
.__. /
Interest__/ 7
,__7 8
Location`` $
=``% &
contact``' .
.``. /
Location``/ 7
}aa 
)aa 
;aa 
}bb 
returncc 
userListcc #
;cc# $
}dd 
returnee 
nullee 
;ee 
}ff 
catchgg 
(gg 
	Exceptiongg 
exgg 
)gg  
{hh 
throwii 
newii 
CustomExceptionii )
(ii) *
HttpStatusCodeii* 8
.ii8 9

BadRequestii9 C
,iiC D
$striiE i
)iii j
;iij k
}jj 
}kk 	
}ll 
}mm √Ö
XD:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\Services\MyContactRL.cs
	namespace 	
RepositoryLayer
 
. 
Services "
{ 
public 

class 
MyContactRL 
: 
IMyContactRL +
{ 
public "
SocialDirectoryContext %
context& -
;- .
public!! 
MyContactRL!! 
(!! "
SocialDirectoryContext!! 1
context!!2 9
)!!9 :
{"" 	
this## 
.## 
context## 
=## 
context## "
;##" #
}$$ 	
public-- 
GetMyContactsModel-- !

AddContact--" ,
(--, -
long--- 1
	contactId--2 ;
,--; <
long--= A
	jwtUserId--B K
)--K L
{.. 	
try// 
{00 
var11 

addContact11 
=11  
this11! %
.11% &
context11& -
.11- .
	UserTable11. 7
.117 8
Where118 =
(11= >
e11> ?
=>11@ B
e11C D
.11D E
UserId11E K
==11L N
	jwtUserId11O X
&&11Y [
e11\ ]
.11] ^
UserId11^ d
==11e g
	contactId11h q
)11q r
;11r s
if22 
(22 

addContact22 
!=22 !
null22" &
)22& '
{33 
if44 
(44 
	jwtUserId44  
!=44! #
	contactId44$ -
)44- .
{55 
ContactEntities66 '
entities66( 0
=661 2
new663 6
(666 7
)667 8
{77 
UserId88 "
=88# $
	jwtUserId88% .
,88. /
	ContactId99 %
=99& '
	contactId99( 1
,991 2
}:: 
;:: 
this;; 
.;; 
context;; $
.;;$ %
Add;;% (
(;;( )
entities;;) 1
);;1 2
;;;2 3
int<< 
result<< "
=<<# $
this<<% )
.<<) *
context<<* 1
.<<1 2
SaveChanges<<2 =
(<<= >
)<<> ?
;<<? @
if== 
(== 
result== "
>==# $
$num==% &
)==& '
{>> 
var?? 
	myContact??  )
=??* +
this??, 0
.??0 1
context??1 8
.??8 9
	UserTable??9 B
.??B C
FirstOrDefault??C Q
(??Q R
e??R S
=>??T V
e??W X
.??X Y
UserId??Y _
==??` b
	contactId??c l
)??l m
;??m n
if@@ 
(@@  
	myContact@@  )
!=@@* ,
null@@- 1
)@@1 2
{AA 
GetMyContactsModelBB  2
myContactModelBB3 A
=BBB C
newBBD G
(BBG H
)BBH I
{CC  !
UserIdDD$ *
=DD+ ,
	jwtUserIdDD- 6
,DD6 7
ContactPersonIdEE$ 3
=EE4 5
	myContactEE6 ?
.EE? @
UserIdEE@ F
,EEF G
NameFF$ (
=FF) *
	myContactFF+ 4
.FF4 5
NameFF5 9
,FF9 :
EmailIdGG$ +
=GG, -
	myContactGG. 7
.GG7 8
EmailIdGG8 ?
,GG? @
GenderHH$ *
=HH+ ,
	myContactHH- 6
.HH6 7
GenderHH7 =
,HH= >
DateOfBirthII$ /
=II0 1
	myContactII2 ;
.II; <
DateOfBirthII< G
,IIG H
MobileNumberJJ$ 0
=JJ1 2
	myContactJJ3 <
.JJ< =
MobileNumberJJ= I
,JJI J
InterestKK$ ,
=KK- .
	myContactKK/ 8
.KK8 9
InterestKK9 A
,KKA B
LocationLL$ ,
=LL- .
	myContactLL/ 8
.LL8 9
LocationLL9 A
}MM  !
;MM! "
returnNN  &
myContactModelNN' 5
;NN5 6
}OO 
}PP 
}QQ 
}RR 
returnSS 
nullSS 
;SS 
}TT 
catchUU 
(UU 
	ExceptionUU 
exUU 
)UU  
{VV 
throwWW 
newWW 
CustomExceptionWW )
(WW) *
HttpStatusCodeWW* 8
.WW8 9

BadRequestWW9 C
,WWC D
$strWWE i
)WWi j
;WWj k
}XX 
}YY 	
publicbb 
ContactEntitiesbb #
GetContactWithContactIdbb 6
(bb6 7
longbb7 ;
	contactIdbb< E
,bbE F
longbbG K
	jwtUserIdbbL U
)bbU V
{cc 	
trydd 
{ee 
varff 
contactff 
=ff 
thisff "
.ff" #
contextff# *
.ff* +
	UserTableff+ 4
.ff4 5
Whereff5 :
(ff: ;
eff; <
=>ff= ?
eff@ A
.ffA B
UserIdffB H
==ffI K
	jwtUserIdffL U
)ffU V
;ffV W
ifgg 
(gg 
contactgg 
!=gg 
nullgg #
)gg# $
{hh 
returnii 
thisii 
.ii  
contextii  '
.ii' (
ContactTableii( 4
.ii4 5
FirstOrDefaultii5 C
(iiC D
eiiD E
=>iiF H
eiiI J
.iiJ K
UserIdiiK Q
==iiR T
	jwtUserIdiiU ^
&&ii_ a
eiib c
.iic d
	ContactIdiid m
==iin p
	contactIdiiq z
)iiz {
;ii{ |
}jj 
returnkk 
nullkk 
;kk 
}ll 
catchmm 
(mm 
	Exceptionmm 
exmm 
)mm  
{nn 
throwoo 
newoo 
CustomExceptionoo )
(oo) *
HttpStatusCodeoo* 8
.oo8 9

BadRequestoo9 C
,ooC D
$strooE i
)ooi j
;ooj k
}pp 
}qq 	
publicxx 
voidxx &
DeleteContactWithContactIdxx .
(xx. /
ContactEntitiesxx/ >
contactxx? F
,xxF G
longxxH L
	jwtUserIdxxM V
)xxV W
{yy 	
tryzz 
{{{ 
var|| 
validUserId|| 
=||  !
this||" &
.||& '
context||' .
.||. /
	UserTable||/ 8
.||8 9
Where||9 >
(||> ?
e||? @
=>||A C
e||D E
.||E F
UserId||F L
==||M O
	jwtUserId||P Y
)||Y Z
;||Z [
if}} 
(}} 
validUserId}} 
!=}}  "
null}}# '
)}}' (
{~~ 
this 
. 
context  
.  !
ContactTable! -
.- .
Remove. 4
(4 5
contact5 <
)< =
;= >
this
ÄÄ 
.
ÄÄ 
context
ÄÄ  
.
ÄÄ  !
SaveChanges
ÄÄ! ,
(
ÄÄ, -
)
ÄÄ- .
;
ÄÄ. /
}
ÅÅ 
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
	Exception
ÉÉ 
ex
ÉÉ 
)
ÉÉ  
{
ÑÑ 
throw
ÖÖ 
new
ÖÖ 
CustomException
ÖÖ )
(
ÖÖ) *
HttpStatusCode
ÖÖ* 8
.
ÖÖ8 9
NotFound
ÖÖ9 A
,
ÖÖA B
$str
ÖÖC ]
)
ÖÖ] ^
;
ÖÖ^ _
}
ÜÜ 
}
áá 	
public
èè 
IEnumerable
èè 
<
èè  
GetMyContactsModel
èè -
>
èè- .
GetContactsOfUser
èè/ @
(
èè@ A
long
èèA E
	jwtUserId
èèF O
)
èèO P
{
êê 	
try
ëë 
{
íí 
var
ìì 
validateUser
ìì  
=
ìì! "
this
ìì# '
.
ìì' (
context
ìì( /
.
ìì/ 0
	UserTable
ìì0 9
.
ìì9 :
Where
ìì: ?
(
ìì? @
e
ìì@ A
=>
ììB D
e
ììE F
.
ììF G
UserId
ììG M
==
ììN P
	jwtUserId
ììQ Z
)
ììZ [
;
ìì[ \
if
îî 
(
îî 
validateUser
îî 
!=
îî  "
null
îî# '
)
îî' (
{
ïï 
var
ññ 
result
ññ 
=
ññ  
(
ññ! "
from
ññ" &
user
ññ' +
in
ññ, .
this
ññ/ 3
.
ññ3 4
context
ññ4 ;
.
ññ; <
	UserTable
ññ< E
join
óó" &
contact
óó' .
in
óó/ 1
this
óó2 6
.
óó6 7
context
óó7 >
.
óó> ?
ContactTable
óó? K
on
óóL N
user
óóO S
.
óóS T
UserId
óóT Z
equals
óó[ a
contact
óób i
.
óói j
	ContactId
óój s
where
óót y
contactóóz Å
.óóÅ Ç
UserIdóóÇ à
==óóâ ã
	jwtUserIdóóå ï
select
òò" (
new
òò) ,
{
ôô" #
contact
öö& -
.
öö- .
	ContactId
öö. 7
,
öö7 8
user
õõ& *
.
õõ* +
UserId
õõ+ 1
,
õõ1 2
user
úú& *
.
úú* +
EmailId
úú+ 2
,
úú2 3
user
ùù& *
.
ùù* +
Name
ùù+ /
,
ùù/ 0
user
ûû& *
.
ûû* +
Gender
ûû+ 1
,
ûû1 2
user
üü& *
.
üü* +
DateOfBirth
üü+ 6
,
üü6 7
user
††& *
.
††* +
MobileNumber
††+ 7
,
††7 8
user
°°& *
.
°°* +
Interest
°°+ 3
,
°°3 4
user
¢¢& *
.
¢¢* +
Location
¢¢+ 3
}
§§" #
)
§§# $
.
§§$ %
ToList
§§% +
(
§§+ ,
)
§§, -
;
§§- .
IList
•• 
<
••  
GetMyContactsModel
•• ,
>
••, -
userList
••. 6
=
••7 8
new
••9 <
List
••= A
<
••A B 
GetMyContactsModel
••B T
>
••T U
(
••U V
)
••V W
;
••W X
foreach
¶¶ 
(
¶¶ 
var
¶¶  
contact
¶¶! (
in
¶¶) +
result
¶¶, 2
)
¶¶2 3
{
ßß 
userList
®®  
.
®®  !
Add
®®! $
(
®®$ %
new
®®% ( 
GetMyContactsModel
®®) ;
(
®®; <
)
®®< =
{
©© 
UserId
™™ "
=
™™# $
	jwtUserId
™™% .
,
™™. /
ContactPersonId
´´ +
=
´´, -
contact
´´. 5
.
´´5 6
UserId
´´6 <
,
´´< =
Name
¨¨  
=
¨¨! "
contact
¨¨# *
.
¨¨* +
Name
¨¨+ /
,
¨¨/ 0
EmailId
≠≠ #
=
≠≠$ %
contact
≠≠& -
.
≠≠- .
EmailId
≠≠. 5
,
≠≠5 6
Gender
ÆÆ "
=
ÆÆ# $
contact
ÆÆ% ,
.
ÆÆ, -
Gender
ÆÆ- 3
,
ÆÆ3 4
DateOfBirth
ØØ '
=
ØØ( )
contact
ØØ* 1
.
ØØ1 2
DateOfBirth
ØØ2 =
,
ØØ= >
MobileNumber
∞∞ (
=
∞∞) *
contact
∞∞+ 2
.
∞∞2 3
MobileNumber
∞∞3 ?
,
∞∞? @
Interest
±± $
=
±±% &
contact
±±' .
.
±±. /
Interest
±±/ 7
,
±±7 8
Location
≤≤ $
=
≤≤% &
contact
≤≤' .
.
≤≤. /
Location
≤≤/ 7
}
≥≥ 
)
≥≥ 
;
≥≥ 
}
¥¥ 
return
µµ 
userList
µµ #
;
µµ# $
}
∂∂ 
return
∑∑ 
null
∑∑ 
;
∑∑ 
}
∏∏ 
catch
ππ 
(
ππ 
	Exception
ππ 
ex
ππ 
)
ππ  
{
∫∫ 
throw
ªª 
new
ªª 
CustomException
ªª )
(
ªª) *
HttpStatusCode
ªª* 8
.
ªª8 9

BadRequest
ªª9 C
,
ªªC D
$str
ªªE i
)
ªªi j
;
ªªj k
}
ºº 
}
ΩΩ 	
public
∆∆ 
IEnumerable
∆∆ 
<
∆∆  
GetMyContactsModel
∆∆ -
>
∆∆- .
GetWithContactId
∆∆/ ?
(
∆∆? @
long
∆∆@ D
	contactId
∆∆E N
,
∆∆N O
long
∆∆P T
	jwtUserId
∆∆U ^
)
∆∆^ _
{
«« 	
try
»» 
{
…… 
var
   
validateUser
    
=
  ! "
this
  # '
.
  ' (
context
  ( /
.
  / 0
	UserTable
  0 9
.
  9 :
Where
  : ?
(
  ? @
e
  @ A
=>
  B D
e
  E F
.
  F G
UserId
  G M
==
  N P
	jwtUserId
  Q Z
)
  Z [
;
  [ \
if
ÀÀ 
(
ÀÀ 
validateUser
ÀÀ  
!=
ÀÀ! #
null
ÀÀ$ (
)
ÀÀ( )
{
ÃÃ 
var
ÕÕ 
result
ÕÕ 
=
ÕÕ  
(
ÕÕ! "
from
ÕÕ" &
user
ÕÕ' +
in
ÕÕ, .
this
ÕÕ/ 3
.
ÕÕ3 4
context
ÕÕ4 ;
.
ÕÕ; <
	UserTable
ÕÕ< E
join
ŒŒ" &
contact
ŒŒ' .
in
ŒŒ/ 1
this
ŒŒ2 6
.
ŒŒ6 7
context
ŒŒ7 >
.
ŒŒ> ?
ContactTable
ŒŒ? K
on
ŒŒL N
user
ŒŒO S
.
ŒŒS T
UserId
ŒŒT Z
equals
ŒŒ[ a
contact
ŒŒb i
.
ŒŒi j
	ContactId
ŒŒj s
where
œœ" '
contact
œœ( /
.
œœ/ 0
UserId
œœ0 6
==
œœ7 9
	jwtUserId
œœ: C
&&
œœD F
contact
œœG N
.
œœN O
	ContactId
œœO X
==
œœY [
	contactId
œœ\ e
select
––" (
new
––) ,
{
——" #
contact
““& -
.
““- .
	ContactId
““. 7
,
““7 8
user
””& *
.
””* +
UserId
””+ 1
,
””1 2
user
‘‘& *
.
‘‘* +
EmailId
‘‘+ 2
,
‘‘2 3
user
’’& *
.
’’* +
Name
’’+ /
,
’’/ 0
user
÷÷& *
.
÷÷* +
Gender
÷÷+ 1
,
÷÷1 2
user
◊◊& *
.
◊◊* +
DateOfBirth
◊◊+ 6
,
◊◊6 7
user
ÿÿ& *
.
ÿÿ* +
MobileNumber
ÿÿ+ 7
,
ÿÿ7 8
user
ŸŸ& *
.
ŸŸ* +
Interest
ŸŸ+ 3
,
ŸŸ3 4
user
⁄⁄& *
.
⁄⁄* +
Location
⁄⁄+ 3
}
‹‹" #
)
‹‹# $
.
‹‹$ %
ToList
‹‹% +
(
‹‹+ ,
)
‹‹, -
;
‹‹- .
IList
›› 
<
››  
GetMyContactsModel
›› ,
>
››, -
userList
››. 6
=
››7 8
new
››9 <
List
››= A
<
››A B 
GetMyContactsModel
››B T
>
››T U
(
››U V
)
››V W
;
››W X
foreach
ﬁﬁ 
(
ﬁﬁ 
var
ﬁﬁ  
contact
ﬁﬁ! (
in
ﬁﬁ) +
result
ﬁﬁ, 2
)
ﬁﬁ2 3
{
ﬂﬂ 
userList
‡‡  
.
‡‡  !
Add
‡‡! $
(
‡‡$ %
new
‡‡% ( 
GetMyContactsModel
‡‡) ;
(
‡‡; <
)
‡‡< =
{
·· 
UserId
‚‚ "
=
‚‚# $
	jwtUserId
‚‚% .
,
‚‚. /
ContactPersonId
„„ +
=
„„, -
contact
„„. 5
.
„„5 6
UserId
„„6 <
,
„„< =
Name
‰‰  
=
‰‰! "
contact
‰‰# *
.
‰‰* +
Name
‰‰+ /
,
‰‰/ 0
EmailId
ÂÂ #
=
ÂÂ$ %
contact
ÂÂ& -
.
ÂÂ- .
EmailId
ÂÂ. 5
,
ÂÂ5 6
Gender
ÊÊ "
=
ÊÊ# $
contact
ÊÊ% ,
.
ÊÊ, -
Gender
ÊÊ- 3
,
ÊÊ3 4
DateOfBirth
ÁÁ '
=
ÁÁ( )
contact
ÁÁ* 1
.
ÁÁ1 2
DateOfBirth
ÁÁ2 =
,
ÁÁ= >
MobileNumber
ËË (
=
ËË) *
contact
ËË+ 2
.
ËË2 3
MobileNumber
ËË3 ?
,
ËË? @
Interest
ÈÈ $
=
ÈÈ% &
contact
ÈÈ' .
.
ÈÈ. /
Interest
ÈÈ/ 7
,
ÈÈ7 8
Location
ÍÍ $
=
ÍÍ% &
contact
ÍÍ' .
.
ÍÍ. /
Location
ÍÍ/ 7
}
ÎÎ 
)
ÎÎ 
;
ÎÎ 
}
ÏÏ 
return
ÌÌ 
userList
ÌÌ #
;
ÌÌ# $
}
ÓÓ 
return
ÔÔ 
null
ÔÔ 
;
ÔÔ 
}
 
catch
ÒÒ 
(
ÒÒ 
	Exception
ÒÒ 
ex
ÒÒ 
)
ÒÒ  
{
ÚÚ 
throw
ÛÛ 
new
ÛÛ 
CustomException
ÛÛ )
(
ÛÛ) *
HttpStatusCode
ÛÛ* 8
.
ÛÛ8 9

BadRequest
ÛÛ9 C
,
ÛÛC D
$str
ÛÛE i
)
ÛÛi j
;
ÛÛj k
}
ÙÙ 
}
ıı 	
}
ˆˆ 
}˜˜ äs
SD:\BackendApplication\SocialDirectoryApplication\RepositoryLayer\Services\UserRL.cs
	namespace 	
RepositoryLayer
 
. 
Services "
{ 
public 

class 
UserRL 
: 
IUserRL !
{ 
public   "
SocialDirectoryContext   %
context  & -
;  - .
private%% 
readonly%% 
IConfiguration%% '
config%%( .
;%%. /
public++ 
UserRL++ 
(++ 
IConfiguration++ $
config++% +
,+++ ,"
SocialDirectoryContext++- C
context++D K
)++K L
{,, 	
this-- 
.-- 
config-- 
=-- 
config--  
;--  !
this.. 
... 
context.. 
=.. 
context.. "
;.." #
}// 	
public77 
static77 
string77 
EncryptedPassword77 .
(77. /
string77/ 5
password776 >
)77> ?
{88 	
try99 
{:: 
byte;; 
[;; 
];; 
	encptPass;;  
=;;! "
new;;# &
byte;;' +
[;;+ ,
password;;, 4
.;;4 5
Length;;5 ;
];;; <
;;;< =
	encptPass<< 
=<< 
Encoding<< $
.<<$ %
UTF8<<% )
.<<) *
GetBytes<<* 2
(<<2 3
password<<3 ;
)<<; <
;<<< =
string== 
	encrypted==  
===! "
Convert==# *
.==* +
ToBase64String==+ 9
(==9 :
	encptPass==: C
)==C D
;==D E
return>> 
	encrypted>>  
;>>  !
}?? 
catch@@ 
(@@ 
	Exception@@ 
ex@@ 
)@@  
{AA 
throwBB 
newBB 
CustomExceptionBB )
(BB) *
HttpStatusCodeBB* 8
.BB8 9

BadRequestBB9 C
,BBC D
$strBBE f
)BBf g
;BBg h
}CC 
}DD 	
publicLL 
stringLL 
JwtTokenGenerateLL &
(LL& '
stringLL' -
emailLL. 3
,LL3 4
longLL5 9
userIdLL: @
)LL@ A
{MM 	
tryNN 
{OO 
varPP 
loginTokenHandlerPP %
=PP& '
newPP( +#
JwtSecurityTokenHandlerPP, C
(PPC D
)PPD E
;PPE F
varQQ 
loginTokenKeyQQ !
=QQ" #
newQQ$ ' 
SymmetricSecurityKeyQQ( <
(QQ< =
EncodingQQ= E
.QQE F
ASCIIQQF K
.QQK L
GetBytesQQL T
(QQT U
thisQQU Y
.QQY Z
configQQZ `
[QQ` a
(QQa b
$strQQb k
)QQk l
]QQl m
)QQm n
)QQn o
;QQo p
varRR  
loginTokenDescriptorRR (
=RR) *
newRR+ .#
SecurityTokenDescriptorRR/ F
{SS 
SubjectTT 
=TT 
newTT !
ClaimsIdentityTT" 0
(TT0 1
newTT1 4
ClaimTT5 :
[TT: ;
]TT; <
{UU 
newVV 
ClaimVV !
(VV! "

ClaimTypesVV" ,
.VV, -
EmailVV- 2
,VV2 3
emailVV4 9
)VV9 :
,VV: ;
newWW 
ClaimWW !
(WW! "
$strWW" *
,WW* +
userIdWW, 2
.WW2 3
ToStringWW3 ;
(WW; <
)WW< =
)WW= >
}XX 
)XX 
,XX 
ExpiresYY 
=YY 
DateTimeYY &
.YY& '
UtcNowYY' -
.YY- .

AddMinutesYY. 8
(YY8 9
$numYY9 ;
)YY; <
,YY< =
SigningCredentialsZZ &
=ZZ' (
newZZ) ,
SigningCredentialsZZ- ?
(ZZ? @
loginTokenKeyZZ@ M
,ZZM N
SecurityAlgorithmsZZO a
.ZZa b
HmacSha256SignatureZZb u
)ZZu v
}[[ 
;[[ 
var\\ 
token\\ 
=\\ 
loginTokenHandler\\ -
.\\- .
CreateToken\\. 9
(\\9 : 
loginTokenDescriptor\\: N
)\\N O
;\\O P
return]] 
loginTokenHandler]] (
.]]( )

WriteToken]]) 3
(]]3 4
token]]4 9
)]]9 :
;]]: ;
}^^ 
catch__ 
(__ 
	Exception__ 
ex__ 
)__  
{`` 
throwaa 
newaa 
CustomExceptionaa )
(aa) *
HttpStatusCodeaa* 8
.aa8 9

BadRequestaa9 C
,aaC D
$straaE |
)aa| }
;aa} ~
}bb 
}cc 	
publickk %
RegistrationResponseModelkk (
Registrationkk) 5
(kk5 6
RegistrationModelkk6 G
modelkkI N
)kkN O
{ll 	
trymm 
{nn 
varoo "
RegistrationValidationoo *
=oo+ ,
thisoo- 1
.oo1 2
contextoo2 9
.oo9 :
	UserTableoo: C
.ooC D
FirstOrDefaultooD R
(ooR S
eooS T
=>ooU W
eooX Y
.ooY Z
EmailIdooZ a
==oob d
modelooe j
.ooj k
EmailIdook r
&&oos u
eoov w
.oow x
MobileNumber	oox Ñ
==
ooÖ á
model
ooà ç
.
ooç é
MobileNumber
ooé ö
)
ooö õ
;
ooú ù
ifpp 
(pp "
RegistrationValidationpp *
!=pp+ -
nullpp. 2
)pp2 3
{qq 
returnrr 
nullrr 
;rr  
}ss 
UserEntitiestt 
usertt !
=tt" #
newtt$ '
(tt' (
)tt( )
{uu 
Namevv 
=vv 
modelvv  
.vv  !
Namevv! %
,vv% &
EmailIdww 
=ww 
modelww #
.ww# $
EmailIdww$ +
,ww+ ,
Genderxx 
=xx 
modelxx "
.xx" #
Genderxx# )
,xx) *
DateOfBirthyy 
=yy  !
modelyy" '
.yy' (
DateOfBirthyy( 3
,yy3 4
MobileNumberzz  
=zz! "
modelzz# (
.zz( )
MobileNumberzz) 5
,zz5 6
Password{{ 
={{ 
EncryptedPassword{{ 0
({{0 1
model{{1 6
.{{6 7
Password{{7 ?
){{? @
,{{@ A
Interest|| 
=|| 
model|| $
.||$ %
Interest||% -
,||- .
Location}} 
=}} 
model}} $
.}}$ %
Location}}% -
,}}- .
}~~ 
;~~ 
this 
. 
context 
. 
Add  
(  !
user! %
)% &
;& '
this
ÄÄ 
.
ÄÄ 
context
ÄÄ 
.
ÄÄ 
SaveChanges
ÄÄ (
(
ÄÄ( )
)
ÄÄ) *
;
ÄÄ* +'
RegistrationResponseModel
ÅÅ )
response
ÅÅ* 2
=
ÅÅ3 4
new
ÅÅ5 8
(
ÅÅ8 9
)
ÅÅ9 :
{
ÇÇ 
Name
ÉÉ 
=
ÉÉ 
model
ÉÉ  
.
ÉÉ  !
Name
ÉÉ! %
,
ÉÉ% &
EmailId
ÑÑ 
=
ÑÑ 
model
ÑÑ #
.
ÑÑ# $
EmailId
ÑÑ$ +
,
ÑÑ+ ,
Gender
ÖÖ 
=
ÖÖ 
model
ÖÖ "
.
ÖÖ" #
Gender
ÖÖ# )
,
ÖÖ) *
DateOfBirth
ÜÜ 
=
ÜÜ  !
model
ÜÜ" '
.
ÜÜ' (
DateOfBirth
ÜÜ( 3
,
ÜÜ3 4
MobileNumber
áá  
=
áá! "
model
áá# (
.
áá( )
MobileNumber
áá) 5
,
áá5 6
Interest
àà 
=
àà 
model
àà $
.
àà$ %
Interest
àà% -
,
àà- .
Location
ââ 
=
ââ 
model
ââ $
.
ââ$ %
Location
ââ% -
}
ää 
;
ää 
return
ãã 
response
ãã 
;
ãã  
}
åå 
catch
çç 
(
çç 
	Exception
çç 
ex
çç 
)
çç  
{
éé 
throw
èè 
new
èè 
CustomException
èè )
(
èè) *
HttpStatusCode
èè* 8
.
èè8 9

BadRequest
èè9 C
,
èèC D
$str
èèE V
)
èèV W
;
èèW X
}
êê 
}
ëë 	
public
ôô  
LoginResponseModel
ôô !
Login
ôô" '
(
ôô' (

LoginModel
ôô( 2
model
ôô3 8
)
ôô8 9
{
öö 	
try
õõ 
{
úú 
var
ùù 
loginValidation
ùù #
=
ùù$ %
this
ùù& *
.
ùù* +
context
ùù+ 2
.
ùù2 3
	UserTable
ùù3 <
.
ùù< =
FirstOrDefault
ùù= K
(
ùùK L
e
ùùL M
=>
ùùN P
e
ùùQ R
.
ùùR S
EmailId
ùùS Z
==
ùù[ ]
model
ùù^ c
.
ùùc d
EmailId
ùùd k
&&
ùùl n
e
ùùo p
.
ùùp q
Password
ùùq y
==
ùùz | 
EncryptedPasswordùù} é
(ùùé è
modelùùè î
.ùùî ï
Passwordùùï ù
)ùùù û
)ùùû ü
;ùùü †
if
ûû 
(
ûû 
loginValidation
ûû #
!=
ûû$ &
null
ûû' +
)
ûû+ ,
{
üü 
var
†† 
token
†† 
=
†† 
this
††  $
.
††$ %
JwtTokenGenerate
††% 5
(
††5 6
model
††6 ;
.
††; <
EmailId
††< C
,
††C D
loginValidation
††E T
.
††T U
UserId
††U [
)
††[ \
;
††\ ] 
LoginResponseModel
°° &
response
°°' /
=
°°0 1
new
°°2 5
(
°°5 6
)
°°6 7
{
¢¢ 
UserId
££ 
=
££  
loginValidation
££! 0
.
££0 1
UserId
££1 7
,
££7 8
Name
§§ 
=
§§ 
loginValidation
§§ .
.
§§. /
Name
§§/ 3
,
§§3 4
EmailId
•• 
=
••  !
loginValidation
••" 1
.
••1 2
EmailId
••2 9
,
••9 :
DateOfBirth
¶¶ #
=
¶¶$ %
loginValidation
¶¶& 5
.
¶¶5 6
DateOfBirth
¶¶6 A
,
¶¶A B
Gender
ßß 
=
ßß  
loginValidation
ßß! 0
.
ßß0 1
Gender
ßß1 7
,
ßß7 8
MobileNumber
®® $
=
®®% &
loginValidation
®®' 6
.
®®6 7
MobileNumber
®®7 C
,
®®C D
Interest
©©  
=
©©! "
loginValidation
©©# 2
.
©©2 3
Interest
©©3 ;
,
©©; <
Location
™™  
=
™™! "
loginValidation
™™# 2
.
™™2 3
Location
™™3 ;
,
™™; <
JwtToken
´´  
=
´´! "
token
´´# (
}
¨¨ 
;
¨¨ 
return
≠≠ 
response
≠≠ #
;
≠≠# $
}
ÆÆ 
return
ØØ 
null
ØØ 
;
ØØ 
}
∞∞ 
catch
±± 
(
±± 
	Exception
±± 
ex
±± 
)
±±  
{
≤≤ 
throw
≥≥ 
new
≥≥ 
CustomException
≥≥ )
(
≥≥) *
HttpStatusCode
≥≥* 8
.
≥≥8 9
Unauthorized
≥≥9 E
,
≥≥E F
$str
≥≥G b
)
≥≥b c
;
≥≥c d
}
¥¥ 
}
µµ 	
public
ΩΩ 
IEnumerable
ΩΩ 
<
ΩΩ 
MyProfileModel
ΩΩ )
>
ΩΩ) *
	MyProfile
ΩΩ+ 4
(
ΩΩ4 5
long
ΩΩ5 9
	jwtUserId
ΩΩ: C
)
ΩΩC D
{
ææ 	
try
øø 
{
¿¿ 
var
¡¡ 
profile
¡¡ 
=
¡¡ 
this
¡¡ "
.
¡¡" #
context
¡¡# *
.
¡¡* +
	UserTable
¡¡+ 4
.
¡¡4 5
Where
¡¡5 :
(
¡¡: ;
e
¡¡; <
=>
¡¡= ?
e
¡¡@ A
.
¡¡A B
UserId
¡¡B H
==
¡¡I K
	jwtUserId
¡¡L U
)
¡¡U V
;
¡¡V W
if
¬¬ 
(
¬¬ 
profile
¬¬ 
!=
¬¬ 
null
¬¬ #
)
¬¬# $
{
√√ 
IList
ƒƒ 
<
ƒƒ 
MyProfileModel
ƒƒ (
>
ƒƒ( )
userList
ƒƒ* 2
=
ƒƒ3 4
new
ƒƒ5 8
List
ƒƒ9 =
<
ƒƒ= >
MyProfileModel
ƒƒ> L
>
ƒƒL M
(
ƒƒM N
)
ƒƒN O
;
ƒƒO P
foreach
≈≈ 
(
≈≈ 
var
≈≈  
contact
≈≈! (
in
≈≈) +
profile
≈≈, 3
)
≈≈3 4
{
∆∆ 
userList
««  
.
««  !
Add
««! $
(
««$ %
new
««% (
MyProfileModel
««) 7
(
««7 8
)
««8 9
{
»» 
Name
……  
=
……! "
contact
……# *
.
……* +
Name
……+ /
,
……/ 0
EmailId
   #
=
  $ %
contact
  & -
.
  - .
EmailId
  . 5
,
  5 6
Gender
ÀÀ "
=
ÀÀ# $
contact
ÀÀ% ,
.
ÀÀ, -
Gender
ÀÀ- 3
,
ÀÀ3 4
DateOfBirth
ÃÃ '
=
ÃÃ( )
contact
ÃÃ* 1
.
ÃÃ1 2
DateOfBirth
ÃÃ2 =
,
ÃÃ= >
MobileNumber
ÕÕ (
=
ÕÕ) *
contact
ÕÕ+ 2
.
ÕÕ2 3
MobileNumber
ÕÕ3 ?
,
ÕÕ? @
Interest
ŒŒ $
=
ŒŒ% &
contact
ŒŒ' .
.
ŒŒ. /
Interest
ŒŒ/ 7
,
ŒŒ7 8
Location
œœ $
=
œœ% &
contact
œœ' .
.
œœ. /
Location
œœ/ 7
}
–– 
)
–– 
;
–– 
}
—— 
return
““ 
userList
““ #
;
““# $
}
”” 
return
‘‘ 
null
‘‘ 
;
‘‘ 
}
’’ 
catch
÷÷ 
(
÷÷ 
	Exception
÷÷ 
ex
÷÷ 
)
÷÷  
{
◊◊ 
throw
ÿÿ 
new
ÿÿ 
CustomException
ÿÿ )
(
ÿÿ) *
HttpStatusCode
ÿÿ* 8
.
ÿÿ8 9

BadRequest
ÿÿ9 C
,
ÿÿC D
$str
ÿÿE i
)
ÿÿi j
;
ÿÿj k
}
ŸŸ 
}
⁄⁄ 	
}
€€ 
}‹‹ 