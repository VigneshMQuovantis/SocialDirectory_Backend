â
^D:\BackendApplication\SocialDirectoryApplication\BusinessLayer\Interfaces\IContactDetailsBL.cs
	namespace 	
BusinessLayer
 
. 

Interfaces "
{ 
public 

	interface 
IContactDetailsBL &
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
}!! Â

YD:\BackendApplication\SocialDirectoryApplication\BusinessLayer\Interfaces\IMyContactBL.cs
	namespace 	
BusinessLayer
 
. 

Interfaces "
{		 
public 

	interface 
IMyContactBL !
{ 
GetMyContactsModel 

AddContact %
(% &
long& *
	contactId+ 4
,4 5
long6 :
	jwtUserId; D
)D E
;E F
ContactEntities #
GetContactWithContactId /
(/ 0
long0 4
	contactId5 >
,> ?
long@ D
	jwtUserIdE N
)N O
;O P
void$$ &
DeleteContactWithContactId$$ '
($$' (
ContactEntities$$( 7
contact$$8 ?
,$$? @
long$$A E
	jwtUserId$$F O
)$$O P
;$$P Q
IEnumerable++ 
<++ 
GetMyContactsModel++ &
>++& '
GetContactsOfUser++( 9
(++9 :
long++: >
	jwtUserId++? H
)++H I
;++I J
IEnumerable33 
<33 
GetMyContactsModel33 &
>33& '
GetWithContactId33( 8
(338 9
long339 =
	contactId33> G
,33G H
long33I M
	jwtUserId33N W
)33W X
;33X Y
}44 
}55 ê
TD:\BackendApplication\SocialDirectoryApplication\BusinessLayer\Interfaces\IUserBL.cs
	namespace 	
BusinessLayer
 
. 

Interfaces "
{ 
public 

	interface 
IUserBL 
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
})) ‘
[D:\BackendApplication\SocialDirectoryApplication\BusinessLayer\Services\ContactDetailsBL.cs
	namespace 	
BusinessLayer
 
. 
Services  
{ 
public 

class 
ContactDetailsBL !
:" #
IContactDetailsBL$ 5
{ 
private 
readonly 
IContactDetailsRL *
contactDetailsRL+ ;
;; <
public 
ContactDetailsBL 
(  
IContactDetailsRL  1
contactDetailsRL2 B
)B C
{   	
this!! 
.!! 
contactDetailsRL!! !
=!!" #
contactDetailsRL!!$ 4
;!!4 5
}"" 	
public)) 
IEnumerable)) 
<)) 
GetAllContacts)) )
>))) *
GetAllContacts))+ 9
())9 :
long)): >
	jwtUserId))? H
)))H I
{** 	
try++ 
{,, 
return-- 
this-- 
.-- 
contactDetailsRL-- ,
.--, -
GetAllContacts--- ;
(--; <
	jwtUserId--< E
)--E F
;--F G
}.. 
catch// 
(// 
	Exception// 
ex// 
)//  
{00 
throw11 
;11 
}22 
}33 	
public:: 
IEnumerable:: 
<:: 
GetAllContacts:: )
>::) *
GetContactsBySearch::+ >
(::> ?
string::? E
searchParameters::F V
,::V W
long::X \
	jwtUserId::] f
)::f g
{;; 	
try<< 
{== 
return>> 
this>> 
.>> 
contactDetailsRL>> ,
.>>, -
GetContactsBySearch>>- @
(>>@ A
searchParameters>>A Q
,>>Q R
	jwtUserId>>S \
)>>\ ]
;>>] ^
}?? 
catch@@ 
(@@ 
	Exception@@ 
ex@@ 
)@@  
{AA 
throwBB 
;BB 
}CC 
}DD 	
}EE 
}FF Ÿ
VD:\BackendApplication\SocialDirectoryApplication\BusinessLayer\Services\MyContactBL.cs
	namespace 	
BusinessLayer
 
