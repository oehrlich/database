
[General]
Version=1

[Preferences]
Username=
Password=2055
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=TICKETS
Count=20000..30000

[Record]
Name=TICKETCHAIR
Type=NUMBER
Size=
Data=Random(0,150)
Master=

[Record]
Name=TICKETLINE
Type=NUMBER
Size=
Data=Random(0,25)
Master=

[Record]
Name=TICKETID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

[Record]
Name=TICKETSTATUS
Type=VARCHAR2
Size=10
Data=List('Active', 'None')
Master=

