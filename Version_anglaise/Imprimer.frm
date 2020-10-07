VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmImprimer 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Printing"
   ClientHeight    =   7965
   ClientLeft      =   2145
   ClientTop       =   2700
   ClientWidth     =   8250
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   7965
   ScaleWidth      =   8250
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox Picture1 
      Align           =   4  'Align Right
      BorderStyle     =   0  'None
      Height          =   6870
      Left            =   6195
      ScaleHeight     =   6870
      ScaleWidth      =   2055
      TabIndex        =   26
      Top             =   0
      Width           =   2055
      Begin VB.CommandButton cmdCancel 
         Cancel          =   -1  'True
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   372
         Left            =   240
         TabIndex        =   13
         Top             =   2400
         Width           =   1332
      End
      Begin VB.CommandButton cmdChoixImpr 
         Caption         =   "Printer ..."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   372
         Left            =   240
         TabIndex        =   14
         Top             =   3240
         Width           =   1332
      End
      Begin VB.CommandButton cmdOK 
         Caption         =   "OK"
         Default         =   -1  'True
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   372
         Left            =   240
         TabIndex        =   12
         Top             =   1440
         Width           =   1332
      End
      Begin VB.CommandButton cmdHelp 
         Caption         =   "Help"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   372
         Left            =   240
         TabIndex        =   15
         Top             =   4080
         Width           =   1332
      End
   End
   Begin VB.Frame fraTitres 
      Caption         =   "Titles"
      Height          =   1815
      Left            =   240
      TabIndex        =   24
      Top             =   4800
      Width           =   5775
      Begin VB.CheckBox chkFichierProjet 
         Caption         =   "&Name of project file"
         Enabled         =   0   'False
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   1320
         Width           =   1815
      End
      Begin VB.TextBox txtLibelTitre 
         Height          =   285
         Left            =   240
         TabIndex        =   7
         Top             =   720
         Width           =   5415
      End
      Begin VB.CheckBox chkTitre 
         Caption         =   "&Title of edition"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   360
         Value           =   1  'Checked
         Width           =   1455
      End
      Begin VB.Label lblFichierProjet 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         Enabled         =   0   'False
         Height          =   255
         Left            =   2400
         TabIndex        =   25
         Top             =   1320
         Width           =   105
      End
   End
   Begin MSComDlg.CommonDialog dlgFichier 
      Left            =   5640
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.PictureBox picFichier 
      Align           =   2  'Align Bottom
      BorderStyle     =   0  'None
      Height          =   1095
      Left            =   0
      ScaleHeight     =   1095
      ScaleWidth      =   8250
      TabIndex        =   22
      Top             =   6870
      Width           =   8250
      Begin VB.CheckBox chkFichier 
         Caption         =   "&Exit on file"
         Height          =   255
         Left            =   480
         TabIndex        =   9
         Top             =   120
         Width           =   1815
      End
      Begin VB.TextBox txtFichier 
         Enabled         =   0   'False
         Height          =   285
         Left            =   1320
         TabIndex        =   10
         Top             =   600
         Width           =   3015
      End
      Begin VB.CommandButton cmdParcourir 
         Caption         =   "&Browse..."
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   4560
         TabIndex        =   11
         Top             =   480
         Width           =   1215
      End
      Begin VB.Label lblFichier 
         AutoSize        =   -1  'True
         Caption         =   "File name"
         Enabled         =   0   'False
         Height          =   195
         Left            =   120
         TabIndex        =   23
         Top             =   600
         Width           =   1020
      End
   End
   Begin VB.Frame fraNatImpr 
      Caption         =   " Results"
      Height          =   1335
      Index           =   1
      Left            =   240
      TabIndex        =   21
      Top             =   3120
      Width           =   5775
      Begin VB.CheckBox chkNatimpr 
         Caption         =   "Summary by arm"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   5
         Top             =   840
         Width           =   2655
      End
      Begin VB.CheckBox chkNatimpr 
         Caption         =   "P�riode de trafic"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   1575
      End
      Begin VB.ComboBox cboP�riode 
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         Height          =   315
         Index           =   1
         Left            =   1800
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   360
         Width           =   3735
      End
   End
   Begin VB.ComboBox cboEpaisseur 
      Height          =   315
      ItemData        =   "Imprimer.frx":0000
      Left            =   3720
      List            =   "Imprimer.frx":0007
      Style           =   2  'Dropdown List
      TabIndex        =   16
      Top             =   840
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Frame fraNatImpr 
      Caption         =   " Data"
      Height          =   1335
      Index           =   0
      Left            =   240
      TabIndex        =   17
      Top             =   1440
      Width           =   5775
      Begin VB.CheckBox chkNatimpr 
         Caption         =   "Traffic Period"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   1
         Top             =   840
         Width           =   1575
      End
      Begin VB.CheckBox chkNatimpr 
         Caption         =   "Geometry"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   0
         Top             =   360
         Width           =   1575
      End
      Begin VB.ComboBox cboP�riode 
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         Height          =   315
         Index           =   0
         Left            =   1800
         Style           =   2  'Dropdown List
         TabIndex        =   2
         Top             =   840
         Width           =   3735
      End
   End
   Begin VB.Label lblEpaisseur 
      Caption         =   "Epaisseur de &ligne"
      Height          =   255
      Left            =   2400
      TabIndex        =   20
      Top             =   840
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Shape shpOrientation 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   495
      Index           =   2
      Left            =   1080
      Top             =   720
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblNomImpr 
      Caption         =   "Imprimante en cours"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   120
      TabIndex        =   19
      Top             =   120
      Width           =   5175
   End
   Begin VB.Shape shpOrientation 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   735
      Index           =   1
      Left            =   1200
      Top             =   600
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label lblOrientation 
      Caption         =   "Orientation"
      Height          =   285
      Left            =   120
      TabIndex        =   18
      Top             =   840
      Width           =   975
   End
End
Attribute VB_Name = "frmImprimer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************************************
'*
'*          Projet GIRABASE - CERTU - CETE de l'Ouest
'*
'*          Module de feuille : IMPRIMER.FRM - frmImprimer
'*
'*          Impressions des
'*            Donn�es:  G�om�trie - Matrices de trafic
'*            R�sultats : Ensemble - R�capitulatif
'*
'******************************************************************************

Option Explicit

Private basGauche As New PT, hautDroit As New PT
Private LargeurCadre As Single, HauteurCadre As Single
Public XCentre As Single, YCentre As Single, Echelle As Single
Private hLigne As Single
Private ObjetDessin As Object
Private LigneDeTexte As String
Private numFich As Integer
Private R�sultats As Form
Private txtFichierAValider As Boolean
Private XDebutCadre As Single
Private LargeurColonneNom As Integer

Private D�marrage As Boolean

Private NbBranches As Integer

'******************************************************************************
' Activation de la sortie sur fichier
'******************************************************************************
Private Sub chkFichier_Click()
  If chkFichier = vbChecked Then
    txtFichier.Enabled = True
    cmdParcourir.Enabled = True
    lblFichier.Enabled = True
    cmdChoixImpr.Enabled = False
    lblNomImpr.Enabled = False
  Else
    txtFichier.Enabled = False
    cmdParcourir.Enabled = False
    lblFichier.Enabled = False
    cmdChoixImpr.Enabled = True
    lblNomImpr.Enabled = True
  End If
End Sub

'******************************************************************************
' Activation de l'Ecriture du fichier projet
'******************************************************************************
Private Sub chkFichierProjet_Click()
  lblFichierProjet.Enabled = (chkFichierProjet = vbChecked)
End Sub

Private Sub chkNatimpr_Click(Index As Integer)
  cmdOK.Enabled = chkNatimpr(0) = vbChecked Or chkNatimpr(1) = vbChecked Or chkNatimpr(2) = vbChecked Or chkNatimpr(3) = vbChecked
  cboP�riode(0).Enabled = (chkNatimpr(1) = vbChecked)
  cboP�riode(1).Enabled = (chkNatimpr(2) = vbChecked)
 
End Sub

'******************************************************************************
' Abandon
'******************************************************************************
Private Sub cmdCancel_Click()
    
  Unload Me
    
End Sub

'******************************************************************************
' Choix de l'imprimante
'******************************************************************************
Private Sub cmdChoixImpr_Click()

  Dim Cancel As Integer
  
  ShowPrinter Me, Cancel
  
  If Not Cancel Then
    lblNomImpr = IDl_ImprimanteEnCours & " " & TronqueChaine(Printer.DeviceName, 35)
    shpOrientation(2).Visible = (Printer.Orientation = vbPRORLandscape)
    shpOrientation(1).Visible = Not shpOrientation(2).Visible
    Printer.ScaleMode = vbCentimeters ' cm
'    Printer.ScaleMode = vbMillimeters ' mm
   EchelAjustee
  End If

