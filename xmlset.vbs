
Option Explicit

dim stderr,stdout,fso

Set fso = CreateObject ("Scripting.FileSystemObject") 
Set stdout = fso.GetStandardStream (1) 
Set stderr = fso.GetStandardStream (2) 


dim xmldom,xmlname,nodes
dim nd

Function SetNodeValue(node,value)
	node.text = value
End Function


if WScript.Arguments.Length < 4  Then
	stderr.writeline("xmlset infile xmlnode value outfile")
	wscript.Quit(3)
End If

set xmldom = CreateObject("Microsoft.XMLDOM")

xmldom.Async = False
xmldom.Load(wscript.Arguments(0))

if xmldom.parseError.errorCode <> 0 Then
	stderr.Writeline("can not parse " & wscript.Arguments(0) & " for xml")
Else
	stdout.Writeline("parse " & wscript.Arguments(0) & " succ")
End If

set nodes = xmldom.selectnodes(wscript.Arguments(1))

For Each  nd in nodes
	SetNodeValue nd , wscript.Arguments(2)
Next

xmldom.save wscript.Arguments(3)


