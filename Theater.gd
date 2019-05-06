
[General]
Version=1

[Preferences]
Username=
Password=2923
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=THEATER
Count=10000..20000

[Record]
Name=THEATERID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

[Record]
Name=NUMOFCHAIRS
Type=NUMBER
Size=
Data=Random(50,150)
Master=

[Record]
Name=VIP
Type=VARCHAR2
Size=10
Data=List('YES', 'NO')
Master=

[Record]
Name=NUMBEROFROWS
Type=NUMBER
Size=
Data=Random(5,25)
Master=

[Record]
Name=CHAIRAINROW
Type=NUMBER
Size=
Data=Random(5,25)
Master=

