#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

Local $oExcel = ObjCreate("Excel.Application")

If @error Then 
    MsgBox(16, "Error", "Error creating an Excel application object.")
    Exit
EndIf


$oExcel.Visible =True

Local $oWorkbook = $oExcel.Workbooks.Add

Local $oSheet = $oWorkbook.Sheets(1)

$oSheet.Cells(1, 1).Value = "Imię"
$oSheet.Cells(1, 2).Value = "Nazwisko"
$oSheet.Cells(1, 3).Value = "Wiek"

Local $aDane = [["Jan", "Kowalski", 30], ["Anna", "Nowak", 25], ["Piotr", "Wiśniewski", 35]]

For $i = 0 To UBound($aDane) - 1
    $oSheet.Cells($i + 2, 1).Value = $aDane[$i][0]
    $oSheet.Cells($i + 2, 2).Value = $aDane[$i][1]
    $oSheet.Cells($i + 2, 3).Value = $aDane[$i][2]
Next

Local $SavePath  = @ScriptDir & "\AutomationExcel.xlsx"

;~ If FileExists($SavePath) Then 
;~     FileDelete($SavePath)
;~ EndIf



$oWorkbook.SaveAs($SavePath)
$oExcel.Quit
