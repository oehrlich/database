
[General]
Version=1

[Preferences]
Username=
Password=2399
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=ADFORAREA
Count=50000..70000

[Record]
Name=ADID
Type=NUMBER
Size=
Data=List(select adid from advertisement)
Master=

[Record]
Name=AREAID
Type=NUMBER
Size=
Data=List(select areaid from area )
Master=

