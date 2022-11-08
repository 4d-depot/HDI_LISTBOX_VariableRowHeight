var $max : Integer

If (Form:C1466.trace)
	TRACE:C157
End if 

$max:=Form:C1466.maxRowHeights.currentValue
LISTBOX SET AUTO ROW HEIGHT:C1501(*; "Listbox"; lk row max height:K53:74; $max; lk lines:K53:23)

