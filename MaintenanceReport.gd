
[General]
Version=1

[Preferences]
Username=
Password=2331
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=EQUIPMENTFORPROVIDER
Count=10000..20000

[Record]
Name=EQUIPMENTID
Type=NUMBER
Size=
Data=List(select equipmentid from equipment)
Master=

[Record]
Name=PROVIDERID
Type=NUMBER
Size=
Data=List(select providerid from provider)
Master=

