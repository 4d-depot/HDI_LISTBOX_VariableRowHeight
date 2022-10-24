var listboxSetting : Object

listboxSetting:=New object:C1471

listboxSetting.listbox:=New object:C1471
listboxSetting.listbox.rowMinHeight:=LISTBOX Get auto row height:C1502(*; "Listbox"; lk row min height:K53:73; lk lines:K53:23)
listboxSetting.listbox.rowMaxHeight:=LISTBOX Get auto row height:C1502(*; "Listbox"; lk row max height:K53:74; lk lines:K53:23)

listboxSetting.col1:=New object:C1471
listboxSetting.col1.autoRowHeight:=LISTBOX Get property:C917(*; "col1"; lk auto row height:K53:72)
listboxSetting.col1.fontSize:=OBJECT Get font size:C1070(*; "col1")
listboxSetting.col1.fontStyle:=OBJECT Get font style:C1071(*; "col1")

listboxSetting.col2:=New object:C1471
listboxSetting.col2.autoRowHeight:=LISTBOX Get property:C917(*; "col2"; lk auto row height:K53:72)
listboxSetting.col2.fontSize:=OBJECT Get font size:C1070(*; "col2")
listboxSetting.col2.fontStyle:=OBJECT Get font style:C1071(*; "col2")

listboxSetting.col3:=New object:C1471
listboxSetting.col3.autoRowHeight:=LISTBOX Get property:C917(*; "col3"; lk auto row height:K53:72)
listboxSetting.col3.fontSize:=OBJECT Get font size:C1070(*; "col3")
listboxSetting.col3.fontStyle:=OBJECT Get font style:C1071(*; "col3")


PrintPreview()
