VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form frmCarBranche 
   AutoRedraw      =   -1  'True
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Caract�ristiques de la branche"
   ClientHeight    =   5370
   ClientLeft      =   1440
   ClientTop       =   3645
   ClientWidth     =   4950
   Icon            =   "CarBranche.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   NegotiateMenus  =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   5370
   ScaleWidth      =   4950
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdHelp 
      Caption         =   "Aide"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2760
      TabIndex        =   26
      Top             =   4680
      Width           =   1215
   End
   Begin VB.TextBox txtNumBranche 
      Height          =   285
      Left            =   4320
      MaxLength       =   1
      TabIndex        =   24
      Top             =   240
      Width           =   270
   End
   Begin VB.TextBox txtLE15m 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   1200
      TabIndex        =   6
      Top             =   3720
      Width           =   495
   End
   Begin VB.CheckBox chkEntr�eEvas�e 
      Height          =   375
      Left            =   3960
      TabIndex        =   9
      Top             =   3720
      Width           =   375
   End
   Begin VB.TextBox txtEcart 
      Height          =   285
      Left            =   3360
      TabIndex        =   2
      Text            =   "8"
      Top             =   600
      Width           =   495
   End
   Begin VB.CheckBox chkRampe 
      Caption         =   "Rampe Sup�rieure � 3 %"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   1200
      Value           =   1  'Checked
      Width           =   2415
   End
   Begin VB.CheckBox chkTAD 
      Caption         =   "Voie Tourne � Droite"
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
      TabIndex        =   4
      Top             =   1680
      Width           =   2415
   End
   Begin VB.TextBox txtNomBranche 
      Height          =   285
      Left            =   840
      TabIndex        =   0
      Top             =   240
      Width           =   2535
   End
   Begin VB.TextBox txtLI 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   2040
      MaxLength       =   8
      TabIndex        =   7
      Top             =   3720
      Width           =   495
   End
   Begin VB.TextBox txtLE4m 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   480
      MaxLength       =   8
      TabIndex        =   5
      Top             =   3720
      Width           =   495
   End
   Begin VB.TextBox txtLS 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   2880
      MaxLength       =   8
      TabIndex        =   8
      Top             =   3720
      Width           =   495
   End
   Begin VB.TextBox txtAngleBranche 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   840
      MaxLength       =   7
      TabIndex        =   1
      Top             =   600
      Width           =   735
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "Fermer"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   840
      TabIndex        =   10
      Top             =   4680
      Width           =   1215
   End
   Begin MSComCtl2.UpDown spnNumBranche 
      Height          =   285
      Left            =   4680
      TabIndex        =   23
      Top             =   240
      Width           =   240
      _ExtentX        =   423
      _ExtentY        =   503
      _Version        =   393216
      Value           =   1
      BuddyControl    =   "txtNumBranche"
      BuddyDispid     =   196610
      OrigLeft        =   4200
      OrigTop         =   240
      OrigRight       =   4440
      OrigBottom      =   615
      Max             =   8
      Min             =   1
      SyncBuddy       =   -1  'True
      BuddyProperty   =   0
      Enabled         =   -1  'True
   End
   Begin VB.Label lblNum�ro 
      Caption         =   "Num�ro :"
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
      Left            =   3480
      TabIndex        =   25
      Top             =   240
      Width           =   855
   End
   Begin VB.Label lblEntr�eEvas�e 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Entr�e Evas�e"
      Height          =   495
      Left            =   3720
      TabIndex        =   22
      Top             =   3120
      Width           =   735
   End
   Begin VB.Label lblUnitAngle 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   1
      Left            =   3960
      TabIndex        =   21
      Top             =   600
      Width           =   165
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   2
      Height          =   1815
      Left            =   120
      Top             =   2400
      Width           =   4575
   End
   Begin VB.Label lblEntr�e 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Entr�e"
      Height          =   255
      Left            =   360
      TabIndex        =   20
      Top             =   3120
      Width           =   1455
   End
   Begin VB.Label lblLI 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Il�t"
      Height          =   495
      Left            =   1920
      TabIndex        =   19
      Top             =   3120
      Width           =   735
   End
   Begin VB.Label lblLS 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Sortie"
      Height          =   495
      Left            =   2760
      TabIndex        =   18
      Top             =   3120
      Width           =   735
   End
   Begin VB.Label lblLargeurs 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Largeurs"
      Height          =   255
      Left            =   360
      TabIndex        =   17
      Top             =   2760
      Width           =   3135
   End
   Begin VB.Label lblLE4m 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "� 4 m"
      Height          =   255
      Left            =   360
      TabIndex        =   16
      Top             =   3360
      Width           =   735
   End
   Begin VB.Label lblLE15m 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "� 15 m"
      Height          =   255
      Left            =   1080
      TabIndex        =   15
      Top             =   3360
      Width           =   735
   End
   Begin VB.Label lblEcart 
      Alignment       =   1  'Right Justify
      Caption         =   "Ecart : "
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
      Left            =   2300
      TabIndex        =   14
      Top             =   600
      Width           =   1000
   End
   Begin VB.Label lblNom 
      AutoSize        =   -1  'True
      Caption         =   "Nom :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   120
      TabIndex        =   13
      Top             =   240
      Width           =   615
   End
   Begin VB.Label lblUnitAngle 
      AutoSize        =   -1  'True
      Height          =   195
      Index           =   0
      Left            =   1680
      TabIndex        =   12
      Top             =   600
      Width           =   285
   End
   Begin VB.Label lblAngle 
      AutoSize        =   -1  'True
      Caption         =   "Angle :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   120
      TabIndex        =   11
      Top             =   600
      Width           =   615
   End
