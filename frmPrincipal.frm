VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Convertendo Memória"
   ClientHeight    =   600
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4680
   Icon            =   "frmPrincipal.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   600
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Dim x As Integer
    Dim oExcel As New Excel.Application
    
    Open App.Path & "\semaforo" For Output As #77
    
    Print #77, "ESCREVENDO"
    
    Close #77
    
    Set oExcel = CreateObject("Excel.Application")
    
    oExcel.Workbooks.Add   'inclui o workbook
    Set objExlSht = oExcel.ActiveWorkbook.Sheets(1)
            
    oExcel.Application.DisplayAlerts = False
    
    With oExcel.Range(oExcel.Cells(1, 1), oExcel.Cells(1, 1))
        .RowHeight = 7.5
    End With
    
    With oExcel.Range(oExcel.Cells(2, 2), oExcel.Cells(2, 9))
        .Font.Size = 16
        .Font.Bold = True
        .Font.Color = rgbWhite
        .Cells.Interior.ColorIndex = 1
    End With
    
'    With oExcel.Range(oExcel.Cells(3, 2), oExcel.Cells(47, 9))
'        .Font.Size = 11
'        .Font.Bold = False
'    End With
'
'    With oExcel.Range(oExcel.Cells(3, 2), oExcel.Cells(3, 9))
'        .Font.Color = rgbBlack
'        .Cells.Interior.ColorIndex = 3
'    End With
'
'    With oExcel.Range(oExcel.Cells(4, 2), oExcel.Cells(5, 9))
'        .Font.Color = rgbWhite
'        .Cells.Interior.ColorIndex = 9
'    End With
'
'    With oExcel.Range(oExcel.Cells(6, 2), oExcel.Cells(6, 9))
'        .Font.Color = rgbBlack
'        .Cells.Interior.ColorIndex = 44
'    End With
'
'    With oExcel.Range(oExcel.Cells(7, 2), oExcel.Cells(7, 9))
'        .Font.Color = rgbWhite
'        .Cells.Interior.ColorIndex = 9
'    End With
'
'    With oExcel.Range(oExcel.Cells(8, 2), oExcel.Cells(8, 9))
'        .Font.Color = rgbBlack
'        .Cells.Interior.ColorIndex = 44
'    End With
'
'    With oExcel.Range(oExcel.Cells(9, 2), oExcel.Cells(10, 9))
'        .Font.Color = rgbWhite
'        .Cells.Interior.ColorIndex = 9
'    End With
'
'    With oExcel.Range(oExcel.Cells(11, 2), oExcel.Cells(11, 9))
'        .Font.Color = rgbBlack
'        .Cells.Interior.ColorIndex = 44
'    End With
'
'    With oExcel.Range(oExcel.Cells(12, 2), oExcel.Cells(12, 9))
'        .Font.Color = rgbBlack
'        .Cells.Interior.ColorIndex = 3
'    End With
'
'     With oExcel.Range(oExcel.Cells(13, 2), oExcel.Cells(16, 9))
'        .Font.Color = rgbWhite
'        .Cells.Interior.ColorIndex = 41
'    End With
'
'    With oExcel.Range(oExcel.Cells(17, 2), oExcel.Cells(17, 9))
'        .Font.Color = rgbBlack
'        .Cells.Interior.ColorIndex = 33
'    End With
'
'    With oExcel.Range(oExcel.Cells(18, 2), oExcel.Cells(19, 9))
'        .Font.Color = rgbBlack
'        .Cells.Interior.ColorIndex = 3
'    End With
'
'    With oExcel.Range(oExcel.Cells(20, 2), oExcel.Cells(22, 9))
'        .Font.Color = rgbWhite
'        .Cells.Interior.ColorIndex = 9
'    End With
'
'    With oExcel.Range(oExcel.Cells(23, 2), oExcel.Cells(28, 9))
'        .Font.Color = rgbBlack
'        .Cells.Interior.ColorIndex = 44
'    End With
'
'    With oExcel.Range(oExcel.Cells(29, 2), oExcel.Cells(29, 9))
'        .Font.Color = rgbWhite
'        .Cells.Interior.ColorIndex = 9
'    End With
'
'    With oExcel.Range(oExcel.Cells(30, 2), oExcel.Cells(30, 9))
'        .Font.Color = rgbBlack
'        .Cells.Interior.ColorIndex = 44
'    End With
'
'    With oExcel.Range(oExcel.Cells(31, 2), oExcel.Cells(35, 9))
'        .Font.Color = rgbWhite
'        .Cells.Interior.ColorIndex = 51
'    End With
'
'    With oExcel.Range(oExcel.Cells(36, 2), oExcel.Cells(40, 9))
'        .Font.Color = rgbWhite
'        .Cells.Interior.ColorIndex = 10
'    End With
'
'    With oExcel.Range(oExcel.Cells(41, 2), oExcel.Cells(45, 9))
'        .Font.Color = rgbBlack
'        .Cells.Interior.ColorIndex = 43
'    End With
'
'    With oExcel.Range(oExcel.Cells(46, 2), oExcel.Cells(46, 9))
'        .Font.Color = rgbWhite
'        .Cells.Interior.ColorIndex = 9
'    End With
'
'    With oExcel.Range(oExcel.Cells(47, 2), oExcel.Cells(47, 9))
'        .Font.Color = rgbBlack
'        .Cells.Interior.ColorIndex = 3
'    End With
    