. 
Services  
{ 
public 

class 
MyContactBL 
: 
IMyContactBL +
{ 
private 
readonly 
IMyContactRL %
myContactRL& 1
;1 2
public 
MyContactBL 
( 
IMyContactRL '
myContactRL( 3
)3 4
{   	
this!! 
.!! 
myContactRL!! 
=!! 
myContactRL!! *
;!!* +
}"" 	
public** 
GetMyContactsModel** !

AddContact**" ,
(**, -
long**- 1
	contactId**2 ;
,**; <
long**= A
	jwtUserId**B K
)**K L
{++ 	
try,, 
{-- 
return.. 
this.. 
... 
myContactRL.. '
...' (

AddContact..( 2
(..2 3
	contactId..3 <
,..< =
	jwtUserId..> G
)..G H
;..H I
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
throw22 
;22 
}33 
}44 	
public;; 
void;; &
DeleteContactWithContactId;; .
(;;. /
ContactEntities;;/ >
contact;;? F
,;;F G
long;;H L
	jwtUserId;;M V
);;V W
{<< 	
try== 
{>> 
this?? 
.?? 
myContactRL??  
.??  !&
DeleteContactWithContactId??! ;
(??; <
contact??< C
,??C D
	jwtUserId??E N
)??N O
;??O P
}@@ 
catchAA 
(AA 
	ExceptionAA 
exAA 
)AA  
{BB 
throwCC 
;CC 
}DD 
}EE 	
publicLL 
IEnumerableLL 
<LL 
GetMyContactsModelLL -
>LL- .
GetContactsOfUserLL/ @
(LL@ A
longLLA E
	jwtUserIdLLF O
)LLO P
{MM 	
tryNN 
{OO 
returnPP 
thisPP 
.PP 
myContactRLPP '
.PP' (
GetContactsOfUserPP( 9
(PP9 :
	jwtUserIdPP: C
)PPC D
;PPD E
}QQ 
catchRR 
(RR 
	ExceptionRR 
exRR 
)RR  
{SS 
throwTT 
;TT 
}UU 
}VV 	
public^^ 
ContactEntities^^ #
GetContactWithContactId^^ 6
(^^6 7
long^^7 ;
	contactId^^< E
,^^E F
long^^G K
	jwtUserId^^L U
)^^U V
{__ 	
try`` 
{aa 
returnbb 
thisbb 
.bb 
myContactRLbb '
.bb' (#
GetContactWithContactIdbb( ?
(bb? @
	contactIdbb@ I
,bbI J
	jwtUserIdbbK T
)bbT U
;bbU V
}cc 
catchdd 
(dd 
	Exceptiondd 
exdd 
)dd  
{ee 
throwff 
;ff 
}gg 
}hh 	
publicpp 
IEnumerablepp 
<pp 
GetMyContactsModelpp -
>pp- .
GetWithContactIdpp/ ?
(pp? @
longpp@ D
	contactIdppE N
,ppN O
longppP T
	jwtUserIdppU ^
)pp^ _
{qq 	
tryrr 
{ss 
returntt 
thistt 
.tt 
myContactRLtt '
.tt' (
GetWithContactIdtt( 8
(tt8 9
	contactIdtt9 B
,ttB C
	jwtUserIdttD M
)ttM N
;ttN O
}uu 
catchvv 
(vv 
	Exceptionvv 
exvv 
)vv  
{ww 
throwxx 
;xx 
}yy 
}zz 	
}{{ 
}|| œ
QD:\BackendApplication\SocialDirectoryApplication\BusinessLayer\Services\UserBL.cs
	namespace 	
BusinessLayer
 
. 
Services  
{ 
public 

class 
UserBL 
: 
IUserBL !
{ 
private 
readonly 
IUserRL  
userRL! '
;' (
public 
UserBL 
( 
IUserRL 
userRl $
)$ %
{   	
this!! 
.!! 
userRL!! 
=!! 
userRl!!  
;!!  !
}"" 	
public)) %
RegistrationResponseModel)) (
Registration))) 5
())5 6
RegistrationModel))6 G
model))H M
)))M N
{** 	
try++ 
{,, 
return-- 
this-- 
.-- 
userRL-- "
.--" #
Registration--# /
(--/ 0
model--0 5
)--5 6
;--6 7
}.. 
catch// 
(// 
	Exception// 
ex// 
)//  
{00 
throw11 
;11 
}22 
}33 	
public;; 
LoginResponseModel;; !
Login;;" '
(;;' (

LoginModel;;( 2
model;;3 8
);;8 9
{<< 	
try== 
{>> 
return?? 
this?? 
.?? 
userRL?? "
.??" #
Login??# (
(??( )
model??) .
)??. /
;??/ 0
}@@ 
catchAA 
(AA 
	ExceptionAA 
exAA 
)AA  
{BB 
throwCC 
;CC 
}DD 
}EE 	
publicMM 
IEnumerableMM 
<MM 
MyProfileModelMM )
>MM) *
	MyProfileMM+ 4