End
Attribute VB_Name = "frmCarBranche"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'**********************************************************************************************************
'*
'*          Projet GIRABASE - CERTU - CETE de l'Ouest
'*
'*          Module de feuille : CARBRANCHE.FRM - frmCarBranche
'*
'*          Feuille de Saisie de l'ensemble des caract�ristiques d'une branche (Angle et Dimensionnement)
'*
'* Les modifications faites dans cette feuille de saisie sont transmises dans les matrices associ�es.
'* La validation des donn�es et la modification graphique du dessin du giratoire sont d�clench�es
'* � partir des spreads.
'***********************************************************************************************************

Option Explicit
Private TitreInitial As String
Private NbBranches As Integer
Private SauveValeur As String
Private Valeur As String

Private FeuilleDonn�es As Form
Private BrancheActive As BRANCHE
Private FeuilleCharg�e As Boolean


'******************************************************************************
' D�tection de la frappe d'une touche
'******************************************************************************
Private Sub FrappeTouche()
  If Not FeuilleDonn�es.Donn�eModifi�e Then
    'Affecte la couleur normale au controle au premier caract�re frapp�
    ActiveControl.ForeColor = vbWindowText
    'Change la proprit� de modification de la donn�e
    FeuilleDonn�es.Donn�eModifi�e = True
  End If
End Sub

'***********************************************************************************************
' Validation de la largeur saisie : Mise � jour du tableau vgdLargBranche dans la feuille Donn�es
'***********************************************************************************************
Private Function ValideLargeur(Valeur As Variant, Col As Integer) As Boolean
  Dim wBranche As BRANCHE
  ValideLargeur = True
  With FeuilleDonn�es
    If .Donn�eModifi�e Then
      'Si la largeur a �t� modifi�e, on attribue la nouvelle valeur
      '� la cellule concern�e du spread de dimensionnement
      'puis on simule la validation de la cellule par d�clenchement de l'�v�nement
      'Leave-Cell
      'La modification graphique sera op�r�e � partir du spread.
      .Num�roLigneActive = monNumBrancheSelect
      Set wBranche = gbProjetActif.colBranches.Item(monNumBrancheSelect)
      If .ValidationDonn�es(Valeur, wBranche) Then
        .TypeMatriceActive = DIMENSION
        .vgdLargBranche.Col = Col
        .vgdLargBranche.Row = monNumBrancheSelect
        .vgdLargBranche.Value = Valeur
        .Donn�eModifi�e = True
        'D�clenchement de LeaveCell
        'La valeur est valid�e et le giratoire est redessin�
        .vgdLargBranche_LeaveCell Col, monNumBrancheSelect, -1, -1, False
        If FeuilleDonn�es.MessageEmis Then
          'Il y a eu un message d'avertissement,
          'La cellule doit �tre colori�e en rouge
          ActiveControl.ForeColor = vbRed
        End If
      Else
        ValideLargeur = False
        ActiveControl.Text = SauveValeur
      End If
      .Donn�eModifi�e = False
    End If
  End With
