
[General]
Version=1

[Preferences]
Username=
Password=2513
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=PROVIDER
Count=5000..10000

[Record]
Name=PROVIDERID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

[Record]
Name=PROVIDERAMOUNT
Type=NUMBER
Size=
Data=Random(1,100)
Master=

[Record]
Name=PROVIDERPAYMENT
Type=FLOAT
Size=22
Data=Random(100, 1000) + '.' + Random(10, 99)
Master=