'    With oExcel.Range("B2", "I47")
'        .HorizontalAlignment = xlCenter
'        .Font.Name = "Calibri"
'        '.RowHeight = 20
'        With .Borders(xlEdgeLeft)
'            .LineStyle = xlContinuous
'            .ColorIndex = 0
'            .TintAndShade = 0
'            .Weight = xlThin
'        End With
'        With .Borders(xlEdgeTop)
'            .LineStyle = xlContinuous
'            .ColorIndex = 0
'            .TintAndShade = 0
'            .Weight = xlThin
'        End With
'        With .Borders(xlEdgeBottom)
'            .LineStyle = xlContinuous
'            .ColorIndex = 0
'            .TintAndShade = 0
'            .Weight = xlThin
'        End With
'        With .Borders(xlEdgeRight)
'            .LineStyle = xlContinuous
'            .ColorIndex = 0
'            .TintAndShade = 0
'            .Weight = xlThin
'        End With
'        With .Borders(xlInsideHorizontal)
'            .LineStyle = xlContinuous
'            .ColorIndex = 0
'            .TintAndShade = 0
'            .Weight = xlThin
'        End With
'        With .Borders(xlInsideVertical)
'            .LineStyle = xlContinuous
'            .ColorIndex = 0
'            .TintAndShade = 0
'            .Weight = xlThin
'        End With
'    End With
    
    oExcel.Application.Cells(1, 1).ColumnWidth = 0.83   'A
    oExcel.Application.Cells(1, 2).ColumnWidth = 9      'B
    oExcel.Application.Cells(1, 3).ColumnWidth = 13.29  'C
    oExcel.Application.Cells(1, 4).ColumnWidth = 46.14  'D
    oExcel.Application.Cells(1, 5).ColumnWidth = 15.14  'E
    oExcel.Application.Cells(1, 6).ColumnWidth = 12.86  'F
    oExcel.Application.Cells(1, 7).ColumnWidth = 12     'G
    oExcel.Application.Cells(1, 8).ColumnWidth = 13.14  'H
    oExcel.Application.Cells(1, 9).ColumnWidth = 13.14  'I
    oExcel.Application.Cells(1, 10).ColumnWidth = 0.83  'J
    
    
    Open App.Path & "\MapaDeMemória.txt" For Input As #66
    
    x = 2
    Do Until EOF(66)
        Line Input #66, linha
        response = Split(linha, Chr(9))
        
        Celula = "B" & Trim(Str(x))
        oExcel.Range(Celula).Formula = response(0)
        
        Celula = "C" & Trim(Str(x))
        oExcel.Range(Celula).Formula = response(1)
        
        Celula = "D" & Trim(Str(x))
        oExcel.Range(Celula).Formula = response(2)
        
        Celula = "E" & Trim(Str(x))
        oExcel.Range(Celula).Formula = response(3)
        
        Celula = "F" & Trim(Str(x))
        oExcel.Range(Celula).Formula = response(4)
        
        Celula = "G" & Trim(Str(x))
        oExcel.Range(Celula).Formula = response(5)
        
        Celula = "H" & Trim(Str(x))
        oExcel.Range(Celula).Formula = response(6)
        
        Celula = "I" & Trim(Str(x))
        oExcel.Range(Celula).Formula = response(7)
        
        If x >= 3 Then
            With oExcel.Range("B" & Trim(Str(x)), "I" & Trim(Str(x)))
                Select Case response(8)
                    Case "W"
                        .Font.Color = rgbWhite
                    Case "B"
                        .Font.Color = rgbBlack
                End Select
                
                .Font.Size = 11
                .Font.Bold = False
            
                .Cells.Interior.ColorIndex = response(9)
                
                .HorizontalAlignment = xlCenter
                .Font.Name = "Calibri"
                '.RowHeight = 20
                
                With .Borders(xlEdgeLeft)
                    .LineStyle = xlContinuous
                    .ColorIndex = 0
                    .TintAndShade = 0
                    .Weight = xlThin
                End With
                With .Borders(xlEdgeTop)
                    .LineStyle = xlContinuous
                    .ColorIndex = 0
                    .TintAndShade = 0
                    .Weight = xlThin
                End With
                With .Borders(xlEdgeBottom)
                    .LineStyle = xlContinuous
                    .ColorIndex = 0
                    .TintAndShade = 0
                    .Weight = xlThin
                End With
                With .Borders(xlEdgeRight)
                    .LineStyle = xlContinuous
                    .ColorIndex = 0
                    .TintAndShade = 0
                    .Weight = xlThin
                End With
                With .Borders(xlInsideHorizontal)
                    .LineStyle = xlContinuous
                    .ColorIndex = 0
                    .TintAndShade = 0
                    .Weight = xlThin
                End With
                With .Borders(xlInsideVertical)
                    .LineStyle = xlContinuous
                    .ColorIndex = 0
                    .TintAndShade = 0
                    .Weight = xlThin
                End With
            End With
        End If
        
        Debug.Print linha
        
        x = x + 1
    Loop
    
    With oExcel.Range(oExcel.Cells(x, 1), oExcel.Cells(x, 1))
        .RowHeight = 7.5
    End With
    
    Close #66
    
    objExlSht.SaveAs (App.Path & "\MapaDeMemória.xlsx")
            
    oExcel.ActiveWorkbook.Saved = True
    oExcel.Workbooks.Close
    oExcel.Quit
     
    Set oExcel = Nothing
    Set objExlSht = Nothing
    
    Open App.Path & "\semaforo" For Output As #77
    
    Print #77, "CONCLUIDO"
    
    Close #77
    
    Kill App.Path & "\MapaDeMemória.txt"
    
    Unload Me
    
End Sub
