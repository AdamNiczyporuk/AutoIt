#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
 #include <MsgBoxConstants.au3>

$var_1= 0 
$var_2= "Hello"
$var_3= "Kukuryku" 

Local $currentDir = @ScriptDir
Local $instalerPath = $currentDir & "\autoit-v3-setup.exe"
ConsoleWrite($instalerPath & @CRLF)

ShellExecute($instalerPath)
;~ MsgBox($var_1,$var_2 , $currentDir)