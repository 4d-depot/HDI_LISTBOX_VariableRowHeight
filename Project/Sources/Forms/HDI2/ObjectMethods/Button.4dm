InitArrays

If (Shift down:C543)
	Form:C1466.dataSource:=ds:C1482.Samples.all().toCollection(New collection:C1472("title"; "subtitle"; "description"); dk with primary key:K85:6; 0; 10)
Else 
	Form:C1466.dataSource:=ds:C1482.Samples.all()
End if 

SET TIMER:C645(-1)

