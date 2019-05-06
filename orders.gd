
[General]
Version=1

[Preferences]
Username=
Password=2489
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=ORDERS
Count=5000..10000

[Record]
Name=ORDERID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

[Record]
Name=ORDERCOST
Type=FLOAT
Size=22
Data=Random(100, 1000) + '.' + Random(10, 99)
Master=

[Record]
Name=OREDERDISCOUNT
Type=FLOAT
Size=22
Data=Random(0, 10) + '.' + Random(0, 99)
Master=

[Record]
Name=OREDERNUMOFTICKETS
Type=NUMBER
Size=
Data=Random(1, 10)
Master=

