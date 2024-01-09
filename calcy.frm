VERSION 5.00
Begin VB.Form calcy 
   Caption         =   "calculator"
   ClientHeight    =   8355
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9570
   BeginProperty Font 
      Name            =   "Stencil"
      Size            =   26.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form3"
   ScaleHeight     =   8355
   ScaleWidth      =   9570
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton plusbtn 
      BackColor       =   &H008080FF&
      Caption         =   "+"
      Height          =   1000
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   6840
      Width           =   2085
   End
   Begin VB.CommandButton dotbtn 
      BackColor       =   &H80000000&
      Caption         =   "."
      Height          =   1000
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   6840
      Width           =   1000
   End
   Begin VB.CommandButton equalbtn 
      BackColor       =   &H80000000&
      Caption         =   "="
      Height          =   1000
      Left            =   5160
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   5760
      Width           =   1000
   End
   Begin VB.CommandButton minusbtn 
      BackColor       =   &H80000000&
      Caption         =   "-"
      Height          =   1000
      Left            =   5160
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   4680
      Width           =   1000
   End
   Begin VB.CommandButton multiplybtn 
      BackColor       =   &H80000000&
      Caption         =   "x"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1000
      Left            =   5160
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   3600
      Width           =   1000
   End
   Begin VB.CommandButton dividebtn 
      BackColor       =   &H80000000&
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "Goudy Stout"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1000
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   2520
      Width           =   1125
   End
   Begin VB.CommandButton percentagebtn 
      BackColor       =   &H80000000&
      Caption         =   "%"
      Height          =   1000
      Left            =   3960
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   2520
      Width           =   1000
   End
   Begin VB.CommandButton clearbtn 
      BackColor       =   &H00FFC0FF&
      Caption         =   "C"
      Height          =   1000
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   2520
      Width           =   1965
   End
   Begin VB.CommandButton digits 
      BackColor       =   &H80000000&
      Caption         =   "0"
      Height          =   1000
      Index           =   9
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   6840
      Width           =   1000
   End
   Begin VB.CommandButton digits 
      BackColor       =   &H80000000&
      Caption         =   "1"
      Height          =   1000
      Index           =   8
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   5760
      Width           =   1000
   End
   Begin VB.CommandButton digits 
      BackColor       =   &H80000000&
      Caption         =   "2"
      Height          =   1000
      Index           =   7
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   5760
      Width           =   1000
   End
   Begin VB.CommandButton digits 
      BackColor       =   &H80000000&
      Caption         =   "3"
      Height          =   1000
      Index           =   6
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   5760
      Width           =   1000
   End
   Begin VB.CommandButton digits 
      BackColor       =   &H80000000&
      Caption         =   "4"
      Height          =   1000
      Index           =   5
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   4680
      Width           =   1000
   End
   Begin VB.CommandButton digits 
      BackColor       =   &H80000000&
      Caption         =   "5"
      Height          =   1000
      Index           =   4
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   4680
      Width           =   1000
   End
   Begin VB.CommandButton digits 
      BackColor       =   &H80000000&
      Caption         =   "6"
      Height          =   1000
      Index           =   3
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   4680
      Width           =   1000
   End
   Begin VB.CommandButton digits 
      BackColor       =   &H80000000&
      Caption         =   "7"
      Height          =   1000
      Index           =   2
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   3600
      Width           =   1000
   End
   Begin VB.CommandButton digits 
      BackColor       =   &H80000000&
      Caption         =   "8"
      Height          =   1000
      Index           =   1
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   3600
      Width           =   1000
   End
   Begin VB.CommandButton digits 
      BackColor       =   &H80000000&
      Caption         =   "9"
      Height          =   1000
      Index           =   0
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   3600
      Width           =   1000
   End
   Begin VB.TextBox display 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00C0C0C0&
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   1800
      TabIndex        =   0
      Top             =   840
      Width           =   4455
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000002&
      BorderColor     =   &H00C0C0C0&
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   5775
      Left            =   1680
      Top             =   2280
      Width           =   4695
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H80000010&
      FillColor       =   &H00FFC0C0&
      FillStyle       =   0  'Solid
      Height          =   1455
      Left            =   1680
      Top             =   720
      Width           =   4695
   End
End
Attribute VB_Name = "calcy"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim var1, var2 As Double
Dim opern As String
Dim a As Integer

Private Sub clearbtn_Click()
display.Text = ""
End Sub

Private Sub digits_Click(Index As Integer)
display.Text = display.Text + digits(Index).Caption
End Sub


Private Sub display_GotFocus()
display.Text = " "
End Sub

Private Sub display_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
plusbtn.SetFocus
End If
End Sub

Private Sub dividebtn_Click()
var1 = Val(display.Text)
opern = "/"
display.Text = ""
End Sub

Private Sub dotbtn_Click()
display.Text = display.Text + "."
End Sub

Private Sub equalbtn_Click()

var2 = Val(display.Text)
'Select Case opern
 '   Case "+": display.Text = var1 + var2
  '  Case "-": display.Text = var1 - var2
   ' Case "/": display.Text = var1 / var2
    'Case "*": display.Text = var1 * var2
    'Case "%": display.Text = var1 * 100 / 100
'End Select
If (opern = "+") Then
    display.Text = var1 + var2
ElseIf (opern = "-") Then
    display.Text = var1 - var2
ElseIf (opern = "*") Then
    display.Text = var1 * var2
ElseIf (opern = "/") Then
    display.Text = var1 / var2
End If
End Sub

Private Sub minusbtn_Click()
var1 = Val(display.Text)
opern = "-"
display.Text = ""
End Sub

Private Sub multiplybtn_Click()
var1 = Val(display.Text)
opern = "*"
display.Text = ""
End Sub

Private Sub percentagebtn_Click()
var1 = Val(display.Text)
opern = "%"
End Sub

Private Sub plusbtn_Click()
var1 = Val(display.Text)
opern = "+"
display.Text = ""
display.Text = Val(display.Text) + a
a = 0
End Sub


Private Sub plusbtn_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
MsgBox ("enter number")
End If
End Sub

Private Sub plusbtn_LostFocus()
a = Val(display.Text)

End Sub
