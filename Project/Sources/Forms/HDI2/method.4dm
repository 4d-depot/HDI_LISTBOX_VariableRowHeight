var $path : Text
var $page : Integer
var $s; $p : Integer
var $min; $max : Integer

var $pict : Picture
var $wait : Boolean

var $folder : 4D:C1709.Folder


Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.documents:=ds:C1482.Documents.all().orderBy("pageNumber")
		
		Form:C1466.tabControl:=New object:C1471
		Form:C1466.tabControl.values:=Form:C1466.documents.toCollection("title").extract("title")
		Form:C1466.tabControl.index:=0
		
		Form:C1466.info:=Form:C1466.documents[0].comments
		
		Form:C1466.trace:=False:C215
		
		// -- LISTBOX INIT
		
		If (Shift down:C543)
			Form:C1466.dataSource:=ds:C1482.Samples.all().toCollection()  //dk with primary key; 0; 100)  // collection of 100 items
		Else 
			Form:C1466.dataSource:=ds:C1482.Samples.all()  // full entity selection
		End if 
		
		// PREPARE drop-down widgets
		
		Form:C1466.fontSizeCol1:=New object:C1471("values"; New collection:C1472(10; 11; 12; 14; 18; 24; 32))  //24
		Form:C1466.fontSizeCol2:=New object:C1471("values"; New collection:C1472(10; 11; 12; 14; 18; 24; 32))  //14
		Form:C1466.fontSizeCol3:=New object:C1471("values"; New collection:C1472(10; 11; 12; 14; 18; 24; 32))  //11
		
		Form:C1466.minRowHeights:=New object:C1471("values"; New collection:C1472(1; 2; 3; 4; 5))  //; "index"; 0)
		Form:C1466.maxRowHeights:=New object:C1471("values"; New collection:C1472(5; 10; 15; 20; 25; 30; 1600))  //; "index"; 1)
		
		// GET auto row height 
		Form:C1466.autoCol1:=LISTBOX Get property:C917(*; "col1"; lk auto row height:K53:72)
		Form:C1466.autoCol2:=LISTBOX Get property:C917(*; "col2"; lk auto row height:K53:72)
		Form:C1466.autoCol3:=LISTBOX Get property:C917(*; "col3"; lk auto row height:K53:72)
		
		
		
		// GET font sizes 
		$s:=OBJECT Get font size:C1070(*; "col1")
		$p:=Form:C1466.fontSizeCol1.values.indexOf($s)
		If ($p>=0)
			Form:C1466.fontSizeCol1.index:=$p  // SET in widget
		End if 
		$s:=OBJECT Get font size:C1070(*; "col2")
		$p:=Form:C1466.fontSizeCol2.values.indexOf($s)
		If ($p>=0)
			Form:C1466.fontSizeCol2.index:=$p  // SET in widget
		End if 
		$s:=OBJECT Get font size:C1070(*; "col3")
		$p:=Form:C1466.fontSizeCol3.values.indexOf($s)
		If ($p>=0)
			Form:C1466.fontSizeCol3.index:=$p  // SET in widget
		End if 
		
		
		// GET bold
		Form:C1466.boldCol1:=OBJECT Get font style:C1071(*; "col1")%2
		Form:C1466.boldCol2:=OBJECT Get font style:C1071(*; "col2")%2
		Form:C1466.boldCol3:=OBJECT Get font style:C1071(*; "col3")%2
		
		
		// GET min/Max row heights
		
		$min:=LISTBOX Get auto row height:C1502(*; "Listbox"; lk row min height:K53:73; lk lines:K53:23)
		$max:=LISTBOX Get auto row height:C1502(*; "Listbox"; lk row max height:K53:74; lk lines:K53:23)
		
		$p:=Form:C1466.minRowHeights.values.indexOf($min)
		If ($p>=0)
			Form:C1466.minRowHeights.index:=$p  // SET in widget
		End if 
		
		$p:=Form:C1466.maxRowHeights.values.indexOf($max)
		If ($p>=0)
			Form:C1466.maxRowHeights.index:=$p  // SET in widget
		End if 
		
		// UI
		
		If (Is Windows:C1573)  //| (Macintosh option down)
			ST SET ATTRIBUTES:C1093(*; "formInfo"; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 22)
		Else 
			ST SET ATTRIBUTES:C1093(*; "formInfo"; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 26)
		End if 
		
		
	: (Form event code:C388=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
	: (Form event code:C388=On Page Change:K2:54)
		
		$page:=FORM Get current page:C276
		Form:C1466.info:=Form:C1466.documents[$page-1].comments
		
		Form:C1466.report:=""
		
		Form:C1466.people:=New collection:C1472
		Form:C1466.log:=New collection:C1472
		
		//OBJECT SET VISIBLE(*; "InfoPage@"; True)
		
		
	: (Form event code:C388=On Unload:K2:2)
		
End case 




