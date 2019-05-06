
[General]
Version=1

[Preferences]
Username=
Password=2808
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=CITY
Count=10..20

[Record]
Name=CITYNAME
Type=VARCHAR2
Size=20
Data=FirstName
Master=

[Record]
Name=CITYID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

[Record]
Name=AREAID
Type=NUMBER
Size=
Data=List(select AREAID from AREA)
Master=

