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