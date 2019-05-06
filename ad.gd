
[General]
Version=1

[Preferences]
Username=
Password=2581
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OEHRLICH
Name=ADVERTISEMENT
Count=20000..40000

[Record]
Name=ADTYPE
Type=VARCHAR2
Size=20
Data=List('big', 'small', 'medium') + ' ' + List('TV', 'news', 'sign')
Master=

[Record]
Name=ADCOST
Type=FLOAT
Size=22
Data=Random(0,100) + '.' + Random(0,99)
Master=

[Record]
Name=ADID
Type=NUMBER
Size=
Data=Sequence(0)
Master=

[Record]
Name=MOVIEID
Type=NUMBER
Size=
Data=List(select movieid from movies)
Master=

