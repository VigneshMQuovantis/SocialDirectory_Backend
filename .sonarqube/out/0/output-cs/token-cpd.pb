›
cD:\BackendApplication\SocialDirectoryApplication\CommonLayer\ContactDetailsModels\GetAllContacts.cs
	namespace 	
CommonLayer
 
.  
ContactDetailsModels *
{ 
public 

class 
GetAllContacts 
{ 
public 
long 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public   
string   
Name   
{   
get    
;    !
set  " %
;  % &
}  ' (
public(( 
string(( 
EmailId(( 
{(( 
get((  #
;((# $
set((% (
;((( )
}((* +
public00 
string00 
Gender00 
{00 
get00 "
;00" #
set00$ '
;00' (
}00) *
public88 
string88 
DateOfBirth88 !
{88" #
get88$ '
;88' (
set88) ,
;88, -
}88. /
public@@ 
string@@ 
MobileNumber@@ "
{@@# $
get@@% (
;@@( )
set@@* -
;@@- .
}@@/ 0
publicHH 
stringHH 
InterestHH 
{HH  
getHH! $
;HH$ %
setHH& )
;HH) *
}HH+ ,
publicPP 
stringPP 
LocationPP 
{PP  
getPP! $
;PP$ %
setPP& )
;PP) *
}PP+ ,
}QQ 
}RR ë
gD:\BackendApplication\SocialDirectoryApplication\CommonLayer\ContactDetailsModels\SearchContactModel.cs
	namespace 	
CommonLayer
 
.  
ContactDetailsModels *
{ 
public 

class 
SearchContactModel $
{ 
public 
string 
SearchParameters &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} „
lD:\BackendApplication\SocialDirectoryApplication\CommonLayer\MyContactsModel\GetContactWithContactIdModel.cs
	namespace 	
CommonLayer
 
. 
MyContactsModel %
{ 
public 

class (
GetContactWithContactIdModel -
{ 
public 
long 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public   
long   
	ContactId   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
}!! 
}"" º
bD:\BackendApplication\SocialDirectoryApplication\CommonLayer\MyContactsModel\GetMyContactsModel.cs
	namespace 	
CommonLayer
 
. 
MyContactsModel %
{ 
public 

class 
GetMyContactsModel #
{ 
public 
long 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public   
long   
ContactPersonId   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public(( 
string(( 
Name(( 
{(( 
get((  
;((  !
set((" %
;((% &
}((' (
public00 
string00 
EmailId00 
{00 
get00  #
;00# $
set00% (
;00( )
}00* +
public88 
string88 
Gender88 
{88 
get88 "
;88" #
set88$ '
;88' (
}88) *
public@@ 
string@@ 
DateOfBirth@@ !
{@@" #
get@@$ '
;@@' (
set@@) ,
;@@, -
}@@. /
publicHH 
stringHH 
MobileNumberHH "
{HH# $
getHH% (
;HH( )
setHH* -
;HH- .
}HH/ 0
publicPP 
stringPP 
InterestPP 
{PP  
getPP! $
;PP$ %
setPP& )
;PP) *
}PP+ ,
publicXX 
stringXX 
LocationXX 
{XX  
getXX! $
;XX$ %
setXX& )
;XX) *
}XX+ ,
}YY 
}ZZ Ú
UD:\BackendApplication\SocialDirectoryApplication\CommonLayer\UserModels\LoginModel.cs
	namespace 	
CommonLayer
 
. 

UserModels  
{ 
public 

class 

LoginModel 
{ 
public 
string 
EmailId 
{ 
get  #
;# $
set% (
;( )
}* +
public   
string   
Password   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
}!! 
}"" «
]D:\BackendApplication\SocialDirectoryApplication\CommonLayer\UserModels\LoginResponseModel.cs
	namespace 	
CommonLayer
 
. 

UserModels  
{ 
public 

class 
LoginResponseModel #
{ 
public 
long 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public%% 
string%% 
EmailId%% 
{%% 
get%%  #
;%%# $
set%%% (
;%%( )
}%%* +
public-- 
string-- 
Gender-- 
{-- 
get-- "
;--" #
set--$ '
;--' (
}--) *
public55 
string55 
DateOfBirth55 !
{55" #
get55$ '
;55' (
set55) ,
;55, -
}55. /
public== 
string== 
MobileNumber== "
{==# $
get==% (
;==( )
set==* -
;==- .
}==/ 0
publicEE 
stringEE 
InterestEE 
{EE  
getEE! $
;EE$ %
setEE& )
;EE) *
}EE+ ,
publicMM 
stringMM 
LocationMM 
{MM  
getMM! $
;MM$ %
setMM& )
;MM) *
}MM+ ,
publicUU 
stringUU 
JwtTokenUU 
{UU  
getUU! $
;UU$ %
setUU& )
;UU) *
}UU+ ,
}VV 
}WW ï

YD:\BackendApplication\SocialDirectoryApplication\CommonLayer\UserModels\MyProfileModel.cs
	namespace 	
CommonLayer
 
. 

UserModels  
{ 
public 

class 
MyProfileModel 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public   
string   
EmailId   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public(( 
string(( 
Gender(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
public00 
string00 
DateOfBirth00 !
{00" #
get00$ '
;00' (
set00) ,
;00, -
}00. /
public88 
string88 
MobileNumber88 "
{88# $
get88% (
;88( )
set88* -
;88- .
}88/ 0
public@@ 
string@@ 
Interest@@ 
{@@  
get@@! $
;@@$ %
set@@& )
;@@) *
}@@+ ,
publicHH 
stringHH 
LocationHH 
{HH  
getHH! $
;HH$ %
setHH& )
;HH) *
}HH+ ,
}II 
}JJ ©
\D:\BackendApplication\SocialDirectoryApplication\CommonLayer\UserModels\RegistrationModel.cs
	namespace 	
CommonLayer
 
. 

UserModels  
{ 
public 

class 
RegistrationModel "
{ 
public 
long 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public   
string   
Name   
{   
get    
;    !
set  " %
;  % &
}  ' (
public(( 
string(( 
EmailId(( 
{(( 
get((  #
;((# $
set((% (
;((( )
}((* +
public00 
string00 
Password00 
{00  
get00! $
;00$ %
set00& )
;00) *
}00+ ,
public88 
string88 
Gender88 
{88 
get88 "
;88" #
set88$ '
;88' (
}88) *
public@@ 
string@@ 
DateOfBirth@@ !
{@@" #
get@@$ '
;@@' (
set@@) ,
;@@, -
}@@. /
publicHH 
stringHH 
MobileNumberHH "
{HH# $
getHH% (
;HH( )
setHH* -
;HH- .
}HH/ 0
publicPP 
stringPP 
InterestPP 
{PP  
getPP! $
;PP$ %
setPP& )
;PP) *
}PP+ ,
publicXX 
stringXX 
LocationXX 
{XX  
getXX! $
;XX$ %
setXX& )
;XX) *
}XX+ ,
}YY 
}ZZ …
dD:\BackendApplication\SocialDirectoryApplication\CommonLayer\UserModels\RegistrationResponseModel.cs
	namespace 	
CommonLayer
 
. 

UserModels  
{ 
public 

class %
RegistrationResponseModel *
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public   
string   
EmailId   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public(( 
string(( 
Gender(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
public00 
string00 
DateOfBirth00 !
{00" #
get00$ '
;00' (
set00) ,
;00, -
}00. /
public88 
string88 
MobileNumber88 "
{88# $
get88% (
;88( )
set88* -
;88- .
}88/ 0
public@@ 
string@@ 
Interest@@ 
{@@  
get@@! $
;@@$ %
set@@& )
;@@) *
}@@+ ,
publicHH 
stringHH 
LocationHH 
{HH  
getHH! $
;HH$ %
setHH& )
;HH) *
}HH+ ,
}II 
}JJ 