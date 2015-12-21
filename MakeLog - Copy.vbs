Dim WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")
Dim currDir 
currDir = WshShell.CurrentDirectory

Dim pathToLogFileDirectory
pathToLogFileDirectory = currDir & "\Logs"

dateTime = Now

set regEx = New RegExp
regEx.pattern = "/|:"
regEx.Global = True

fileName = regEx.Replace(dateTime, "-") & ".log"

Dim pathToLogFile
pathToLogFile = pathToLogFileDirectory & "\" & fileName

Dim output
output = Wscript.Arguments.Item(0)

MsgBox output