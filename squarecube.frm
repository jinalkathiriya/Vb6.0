VERSION 5.00
Begin VB.Form squrecube 
   Caption         =   "Form2"
   ClientHeight    =   6225
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9780
   LinkTopic       =   "Form2"
   ScaleHeight     =   6225
   ScaleWidth      =   9780
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton CmdCube 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Cube"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   900
      Left            =   6960
      MaskColor       =   &H00C0C0FF&
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1920
      Width           =   2175
   End
   Begin VB.CommandButton CmdSquare 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Square"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   900
      Left            =   4440
      MaskColor       =   &H00C0E0FF&
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1920
      Width           =   2175
   End
   Begin VB.TextBox txtNumber 
      BackColor       =   &H00FFC0FF&
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   885
      Left            =   5160
      TabIndex        =   0
      Top             =   720
      Width           =   2955
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0FF&
      Caption         =   "Enter number"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1560
      TabIndex        =   4
      Top             =   840
      Width           =   3375
   End
   Begin VB.Label lblResult 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Result"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   795
      Left            =   5760
      TabIndex        =   3
      Top             =   3120
      Width           =   2205
   End
End
Attribute VB_Name = "squrecube"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CmdCube_Click()
Dim n, sq As Integer
n = Val(txtNumber.Text)
cube = n * n * n
lblResult.Caption = cube
End Sub

Private Sub CmdSquare_Click()
Dim n, sq As Integer
n = Val(txtNumber.Text)
sq = n * n
lblResult.Caption = sq
End Sub

Private Sub txtNumber_Change()

End Sub
