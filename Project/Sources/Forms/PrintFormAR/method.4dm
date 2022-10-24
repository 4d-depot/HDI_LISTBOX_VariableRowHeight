Case of 
		
	: (Form event code:C388=On Load:K2:1)
		InitArrays
		
		LISTBOX SET AUTO ROW HEIGHT:C1501(*; "Listbox"; lk row min height:K53:73; listboxSetting.listbox.rowMinHeight; lk lines:K53:23)
		LISTBOX SET AUTO ROW HEIGHT:C1501(*; "Listbox"; lk row max height:K53:74; listboxSetting.listbox.rowMaxHeight; lk lines:K53:23)
		
		LISTBOX SET PROPERTY:C1440(*; "col1"; lk auto row height:K53:72; listboxSetting.col1.autoRowHeight)
		OBJECT SET FONT SIZE:C165(*; "col1"; listboxSetting.col1.fontSize)
		OBJECT SET FONT STYLE:C166(*; "col1"; listboxSetting.col1.fontStyle)
		
		
		LISTBOX SET PROPERTY:C1440(*; "col2"; lk auto row height:K53:72; listboxSetting.col2.autoRowHeight)
		OBJECT SET FONT SIZE:C165(*; "col2"; listboxSetting.col2.fontSize)
		OBJECT SET FONT STYLE:C166(*; "col2"; listboxSetting.col2.fontStyle)
		
		LISTBOX SET PROPERTY:C1440(*; "col3"; lk auto row height:K53:72; listboxSetting.col3.autoRowHeight)
		OBJECT SET FONT SIZE:C165(*; "col3"; listboxSetting.col3.fontSize)
		OBJECT SET FONT STYLE:C166(*; "col3"; listboxSetting.col3.fontStyle)
		
End case 





