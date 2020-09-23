VERSION 5.00
Begin VB.Form frm_about 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "About NetMan"
   ClientHeight    =   3015
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5055
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   5055
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Contact >>"
      Height          =   375
      Left            =   3720
      TabIndex        =   6
      Top             =   600
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   3720
      TabIndex        =   1
      Top             =   120
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   20000
      Left            =   6000
      Top             =   2760
   End
   Begin VB.Label Label4 
      Caption         =   "James Ricketts"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3000
      TabIndex        =   5
      Top             =   1320
      Width           =   1695
   End
   Begin VB.Shape Shape1 
      Height          =   1230
      Left            =   75
      Top             =   1665
      Width           =   4860
   End
   Begin VB.Label Label3 
      Caption         =   $"frm_about.frx":0000
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      TabIndex        =   4
      Top             =   1920
      Width           =   6135
   End
   Begin VB.Label Label2 
      Caption         =   $"frm_about.frx":01A5
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1680
      Width           =   1815
   End
   Begin VB.Label lbl_version 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Width           =   1575
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Development && Programming by"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   1320
      Width           =   3255
   End
   Begin VB.Image Image1 
      Height          =   750
      Left            =   120
      Picture         =   "frm_about.frx":02B3
      Top             =   120
      Width           =   1500
   End
End
Attribute VB_Name = "frm_about"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Timer1.Enabled = False
Unload Me
End Sub

Private Sub Command2_Click()
MsgBox "Please send any comments/suggestions to: 'Jimarick@hotmail.com'", vbInformation, "E-mail Address"

End Sub

Private Sub Form_Load()
lbl_version.caption = "v" & App.Major & "." & App.Minor
If Timer1.Enabled = True Then
Timer1.Enabled = False
End If
Timer1.Enabled = True
End Sub


Private Sub Form_Terminate()
Timer1.Enabled = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
Timer1.Enabled = False
Unload Me

End Sub
