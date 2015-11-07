Option Explicit

dim stderr,stdout,fso

Set fso = CreateObject ("Scripting.FileSystemObject") 
Set stdout = fso.GetStandardStream (1) 
Set stderr = fso.GetStandardStream (2) 


Function FindNodes(parent,num)
	dim n,i
	i = 0 
	'stdout.WriteLine("============================")
	while i < num	
		stdout.Write("  ")
		i = i + 1
	Wend
	if not parent.hasChildNodes Then
	stdout.Write(parent.nodeValue & chr(13) & chr(10))
	Else
	stdout.Write( parent.nodeName & chr(13) & chr(10))
	End If
	'stdout.WriteLine("-------------------------------------")
	if parent.hasChildNodes Then
		For Each  n in parent.childNodes
			FindNodes n, num+1
		Next
	End If
End Function

dim xmldom,xmlname,nodes
dim nd


if WScript.Arguments.Length < 1  Then
	stderr.writeline("xmltst xmlfile")
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
	FindNodes nd,0
Next
