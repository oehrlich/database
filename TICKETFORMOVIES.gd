
[General]
Version=1

[Preferences]
Username=
Password=2168
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=TICKETFORMOVIES
Count=10000..20000

[Record]
Name=MOVIEID
Type=NUMBER
Size=
Data=List(select movieid from movies)
Master=

[Record]
Name=TICKETID
Type=NUMBER
Size=
Data=List(select ticketid from tickets)
Master=