''  If ConfigImprimante Then
''    lblNomImpr = IDl_ImprimanteEnCours & " " & Printer.DeviceName
''    If Printer.Orientation = vbPRORLandscape Then
''      shpOrientation(2).Visible = True
''      shpOrientation(1).Visible = False
''    Else
''      shpOrientation(1).Visible = True
''      shpOrientation(2).Visible = False
''    End If
''    Printer.ScaleMode = vbCentimeters ' cm
'''    Printer.ScaleMode = vbMillimeters ' mm
''    EchelAjustee
'' End If
 
End Sub

'******************************************************************************
' D�clenchement de l'impression
'******************************************************************************
Public Sub cmdOK_Click()
Dim Abandon As Boolean
Dim I As Integer

  
  If chkFichier = vbChecked Then
    If txtFichier = "" Then
      MsgBox IDm_SaisirFichier
      txtFichier.SetFocus
      Exit Sub
    Else
      If txtFichierAValider Then txtFichier_Validate Abandon
      If Abandon Then Exit Sub
      Set ObjetDessin = Nothing
      numFich = FreeFile
      Open txtFichier For Output As #numFich
    End If
  End If
  
  Hide
  
    On Error GoTo GestErr
    
' Suppression AV : 22/12/2000 - Inutilis�
'    gbEpaisseurLigne = cboEpaisseur
'    SaveSetting Appname:=App.Title, Section:="Options", Key:="EpaisseurLigne", Setting:=CStr(gbEpaisseurLigne)
'    Printer.DrawWidth = cboEpaisseur
    
    hLigne = Printer.TextHeight("")
    Tabulation 3
    If ObjetDessin Is Printer Then
'      LargeurCadre = Printer.ScaleWidth - 0.06       ' 6/10�mm pour pallier un possible effet de bord pour les limites utiles de l'imprimante
      LargeurCadre = Printer.ScaleWidth - 1.06       ' 1cm de marge gauche + 6/10�mm pour pallier un possible effet de bord pour les limites utiles de l'imprimante
      HauteurCadre = Printer.ScaleHeight - 2.03      ' 2cm pour l'entete + 3/10�mm  """""""""""""""""""""""
      XDebutCadre = Printer.CurrentX
      Printer.CurrentX = 0
      Printer.FillStyle = vbFSTransparent
      D�marrage = True
    End If

' G�om�trie
    If chkNatimpr(0) Then
      Dim DebutConception As Single
      Dim MessageErreur As String
      
      ' D�finition des 2 lignes d'en-t�te
      ImprimeEntete
      ' Impression de la description des donn�es
      ImprimeDescription DebutConception
      
      If gbProjetActif.Donn�es.ValiderFeuilleDonn�es(MessageErreur) Then
        Set R�sultats = gbProjetActif.R�sultats
        If R�sultats Is Nothing Then
          Set R�sultats = New frmR�sultats
          R�sultats.Impressions = True
          Load R�sultats
          R�sultats.AfficheConception
        End If
        With R�sultats
          ImprimeRemarques .txtRqConceptions, .tabR�sultat.TabCaption(2)
          If .txtRqConceptions = "" Then Ecrire IDl_Neant
          If .Impressions Then Unload R�sultats
        End With
      Else
        ImprimeRemarques MessageErreur, IDm_GiratoireNonConforme
      End If
    
      If ObjetDessin Is Printer Then ImprimeCadre LargeurCadre, Printer.CurrentY, 0, 0
    End If
    
    ' P�riodes de trafic
    If chkNatimpr(1) Then
      If cboP�riode(0).ListIndex = gbProjetActif.nbP�riodes Then
        For I = 1 To gbProjetActif.nbP�riodes
          ImprimeEntete
          ImprimeMatrice I
        Next
      Else
        ImprimeEntete
        ImprimeMatrice cboP�riode(0).ListIndex + 1
      End If
    End If
      
    If chkNatimpr(2) Then
      ' Recalcul �ventuel
      If Not gbProjetActif.CalculFait Then gbProjetActif.CalculCapacit�
      If cboP�riode(1).ListIndex = gbProjetActif.nbP�riodes Then
        For I = 1 To gbProjetActif.nbP�riodes
          ImprimeR�sultats I
        Next
      Else
        ImprimeR�sultats cboP�riode(1).ListIndex + 1
      End If
    End If
    
    
    If chkNatimpr(3) Then
      ' Recalcul �ventuel
      If Not gbProjetActif.CalculFait Then gbProjetActif.CalculCapacit�
      ImprimeEntete
      ImprimeR�capitulatif
    End If
      
    
    If ObjetDessin Is Printer Then
     
'    If Not frmAnnulImpr.Annul Then Printer.EndDoc
fin:
'  Printer.KillDoc
     Printer.EndDoc
    Else
      Close #numFich
    End If
  
  Unload Me

Exit Sub


GestErr:
  If Err = 102 Then     ' Annulation de l'impression demand�e
    If gbFichierJournal Then Write #gbFichLog, "Impression abandonn�e"
    If ObjetDessin Is Printer Then Printer.KillDoc
    Resume Next
  ElseIf Err = 482 Then
  ' Erreur imprimante d�tect�e par VB
    MsgBox Err.Description, vbOKOnly + vbExclamation
    Unload Me
  Else
    ' Autre erreur
    MsgBox IDm_ErrImprim & " (" & Format(Err.Number, "000") & ")" & vbCrLf & Err.Description
    If ObjetDessin Is Printer Then
      Printer.KillDoc
    Else
      Close #numFich
      Kill txtFichier
    End If
    Show vbModal
    Exit Sub
  End If

End Sub

'******************************************************************************
' Navigateur pour sortie sur fichier
'******************************************************************************
Private Sub cmdParcourir_Click()
Dim I As Integer

  With dlgFichier
    .flags = cdlOFNOverwritePrompt Or cdlOFNHideReadOnly Or cdlOFNNoChangeDir Or cdlOFNPathMustExist
    If .InitDir = "" Then
      If gbProjetActif.Donn�es.dlgFichier.FileName <> "" Then
        .InitDir = extraiRep(gbProjetActif.Donn�es.dlgFichier.FileName)
      Else
        .InitDir = App.Path
      End If
    End If
    
    On Error GoTo GestErr
     .ShowSave
     
    If .FileName <> "" Then
      txtFichier = .FileName
      txtFichierAValider = False
    End If
  End With
  
  Exit Sub
  
GestErr:
  If Err = cdlCancel Then Exit Sub Else ErreurFatale
End Sub

Private Sub Form_Activate()
  If chkNatimpr(2).TabIndex = 0 Then chkNatimpr(2).TabIndex = 4
End Sub

'******************************************************************************
' Chargement de la feuille
'******************************************************************************
Private Sub Form_Load()

Dim I As Integer

On Error GoTo GestErr

If gbFichierJournal Then Write #gbFichLog, "Ouverture Impression"

  'Icon = MDIGirabase.Icon
  
  NbBranches = gbProjetActif.NbBranches
  Set ObjetDessin = Printer

  'Affichage centr� de la fen�tre
  ScaleMode = vbTwips
  Left = (Screen.Width - Width) / 2
  Top = (Screen.Height - Height) / 2
    
    ' orientation en cours
  On Error GoTo GestErrOrientation
''  Printer.Orientation = MDIGirabase.dlgImprimer.Orientation
  
  shpOrientation(Printer.Orientation).Visible = True
  
  With gbProjetActif
    For I = 1 To .nbP�riodes
      cboP�riode(0).AddItem .colTrafics.Item(I).nom
      cboP�riode(1).AddItem .colTrafics.Item(I).nom
    Next
    If .nbP�riodes > 1 Then
      cboP�riode(0).AddItem IDl_ToutesP�riodes
      cboP�riode(1).AddItem IDl_ToutesP�riodes
    End If
    txtLibelTitre = .nom
  End With
  Set R�sultats = gbProjetActif.R�sultats
  
  If MDIGirabase.ActiveForm Is gbProjetActif.Donn�es Then
    ' Appel depuis la feuille Donn�es
    If gbProjetActif.nbP�riodes = 0 Or Not gbProjetActif.Donn�es.ValiderFeuilleDonn�es Then
      chkNatimpr(1).Enabled = False
      cboP�riode(0).Enabled = False
    Else
      cboP�riode(0).ListIndex = gbProjetActif.Donn�es.cboP�riode.ListIndex
    End If
    
    If R�sultats Is Nothing Then
      Dim controle As Control
      fraNatImpr(1).Enabled = False
      For Each controle In Controls
        If controle.Container Is fraNatImpr(1) Then controle.Enabled = False
      Next
    Else
      cboP�riode(1).ListIndex = 0
    End If
'    HelpContextID = IDhlp_ImprimerDonn�es
  Else
    ' Appel depuis la feuille R�sultats
    cboP�riode(0).ListIndex = 0
    cboP�riode(1).ListIndex = R�sultats.cboP�riode.ListIndex
    chkNatimpr(2).TabIndex = 0
'    HelpContextID = IDhlp_ImprimerR�sultats
  End If
  
  HelpContextID = IDhlp_Imprimer
  'fraNatImpr(0).HelpContextID = IDhlp_ImprimerDonn�es
  'fraNatImpr(1).HelpContextID = IDhlp_ImprimerR�sultats
  
  lblNomImpr = IDl_ImprimanteEnCours & " " & Printer.DeviceName
' Suppression AV : 22/12/2000 - Inutilis�
'  cboEpaisseur = gbEpaisseurLigne

' Si fichier sortie :  extension .txt par d�faut
  dlgFichier.Filter = IDl_FichierTexte & " (*.txt)|*.txt"
  dlgFichier.DefaultExt = ".txt"
  
' Ajout du nom du fichier projet dans le titre (optionnel)
  lblFichierProjet = nomCourt(gbProjetActif.Donn�es.dlgFichier.FileName)
  If lblFichierProjet <> "" Then
    chkFichierProjet.Enabled = True
  Else
    lblFichierProjet.Visible = False
  End If
  
'If VersionDemo Then
'  chkTitre.Enabled = False
'  txtLibelTitre.Enabled = False
'  txtLibelTitre = "Version de d�monstration - non utilisable pour un projet"
'Else
'  txtLibelTitre = ""
'End If
  
    EchelAjustee
    
    Exit Sub
    
GestErrOrientation:
  Resume Next
  
GestErr:
  
  ErreurFatale
  
End Sub

Private Sub cmdHelp_Click()
  
  SendKeys "{F1}", True
  
End Sub

'******************************************************************************
' Chargement de la feuille
'******************************************************************************
Private Sub Form_Unload(Cancel As Integer)
  
'  Unload frmAnnulImpr
  
'  Printer.ScaleMode = vbTwips   ' Retour auw Twips
    
End Sub


'******************************************************************************
' Imprimer l'ent�te : caract�re gras - Fonte 12
'******************************************************************************
'Private Sub ImprimeEntete(Optional ByVal numPage As Integer = 1, Optional ByVal BasDePage As Boolean)
Private Sub ImprimeEntete(Optional ByVal BasDePage As Boolean)
' D�termination des 2 lignes d'en-t�te
Dim Titre1 As String, Titre2 As String
  
  Titre1 = App.Title & " " & IDl_Version & " " & App.Major
'  Titre1 = App.Title & " " & IDl_Version & " B�ta Test"
  Titre1 = Titre1 & Space(3) & "CERTU - CETE de l'Ouest - SETRA"
  If chkTitre = vbChecked Then
    Titre2 = txtLibelTitre
  End If
  If chkFichierProjet = vbChecked Then
    If Titre2 <> "" Then Titre2 = Titre2 & " - "
    Titre2 = Titre2 & IDl_Giratoire & " : " & lblFichierProjet
  End If

     'ECRITURE  de l'en-t�te    (unit�s en cm)
  If ObjetDessin Is Printer Then
    Printer.FontBold = True
    Printer.FontSize = 10
    If D�marrage Then
      D�marrage = False
    Else
      Dim h As Single
      If BasDePage Then h = HauteurCadre Else h = Printer.CurrentY
      If BasDePage Then ImprimeCadre LargeurCadre, h, 0, 0
      
      Dim LibelPage As String
      If Printer.Page = 1 Then
      ' 1er saut de page : on �crit "Page 1" avant le saut de page
        LibelPage = IDl_Page & " 1 "
        Printer.CurrentX = LargeurCadre - Printer.TextWidth(LibelPage)
        Printer.CurrentY = -0.7
        Printer.Print LibelPage
      End If
      ' Saut de page
      Printer.NewPage
      LibelPage = IDl_Page & " " & CStr(Printer.Page) & " "
      Printer.CurrentX = LargeurCadre - Printer.TextWidth(LibelPage)
      Printer.CurrentY = -0.7
      Printer.Print LibelPage
    End If
    
    ' Ecriture de l'en-t�te proprement dite
    Printer.CurrentX = 0
    Printer.CurrentY = -1.2
    Printer.FontSize = 12
    Printer.Print Titre1
    Printer.CurrentX = 0
    Printer.CurrentY = -0.7
    Printer.FontSize = 10
    Printer.Print Date;
    If Titre2 <> "" Then Printer.Print " - " & Titre2;
    Printer.FontBold = False
    Printer.FontSize = 8
    
'frmAnnulImpr.Show

' Dessin du cadre
'    LargeurCadre = Printer.ScaleWidth - 0.03       ' 3/10�mm pour pallier un possible effet de bord pour les limites utiles de l'imprimante
'    HauteurCadre = Printer.ScaleHeight - 2.03      ' 2cm pour l'entete + 3/10�mm  """""""""""""""""""""""
    Printer.CurrentX = 0
    Printer.CurrentY = 0
'    Printer.Line (LargeurCadre, HauteurCadre)-(0, 0), , B

  Else
  ' Sortie fichier
    If D�marrage Then
      D�marrage = False
    Else
      Print #numFich, vbCrLf
    End If
    Print #numFich, Titre1 & vbTab & Titre2 & vbCrLf
  End If
    
End Sub

'******************************************************************************
' Imprimer un sous-titre : caract�re gras - Fonte 10
'******************************************************************************
Private Sub ImprimeSousTitre(ByVal Texte As String)
Dim SauveSize As Integer
  If ObjetDessin Is Printer Then
    SauveSize = Printer.Font.Size
    SautPage 3
    Printer.FontBold = True
    Printer.FontSize = 10
    Tabulation 2, Texte
    Printer.FontBold = False
    Printer.Font.Size = SauveSize
  Else
    ' Sortie fichier
    Print #numFich, vbCrLf & Texte
  End If
End Sub

'********************************************************************************************
' Imprimer une ligne de s�paration horizontale depuis le bord gauche sur la largeur w fournie
'********************************************************************************************
Private Sub LigneSeparation(ByVal w As Single)
  If ObjetDessin Is Printer Then
    Printer.Line (0, Printer.CurrentY)-(w, Printer.CurrentY)
    ' Positiont juste au-dessous
    Printer.CurrentX = 0
    Printer.CurrentY = Printer.CurrentY + Printer.TextHeight("") / 5
  End If
End Sub

Private Function DecoupeTexte(ByVal Texte As String, ByVal num As Integer) As String
Dim pos As Integer

  pos = InStr(Texte, " ")
  If pos <> 0 Then
    If num = 0 Then
      DecoupeTexte = Left(Texte, pos - 1)
    Else
      While Mid(Texte, pos, 1) = " "
        pos = pos + 1
      Wend
      DecoupeTexte = DecoupeTexte(Mid(Texte, pos), num - 1)
    End If
  Else
    If num = 0 Then
      DecoupeTexte = Texte
    Else
      DecoupeTexte = " "
    End If
  End If
  
  If num = 0 Then
    While Right(DecoupeTexte, 1) = " "
      DecoupeTexte = Left(DecoupeTexte, Len(DecoupeTexte) - 1)
    Wend
  End If
  
End Function

'******************************************************************************
' Imprimer la description
'******************************************************************************
Private Sub ImprimeDescription(ByRef maxY As Single)
Dim Texte As String
Dim I As Integer
Dim LargeurDonn�es As Single
  
  With gbProjetActif.Donn�es
    If ObjetDessin Is Printer Then
      ' memoX,LargeurMaxDonn�e : ajout AV 01/12/2000 pour meilleur d�coupage de la localisation
      Dim memoX As Single
      Dim LargeurMaxDonn�e As Single
      Tabulation 42
      memoX = Printer.CurrentX
      Tabulation 86
      LargeurDonn�es = Printer.CurrentX
      LargeurMaxDonn�e = LargeurDonn�es - memoX
      LigneBlanche
    End If
  
   ' Site
    Tabulation 2, .lblNomGiratoire, MemeLigne:=True: Tabulation 42, gbProjetActif.nom
    Tabulation 2, .lblLocalisation, MemeLigne:=True
    Texte = gbProjetActif.Localisation
    Do
      Tabulation 42, D�coupeTexteLocalisation(Texte, LargeurMaxDonn�e)
    Loop While Texte <> ""
    Tabulation 2, .fraEnvironnement & " :", MemeLigne:=True: Tabulation 42, .optMilieu(gbProjetActif.Milieu).Caption
    Tabulation 2, .lblVariante, MemeLigne:=True: Tabulation 42, gbProjetActif.NomVariante
    Tabulation 2, IDl_Date & " : ", MemeLigne:=True: Tabulation 42, gbProjetActif.DateModif
    LigneBlanche
    
    ' Anneau
    ImprimeSousTitre .fraAnneau
    Tabulation 2, .lblR, MemeLigne:=True: Tabulation 42, Format(gbProjetActif.R, "#0.00") & IDl_METRE
    Tabulation 2, .lblBf, MemeLigne:=True
    If gbProjetActif.Bf > 0 Then
      Tabulation 42, Format(gbProjetActif.Bf, "#0.00" & IDl_METRE)
    ElseIf Not ObjetDessin Is Printer Then
      Ecrire vbTab
    End If
    Tabulation 2, .lblLA, MemeLigne:=True: Tabulation 42, Format(gbProjetActif.LA, "#0.00") & IDl_METRE
    Tabulation 2, .lblRg, MemeLigne:=True: Tabulation 42, Format(.txtRg, "#0.00") & IDl_METRE
    
    
    If ObjetDessin Is Printer Then
      LigneBlanche
      Printer.Line -(LargeurDonn�es, Printer.CurrentY)
      LigneBlanche
    End If
    
    ' Branches
    Dim wBranche As BRANCHE
    Dim sauveX As Single
    Dim minY As Single
    ImprimeSousTitre IDl_Branches
    
    ' Titres des largeurs
    If ObjetDessin Is Printer Then
      CentrerEntreColonnes 54, 86, .lblLargeurs & IDl_EnMetre
      minY = Printer.CurrentY ' minY d�finit le bord sup�rieur du tableau (excluant le pav� 'largeurs' situ� juste au-dessus)
      LigneSeparation LargeurDonn�es
      CentrerEntreColonnes 54, 70, .lblEntr�e, MemeLigne:=True
      CentrerEntreColonnes 70, 78, .lblLI, MemeLigne:=True
      CentrerEntreColonnes 78, 86, .lblLS
      
      CentrerEntreColonnes 54, 62, .lblLE4m, MemeLigne:=True
      CentrerEntreColonnes 62, 70, .lblLE15m
      
      ' Autres titres
      Printer.CurrentY = minY + hLigne / 5
      For I = 0 To 2
        CentrerEntreColonnes 2, 25, DecoupeTexte(.lblNomBranche, I), MemeLigne:=True
        CentrerEntreColonnes 25, 35, DecoupeTexte(.lblAngleBranche, I), MemeLigne:=True
        CentrerEntreColonnes 35, 44, DecoupeTexte(.lblRampe, I), MemeLigne:=True
        CentrerEntreColonnes 44, 54, DecoupeTexte(.lblTAD, I)
      Next
      Printer.CurrentY = minY + 3.2 * hLigne  ' Ajout AV 01/12/2000 : pour la version anglaise (libell� de TAD n'a qe 2 lignes)
    Else
      For I = 1 To 3: Tabulation 10: Next
      Tabulation 60, .lblLargeurs & IDl_EnMetre
      Ecrire .lblNomBranche, MemeLigne:=True
      Tabulation 10, .lblAngleBranche, MemeLigne:=True
      Tabulation 10, .lblRampe, MemeLigne:=True
      Tabulation 10, .lblTAD, MemeLigne:=True
      Tabulation 10, .lblEntr�e & " " & .lblLE4m, MemeLigne:=True
      Tabulation 10, .lblEntr�e & " " & .lblLE15m, MemeLigne:=True
      Tabulation 10, .lblLI, MemeLigne:=True
      Tabulation 10, .lblLS
    End If
  End With
  
    ' Donn�es des branches
  With gbProjetActif
    Dim Tabul As Integer
    For I = 1 To .NbBranches
      LigneSeparation LargeurDonn�es
      Set wBranche = .colBranches.Item(I)
      With wBranche
        TabulationLongue 2, .nom, 25, MemeLigne:=True
        Tabulation 28, FormaterAngle(.Angle), MemeLigne:=True  ' 27
        If .Rampe Then Tabulation 38, IDl_OUI, MemeLigne:=True Else Tabulation 38, "", MemeLigne:=True
        If .TAD Then Tabulation 47, IDl_OUI, MemeLigne:=True Else Tabulation 47, "", MemeLigne:=True
        If .LE4m < 10 Then Tabul = 56 Else Tabul = 55
        Tabulation Tabul, Format(.LE4m, "#0.00"), MemeLigne:=True
        If .Entr�eEvas�e Then
          If .LE15m < 10 Then Tabul = 64 Else Tabul = 63         ' 59
          Tabulation Tabul, Format(.LE15m, "#0.00"), MemeLigne:=True
        ElseIf Not ObjetDessin Is Printer Then
          Tabulation Tabul
        End If
        If .LI < 10 Then Tabul = 72 Else Tabul = 71
        Tabulation Tabul, Format(.LI, "#0.00"), MemeLigne:=True
        If .LS < 10 Then Tabul = 80 Else Tabul = 79
        Tabulation Tabul, Format(.LS, "#0.00")
      End With
    Next
  End With
  
  If ObjetDessin Is Printer Then
    maxY = Printer.CurrentY ' maxY d�finit le bord inf�rieur du tableau
    LigneSeparation LargeurCadre
    Printer.Line (LargeurDonn�es, maxY)-(LargeurDonn�es, 0) ' Ligne de s�paration verticale centrale (Site + Branches)
    
      ' Traits de s�paration verticaux (sauf celui s�parant LE4m et LE15m)
    Printer.CurrentX = 0
    Printer.CurrentY = maxY
    Tabulation 25    ' Angle
    Printer.Line -(Printer.CurrentX, minY)
    
    Tabulation 35    ' Rampe
    Printer.Line -(Printer.CurrentX, maxY)
    
    Tabulation 44    ' TAD
    Printer.Line -(Printer.CurrentX, minY)
    
    Tabulation 54    ' LE4m
    sauveX = Printer.CurrentX ' Pour pav� Largeurs et trait de s�paration horizontal des Entr�es
    Printer.Line -(Printer.CurrentX, maxY)
    
    Tabulation 70    ' LI
    Printer.Line -(Printer.CurrentX, minY)
    
    Tabulation 78    ' LS
    Printer.Line -(Printer.CurrentX, maxY)
                
                ' Pav� Largeurs
    Printer.Line (sauveX, minY)-Step(0, -hLigne * 1.2)
    Printer.Line -(LargeurDonn�es, Printer.CurrentY)
                ' Pav� Entr�e
    Printer.CurrentX = 0
    Printer.CurrentY = minY + hLigne * 1.2
    Tabulation 70    ' idem LI
    Printer.Line -(sauveX, Printer.CurrentY)
    
    Tabulation 62    ' LE15m
    Printer.Line -(Printer.CurrentX, maxY)
    
    DessinerGiratoire LargeurDonn�es, maxY
    Printer.CurrentY = maxY
  End If
  
End Sub

'******************************************************************************
'******************************************************************************
Private Sub TabulationLongue(ByVal lg As Integer, ByVal Texte As String, ByVal TabNext As Integer, Optional ByVal MemeLigne As Boolean)
Dim s As String
Dim pos As Integer

  If ObjetDessin Is Printer Then
    Texte = Trim(Texte)
    While Printer.TextWidth(Texte) > Printer.TextWidth(String(TabNext / 2, "f") & String(TabNext / 2, "s"))
      pos = InStrRev(Texte, " ")
      s = Mid(Texte, pos) & s
      Texte = Left(Texte, pos - 1)
    Wend
    s = LTrim(s)
    If s = "" Then
      Tabulation lg, Texte, MemeLigne
    Else
      Tabulation lg, Texte
      Tabulation lg, s, MemeLigne
    End If
  Else
    Tabulation lg, Texte, MemeLigne
  End If
End Sub

'******************************************************************************
' D�coupage du texte 'Localisation' en plusieurs lignes selon la largeur
' disponible (LgTexteMax) dans la zone d'impression
' Texte : R�cup�re la partie restante du texte qui n'a pas �t� imprim�e
'******************************************************************************
Private Function D�coupeTexteLocalisation(ByRef Texte As String, ByVal LgTexteMax As Single) As String
Dim s As String
Dim pos As Integer

pos = InStr(Texte, vbCrLf)
If pos <> 0 Then
  s = Left(Texte, pos - 1)
  Texte = Mid(Texte, pos + 2)
Else
  s = Texte
  Texte = vbCrLf
End If

'LgTexteMax : ajout AV 01/12/2000 +pr�cis que 30 fois "E"
If LgTexteMax = 0 Then LgTexteMax = Printer.TextWidth(String(30, "E"))

Do While Printer.TextWidth(s & " ") > LgTexteMax    'Printer.TextWidth(String(30, "E"))
  pos = InStrRev(s, " ")
  If pos = 0 Then Exit Do
  If Texte = vbCrLf Then
    Texte = Mid(s, pos + 1)
  Else
    Texte = Mid(s, pos + 1) & " " & Texte
  End If
  s = Left(s, pos - 1)
Loop
  
D�coupeTexteLocalisation = s
If Texte = vbCrLf Then Texte = ""

End Function

Private Function FormaterAngle(ByVal Angle As Integer) As String
  FormaterAngle = Format(Angle, "##0")
  If Angle < 10 Then
    FormaterAngle = String(4, " ") & CStr(Angle)
  ElseIf Angle < 100 Then
    FormaterAngle = String(2, " ") & CStr(Angle)
  End If
End Function

'******************************************************************************
' Imprimer le dessin du giratoire
'******************************************************************************
Private Sub DessinerGiratoire(ByVal LargeurDonn�es As Single, ByVal HauteurGiratoire As Single, Optional ByVal TranslationY As Single = 0)
Dim I As Integer
Dim Angle As Single
Dim LargeurCadreDessin As Single
Dim Texte As String

  Printer.FontSize = 6

  If TranslationY = 0 Then
    LargeurCadreDessin = LargeurCadre - LargeurDonn�es
    XCentre = (LargeurCadre + LargeurDonn�es) / 2
  Else
    LargeurCadreDessin = Min(LargeurCadre, 4 + Printer.TextWidth("E") * 17 + HauteurGiratoire)
    XCentre = LargeurCadreDessin / 2
  End If
  
  YCentre = HauteurGiratoire / 2 + TranslationY
  Printer.CurrentX = XCentre
  Printer.CurrentY = YCentre
  With gbProjetActif.Donn�es
    If .txtR = 0 And .txtBf = 0 Then Printer.Print IDm_DessinImpossible: Exit Sub
    Echelle = 1.1 * (2 * (gbRayonExt + maLongueurBranche)) / Min(HauteurGiratoire, LargeurCadreDessin) ' 15 : correspond � la constante maLongueurBranche de DessinerGiratoire
    ' Anneaux
    Printer.Circle (XCentre, YCentre), .txtRg / Echelle
    If .txtBf <> 0 Then Printer.Circle (XCentre, YCentre), (CSng(.txtR) + CSng(.txtBf)) / Echelle
    If .txtR <> 0 Then Printer.Circle (XCentre, YCentre), .txtR / Echelle
    ' Branches
    For I = 1 To NbBranches
      ' Dessins
      Printer.DrawWidth = 5
      DessinerControleLigne .linBranche(I)
      Printer.DrawWidth = 1
      DessinerControleLigne .linVoieEntr�e(I)
      DessinerControleLigne .linVoieSortie(I)
      DessinerControleLigne .linBordVoieEntr�e(I)
      DessinerControleLigne .linBordVoieSortie(I)
      If TranslationY = 0 Then
        DessinerControleLigne .linBordIlotEntr�e(I)
        DessinerControleLigne .linBordIlotSortie(I)
        DessinerControleLigne .linBordIlotGir(I)
      End If
        ' Ecritures
      Printer.CurrentX = (.linBranche(I).X2 - gbDemiLargeur) / gbFacteurZoom / Echelle + XCentre + 0.15
      Printer.CurrentY = (.linBranche(I).Y2 - gbDemiHauteur) / gbFacteurZoom / Echelle + YCentre - 0.15
      Angle = angConv(gbProjetActif.colBranches.Item(I).Angle, CVRADIAN)
      Texte = .lblLibell�Branche(I)
      If TranslationY <> 0 Then Texte = CStr(I) & " -" & Texte
      ' Emprunt� � DecalXY dans DessinGiratoire.bas
      Printer.CurrentX = Printer.CurrentX + (Cos(Angle) / 2 - 0.5) * Printer.TextWidth(Texte)
      Printer.CurrentY = Printer.CurrentY + Sin(-Angle) * Printer.TextHeight(Texte)
      Angle = angConv(gbProjetActif.colBranches.Item(I).Angle, CVRADIAN)
      If TranslationY = 0 Then
        Printer.CurrentX = Max(LargeurDonn�es, Printer.CurrentX)
        Printer.CurrentX = Min(Printer.CurrentX, LargeurCadre - Printer.TextWidth(Texte))
        Printer.CurrentY = Printer.CurrentY + Sin(-Angle) * Printer.TextHeight(Texte)
        If Abs(Angle) < 0.15 Or (Abs(Angle - PI) < 0.15) Then Printer.CurrentY = Printer.CurrentY - Printer.TextHeight("E")
        If Abs(Cos(Angle)) < 0.075 Then
          Printer.CurrentY = Printer.CurrentY + Sgn(Sin(Angle)) * Printer.TextHeight("") * 1.25
        End If
      End If
      Ecrire Texte
    Next
  End With

  Printer.FontSize = 8

End Sub

'******************************************************************************
' Dessiner un Controle 'Line' d'une feuille
'******************************************************************************
Private Sub DessinerControleLigne(ByVal controle As Line)
    Dim X1 As Single, Y1 As Single, X2 As Single, Y2 As Single
    
    If Not controle.Visible Then Exit Sub
    
    X1 = (controle.X1 - gbDemiLargeur) / gbFacteurZoom / Echelle + XCentre
    X2 = (controle.X2 - gbDemiLargeur) / gbFacteurZoom / Echelle + XCentre
    Y1 = (controle.Y1 - gbDemiHauteur) / gbFacteurZoom / Echelle + YCentre
    Y2 = (controle.Y2 - gbDemiHauteur) / gbFacteurZoom / Echelle + YCentre
    Printer.Line (X1, Y1)-(X2, Y2)

End Sub

'******************************************************************************
' Imprimer une Matrice de trafic
'******************************************************************************
Private Sub ImprimeMatrice(ByVal numP�riode As Integer, Optional ByVal R�sultats As Boolean = False)
Dim sauveX As Single
Dim Largeur As Single
Dim minY As Single
Dim maxY As Single
Dim I As Integer
Dim j As Integer
Dim k As Integer
Dim wTrafic As TRAFIC
Dim LargeurColonne As Integer
Dim DebColonne As Integer
Dim modeUVP As Boolean
Dim TropLarge As Boolean
Dim LargeurSousColonne As Single

  Set wTrafic = gbProjetActif.colTrafics.Item(numP�riode)
  
  With wTrafic
    modeUVP = .modeUVP Or R�sultats
    LigneBlanche
    ImprimeSousTitre Majus(IDl_P�riode, True) & " " & .nom
    
    ' Trafic Pi�tons
    '===============
    LargeurColonne = 7
    DebColonne = 3
    LigneBlanche
    LigneBlanche
    ImprimeSousTitre gbProjetActif.Donn�es.fraTrafic(PIETON)
        ' Num�ros de branches
        '---------------------
    LigneBlanche
      
    If ObjetDessin Is Printer Then
      If Not modeUVP And NbBranches > 6 And Printer.ScaleWidth < 25 Then Printer.Font.Size = 6
      minY = Printer.CurrentY
      Printer.CurrentY = Printer.CurrentY + hLigne / 2
    End If
    For I = 1 To NbBranches
      Tabulation DebColonne + LargeurColonne / 2 + (I - 1) * LargeurColonne, I, MemeLigne:=True
    Next
    If ObjetDessin Is Printer Then
      Tabulation DebColonne + (I - 1) * LargeurColonne
      Largeur = Printer.CurrentX
          ' Ligne s�paratrice horizontale
          '------------------------------
      LigneBlanche
      Printer.Line (XDebutCadre, Printer.CurrentY)-(Largeur, Printer.CurrentY)
    Else
      Ecrire
      Tabulation 4
    End If
    
    Printer.CurrentY = Printer.CurrentY + hLigne / 5
    
        ' Valeurs de trafic
        '------------------
    For I = 1 To NbBranches
      Tabulation DebColonne + 1 + (I - 1) * LargeurColonne, Formater(.getQP(I)), MemeLigne:=True
    Next
    
    If ObjetDessin Is Printer Then
        ' S�parateur de colonnes
        '-----------------------
      LigneBlanche
      maxY = Printer.CurrentY
      For I = 2 To NbBranches
        Tabulation DebColonne + (I - 1) * LargeurColonne
        Printer.Line (Printer.CurrentX, minY)-(Printer.CurrentX, maxY)
      Next
          ' Cadre du trafic
          '----------------
      LigneBlanche
'      Printer.Line (XDebutCadre, minY)-(Largeur, maxY), , B
      ImprimeCadre XDebutCadre, minY, Largeur, maxY
    Else
      Ecrire
    End If
    
    ' Trafic V�hicules
    '=================
    LigneBlanche
    LigneBlanche
    If modeUVP Then
      LargeurColonne = 8
      sauveX = Printer.CurrentX
      Tabulation LargeurColonne
      LargeurSousColonne = (Printer.CurrentX - sauveX) / 1.025
      Printer.CurrentX = sauveX
      If R�sultats Then
        ImprimeSousTitre gbProjetActif.Donn�es.fraTrafic(VEHICULE) & IDl_EnUVP
      Else
        ImprimeSousTitre gbProjetActif.Donn�es.fraTrafic(VEHICULE) & " " & IDl_ModeUVP
      End If
    Else
      LargeurColonne = 18
      sauveX = Printer.CurrentX
      Tabulation LargeurColonne
      LargeurSousColonne = (Printer.CurrentX - sauveX) / 3.075
      Printer.CurrentX = sauveX
      ImprimeSousTitre gbProjetActif.Donn�es.fraTrafic(VEHICULE) & " " & IDl_ModeVLPL2R
    End If
    
    ' DebColonne repr�sente la position de la premi�re colonne  qui suit le num�ro de branche entr�e (3+8)
    DebColonne = 11
    
        ' Num�ros de branches sortie : centr�s dans leur colonne
        '---------------------------
    LigneBlanche
    If ObjetDessin Is Printer Then
      minY = Printer.CurrentY
      Printer.CurrentY = Printer.CurrentY + hLigne / 2
      Tabulation DebColonne + NbBranches * LargeurColonne + 1
      If Printer.CurrentX + Printer.TextWidth("E") * 17 > LargeurCadre Then
        TropLarge = True
      Else
        Ecrire " " & IDl_Total, MemeLigne:=True
        Tabulation DebColonne + (NbBranches + 1) * LargeurColonne + 1
      End If
      Largeur = Printer.CurrentX
      If modeUVP Then LigneBlanche           ' Ajout AV 22/11/2000 : suite � modif Tabulation
    End If
    
    For I = 1 To NbBranches
      Tabulation DebColonne + LargeurColonne / 2 + (I - 1) * LargeurColonne, I, MemeLigne:=True
    Next
    
    If ObjetDessin Is Printer Then
      If Not modeUVP Then LigneBlanche        ' Ajout AV 22/11/2000 : suite � modif Tabulation
      If Not TropLarge Then Tabulation DebColonne + NbBranches * LargeurColonne + 1, IDl_Entrant, MemeLigne:=True
          ' Ligne s�paratrice horizontale
          '------------------------------
      LigneBlanche
      Printer.Line (XDebutCadre, Printer.CurrentY)-(Largeur, Printer.CurrentY)
    Else
      Tabulation 10, IDl_Total & " " & IDl_Entrant
    End If
    
    Dim Separateur As String * 1
    If ObjetDessin Is Printer Then Separateur = " " Else Separateur = ","
    If Not modeUVP Then
      ReDim QEntrant(1 To NbBranches, VL To DEUXR) As Integer
      ReDim QSortant(1 To NbBranches, VL To DEUXR) As Integer
      ReDim QTotal(VL To DEUXR) As Integer
      Dim Chaine As String
      Dim Valeur As Integer
      For k = VL To DEUXR
        For I = 1 To NbBranches
          QEntrant(I, k) = DONNEE_INEXISTANTE
          QSortant(I, k) = DONNEE_INEXISTANTE
        Next
        QTotal(k) = DONNEE_INEXISTANTE
      Next
    Else
      Dim QTotalUVP As Integer
    End If
    
    Printer.CurrentY = Printer.CurrentY + hLigne / 5
    
    For I = 1 To NbBranches
        ' Num�ros de branches entr�e
        '---------------------------

      Tabulation 6, I, MemeLigne:=True ' Centrer le num�ro de branche dans la colonne (3+3)
        
        ' Valeurs de trafic
        '------------------
      For j = 1 To NbBranches
        If modeUVP Then
          Tabulation DebColonne + 1 + (j - 1) * LargeurColonne
          Ecrire Formater(.getQ(I, j)), MemeLigne:=True
        Else
          Tabulation DebColonne + (j - 1) * LargeurColonne
          Chaine = ""
          For k = VL To DEUXR
            Valeur = .getQ(I, j, k)
            Sommer QEntrant(I, k), Valeur
            Sommer QSortant(j, k), Valeur
'            chaine = chaine & Formater(Valeur) & separateur
            Ecrire FormaterSp�cial(Valeur, LargeurSousColonne, k), MemeLigne:=True
          Next
'          chaine = Mid(chaine, 2, Len(chaine) - 1)
'          Ecrire chaine, MemeLigne:=True
        End If
      Next
        ' Total entrant
        '--------------
      If Not TropLarge Then
        If modeUVP Then
        Tabulation DebColonne + 1 + (j - 1) * LargeurColonne
          If .getQE(I) = 0 Then
            Chaine = ""
            For j = 1 To NbBranches
              If .getQ(I, j) = 0 Then
                Chaine = Formater(0)
                Exit For
              End If
            Next
            Ecrire Chaine
          Else
            Ecrire Formater(.getQE(I))
          End If
        Else
          Tabulation DebColonne + (j - 1) * LargeurColonne
          Chaine = ""
          For k = VL To DEUXR
'            chaine = chaine & Formater(QEntrant(i, k)) & separateur
            Ecrire FormaterSp�cial(QEntrant(I, k), LargeurSousColonne, k), MemeLigne:=k <> DEUXR
          Next
'          chaine = Mid(chaine, 2, Len(chaine) - 1)
'          Ecrire chaine
        End If
      Else
        LigneBlanche
      End If
    Next
    
    ' Ligne s�paratrice avant totaux
    '-------------------------------
    If ObjetDessin Is Printer Then
      Printer.Line (Largeur, Printer.CurrentY)-(XDebutCadre, Printer.CurrentY)
      Printer.CurrentY = Printer.CurrentY + hLigne / 2
    End If
    ' Total sortant
    '--------------
    If ObjetDessin Is Printer Then
      Dim TabulationTotal As Integer
      TabulationTotal = 24 / Printer.Font.Size

      Tabulation TabulationTotal, IDl_Total
      Tabulation TabulationTotal, IDl_Sortant, MemeLigne:=True
    Else
      Tabulation 3, IDl_Total & " " & IDl_Sortant, MemeLigne:=True
    End If
      
    For I = 1 To NbBranches
      If modeUVP Then
        Tabulation DebColonne + 1 + (I - 1) * LargeurColonne
        If .getQS(I) = 0 Then
          Chaine = ""
          For j = 1 To NbBranches
            If .getQ(j, I) = 0 Then
              Chaine = Formater(0)
              Exit For
            End If
          Next
          Ecrire Chaine, MemeLigne:=True
        Else
          Sommer QTotalUVP, .getQS(I)
          Ecrire Formater(.getQS(I)), MemeLigne:=True
        End If
      Else
        Tabulation DebColonne + (I - 1) * LargeurColonne
        Chaine = ""
        For k = VL To DEUXR
          Valeur = QSortant(I, k)
          Sommer QTotal(k), Valeur
'          chaine = chaine & Formater(Valeur) & separateur
          Ecrire FormaterSp�cial(Valeur, LargeurSousColonne, k), MemeLigne:=True
        Next
'        chaine = Mid(chaine, 2, Len(chaine) - 2)
'        Ecrire chaine, MemeLigne:=True
      End If
    Next
    
    If Not TropLarge Then
      If modeUVP Then
        Tabulation DebColonne + 1 + (I - 1) * LargeurColonne
        Ecrire Formater(QTotalUVP)
      Else
        Tabulation DebColonne + (I - 1) * LargeurColonne
        Chaine = ""
        For k = VL To DEUXR
          Valeur = QTotal(k)
'          chaine = chaine & Formater(valeur) & separateur
'          If k = DEUXR And ObjetDessin Is Nothing Then chaine = Mid(chaine, 2, Len(chaine) - 2)
          Ecrire FormaterSp�cial(Valeur, LargeurSousColonne, k), MemeLigne:=(k <> DEUXR)
        Next
'        Ecrire chaine
      End If
    Else
      Ecrire
    End If
    
        ' S�parateur de colonnes
        '-----------------------
    If ObjetDessin Is Printer Then
      maxY = Printer.CurrentY
      For j = 1 To NbBranches + 1
        Tabulation DebColonne + (j - 1) * LargeurColonne
        Printer.Line (Printer.CurrentX, minY)-(Printer.CurrentX, maxY)
      Next
      
          ' Cadre du trafic
          '----------------
'      Printer.Line (XDebutCadre, minY)-(Largeur, Printer.CurrentY), , B
      ImprimeCadre XDebutCadre, minY, Largeur, Printer.CurrentY
    End If
    
      'Tableau sp�cifique pour Totaux entrant et Total (peut arriver si : 8 branches - non UVP - et A4 portrait)
      '===============================================
    If TropLarge Then
      LigneBlanche
      LigneBlanche
      minY = Printer.CurrentY
      Printer.CurrentY = Printer.CurrentY + hLigne / 2
      Tabulation DebColonne + 1, IDl_Total & " " & IDl_Entrant, MemeLigne:=True
      Tabulation DebColonne + LargeurColonne
      Largeur = Printer.CurrentX
          ' Ligne s�paratrice horizontale
          '------------------------------
      LigneBlanche
      Printer.Line (XDebutCadre, Printer.CurrentY)-(Largeur, Printer.CurrentY)
      LigneBlanche
      For I = 1 To NbBranches
        Tabulation 6, I, MemeLigne:=True
        Chaine = ""
        For k = VL To DEUXR
          Chaine = Chaine & Formater(QEntrant(I, k)) & Separateur
          If k = DEUXR And ObjetDessin Is Nothing Then Chaine = Left(Chaine, Len(Chaine) - 1)
        Next
        Tabulation DebColonne + 1, Chaine
      Next
        ' Ligne s�paratrice avant total
        '-------------------------------
      Printer.Line (Largeur, Printer.CurrentY)-(XDebutCadre, Printer.CurrentY)
      Printer.CurrentY = Printer.CurrentY + hLigne / 2
      ' Ligne total
      '---------------------
      Tabulation 3, IDl_Total, MemeLigne:=True
      Chaine = ""
      For k = VL To DEUXR
        Chaine = Chaine & Formater(QTotal(k)) & Separateur
        If k = DEUXR And ObjetDessin Is Nothing Then Chaine = Left(Chaine, Len(Chaine) - 1)
      Next
      Tabulation DebColonne + 1, Chaine
          
      ' S�parateur de colonnes
      '---------------------
      Tabulation DebColonne
      Printer.Line (Printer.CurrentX, minY)-(Printer.CurrentX, Printer.CurrentY)
          ' Cadre du trafic total
          '---------------------
'      Printer.Line (XDebutCadre, minY)-(Largeur, Printer.CurrentY), , B
      ImprimeCadre XDebutCadre, minY, Largeur, Printer.CurrentY
    End If
    If modeUVP And NbBranches > 6 Then Printer.FontSize = 8
    
        ' Diagramme de flux
    If Not R�sultats And ObjetDessin Is Printer Then
'      DessinerGiratoire 0, 8, Printer.CurrentY + 2
      DessinerGiratoire 0, Min(8, HauteurCadre - Printer.CurrentY - 2), Printer.CurrentY + 2
      .CalculDiagramFlux Printer
      ImprimeCadre LargeurCadre, Min(YCentre + (gbRayonExt + maLongueurBranche) / Echelle + 2, HauteurCadre), 0, 0
    End If
  
  End With ' wTrafic
  
End Sub

'******************************************************************************
' Sommer un trafic
'******************************************************************************
Private Sub Sommer(ByRef Q As Integer, ByVal Valeur As Integer)
  If Valeur = DONNEE_INEXISTANTE Then
    If Q = DONNEE_INEXISTANTE Then Exit Sub
    Valeur = 0
  ElseIf Q = DONNEE_INEXISTANTE Then 'Premi�re alimentation
    Q = 0
  End If
  Q = Q + Valeur
End Sub

'******************************************************************************
' Formater une chaine pour cadrage � droite
'******************************************************************************
Private Function Formater(ByVal Valeur) As String
Dim nbBlancs As String

  If VarType(Valeur) = vbString Then
  ' tableaux de r�sultats
    Formater = Valeur
    nbBlancs = 7 - Len(Valeur)
    Formater = String(2 * nbBlancs, " ") & Valeur
    If IsNumeric(Valeur) And Val(Valeur) < 0 Then Formater = " " & Formater
  
  Else
  ' Trafics
    Dim I As Integer
    Dim lg As Integer
    
    lg = 4
    If Valeur = DONNEE_INEXISTANTE Then Formater = String(2 * lg, "   "): Exit Function
    Formater = CStr(Valeur)
    For I = lg - 1 To 1 Step -1
      If Valeur < 10 ^ I Then Formater = String(2, " ") & Formater
    Next
  End If
End Function

'******************************************************************************
' Formater un nombre pour qu'il soit cadr� � droite sur la position en cours
' augment�e d'une largeur fixe
'******************************************************************************
Private Function FormaterSp�cial(ByVal Valeur, ByVal LargeurColonne As Single, ByVal NumV�hicul As Integer) As String
Dim I As Integer
Dim lg As Integer
Dim S�parateur As String
Dim Chaine As String

  If VarType(Valeur) = vbString Then
    Chaine = Valeur
  Else
    Chaine = CStr(Valeur)
  End If
  
  If NumV�hicul = DEUXR Then
    Printer.CurrentX = Printer.CurrentX - Printer.TextWidth(" ")
  Else
    S�parateur = " " 'Chr(124)
  End If
  
  If Valeur = DONNEE_INEXISTANTE Then
    Printer.CurrentX = Printer.CurrentX + LargeurColonne
    FormaterSp�cial = S�parateur
  Else
    Printer.CurrentX = Printer.CurrentX + LargeurColonne - Printer.TextWidth(Chaine)
    FormaterSp�cial = Chaine & S�parateur
  End If
End Function

'******************************************************************************
' Calcule la largeur de la 1�re colonne du tableau de r�sultats, par rapport
' � la taille r�elle des noms de p�riodes ou de branches
' On pr�voit une tabulation de 5 pour la premi�re �criture
'******************************************************************************
Private Sub CalculLargeurColonneR�sultat(Optional ByVal R�capitulatif As Boolean)
Dim LargeurNom As Single
Dim I As Integer
Dim j As Integer

  If ObjetDessin Is Printer Then
    LargeurNom = Printer.TextWidth(IDl_P�riodesTrafic)
    If R�capitulatif Then
      With R�sultats.cboP�riode
        For j = 0 To .ListCount - 1
          LargeurNom = Max(LargeurNom, Printer.TextWidth(.List(j)))
        Next
      End With
    Else
      With gbProjetActif.colBranches
        For j = 1 To .count
          LargeurNom = Max(LargeurNom, Printer.TextWidth(.Item(j).nom))
        Next
      End With
    End If
    
    Printer.CurrentX = 0
    While Printer.CurrentX < LargeurNom
      I = I + 1
      Printer.Print Tab(I);
    Wend
    Printer.CurrentX = 0
    LargeurColonneNom = I + 5
    
  Else
    LargeurColonneNom = 27
  End If

End Sub

'******************************************************************************
' Imprimer les r�sultats d'une p�riode de trafic
'******************************************************************************
Private Sub ImprimeR�sultats(ByVal numP�riode As Integer)
Dim I As Integer
Dim TraficActif As TRAFIC
Dim sauvNumP�riode As Integer

  sauvNumP�riode = R�sultats.cboP�riode.ListIndex
  
  CalculLargeurColonneR�sultat
  ImprimeEntete
  ImprimeMatrice numP�riode, True
  R�sultats.cboP�riode.ListIndex = numP�riode - 1
  Set TraficActif = gbProjetActif.colTrafics.Item(numP�riode)
  ImprimeRemarques R�sultats.txtRqTrafics, R�sultats.tabR�sultat.TabCaption(1)
  If R�sultats.txtRqTrafics = "" Then Ecrire IDl_Neant
  LigneBlanche
  ImprimeTabR�sultats
  For I = 1 To NbBranches
    If TraficActif.EstSatur�eBranche(I) Then
      R�sultats.cboP�riode.ListIndex = gbProjetActif.colTrafics.RechIndex(TraficActif.nom & IDl_Abr�vSaturBranche & CStr(I)) - 1
      LigneBlanche
      If ObjetDessin Is Printer Then Printer.Line (0, Printer.CurrentY)-(LargeurCadre, Printer.CurrentY)
      ImprimeSousTitre IDm_SaturBranche & " " & CStr(I)
      LigneBlanche
      ImprimeTabR�sultats
    End If
  Next
    
  R�sultats.cboP�riode.ListIndex = sauvNumP�riode
  
End Sub

'**********************************************************************************************
' Imprimer le r�capitulatif des r�sultats de chaque branche pour toutes les p�riodes de trafic
'**********************************************************************************************
Private Sub ImprimeR�capitulatif()
Dim I As Integer
Dim j As Integer
Dim sauveY As Single
Dim maxX As Single
Dim minY As Single

Dim sauvNumP�riode As Integer

  sauvNumP�riode = R�sultats.cboP�riode.ListIndex
  CalculLargeurColonneR�sultat R�capitulatif:=True
  
  For I = 1 To NbBranches
    LigneBlanche
    SautPage gbProjetActif.nbP�riodes + 5
    ImprimeSousTitre IDl_Branche & gbProjetActif.colBranches.Item(I).nom
    
    If gbProjetActif.colBranches.Item(I).Entr�eNulle Then
      Tabulation 3, IDm_BrancheSortie
    Else
      If ObjetDessin Is Printer Then
        minY = Printer.CurrentY
        LigneBlanche
        Tabulation 4
        Ecrire IDl_P�riodesTrafic
        Printer.CurrentX = 0
        Printer.CurrentY = minY
      End If
      ImprimeTitreR�sultats maxX, sauveY, True
      For j = 1 To R�sultats.cboP�riode.ListCount
        R�sultats.cboP�riode.ListIndex = j - 1
        ImprimeLigneR�sultats I, True
      Next
      If ObjetDessin Is Printer Then ImprimeCadreR�sultats maxX, minY, sauveY
    End If
    
    LigneBlanche
  Next
  
  If ObjetDessin Is Printer Then ImprimeCadre LargeurCadre, Printer.CurrentY, 0, 0
  
  R�sultats.cboP�riode.ListIndex = sauvNumP�riode
  
End Sub

'**********************************************************************************************
' Imprimer le tableau de r�sultats d'une p�riode + Conseils par branche (Onglet Fonctionnement)
'**********************************************************************************************
Private Sub ImprimeTabR�sultats()
Dim I As Integer
Dim minY As Single
Dim maxX As Single
Dim sauveY As Single

  SautPage NbBranches + 5
  ImprimeSousTitre IDl_R�sultats
  
  ' Tableau de r�sultats
  minY = Printer.CurrentY
  ' Titres du tableau
  ImprimeTitreR�sultats maxX, sauveY
  ' Lignes du tableau
  For I = 1 To NbBranches
    ImprimeLigneR�sultats I
  Next
  ' Cadre du tableau
  If ObjetDessin Is Printer Then ImprimeCadreR�sultats maxX, minY, sauveY
    
  ' Remarques
  ImprimeRemarques R�sultats.txtRqFonctionnement, IDl_Conseils
  If ObjetDessin Is Printer Then ImprimeCadre 0, 0, LargeurCadre, Printer.CurrentY: Printer.CurrentX = 0
    
End Sub

'******************************************************************************
' Imprimer le cadre et les libell�s du titre du tableau de r�sultats
'******************************************************************************
Private Sub ImprimeTitreR�sultat(ByRef maxX As Single, ByRef sauveY As Single, Optional ByVal R�capitulatif As Boolean)
  
  With R�sultats
    If ObjetDessin Is Printer Then
      Printer.CurrentY = Printer.CurrentY + hLigne / 2
      'Titres des colonnes
      Tabulation LargeurColonneNom + 1, .lblRC(0), MemeLigne:=True
      Tabulation LargeurColonneNom + 26, .lblLK(0), MemeLigne:=True
      Tabulation LargeurColonneNom + 53, .lblTA(0), MemeLigne:=True
      Printer.Print Spc(3);
      maxX = Printer.CurrentX
      Printer.Print     ' Ajout AV 22/11/2000 : suite � modif Tabulation
      Tabulation LargeurColonneNom + 2, .lblRC(1), MemeLigne:=True
      Tabulation LargeurColonneNom + 16, .lblRC(2), MemeLigne:=True
      Tabulation LargeurColonneNom + 27, .lblLK(1), MemeLigne:=True
      Tabulation LargeurColonneNom + 39, .lblLK(2), MemeLigne:=True
      Tabulation LargeurColonneNom + 53, .lblTA(1), MemeLigne:=True
      Tabulation LargeurColonneNom + 66, .lblTA(2)
    
      sauveY = Printer.CurrentY
    ' S�paration horizontale
      Printer.Line (XDebutCadre, Printer.CurrentY)-(maxX, Printer.CurrentY)
      Printer.CurrentY = Printer.CurrentY + hLigne / 5
    Else
      Tabulation 28, .lblRC(0), MemeLigne:=True: Tabulation 43: Tabulation 53, .lblLK(0), MemeLigne:=True
      Tabulation 66: Tabulation 80, .lblTA(0)
      If R�capitulatif Then Ecrire IDl_P�riodesTrafic, MemeLigne:=True
      Tabulation 29, .lblRC(1), MemeLigne:=True: Tabulation 43, .lblRC(2), MemeLigne:=True: Tabulation 54, .lblLK(1), MemeLigne:=True: Tabulation 66, .lblLK(2), MemeLigne:=True: Tabulation 80, .lblTA(1), MemeLigne:=True: Tabulation 93, .lblTA(2)
    End If
  End With
End Sub

'******************************************************************************
' Imprimer le cadre et les libell�s du titre du tableau de r�sultats
'******************************************************************************
Private Sub ImprimeTitreR�sultats(ByRef maxX As Single, ByRef sauveY As Single, Optional ByVal R�capitulatif As Boolean)
  
  With R�sultats
    If ObjetDessin Is Printer Then
      Dim memoX As Single
      Dim LargeurColonne As Single
      Printer.CurrentY = Printer.CurrentY + hLigne / 2
      'Titres des colonnes
      memoX = Printer.CurrentX
      Tabulation 24
      LargeurColonne = Printer.CurrentX - memoX
      Printer.CurrentX = memoX

      Centrer .lblRC(0), LargeurColonne, LargeurColonneNom
      Centrer .lblLK(0), LargeurColonne, LargeurColonneNom + 24
      Centrer .lblTA(0), LargeurColonne, LargeurColonneNom + 48
      Tabulation LargeurColonneNom + 72
      maxX = Printer.CurrentX
      Printer.Print     ' Ajout AV 22/11/2000 : suite � modif Tabulation
      
      Centrer .lblRC(1), LargeurColonne / 2, LargeurColonneNom
      Centrer .lblRC(2), LargeurColonne / 2, LargeurColonneNom + 12
      Centrer .lblLK(1), LargeurColonne / 2, LargeurColonneNom + 24
      Centrer .lblLK(2), LargeurColonne / 2, LargeurColonneNom + 36
      Centrer .lblTA(1), LargeurColonne / 2, LargeurColonneNom + 48
      Centrer .lblTA(2), LargeurColonne / 2, LargeurColonneNom + 60
      Printer.Print
    
      sauveY = Printer.CurrentY
    ' S�paration horizontale
      Printer.Line (XDebutCadre, Printer.CurrentY)-(maxX, Printer.CurrentY)
      Printer.CurrentY = Printer.CurrentY + hLigne / 5
    Else
      Tabulation 28, .lblRC(0), MemeLigne:=True: Tabulation 43: Tabulation 53, .lblLK(0), MemeLigne:=True
      Tabulation 66: Tabulation 80, .lblTA(0)
      If R�capitulatif Then Ecrire IDl_P�riodesTrafic, MemeLigne:=True
      Tabulation 29, .lblRC(1), MemeLigne:=True: Tabulation 43, .lblRC(2), MemeLigne:=True: Tabulation 54, .lblLK(1), MemeLigne:=True: Tabulation 66, .lblLK(2), MemeLigne:=True: Tabulation 80, .lblTA(1), MemeLigne:=True: Tabulation 93, .lblTA(2)
    End If
  End With
End Sub

Private Sub Centrer(ByVal Chaine As String, ByVal Largeur As Single, ByVal TabulD�part As Integer)
Dim D�part As Single

D�part = (Largeur - Printer.TextWidth(Chaine)) / 2
Tabulation TabulD�part
Printer.CurrentX = Printer.CurrentX + D�part
Ecrire Chaine, MemeLigne:=True

End Sub

Private Sub CentrerEntreColonnes(ByVal TabulationD�part As Integer, ByVal TabulationArriv�e As Integer, ByVal Chaine As String, Optional ByVal MemeLigne As Boolean)
Dim memoX As Single
Dim Espacement As Single

  Tabulation TabulationD�part
  memoX = Printer.CurrentX
  Tabulation TabulationArriv�e
  Espacement = Printer.CurrentX - memoX
  'Printer.CurrentX = memoX + (Espacement - Printer.TextWidth(Chaine)) / 2
  Printer.CurrentX = (memoX + Printer.CurrentX - Printer.TextWidth(Chaine)) / 2
'  Centrer .lblLS, Espacement, TabulationD�part
  Ecrire Chaine, MemeLigne:=MemeLigne
End Sub

'******************************************************************************
' Imprimer une ligne du tableau de r�sultats
'******************************************************************************
Private Sub ImprimeLigneR�sultats(ByVal I As Integer, Optional ByVal R�capitulatif As Boolean)
  LigneBlanche  ' Ajout AV 22/11/2000 : suite � modif Tabulation
  With R�sultats.vgdRecap
    .Row = I
    If R�capitulatif Then
      Tabulation 5, R�sultats.cboP�riode, MemeLigne:=True
    Else
      .Col = 1
      Tabulation 5, .Value, MemeLigne:=True
    End If
    .Col = 2
    Tabulation LargeurColonneNom + 1, Formater(.Value), MemeLigne:=True
    .Col = 3
    Tabulation LargeurColonneNom + 13, Formater(.Value), MemeLigne:=True
    .Col = 4
    Tabulation LargeurColonneNom + 25, Formater(.Value), MemeLigne:=True
    .Col = 5
    Tabulation LargeurColonneNom + 37, Formater(.Value), MemeLigne:=True
    .Col = 6
    Tabulation LargeurColonneNom + 49, Formater(.Value), MemeLigne:=True
    .Col = 7
    Tabulation LargeurColonneNom + 61, Formater(.Value), MemeLigne:=True
  End With
  
  If ObjetDessin Is Nothing Then Ecrire

End Sub

'******************************************************************************
' Imprimer le cadre du tableau de r�sultats
'******************************************************************************
Private Sub ImprimeCadreR�sultats(ByVal maxX As Single, ByVal minY As Single, ByVal sauveY As Single)
    ' S�parateur de colonnes
    LigneBlanche
    Printer.CurrentX = 0
    Tabulation LargeurColonneNom
    Printer.Line (Printer.CurrentX, minY)-(Printer.CurrentX, Printer.CurrentY)
    Tabulation LargeurColonneNom + 12
    Printer.Line (Printer.CurrentX, sauveY)-(Printer.CurrentX, Printer.CurrentY)
    Tabulation LargeurColonneNom + 24
    Printer.Line (Printer.CurrentX, minY)-(Printer.CurrentX, Printer.CurrentY)
    Tabulation LargeurColonneNom + 36
    Printer.Line (Printer.CurrentX, sauveY)-(Printer.CurrentX, Printer.CurrentY)
    Tabulation LargeurColonneNom + 48
    Printer.Line (Printer.CurrentX, minY)-(Printer.CurrentX, Printer.CurrentY)
    Tabulation LargeurColonneNom + 60
    Printer.Line (Printer.CurrentX, sauveY)-(Printer.CurrentX, Printer.CurrentY)
    ' Cadre des r�sultats
'    Printer.Line (maxX, minY)-(XDebutCadre, Printer.CurrentY), , B
    ImprimeCadre maxX, minY, XDebutCadre, Printer.CurrentY

End Sub

Private Sub chkTitre_Click()

    txtLibelTitre.Enabled = (chkTitre = vbChecked)

End Sub

Public Sub EchelAjustee()
    
    
    With Printer
      .ScaleMode = vbCentimeters ' cm
          ' param�tres d'origine et d'�chelle du dessin
          ' on conserve 2 cm pour les titres
          ' on prend une marge gauche de 1cm
      .ScaleTop = -2
'      .ScaleLeft = -0.03
      .ScaleLeft = -1
          ' remet ScaleTop � 0
    End With
    
End Sub

Private Sub CalculePlace(ByVal Texte As String)
Dim s As String
Dim pos%
Dim nbLignes As Integer

  s = Texte
  nbLignes = 3
  pos = InStr(s, vbCrLf)
  While pos <> 0
    nbLignes = nbLignes + 1
    s = Mid(s, pos + 2)
    pos = InStr(s, vbCrLf)
  Wend
  SautPage nbLignes
  
End Sub

Private Function SautPage(ByVal nbLignes As Integer) As Boolean
  If ObjetDessin Is Nothing Then Exit Function
  
  If Printer.CurrentY + Printer.TextHeight("") * (nbLignes + 0.5) > HauteurCadre Then
    ImprimeEntete True
    SautPage = True
  End If
  
End Function

'**************************************************************************************
' Imprimer un texte de remarques en tenant compte de la place disponible sur la feuille
'**************************************************************************************
Private Sub ImprimeRemarques(ByVal Remarques As String, ByVal SousTitre As String, Optional ByVal FeuilleEnti�re As Boolean)

Dim pos%
Dim s As String

' Suppression des derniers sauts de ligne, qui pourraient g�n�rer des 'continuations' de paragraphe inutiles sur la page suivante
  While Right(Remarques, 2) = vbCrLf
    Remarques = Left(Remarques, Len(Remarques) - 2)
  Wend
  
' FeuilleEnti�re : Saut de page imm�diat si tout ne tient pas sur la feuille
  If FeuilleEnti�re Then CalculePlace Remarques
  
  LigneBlanche
  ImprimeSousTitre SousTitre
  LigneBlanche
  
  s = Remarques
  Do
    ' Teste s'il reste au moins une ligne de libre
    If SautPage(1) Then
      ImprimeSousTitre SousTitre & IDl_Suite
      LigneBlanche
    End If
    pos = InStr(s, vbCrLf)
    If pos <> 0 Then
      If pos = 1 Then ' Simple Saut de ligne
        Ecrire ""
      Else
        Tabulation 2, Left(s, pos - 1)
      End If
      s = Mid(s, pos + 2)
    Else
      Tabulation 2, s
    End If
  Loop While pos <> 0 And s <> ""
  
End Sub

'**************************************************************************************
' Tabuler sur l'imprimante ou Ecrire une tabulation dans un fichier
' lg : Position de la tabulation (si imprimante)
' texte : texte �ventuel � �crire au droit de la tabulation
' memeligne : indique qu'il ne faut pas faire un Retour-Chariot tout-de-suite
' odif AV 01/12/2000 : Texte devient variant pour disitinguer Manquant de ""
'**************************************************************************************
Private Sub Tabulation(ByVal lg As Integer, Optional ByVal Texte As Variant, Optional ByVal MemeLigne As Boolean)

  If ObjetDessin Is Printer Then
    Dim memoY As Single
    memoY = Printer.CurrentY
    Printer.Print Tab(lg);
    Printer.CurrentY = memoY    ' Ajout AV 22/11/2000 : pour r�gler d�finitivement les sauts de ligne intempestifs dans les tableaux de matrice
  Else
    If lg > 7 Then LigneDeTexte = LigneDeTexte & vbTab
  End If
  
  'If Texte <> "" Then Ecrire Texte, MemeLigne
  If Not IsMissing(Texte) Then Ecrire Texte, MemeLigne
End Sub

'**************************************************************************************
' Ecrire un texte sur l'imprimante ou dans un fichier
' texte : texte � �crire
' memeligne : indique qu'il ne faut pas faire un Retour-Chariot tout-de-suite
'**************************************************************************************
Private Sub Ecrire(Optional ByVal Texte As String, Optional ByVal MemeLigne As Boolean)
  If ObjetDessin Is Printer Then
    If MemeLigne Then
      Printer.Print Texte;
    Else
      Printer.Print Texte
    End If
    
  Else
  ' Si fichier : on concatene dans LigneDeTexte jusqu'� ce que memeligne soit faux
    LigneDeTexte = LigneDeTexte & Texte
    If Not MemeLigne Then
      Print #numFich, LigneDeTexte
      LigneDeTexte = ""
    End If
  End If
End Sub

Private Sub LigneBlanche()
  If ObjetDessin Is Printer Then
    Printer.Print
  End If
End Sub

Private Sub txtFichier_Change()
  txtFichierAValider = True
End Sub

Private Sub txtFichier_Validate(Cancel As Boolean)
  If txtFichier = "" Then Exit Sub
  
  If Extension(txtFichier) = "" Then txtFichier = txtFichier + dlgFichier.DefaultExt
  
  If ExistFich(txtFichier) Then
    If MsgBox(txtFichier & " " & IDm_ExistFichier, vbExclamation + vbYesNo + vbDefaultButton2) = vbNo Then
      txtFichier.SetFocus
      txtFichier.SelStart = 0
      txtFichier.SelLength = Len(txtFichier)
      Cancel = True
    Else
      txtFichierAValider = False
    End If
  End If
End Sub

'**************************************************************************************
' Transforme un texte (�ventuellement seulement son initiale) en majuscules
'**************************************************************************************
Private Function Majus(ByVal Texte As String, Optional ByVal Initiale As Boolean) As String
  If Initiale Then
    Majus = UCase(Left(Texte, 1)) & Mid(Texte, 2)
  Else
    Majus = UCase(Texte)
  End If
End Function

Private Sub ImprimeCadre(ByVal X1 As Single, Y1 As Single, X2 As Single, Y2 As Single)
    Printer.FillStyle = vbFSTransparent
    Printer.Line (X2, Y2)-(X1, Y2)
    Printer.Line -(X1, Y1)
    Printer.Line -(X2, Y1)
    Printer.Line -(X2, Y2)
End Sub
