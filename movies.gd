
[General]
Version=1

[Preferences]
Username=
Password=2100
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=MOVIES
Count=3000..5000

[Record]
Name=MOVIEID
Type=NUMBER
Size=
Data=Sequence(2723)
Master=

[Record]
Name=REMOVALDATE
Type=DATE
Size=
Data=Random(01.01.2000,01.01.2018)
Master=

[Record]
Name=MOVIENAME
Type=VARCHAR2
Size=40
Data=Company
Master=

[Record]
Name=GENRE
Type=VARCHAR2
Size=10
Data=List('Act', 'fan', 'comedy', 'honor', 'sci-fi')
Master=

[Record]
Name=RATING
Type=FLOAT
Size=22
Data=Random(0,4) + '.' + Random(0,99)
Master=

[Record]
Name=RELEASEDATE
Type=DATE
Size=
Data=Random(01.01.1990,01.01.2000)
Master=

[Record]
Name=RELEASEYEAR
Type=NUMBER
Size=
Data=Random(1990,2000)
Master=

