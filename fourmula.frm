VERSION 5.00
Begin VB.Form formula 
   Caption         =   "Form1"
   ClientHeight    =   7455
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8085
   LinkTopic       =   "Form1"
   ScaleHeight     =   7455
   ScaleWidth      =   8085
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command8 
      Caption         =   "divid"
      Height          =   495
      Left            =   4560
      TabIndex        =   14
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      Caption         =   "mines"
      Height          =   495
      Left            =   3240
      TabIndex        =   13
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton Command6 
      Caption         =   "multi"
      Height          =   615
      Left            =   4560
      TabIndex        =   12
      Top             =   1080
      Width           =   1095
   End
   Begin VB.CommandButton Command5 
      Caption         =   "sum"
      Height          =   615
      Left            =   3240
      TabIndex        =   11
      Top             =   1080
      Width           =   1095
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H00C0FFC0&
      Caption         =   "&Divid"
      Height          =   495
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   2520
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Mi&nes"
      Height          =   495
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   2520
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0FFC0&
      Caption         =   "&Multi"
      Height          =   495
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   2520
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0E0FF&
      Caption         =   "&Sum"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2520
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H00FFC0FF&
      Enabled         =   0   'False
      Height          =   525
      Left            =   1680
      TabIndex        =   2
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00FFC0FF&
      Height          =   495
      Left            =   1680
      TabIndex        =   1
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00FFC0FF&
      Height          =   495
      Left            =   1680
      TabIndex        =   0
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H00FFC0C0&
      Caption         =   "OTHERWISE"
      Height          =   615
      Left            =   3120
      TabIndex        =   10
      Top             =   360
      Width           =   1935
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H00C0FFFF&
      Caption         =   "Result"
      Height          =   435
      Left            =   240
      TabIndex        =   5
      Top             =   1800
      Width           =   1065
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H00C0FFFF&
      Caption         =   "Second Number"
      Height          =   435
      Left            =   75
      TabIndex        =   4
      Top             =   1080
      Width           =   1545
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H00C0FFFF&
      Caption         =   "First Number"
      Height          =   435
      Left            =   225
      TabIndex        =   3
      Top             =   480
      Width           =   1035
   End
End
Attribute VB_Name = "formula"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
a = Val(Text1.Text)
b = Val(Text2.Text)
c = a + b
Text3.Text = c
MsgBox c, vbInformation, "answer"


End Sub

Private Sub Command2_Click()
a = Val(Text1.Text)
b = Val(Text2.Text)
c = a * b
Text3.Text = c
MsgBox c, vbInformation, "answer"

End Sub

Private Sub Command3_Click()
a = Val(Text1.Text)
b = Val(Text2.Text)
c = a - b
Text3.Text = c
MsgBox c, vbInformation, "answer"

End Sub

Private Sub Command4_Click()
a = Val(Text1.Text)
b = Val(Text2.Text)
c = a / b
Text3.Text = c
MsgBox c, vbInformation, "answer"

End Sub

Private Sub Command5_Click()
n1 = Val(InputBox("Enter any value:", "input value box"))
n2 = Val(InputBox("Enter any value:", "input value box"))
ans = n1 + n2
MsgBox ans, vbInformation, "your answer"

End Sub

Private Sub Command6_Click()
n1 = Val(InputBox("Enter any value:", "input value box"))
n2 = Val(InputBox("Enter any value:", "input value box"))
ans = n1 * n2
MsgBox ans, vbInformation, "your answer"

End Sub

Private Sub Command7_Click()
n1 = Val(InputBox("Enter any value:", "input value box"))
n2 = Val(InputBox("Enter any value:", "input value box"))
ans = n1 - n2
MsgBox ans, vbInformation, "your answer"

End Sub

Private Sub Command8_Click()
n1 = Val(InputBox("Enter any value:", "input value box"))
n2 = Val(InputBox("Enter any value:", "input value box"))
ans = n1 / n2
MsgBox ans, vbInformation, "your answer"

End Sub

Private Sub Form_Load()
Dim a, b, c, n1, n2, ans As Integer

End Sub

Private Sub Text1_GotFocus()
Text1.Text = ""
End Sub

Private Sub Text2_GotFocus()
Text2.Text = ""
End Sub