End Function

'********************************************************************************************
' Validation de l'angle saisi : Mise � jour du tableau vgdCarBranche dans la feuille Donn�es
'********************************************************************************************
Private Function ValideAngle(Valeur As Variant, Col As Integer) As Boolean
  Dim wBranche As BRANCHE
  ValideAngle = True
  With FeuilleDonn�es
    If .Donn�eModifi�e Then
      'Si l'angle a �t� modifi�e, on attribue la nouvelle valeur
      '� la cellule concern�e du spread de caract�ristiques
      'puis on simule la validation de la cellule par d�clenchement de l'�v�nement
      'Leave-Cell
      'La modification graphique sera op�r�e � partir du spread.
      .TypeControleActif = TYPE_ANGLE
      Set wBranche = gbProjetActif.colBranches.Item(monNumBrancheSelect)
      If .ValidationDonn�es(Valeur, wBranche) Then
        .TypeMatriceActive = BRANCHE
        .vgdCarBranche.Col = Col
        .vgdCarBranche.Row = monNumBrancheSelect
        .vgdCarBranche.Value = Valeur
        .Donn�eModifi�e = True
        'D�clenchement de LeaveCell
        'La valeur est valid�e et le giratoire est redessin�
        .vgdCarBranche_LeaveCell Col, monNumBrancheSelect, -1, -1, False
        If FeuilleDonn�es.MessageEmis Then
          'Il y a eu un message d'avertissement,
          'La cellule doit �tre colori�e en rouge
          ActiveControl.ForeColor = vbRed
        End If
        txtAngleBranche = CStr(BrancheActive.Angle)
        .vgdCarBranche.Col = 3
        .vgdCarBranche.Row = monNumBrancheSelect
        txtEcart = .vgdCarBranche.Value
      Else
        ValideAngle = False
        ActiveControl.Text = SauveValeur
      End If
      'Si la modification n'est pas valid�e, on repasse � l'�tat non modifi�
      .Donn�eModifi�e = False 'Si la modification n'est pas valid�e,
    End If
  End With
End Function

'******************************************************************************
' Case � cocher Entr�e Evas�e
'******************************************************************************
Private Sub chkEntr�eEvas�e_Click()
  txtLE15m.Enabled = (chkEntr�eEvas�e = vbChecked)
  If chkEntr�eEvas�e Then
    txtLE15m.BackColor = vbWhite
    txtLE15m = txtLE4m
  Else
    txtLE15m.BackColor = vbGrayText
    txtLE15m = ""
  End If
  FeuilleDonn�es.TypeControleActif = TYPE_ENTREE
  'D�clenchement du clic dans la case � cocher du spread des branches du giratoire
  FeuilleDonn�es.vgdLargBrancheClic monNumBrancheSelect, chkEntr�eEvas�e
End Sub

'******************************************************************************
' Case � cocher Rampe
' Validation de la pr�sence ou l'absence de rampe dans le spread
' des caract�ristiques des branches
'******************************************************************************
Private Sub chkRampe_Click()

  With FeuilleDonn�es.vgdCarBranche
    .Col = 4
    .Row = monNumBrancheSelect
    .Value = (chkRampe = vbChecked)
    BrancheActive.Rampe = .Value
  End With
End Sub

'******************************************************************************
' Case � cocher  Tourne � droite
' Validation de la pr�sence ou l'absence de TAD dans le spread
' des branches
'******************************************************************************
Private Sub chkTAD_Click()
  With FeuilleDonn�es.vgdCarBranche
    .Col = 5
    .Row = monNumBrancheSelect
    .Value = (chkTAD = vbChecked)
    BrancheActive.TAD = .Value
  End With
End Sub

Private Sub cmdHelp_Click()

    SendKeys "{F1}", True

End Sub

