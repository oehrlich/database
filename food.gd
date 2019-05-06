
[General]
Version=1

[Preferences]
Username=
Password=2217
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=FOOD
Count=5000..10000

[Record]
Name=FOODSIZE
Type=VARCHAR2
Size=10
Data=List('small', 'medium', 'big', 'extra')
Master=

[Record]
Name=FOODDISCOUNT
Type=FLOAT
Size=22
Data=Random(0, 9) + '.' Random(10, 99)
Master=

[Record]
Name=FOODPRICE
Type=FLOAT
Size=22
Data=Random(10, 100) + '.' Random(10, 99)
Master=

[Record]
Name=FOODNAME
Type=VARCHAR2
Size=20
Data=List('choclate', 'ice cream', 'snacks', 'coca-cola', 'water', 'juice', 'popcorn')
Master=

[Record]
Name=FOODID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

