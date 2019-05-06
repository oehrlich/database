
[General]
Version=1

[Preferences]
Username=
Password=2212
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=WORKERS
Count=10000..18000

[Record]
Name=WORKERID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

[Record]
Name=WORKEREXPERIENCE
Type=NUMBER
Size=
Data=Random(0,30)
Master=

[Record]
Name=WORKERWAGE
Type=FLOAT
Size=22
Data=Random(10, 30) + '.' + Random(0, 99)
Master=

[Record]
Name=WORKERTASK
Type=VARCHAR2
Size=20
Data=List('Seller', 'food seller', 'usher', 'cleaner', 'guard')
Master=