'******************************************************************************
' Bouton Fermer
'******************************************************************************
Private Sub cmdOK_Click()
  'A la fermeture de la boite de dialogue, il faut pr�ciser que le contr�le sur
  ' les spreads de caract�ristiques des branches est termin�...
  FeuilleDonn�es.TypeControleActif = TYPE_AUCUN
  FeuilleDonn�es.TypeMatriceActive = AUCUN
  Unload Me
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
  FrappeTouche
End Sub

'******************************************************************************
' Chargement de la feuille
'******************************************************************************
Private Sub Form_Load()
Dim Ecart As Integer
Dim I As Integer
  
  'Icon = MDIGirabase.Icon
  
  ' Aide contextuelle
  HelpContextID = IDhlp_CarBranche
  
  TitreInitial = Caption
  FeuilleCharg�e = False
  With gbProjetActif
    For I = 0 To 1
      lblUnitAngle(I) = libelAngle(.modeangle)
    Next
    Set FeuilleDonn�es = .Donn�es
    NbBranches = .NbBranches
  End With
   
  With FeuilleDonn�es
    Set .FeuilleBranche = Me
    With .tabDonn�es
      Me.Move .Left + MDIGirabase.Left, .Top + MDIGirabase.Top + 200
    End With
    .tabDonn�es.Visible = False
  End With
    
  spnNumBranche.Max = NbBranches
  txtNumBranche = monNumBrancheSelect
  
End Sub

'******************************************************************************
'******************************************************************************
' D�chargement de la feuille
'******************************************************************************
'******************************************************************************
Private Sub Form_Unload(Cancel As Integer)
  FeuilleDonn�es.shpPoign�e.Visible = False
  FeuilleDonn�es.tabDonn�es.Visible = True
  Set FeuilleDonn�es.FeuilleBranche = Nothing
End Sub

Private Sub txtAngleBranche_GotFocus()
  FeuilleDonn�es.TypeControleActif = TYPE_ANGLE
  InitControle FeuilleDonn�es.TypeControleActif
End Sub

Private Sub txtAngleBranche_Validate(Cancel As Boolean)

  Cancel = Not ValideAngle(txtAngleBranche, 2)
End Sub



Private Sub txtEcart_GotFocus()
  FeuilleDonn�es.TypeControleActif = TYPE_ANGLE
  InitControle FeuilleDonn�es.TypeControleActif
End Sub

Private Sub txtEcart_Validate(Cancel As Boolean)
  Cancel = Not ValideAngle(txtEcart, 3)
End Sub

Private Sub txtLE15m_GotFocus()
  FeuilleDonn�es.TypeControleActif = TYPE_LE15M
  InitControle FeuilleDonn�es.TypeControleActif
End Sub


Private Sub txtLE15m_Validate(Cancel As Boolean)
  Cancel = Not ValideLargeur(txtLE15m, 2)
End Sub

Private Sub txtLE4m_GotFocus()
  FeuilleDonn�es.TypeControleActif = TYPE_LE4M
  InitControle FeuilleDonn�es.TypeControleActif
End Sub


Private Sub txtLE4m_Validate(Cancel As Boolean)
  Dim Entr�ePr�c�dente As Boolean
  Entr�ePr�c�dente = BrancheActive.Entr�eNulle
  If ValideLargeur(txtLE4m, 1) Then
    Cancel = False
    ChangeLE4m Entr�ePr�c�dente, BrancheActive.Entr�eNulle
    If Not Entr�ePr�c�dente And BrancheActive.Entr�eNulle Then
      InitControle (ActiveControl)
    End If
  Else
    Cancel = True
  End If
End Sub
'******************************************************************************
' InitControle
' Met le contr�le dans la couleur normale, le passe en surbrillance
' et sauvegarde sa valeur
'******************************************************************************
Public Sub InitControle(ByVal controle As String)
  With ActiveControl
    If controle = TYPE_ANGLE Then
      FeuilleDonn�es.TypeMatriceActive = BRANCHE
    Else
      FeuilleDonn�es.TypeMatriceActive = DIMENSION
    End If
    FeuilleDonn�es.ControleRecommandations True, controle
    .ForeColor = vbWindowText
    SauveValeur = .Text
   End With
End Sub

Private Sub txtLI_GotFocus()
  FeuilleDonn�es.TypeControleActif = TYPE_LI
  InitControle FeuilleDonn�es.TypeControleActif
