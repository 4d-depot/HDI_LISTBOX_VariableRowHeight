//%attributes = {}
var $file : 4D:C1709.File
var $text : Text
var $e : cs:C1710.SamplesEntity
var $max; $i; $j : Integer

var $textCol : Collection

$file:=File:C1566(Folder:C1567(fk resources folder:K87:11).path+"lorem.txt")
$text:=$file.getText()

$textCol:=Split string:C1554($text; "."; sk ignore empty strings:K86:1+sk trim spaces:K86:2)
$max:=$textCol.length


ds:C1482.Samples.all().drop()

For ($i; 1; 1000)
	
	$e:=ds:C1482.Samples.new()
	
	$e.title:=$textCol[Random:C100%$max]+"."  //0… $max-1
	
	$e.subtitle:=""
	For ($j; 1; 2+(Random:C100%3))  // 2…4 lines 
		$e.subtitle:=$e.subtitle+$textCol[Random:C100%$max]+",\r"
	End for 
	$e.subtitle:=Substring:C12($e.subtitle; 1; Length:C16($e.subtitle)-2)+"."
	
	$e.description:=""
	For ($j; 1; 10+(Random:C100%11))  // 10…20 lines 
		$e.description:=$e.description+$textCol[Random:C100%$max]+",\r"
	End for 
	$e.description:=Substring:C12($e.description; 1; Length:C16($e.description)-2)+"."
	
	
	$e.save()
	
End for 

ALERT:C41("Done")
