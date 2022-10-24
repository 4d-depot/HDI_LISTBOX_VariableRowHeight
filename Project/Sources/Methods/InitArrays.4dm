//%attributes = {"invisible":true}

//Form.col1:=New collection

ARRAY TEXT:C222(t1; 0)
ARRAY TEXT:C222(t2; 0)
ARRAY TEXT:C222(t3; 0)

ALL RECORDS:C47([Samples:5])
SELECTION TO ARRAY:C260([Samples:5]title:2; t1; [Samples:5]subtitle:3; t2; [Samples:5]description:4; t3)


//Form.dataSource:=ds.Samples.all()