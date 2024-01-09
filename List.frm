VERSION 5.00
Begin VB.Form list 
   Caption         =   "Form4"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form4"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Clr 
      BackColor       =   &H00FFC0C0&
      Caption         =   "CLEAR"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   3240
      Width           =   2535
   End
   Begin VB.CommandButton Insrt 
      BackColor       =   &H00C0C0FF&
      Caption         =   "INSERTION"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1920
      Width           =   2535
   End
   Begin VB.CommandButton Input 
      BackColor       =   &H00C0C0C0&
      Caption         =   "INPUT"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   720
      Width           =   2415
   End
   Begin VB.ListBox List2 
      BackColor       =   &H00C0E0FF&
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3435
      Left            =   6240
      TabIndex        =   1
      Top             =   720
      Width           =   2295
   End
   Begin VB.ListBox List1 
      BackColor       =   &H00C0E0FF&
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3060
      Left            =   720
      MousePointer    =   4  'Icon
      MultiSelect     =   1  'Simple
      TabIndex        =   0
      Top             =   720
      Width           =   2295
   End
End
Attribute VB_Name = "list"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a() As Integer
Dim num, i, j, temp As Integer

Private Sub Clr_Click()
List1.Clear
List2.Clear
End Sub

Private Sub Input_Click()
num = Val(InputBox("Enter the size of the array"))
ReDim a(num) As Integer

For i = 0 To num - 1
a(i) = Val(InputBox("Enter the elements of the array"))
List1.AddItem (a(i))
Next
End Sub

Private Sub Insrt_Click()
For i = 1 To num - 1
temp = a(i)
j = i - 1
Do While j >= 0
    If a(j) > temp Then
        a(j + 1) = a(j)
    Else
        Exit Do
    End If
        j = j - 1
Loop
    a(j + 1) = temp
Next

For i = 0 To num - 1
    List2.AddItem (a(i))
Next
End Sub

