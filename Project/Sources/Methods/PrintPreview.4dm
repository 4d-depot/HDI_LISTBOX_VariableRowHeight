//%attributes = {}
var $over : Boolean

SET PRINT PREVIEW:C364(True:C214)
OPEN PRINTING JOB:C995


If (Shift down:C543)
	FORM LOAD:C1103("PrintFormAR")
Else 
	FORM LOAD:C1103("PrintFormES")
End if 

$Over:=False:C215
Repeat 
	$Over:=Print object:C1095(*; "Listbox")
	//LISTBOX GET PRINT INFORMATION(*; "Listbox"; lk printing is over; $Over)
	If (Not:C34($Over))
		PAGE BREAK:C6
	End if 
Until ($Over)

CLOSE PRINTING JOB:C996
