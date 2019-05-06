
[General]
Version=1

[Preferences]
Username=
Password=2068
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=COSTUMER
Count=5000..10000

[Record]
Name=COSTUMERID
Type=NUMBER
Size=
Data=Sequence(19133)
Master=

[Record]
Name=COSTUMERMEMBERSHIP
Type=VARCHAR2
Size=20
Data=List('yes' , 'no')
Master=

[Record]
Name=COSTUMERREGISTERATIONDATE
Type=DATE
Size=
Data=Random(01/01/2000, 01/01/2018)
Master=

[Record]
Name=COSTUMERPHONENUMBER
Type=NUMBER
Size=
Data=Random(100000000,999999999)
Master=

[Record]
Name=COSTUMEREMAIL
Type=VARCHAR2
Size=30
Data=Email
Master=

[Record]
Name=ORDERID
Type=NUMBER
Size=
Data=List(select orderid from orders)
Master=

