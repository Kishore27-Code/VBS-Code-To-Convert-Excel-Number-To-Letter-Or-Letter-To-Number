Set objExcel = CreateObject("Excel.Application")
objExcel.Visible = True
Set xlVbscript = objExcel.WorkBooks.Open("C:\Users\Excel.xlsx")

''''''''''''''''''''''''Column Letter To Number'''''''''''''''''''
ColumnLetter = "AG" 

ColumnNumber = xlVbscript.Sheets(1).Range(ColumnLetter & 1).Column

MsgBox(ColumnNumber)

''''''''''''''''''''''''ColumnNumber To Letter'''''''''''''''''''''''

ColumnNumber = 27
'Convert To Column Letter
 ColumnLetter = Split(xlVbscript.Sheets(1).Cells(1, ColumnNumber).Address, "$")(1)
 MsgBox(ColumnLetter)
 
 xlVbscript.save
xlVbscript.Close

objExcel.Quit
set objExcel=nothing