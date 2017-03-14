Sub Compare()
Dim f1x As Integer
Dim f1y As Integer
Dim f2x As Integer
Dim f2y As Integer
f1x = 6
f1y = 2
f2x = 6
f2y = 3
Do Until IsEmpty(Cells(1, f2x).Value)
    Do Until IsEmpty(Cells(f2y, f2x).Value)
        If Cells(f1y, f1x).Value <> Cells(f2y, f2x).Value Then
            Cells(f1y, f1x).Select
            Selection.Style = "Bad"
            Cells(f2y, f2x).Select
            Selection.Style = "Bad"
        End If
        f1y = f1y + 3
        f2y = f2y + 3
    Loop
    f1x = f1x + 1
    f1y = 2
    f2x = f2x + 1
    f2y = 3
Loop
End Sub

