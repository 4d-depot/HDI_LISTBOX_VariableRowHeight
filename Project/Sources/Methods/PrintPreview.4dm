//%attributes = {}
var $over : Boolean

If (Form:C1466.trace)
	TRACE:C157
End if 


SET PRINT PREVIEW:C364(True:C214)
OPEN PRINTING JOB:C995

FORM LOAD:C1103("PrintFormES")

Repeat 
	$Over:=Print object:C1095(*; "Listbox")
	If (Not:C34($Over))
		PAGE BREAK:C6
	End if 
Until ($Over)

CLOSE PRINTING JOB:C996
