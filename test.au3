#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
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

;~ Local $currentDir = @ScriptDir
;~ Local $instalerPath = $currentDir & "\autoit-v3-setup.exe"
;~ ConsoleWrite($instalerPath & @CRLF)

;~ ShellExecute($instalerPath)

Local $command = "Get-Process"
RunAs("Administrator", "", "YourPassword", 0, "powershell.exe", "-command """ & $command & """")