(MM4 5
longMM5 9
	jwtUserIdMM: C
)MMC D
{NN 	
tryOO 
{PP 
returnQQ 
thisQQ 
.QQ 
userRLQQ "
.QQ" #
	MyProfileQQ# ,
(QQ, -
	jwtUserIdQQ- 6
)QQ6 7
;QQ7 8
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS  
{TT 
throwUU 
;UU 
}VV 
}WW 	
}XX 
}YY Õá
eD:\BackendApplication\SocialDirectoryApplication\BusinessLayer\TestingServices\TestingMyContactsBL.cs
	namespace 	
BusinessLayer
 
. 
TestingServices '
{ 
public 

class 
TestingMyContactsBL $
:% &
IMyContactBL' 3
{ 
private 
readonly 
List 
< 
ContactEntities -
>- .
_contactEntities/ ?
;? @
private 
readonly 
List 
< 
RegistrationModel /
>/ 0
	_entities1 :
;: ;
public 
TestingMyContactsBL "
(" #
)# $
{ 	
	_entities 
= 
new 
List  
<  !
RegistrationModel! 2
>2 3
(3 4
)4 5
{ 
new 
RegistrationModel %
(% &
)& '
{( )
UserId* 0
=1 2
$num3 4
,4 5
Name6 :
=; <
$str= H
,H I
GenderJ P
=Q R
$strS Y
,Y Z
DateOfBirth[ f
=g h
$stri u
,u v
EmailId #
=$ %
$str& 9
,9 :
Password; C
=D E
$strF Q
,Q R
MobileNumberS _
=` a
$strb n
,n o
Interest $
=% &
$str' ?
,? @
LocationA I
=J K
$strL T
}T U
,U V
new 
RegistrationModel %
(% &
)& '
{( )
UserId* 0
=1 2
$num3 4
,4 5
Name6 :
=; <
$str= D
,D E
GenderF L
=M N
$strO U
,U V
DateOfBirthW b
=c d
$stre q
,q r
EmailId #
=$ %
$str& 7
,7 8
Password9 A
=B C
$strD M
,M N
MobileNumberO [
=\ ]
$str^ j
,j k
Interest $
=% &
$str' =
,= >
Location? G
=H I
$strJ T
}T U
,U V
new 
RegistrationModel %
(% &
)& '
{( )
UserId* 0
=1 2
$num3 4
,4 5
Name6 :
=; <
$str= D
,D E
GenderF L
=M N
$strO U
,U V
DateOfBirthW b
=c d
$stre q
,q r
EmailId #
=$ %
$str& 7
,7 8
Password9 A
=B C
$strD M
,M N
MobileNumberO [
=\ ]
$str^ j
,j k
Interest $
=% &
$str' ;
,; <
Location= E
=F G
$strH Q
}Q R
,R S
new 
RegistrationModel %
(% &
)& '
{( )
UserId* 0
=1 2
$num3 4
,4 5
Name6 :
=; <
$str= D
,D E
GenderF L
=M N
$strO U
,U V
DateOfBirthW b
=c d
$stre q
,q r
EmailId   #
=  $ %
$str  & 7
,  7 8
Password  9 A
=  B C
$str  D M
,  M N
MobileNumber  O [
=  \ ]
$str  ^ j
,  j k
Interest!! $
=!!% &
$str!!' 2
,!!2 3
Location!!4 <
=!!= >
$str!!? H
}!!H I
}"" 
;"" 
_contactEntities$$ 
=$$ 
new$$ "
List$$# '
<$$' (
ContactEntities$$( 7
>$$7 8
($$8 9
)$$9 :
{%% 
new&& 
ContactEntities&& #
(&&# $
)&&$ %
{&&& '
UserId&&( .
=&&/ 0
$num&&1 2
,&&2 3
	ContactId&&4 =
=&&> ?
$num&&@ A
}&&A B
,&&B C
new'' 
ContactEntities'' #
(''# $
)''$ %
{''& '
UserId''( .
=''/ 0
$num''1 2
,''2 3
	ContactId''4 =
=''> ?
$num''@ A
}''A B
}(( 
;(( 
})) 	
public++ 
GetMyContactsModel++ !

AddContact++" ,
(++, -
long++- 1
	contactId++2 ;
,++; <
long++= A
	jwtUserId++B K
)++K L
{,, 	
var-- 

addContact-- 
=-- 
	_entities-- &
.--& '
Where--' ,
(--, -
e--- .
=>--/ 1
e--2 3
.--3 4
UserId--4 :
==--; =
	jwtUserId--> G
&&--H J
e--K L
.--L M
UserId--M S
==--T V
	contactId--W `
)--` a
;--a b
if.. 
(.. 

addContact.. 
!=.. 
null.. "
).." #
{// 
if00 
(00 
	jwtUserId00 
!=00  
	contactId00! *
)00* +
{11 
ContactEntities22 #
entity22$ *
=22+ ,
new22- 0
(220 1
)221 2
{33 
UserId44 
=44  
	jwtUserId44! *
,44* +
	ContactId55 !
=55" #
	contactId55$ -
}66 
;66 
_contactEntities77 $
.77$ %
Add77% (
(77( )
entity77) /
)77/ 0
;770 1
var88 
	myContact88 !
=88" #
	_entities88$ -
.88- .
FirstOrDefault88. <
(88< =
e88= >
=>88? A
e88B C
.88C D
UserId88D J
==88K M
	contactId88N W
)88W X
;88X Y
if99 
(99 
	myContact99 !
!=99" $
null99% )
)99) *
{:: 
GetMyContactsModel;; *
myContactModel;;+ 9
=;;: ;
new;;< ?
(;;? @
);;@ A
{<< 
UserId== "
===# $
	jwtUserId==% .
,==. /
ContactPersonId>> +
=>>, -
	myContact>>. 7
.>>7 8
UserId>>8 >
,>>> ?
Name??  
=??! "
	myContact??# ,
.??, -
Name??- 1
,??1 2
EmailId@@ #
=@@$ %
	myContact@@& /
.@@/ 0
EmailId@@0 7
,@@7 8
GenderAA "
=AA# $
	myContactAA% .
.AA. /
GenderAA/ 5
,AA5 6
DateOfBirthBB '
=BB( )
	myContactBB* 3
.BB3 4
DateOfBirthBB4 ?
,BB? @
MobileNumberCC (
=CC) *
	myContactCC+ 4
.CC4 5
MobileNumberCC5 A
,CCA B
InterestDD $
=DD% &
	myContactDD' 0
.DD0 1
InterestDD1 9
,DD9 :
LocationEE $
=EE% &
	myContactEE' 0
.EE0 1
LocationEE1 9
}FF 
;FF 
returnGG 
myContactModelGG -
;GG- .
}HH 
}II 
}JJ 
returnKK 
nullKK 
;KK 
}LL 	
publicNN 
voidNN &
DeleteContactWithContactIdNN .
(NN. /
ContactEntitiesNN/ >
contactNN? F
,NNF G
longNNH L
	jwtUserIdNNM V
)NNV W
{OO 	
varPP 
validUserIdPP 
=PP 
	_entitiesPP '
.PP' (
WherePP( -
(PP- .
ePP. /
=>PP0 2
ePP3 4
.PP4 5
UserIdPP5 ;
==PP< >
	jwtUserIdPP? H
)PPH I
;PPI J
ifQQ 
(QQ 
validUserIdQQ 
!=QQ 
nullQQ #
)QQ# $
{RR 
_contactEntitiesSS  
.SS  !
RemoveSS! '
(SS' (
contactSS( /
)SS/ 0
;SS0 1
}TT 
}UU 	
publicWW 
IEnumerableWW 
<WW 
GetMyContactsModelWW -
>WW- .
GetContactsOfUserWW/ @
(WW@ A
longWWA E
	jwtUserIdWWF O
)WWO P
{XX 	
varYY 
validateUserYY 
=YY 
	_entitiesYY (
.YY( )
WhereYY) .
(YY. /
eYY/ 0
=>YY1 3
eYY4 5
.YY5 6
UserIdYY6 <
==YY= ?
	jwtUserIdYY@ I
)YYI J
;YYJ K
ifZZ 
(ZZ 
validateUserZZ 
!=ZZ 
nullZZ  $
)ZZ$ %
{[[ 
var\\ 
result\\ 
=\\ 
(\\ 
from\\ "
user\\# '
in\\( *
	_entities\\+ 4
join]] "
contact]]# *
in]]+ -
_contactEntities]]. >
on]]? A
user]]B F
.]]F G
UserId]]G M
equals]]N T
contact]]U \
.]]\ ]
	ContactId]]] f
where^^ #
contact^^$ +
.^^+ ,
UserId^^, 2
==^^3 5
	jwtUserId^^6 ?
select__ $
new__% (
{`` 
contactaa" )
.aa) *
	ContactIdaa* 3
,aa3 4
userbb" &
.bb& '
UserIdbb' -
,bb- .
usercc" &
.cc& '
EmailIdcc' .
,cc. /
userdd" &
.dd& '
Namedd' +
,dd+ ,
useree" &
.ee& '
Genderee' -
,ee- .
userff" &
.ff& '
DateOfBirthff' 2
,ff2 3
usergg" &
.gg& '
MobileNumbergg' 3
,gg3 4
userhh" &
.hh& '
Interesthh' /
,hh/ 0
userii" &
.ii& '
Locationii' /
}kk 
)kk  
.kk  !
ToListkk! '
(kk' (
)kk( )
;kk) *
IListll 
<ll 
GetMyContactsModelll (
>ll( )
userListll* 2
=ll3 4
newll5 8
Listll9 =
<ll= >
GetMyContactsModelll> P
>llP Q
(llQ R
)llR S
;llS T
foreachmm 
(mm 
varmm 
contactmm $
inmm% '
resultmm( .
)mm. /
{nn 
userListoo 
.oo 
Addoo  
(oo  !
newoo! $
GetMyContactsModeloo% 7
(oo7 8
)oo8 9
{pp 
UserIdqq 
=qq  
	jwtUserIdqq! *
,qq* +
ContactPersonIdrr '
=rr( )
contactrr* 1
.rr1 2
UserIdrr2 8
,rr8 9
Namess 
=ss 
contactss &
.ss& '
Namess' +
,ss+ ,
EmailIdtt 
=tt  !
contacttt" )
.tt) *
EmailIdtt* 1
,tt1 2
Genderuu 
=uu  
contactuu! (
.uu( )
Genderuu) /
,uu/ 0
DateOfBirthvv #
=vv$ %
contactvv& -
.vv- .
DateOfBirthvv. 9
,vv9 :
MobileNumberww $
=ww% &
contactww' .
.ww. /
MobileNumberww/ ;
,ww; <
Interestxx  
=xx! "
contactxx# *
.xx* +
Interestxx+ 3
,xx3 4
Locationyy  
=yy! "
contactyy# *
.yy* +
Locationyy+ 3
}zz 
)zz 
;zz 
}{{ 
return|| 
userList|| 
;||  
}}} 
return~~ 
null~~ 
;~~ 
} 	
public
ÅÅ 
ContactEntities
ÅÅ %
GetContactWithContactId
ÅÅ 6
(
ÅÅ6 7
long
ÅÅ7 ;
	contactId
ÅÅ< E
,
ÅÅE F
long
ÅÅG K
	jwtUserId
ÅÅL U
)
ÅÅU V
{
ÇÇ 	
var
ÉÉ 
contact
ÉÉ 
=
ÉÉ 
	_entities
ÉÉ #
.
ÉÉ# $
Where
ÉÉ$ )
(
ÉÉ) *
e
ÉÉ* +
=>
ÉÉ, .
e
ÉÉ/ 0
.
ÉÉ0 1
UserId
ÉÉ1 7
==
ÉÉ8 :
	jwtUserId
ÉÉ; D
)
ÉÉD E
;
ÉÉE F
if
ÑÑ 
(
ÑÑ 
contact
ÑÑ 
!=
ÑÑ 
null
ÑÑ 
)
ÑÑ  
{
ÖÖ 
return
ÜÜ 
_contactEntities
ÜÜ '
.
ÜÜ' (
FirstOrDefault
ÜÜ( 6
(
ÜÜ6 7
e
ÜÜ7 8
=>
ÜÜ9 ;
e
ÜÜ< =
.
ÜÜ= >
UserId
ÜÜ> D
==
ÜÜE G
	jwtUserId
ÜÜH Q
&&
ÜÜR T
e
ÜÜU V
.
ÜÜV W
	ContactId
ÜÜW `
==
ÜÜa c
	contactId
ÜÜd m
)
ÜÜm n
;
ÜÜn o
}
áá 
return
àà 
null
àà 
;
àà 
}
ââ 	
public
ãã 
IEnumerable
ãã 
<
ãã  
GetMyContactsModel
ãã -
>
ãã- .
GetWithContactId
ãã/ ?
(
ãã? @
long
ãã@ D
	contactId
ããE N
,
ããN O
long
ããP T
	jwtUserId
ããU ^
)
ãã^ _
{
åå 	
var
çç 
validateUser
çç 
=
çç 
	_entities
çç (
.
çç( )
Where
çç) .
(
çç. /
e
çç/ 0
=>
çç1 3
e
çç4 5
.
çç5 6
UserId
çç6 <
==
çç= ?
	jwtUserId
çç@ I
)
ççI J
;
ççJ K
if
éé 
(
éé 
validateUser
éé 
!=
éé 
null
éé  $
)
éé$ %
{
èè 
var
êê 
result
êê 
=
êê 
(
êê 
from
êê "
user
êê# '
in
êê( *
	_entities
êê+ 4
join
ëë "
contact
ëë# *
in
ëë+ -
_contactEntities
ëë. >
on
ëë? A
user
ëëB F
.
ëëF G
UserId
ëëG M
equals
ëëN T
contact
ëëU \
.
ëë\ ]
	ContactId
ëë] f
where
íí #
contact
íí$ +
.
íí+ ,
UserId
íí, 2
==
íí3 5
	jwtUserId
íí6 ?
&&
íí@ B
contact
ííC J
.
ííJ K
	ContactId
ííK T
==
ííU W
	contactId
ííX a
select
ìì $
new
ìì% (
{
îî 
contact
ïï" )
.
ïï) *
	ContactId
ïï* 3
,
ïï3 4
user
ññ" &
.
ññ& '
UserId
ññ' -
,
ññ- .
user
óó" &
.
óó& '
EmailId
óó' .
,
óó. /
user
òò" &
.
òò& '
Name
òò' +
,
òò+ ,
user
ôô" &
.
ôô& '
Gender
ôô' -
,
ôô- .
user
öö" &
.
öö& '
DateOfBirth
öö' 2
,
öö2 3
user
õõ" &
.
õõ& '
MobileNumber
õõ' 3
,
õõ3 4
user
úú" &
.
úú& '
Interest
úú' /
,
úú/ 0
user
ùù" &
.
ùù& '
Location
ùù' /
}
üü 
)
üü  
.
üü  !
ToList
üü! '
(
üü' (
)
üü( )
;
üü) *
IList
†† 
<
††  
GetMyContactsModel
†† (
>
††( )
userList
††* 2
=
††3 4
new
††5 8
List
††9 =
<
††= > 
GetMyContactsModel
††> P
>
††P Q
(
††Q R
)
††R S
;
††S T
foreach
°° 
(
°° 
var
°° 
contact
°° $
in
°°% '
result
°°( .
)
°°. /
{
¢¢ 
userList
££ 
.
££ 
Add
££  
(
££  !
new
££! $ 
GetMyContactsModel
££% 7
(
££7 8
)
££8 9
{
§§ 
UserId
•• 
=
••  
	jwtUserId
••! *
,
••* +
ContactPersonId
¶¶ '
=
¶¶( )
contact
¶¶* 1
.
¶¶1 2
UserId
¶¶2 8
,
¶¶8 9
Name
ßß 
=
ßß 
contact
ßß &
.
ßß& '
Name
ßß' +
,
ßß+ ,
EmailId
®® 
=
®®  !
contact
®®" )
.
®®) *
EmailId
®®* 1
,
®®1 2
Gender
©© 
=
©©  
contact
©©! (
.
©©( )
Gender
©©) /
,
©©/ 0
DateOfBirth
™™ #
=
™™$ %
contact
™™& -
.
™™- .
DateOfBirth
™™. 9
,
™™9 :
MobileNumber
´´ $
=
´´% &
contact
´´' .
.
´´. /
MobileNumber
´´/ ;
,
´´; <
Interest
¨¨  
=
¨¨! "
contact
¨¨# *
.
¨¨* +
Interest
¨¨+ 3
,
¨¨3 4
Location
≠≠  
=
≠≠! "
contact
≠≠# *
.
≠≠* +
Location
≠≠+ 3
}
ÆÆ 
)
ÆÆ 
;
ÆÆ 
}
ØØ 
return
∞∞ 
userList
∞∞ 
;
∞∞  
}
±± 
return
≤≤ 
null
≤≤ 
;
≤≤ 
}
≥≥ 	
}
¥¥ 
}µµ 