End Sub

Private Sub txtLI_Validate(Cancel As Boolean)
  Cancel = Not ValideLargeur(txtLI, 3)
End Sub

Private Sub txtLS_GotFocus()
  FeuilleDonn�es.TypeControleActif = TYPE_LS
  InitControle FeuilleDonn�es.TypeControleActif
   
End Sub

Private Sub txtLS_Validate(Cancel As Boolean)
  Dim SortiePr�c�dente As Boolean
  SortiePr�c�dente = BrancheActive.SortieNulle
  If ValideLargeur(txtLS, 4) Then
    Cancel = False
    ChangeLS SortiePr�c�dente, BrancheActive.SortieNulle
  Else
    Cancel = True
  End If
End Sub

Private Sub txtNomBranche_GotFocus()
  FeuilleDonn�es.TypeControleActif = TYPE_AUCUN
  InitControle FeuilleDonn�es.TypeControleActif
End Sub

Private Sub txtNomBranche_KeyPress(KeyAscii As Integer)
  FrappeTouche
End Sub

Private Sub txtNomBranche_Validate(Cancel As Boolean)
Dim Angle As Single

  BrancheActive.nom = txtNomBranche
  With FeuilleDonn�es.vgdCarBranche
    .Col = 1
    .Row = monNumBrancheSelect
    .Value = txtNomBranche
    FeuilleDonn�es.lblLibell�Branche(.Row) = txtNomBranche
    MDIGirabase.mnuBranche(.Row - 1).Caption = "&" & CStr(.Row) & " " & txtNomBranche
  End With
  Angle = angConv(BrancheActive.Angle, CVRADIAN)
  With FeuilleDonn�es
    D�placerNomBranche .lblLibell�Branche(monNumBrancheSelect), .linBranche(monNumBrancheSelect), Cos(Angle), -Sin(Angle)        ' "-" pour le sinus : car l'axe des Y est vers le bas
  End With
End Sub

'******************************************************************************
' Changement de branche
'******************************************************************************
Private Sub txtNumBranche_Change()
Static Passage As Boolean
Dim Ecart As Single
  If Not IsNumeric(txtNumBranche) Then Passage = True: txtNumBranche = monNumBrancheSelect: Exit Sub
  If Passage Then Passage = False: Exit Sub
  
  monNumBrancheSelect = CInt(txtNumBranche)
    
  'D�placement de la poign�e de s�lection : Emprunt� au module DessinGiratoire : ModiferBranche
  Dim wLigne As Line
 
  Set wLigne = FeuilleDonn�es.linBranche(monNumBrancheSelect)
  With FeuilleDonn�es.shpPoign�e
    .Left = wLigne.X2 - .Width / 2
    .Top = wLigne.Y2 - .Height / 2
  End With
  
  If monNumBrancheSelect = 1 Then Else
  With gbProjetActif.colBranches
    Set BrancheActive = .Item(monNumBrancheSelect)
    If monNumBrancheSelect > 1 Then
      Ecart = BrancheActive.Angle - .Item(monNumBrancheSelect - 1).Angle
      txtEcart.Enabled = True
      txtEcart.BackColor = vbWhite
      txtAngleBranche.Enabled = True
      txtAngleBranche.BackColor = vbWhite
    Else
      Ecart = 0
      txtEcart.Enabled = False
      txtEcart.BackColor = vbGrayText
      txtAngleBranche.Enabled = False
      txtAngleBranche.BackColor = vbGrayText
    End If
  End With
  
  With BrancheActive
    'R�cup�ration et affichage des valeurs de la branche s�lectionn�e
    Caption = TitreInitial & " " & CStr(monNumBrancheSelect)
    txtNomBranche = .nom
    chkRampe = RetourneEntier(.Rampe)
    Dim Save As Single
    Save = .LE15m
    chkEntr�eEvas�e = RetourneEntier(.Entr�eEvas�e)
    .LE15m = Save 'R�cup�re la valeur de LE15m modifi�e lors du clic
    chkTAD = RetourneEntier(.TAD)
    txtLE4m = CStr(.LE4m)
    ChangeLE4m .Entr�eNulle, .Entr�eNulle
    If .Entr�eEvas�e Then
      txtLE15m = CStr(.LE15m)
    Else
      txtLE15m.Enabled = False
      txtLE15m.BackColor = vbGrayText
    End If
    txtLI = CStr(.LI)
    txtLS = CStr(.LS)
    
    txtAngleBranche = CStr(.Angle)
    txtEcart = CStr(Ecart)
    V�rifieChangeBranche
    
 End With

