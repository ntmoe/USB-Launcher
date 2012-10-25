Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgsFirst
Dim strArgsSecond
Dim strArg

strArgsFirst = "cmd /c usbdrv.bat"
strArgsSecond=""

For Each strArg in Wscript.Arguments
  strArgsSecond=strArgsSecond & strArg & " "
Next

' WScript.Echo strArgsFirst & " " & strArgsSecond
oShell.Run (strArgsFirst & " " & strArgsSecond), 0, false
