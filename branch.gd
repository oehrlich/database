
[General]
Version=1

[Preferences]
Username=
Password=2877
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=BRANCH
Count=20000..30000

[Record]
Name=BRANCHID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

[Record]
Name=BRANCHNAME
Type=VARCHAR2
Size=20
Data=FirstName + LastName
Master=

[Record]
Name=BRANCHNUMOFTHEATRES
Type=NUMBER
Size=
Data=Random(10,20)
Master=

[Record]
Name=BRANCHADDRESS
Type=VARCHAR2
Size=40
Data=Address1
Master=

[Record]
Name=CITYID
Type=NUMBER
Size=
Data=List(select cityid from city)
Master=

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

