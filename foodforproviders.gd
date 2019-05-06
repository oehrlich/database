
[General]
Version=1

[Preferences]
Username=
Password=2122
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=FOODFORPROVIDER
Count=15000..25000

[Record]
Name=RECEPTIONID
Type=NUMBER
Size=
Data=List(select foodid from food)
Master=

[Record]
Name=PROVIDERID
Type=NUMBER
Size=
Data=List(select providerid from provider)
Master=