End Sub

'********************************************************************************
' Traitement final lors du changement de branche (Ev�nement txtNumBranche_Change)
'********************************************************************************
Private Sub V�rifieChangeBranche()
  Dim Control As Control
  DoEvents
  With FeuilleDonn�es
    'Remet les contr�les TextBox dans leur couleur initiale
    For Each Control In Controls
      If TypeOf Control Is TextBox Then
        Control.ForeColor = vbWindowText
      End If
    Next
    If FeuilleCharg�e Then
      txtNomBranche.SetFocus
    Else
      FeuilleCharg�e = True
    End If
    .TypeControleActif = TYPE_AUCUN
    .Num�roLigneActive = monNumBrancheSelect
    .TypeMatriceActive = BRANCHE
    .ControleRecommandations True, .TypeControleActif
    .TypeMatriceActive = DIMENSION
    .ControleRecommandations True, .TypeControleActif
  End With
End Sub

'******************************************************************************
' ChangeLE4m
' Si l'entr�e est nulle, il faut refuser le TAD, l'entr�e �vas�e
' et l'entr�e de la largeur d'ilot LI
' Si l'entr�e n'est pas nulle, on accepte le TAD si le giratoire
' n'est pas un mini-giratoire (R>0)
'******************************************************************************
Private Function ChangeLE4m(ByVal Entr�ePr�c�dente As Boolean, _
  ByVal Entr�eNulle As Boolean) As Boolean
  'Cas de l'entr�e nulle
  If Entr�eNulle Then
    chkEntr�eEvas�e.Value = False
    chkEntr�eEvas�e.Enabled = False
    chkTAD.Value = False
    chkTAD.Enabled = False
    txtLI = ""
    txtLI.BackColor = vbGrayText
    txtLI.Enabled = False
    'R�affecte les donn�es concern�es
    With BrancheActive
      .LI = 0#
      .TAD = False
      .Entr�eEvas�e = False
    End With
  Else
    'Si le rayon R est strictement positif on autorise le TAD
    chkTAD.Enabled = (gbProjetActif.R > 0)
    If Entr�ePr�c�dente Then
      'On autorise � nouveau l'entr�e �vas�e et le TAD si le rayon du giratoire n'est pas nul
      chkEntr�eEvas�e.Enabled = True
      'On r�affecte la largeur d'ilot si la sortie n'est pas nulle
      If Not BrancheActive.SortieNulle Then
        txtLI.Enabled = True
        txtLI.BackColor = vbWhite
        txtLI = DEFAUT_LI 'valeur par d�faut LI
      End If
    End If
  End If
  
End Function

'******************************************************************************
' ChangeLS
  'Si la largeur de sortie est nulle, il faut bloquer la saisie
  'de la largeur d'ilot et lui imposer une valeur nulle
'******************************************************************************
Public Sub ChangeLS(ByVal SortiePr�c�dente, ByVal SortieNulle As Boolean)
  If SortieNulle Then
    txtLI = ""
    txtLI.BackColor = vbGrayText
    txtLI.Enabled = False
    BrancheActive.LI = 0
  ElseIf SortiePr�c�dente Then
    'On r�active la valeur de LI
    txtLI.Enabled = True
    txtLI.BackColor = vbWhite
    txtLI = DEFAUT_LI 'valeur par d�faut de LI
  End If
End Sub

Private Function RetourneEntier(Bool�en As Boolean) As Integer
  If Bool�en Then
    RetourneEntier = 1
  Else
    RetourneEntier = 0
  End If
End Function

Private Sub txtNumBranche_GotFocus()
  txtNumBranche.SelLength = 1
End Sub

Private Sub txtNumBranche_KeyPress(KeyAscii As Integer)
  If KeyAscii < 49 Or KeyAscii > 48 + NbBranches Then Beep: KeyAscii = 0
End Sub
