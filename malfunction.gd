
[General]
Version=1

[Preferences]
Username=
Password=2631
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=MALFUNCTION
Count=10000..20000

[Record]
Name=MALFUNCTIONDECSRIPTION
Type=VARCHAR2
Size=40
Data=FirstName + Address1 + Company + FirstName
Master=

[Record]
Name=ISFIXED
Type=VARCHAR2
Size=10
Data=List('yes','no','black','white')
Master=

[Record]
Name=MALFUNCTIONID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

[Record]
Name=BRANCHID
Type=NUMBER
Size=
Data=List(select Branchid from branch)
Master=

[Record]
Name=THEATERID
Type=NUMBER
Size=
Data=List(select theaterid from theater)
Master=

