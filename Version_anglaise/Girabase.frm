VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.MDIForm MDIGirabase 
   BackColor       =   &H8000000C&
   Caption         =   "Girabase"
   ClientHeight    =   8310
   ClientLeft      =   165
   ClientTop       =   -555
   ClientWidth     =   11400
   Icon            =   "Girabase.frx":0000
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin MSComctlLib.ImageList ilsFile 
      Left            =   240
      Top             =   2040
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   4
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Girabase.frx":030A
            Key             =   "imgNew"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Girabase.frx":041C
            Key             =   "imgOpen"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Girabase.frx":052E
            Key             =   "imgSave"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Girabase.frx":0640
            Key             =   "imgPrint"
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar tbrFile 
      Align           =   1  'Align Top
      Height          =   420
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11400
      _ExtentX        =   20108
      _ExtentY        =   741
      ButtonWidth     =   609
      ButtonHeight    =   582
      AllowCustomize  =   0   'False
      Appearance      =   1
      ImageList       =   "ilsFile"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   4
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "btnNew"
            Object.ToolTipText     =   "New"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "btnOpen"
            Object.ToolTipText     =   "Open"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "btnSave"
            Object.ToolTipText     =   "Save"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "btnPrint"
            Object.ToolTipText     =   "Imprimer"
            ImageIndex      =   4
         EndProperty
      EndProperty
   End
   Begin MSComDlg.CommonDialog dlgImprimer 
      Left            =   240
      Top             =   1320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin MSComDlg.CommonDialog dlgFichier 
      Left            =   240
      Top             =   600
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
      DefaultExt      =   "Gbs"
      Filter          =   "Giratoire(*.gbs)-*.gbs"
   End
   Begin VB.Menu mnuBarre 
      Caption         =   "&File"
      Index           =   0
      Begin VB.Menu mnuFichier 
         Caption         =   "&New roundabout"
         Index           =   0
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuFichier 
         Caption         =   "&Open a roundabout"
         Index           =   1
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuFichier 
         Caption         =   "&Close"
         Index           =   2
      End
      Begin VB.Menu mnuFichier 
         Caption         =   "&Save"
         Index           =   3
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuFichier 
         Caption         =   "Save &as..."
         Index           =   4
      End
      Begin VB.Menu mnuFichier 
         Caption         =   "-"
         Index           =   5
      End
      Begin VB.Menu mnuFichier 
         Caption         =   "Import &traffics..."
         Index           =   6
      End
      Begin VB.Menu mnuFichier 
         Caption         =   "-"
         Index           =   7
      End
      Begin VB.Menu mnuFichier 
         Caption         =   "Printer set&up ..."
         Index           =   8
      End
      Begin VB.Menu mnuFichier 
         Caption         =   "&Print ..."
         Index           =   9
         Shortcut        =   ^P
      End
      Begin VB.Menu mnuFichier 
         Caption         =   "-"
         Index           =   10
      End
      Begin VB.Menu mnuSelect 
         Caption         =   ""
         Index           =   0
         Visible         =   0   'False
      End
      Begin VB.Menu mnuSelect 
         Caption         =   ""
         Index           =   1
         Visible         =   0   'False
      End
      Begin VB.Menu mnuSelect 
         Caption         =   ""
         Index           =   2
         Visible         =   0   'False
      End
      Begin VB.Menu mnuSelect 
         Caption         =   ""
         Index           =   3
         Visible         =   0   'False
      End
      Begin VB.Menu mnuSelect 
         Caption         =   "-"
         Index           =   4
         Visible         =   0   'False
      End
      Begin VB.Menu mnuQuit 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu mnuBarre 
      Caption         =   "&Site"
      Index           =   1
      Begin VB.Menu mnuSite 
         Caption         =   "&Describe"
         Index           =   0
      End
      Begin VB.Menu mnuSite 
         Caption         =   "&Size"
         Index           =   1
      End
      Begin VB.Menu mnuSite 
         Caption         =   "&Edit an arm"
         Index           =   2
         Begin VB.Menu mnuBranche 
            Caption         =   "&1"
            Index           =   0
         End
         Begin VB.Menu mnuBranche 
            Caption         =   "&2"
            Index           =   1
            Visible         =   0   'False
         End
         Begin VB.Menu mnuBranche 
            Caption         =   "&3"
            Index           =   2
            Visible         =   0   'False
         End
         Begin VB.Menu mnuBranche 
            Caption         =   "&4"
            Index           =   3
            Visible         =   0   'False
         End
         Begin VB.Menu mnuBranche 
            Caption         =   "&5"
            Index           =   4
            Visible         =   0   'False
         End
         Begin VB.Menu mnuBranche 
            Caption         =   "&6"
            Index           =   5
            Visible         =   0   'False
         End
         Begin VB.Menu mnuBranche 
            Caption         =   "&7"
            Index           =   6
            Visible         =   0   'False
         End
         Begin VB.Menu mnuBranche 
            Caption         =   "&8"
            Index           =   7
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnuSite 
         Caption         =   "&Redraw"
         Index           =   3
         Shortcut        =   ^R
      End
      Begin VB.Menu mnuSite 
         Caption         =   "-"
         Index           =   4
      End
      Begin VB.Menu mnuSite 
         Caption         =   "Angles"
         Index           =   5
      End
   End
   Begin VB.Menu mnuBarre 
      Caption         =   "&Traffic"
      Index           =   2
      Begin VB.Menu mnuTrafic 
         Caption         =   "&New period"
         Index           =   0
      End
      Begin VB.Menu mnuTrafic 
         Caption         =   "&Delete"
         Index           =   1
      End
      Begin VB.Menu mnuTrafic 
         Caption         =   "&Rename"
         Index           =   2
      End
      Begin VB.Menu mnuTrafic 
         Caption         =   "&Edit"
         Index           =   3
      End
      Begin VB.Menu mnuTrafic 
         Caption         =   "-"
         Index           =   4
      End
      Begin VB.Menu mnuTrafic 
         Caption         =   "&Invert traffic"
         Index           =   5
      End
      Begin VB.Menu mnuTrafic 
         Caption         =   "&Multiply traffic"
         Index           =   6
      End
      Begin VB.Menu mnuTrafic 
         Caption         =   "-"
         Index           =   7
      End
      Begin VB.Menu mnuTrafic 
         Caption         =   "&Flow diagrams"
         Index           =   8
         Shortcut        =   ^D
      End
   End
   Begin VB.Menu mnuBarre 
      Caption         =   "&Capacity"
      Index           =   3
      Begin VB.Menu mnuResult 
         Caption         =   "&Calculate"
         Index           =   0
         Shortcut        =   {F5}
      End
   End
   Begin VB.Menu mnuBarre 
      Caption         =   "Window"
      Index           =   4
      WindowList      =   -1  'True
      Begin VB.Menu mnuFenetre 
         Caption         =   "&Cascade"
         Index           =   0
      End
      Begin VB.Menu mnuFenetre 
         Caption         =   "Tile &horizontally"
         Index           =   1
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFenetre 
         Caption         =   "Tile &vertically"
         Index           =   2
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuBarre 
      Caption         =   "&?"
      Index           =   5
      Begin VB.Menu mnuAide 
         Caption         =   "&Help"
         Index           =   0
      End
      Begin VB.Menu mnuAide 
         Caption         =   "Help &on"
         Index           =   1
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnuAide 
         Caption         =   "&Find"
         Index           =   2
      End
      Begin VB.Menu mnuAide 
         Caption         =   "-"
         Index           =   3
      End
      Begin VB.Menu mnuAide 
         Caption         =   "&About "
         Index           =   4
      End
      Begin VB.Menu mnuHelpBar2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuLicence 
         Caption         =   "&License"
      End
   End
End
Attribute VB_Name = "MDIGirabase"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************************************
'*
'*          Projet GIRABASE - CERTU - CETE de l'Ouest
'*
'*          Module de feuille MDI : GIRABASE.FRM - MDIGirabase
'*
'*          Feuille MDI de GIRABASE
'*
'*          Menu de l'application
'*
'******************************************************************************
Option Explicit

'*** CONSTANTES DE CHAINE Susceptibles d'�tre traduites ********************
Const IDm_FichierManquant = "File untraceable"
Const IDm_FichierEffac� = "It must have been erased or changed to another folder"
'Const IDm_MRUFichierDisparu = "Fichier introuvable" & vbCrLf & vbCrLf & "Il doit avoir �t� effac� ou chang� de dossier"
'***************************************************************************
Public Cascade As Boolean

'*************************************************************************************
' Chargement de la feuille principale MDI
'*************************************************************************************
Private Sub MDIForm_Load()
  
On Error GoTo TraitementErreur

  With Screen
    Me.Move 0, 0, .Width, .Height - 100
  End With
  ' Inactivation de la plupart des options du menu
  GriserMenus False

  Caption = App.Title
  'mnuAide(3).Caption = mnuAide(3).Caption & App.Title & "..."
  App.HelpFile = App.Path + "\" + HELPNAME
  
  dlgFichier.Filter = IDl_Giratoire & " (*.gbs)|*.gbs"
  dlgFichier.DefaultExt = ".gbs"
  dlgFichier.HelpFile = App.HelpFile

  mnuFichier(0).HelpContextID = IDhlp_Nouveau
  mnuFichier(1).HelpContextID = IDhlp_Ouvrir
  mnuFichier(6).HelpContextID = IDhlp_ImportMatrice
  mnuFichier(8).HelpContextID = IDhlp_ConfigImprimante
  mnuFichier(9).HelpContextID = IDhlp_Imprimer
  mnuSite(0).HelpContextID = IDhlp_OngletSite
  mnuSite(1).HelpContextID = IDhlp_OngletDimensionnement
  mnuSite(2).HelpContextID = IDhlp_CarBranche
  mnuSite(3).HelpContextID = IDhlp_Graphique
  mnuTrafic(0).HelpContextID = IDhlp_NewP�riode
  mnuTrafic(1).HelpContextID = IDhlp_DelP�riode
  mnuTrafic(2).HelpContextID = IDhlp_RenameP�riode
  mnuTrafic(3).HelpContextID = IDhlp_OngletTrafic
  mnuTrafic(5).HelpContextID = IDhlp_InversP�riode
  mnuTrafic(6).HelpContextID = IDhlp_MultP�riode
  mnuTrafic(8).HelpContextID = IDhlp_DiagramFlux
  mnuResult(0).HelpContextID = IDhlp_R�sultats

  dlgImprimer.Orientation = Printer.Orientation

  'Mise � jour de l'ihm du � QLM
  Call InitQlm
  
  Exit Sub

TraitementErreur:
  ErreurFatale

End Sub

'*************************************************************************************
' D�chargement de la feuille principale MDI
'*************************************************************************************
Private Sub MDIForm_Unload(Cancel As Integer)
Dim i As Integer
Dim MySettings As Variant

  On Error GoTo GestErr
  
  If gbFichierJournal Then
    Write #gbFichLog, "Fin de Girabase"
    Close #gbFichLog
  End If
    
  For i = 0 To UBound(gbMRUFichiers)
    SaveSetting Appname:=App.Title, Section:="Recent Files", _
    Key:="File" & CStr(i + 1), Setting:=gbMRUFichiers(i)
  Next
  ' Suppression dans la registry des fichiers effac�s (� reprendre en m�me temps que MRUmenu)
  MySettings = GetAllSettings(Appname:=App.Title, Section:="Recent Files")
  If Not IsEmpty(MySettings) Then
    For i = UBound(gbMRUFichiers) + 1 To UBound(MySettings, 1)
      DeleteSetting App.Title, "Recent Files", MySettings(i, 0)
    Next
End If

'Indispensable pour que la proc�dure Main s'arr�te si erreur de protection
  End

Exit Sub

GestErr:
  If Err = 9 Then
  ' Ubound est en erreur, car on n'a pas encore initialis� le projet
    Exit Sub
  Else
    ErreurFatale
  End If
  
End Sub

'*************************************************************************************
          'Menu Aide
'*************************************************************************************
Private Sub mnuAide_Click(Index As Integer)
    Dim retour%
    Dim objHelp As CHelp
    Set objHelp = New CHelp
 
    Select Case Index
        Case 0 'Aide Sommaire
            Call objHelp.Show(App.HelpFile, "Main")
        Case 1 'Aide sur
            'Modif fait par Frank Trifiletti on utilise le contextid de la fen�tre �tude en cours
            'qui est dans la globale monetude dont son helpcontextid est mis � jour dans la sub ChangerHelpId
            'qui est appell� � chaque Form_Activate et dans le TabData_Click de frmDocument.frm
            'car le contextid �tait toujours nulle avec showindex normal on ne le passe pas en argument.
            If gbProjetActif Is Nothing Then
                'Cas d'appel  de F1 si aucun �tude ouverte sinon plantage
                'Onglet Index supprim�!!!
                'Call objHelp.ShowIndex(App.HelpFile, "Main")
                Call objHelp.Show(App.HelpFile, "Main")
            Else
                Call objHelp.Show(App.HelpFile, "Main", Me.HelpContextID)
            End If
            'Fin modif F.Trifiletti
        Case 2 'Aide rechercher
            Call objHelp.ShowSearch(App.HelpFile, "Main")
        Case 4 'A propos de Girabase
            frmApropos.Show 1
    End Select
    Set objHelp = Nothing

End Sub

Private Sub mnuBarre_Click(Index As Integer)
  
  If gbGiratoires.count > 0 Then
    gbProjetActif.Donn�es.VerifieDonn�e
    Journal "Menu", mnuBarre(Index).Caption
  End If
  
End Sub

'*************************************************************************************
          'Menu Branche
'*************************************************************************************
Private Sub mnuBranche_Click(Index As Integer)
  Journal "Menu", mnuBranche(Index).Caption
  DessinGiratoire.SelectBranche Index + 1
  frmCarBranche.Show vbModal
  
End Sub

'*************************************************************************************
          'Menu Fen�tre
'*************************************************************************************
Private Sub mnuFenetre_Click(Index As Integer)
    'Menu fen�tre
Dim Feuille As Form
  
  Set Feuille = Screen.ActiveForm
  Cascade = True
  Arrange Index
  DoEvents
  Cascade = False
  Feuille.Form_Activate
  
End Sub

'*************************************************************************************
          'Menu Fichier : Nouveau - Ouvrir - Enregistrer - Imprimer
'*************************************************************************************
Private Sub mnuFichier_Click(Index As Integer)
Dim flag As Integer

  Journal "Menu", mnuFichier(Index).Caption
  
  On Error GoTo TraitementErreur

  Select Case Index
  Case 0 'Nouveau giratoire
      frmParam.Show vbModal
  
  Case 1 'Ouvrir un giratoire
    Ouvrir PourImportMatrice:=False      ' False : Ouverture normale d'un giratoire
  
  Case 2 'Fermer (le giratoire courant)
    Unload gbProjetActif.Donn�es
  
  Case 3 'Enregistrer le giratoire
    'Enregistrer la date de modification
    gbProjetActif.Enregistrer flag         ' en retour, flag re�oit True si l'enregistrement est abandonn�
  Case 4 'Enregistrer le giratoire sous
    gbProjetActif.EnregSous flag           ' en retour, flag re�oit True si l'enregistrement est abandonn�
  Case 6 'Importer une matrice
    Ouvrir PourImportMatrice:=True     ' True : pour indiquer le simple import de matrice
  Case 8 'Configuration de l'impression
    ShowPrinter Me
'    ConfigImprimante

  Case 9 'Imprimer
      
    frmImprimer.Show vbModal
          
  End Select
  
  Exit Sub
  
ErrImpr:
  If Err = cdlCancel Then
  ' L'utilisateur a fait 'Annuler
    Resume Next
  Else
    ErreurFatale
  End If
  Exit Sub

TraitementErreur:
  ErreurFatale
  
End Sub

Private Sub mnuLicence_Click()
     frmKey.Show 1
    'Mise � jour de l'ihm
     Call InitQlm
End Sub

'*************************************************************************************
          'Menu Fichier : Quitter
'*************************************************************************************
Private Sub mnuQuit_Click()
    
    'Quitte l'application
     Unload Me

End Sub

Private Sub mnuResult_Click(Index As Integer)

  Journal "Menu", mnuResult(Index).Caption

Select Case Index
Case 0  ' Calcul de capacit�
  'D�clenche l'affichage des r�sultats si les donn�es sont valides
  If gbProjetActif.Donn�es.ValiderFeuilleDonn�es Then
    If gbProjetActif.CalculFait Then
      gbProjetActif.R�sultats.SetFocus
    ElseIf gbProjetActif.colTrafics.Uncomplet Then
      gbProjetActif.CalculCapacit�
    End If
  End If
Case 1  ' Affichage de la fen�tre R�sultats
  gbProjetActif.R�sultats.SetFocus
End Select

End Sub

'*************************************************************************************
          'Menu Fichier : Choix dans la liste des derniers fichiers utilis�s
'*************************************************************************************

Private Sub mnuSelect_Click(Index As Integer)

Dim NomFich As String

Journal "Menu", mnuSelect(Index).Caption

NomFich = gbMRUFichiers(Index)
If ExistFich(NomFich) Then
  dlgFichier.FileName = NomFich
  gbCreFille NomFich
Else      ' En principe, �� ne devrait pas arriver, le controle d'existence �tant fait au chargement de GIRABASE dans MRUMenu (GIRABASEMAIN.BAS)
  MsgBox concatLignes(NomFich, IDm_FichierManquant, "", IDm_FichierEffac�), vbOKOnly + vbExclamation
End If

End Sub

Private Sub mnuSite_Click(Index As Integer)

  Journal "Menu", mnuSite(Index).Caption

Select Case Index
Case 0  ' Onglet Site
  gbProjetActif.Donn�es.tabDonn�es.Tab = 0

Case 1  ' Onglet Dimensionnement
  gbProjetActif.Donn�es.tabDonn�es.Tab = 1

Case 3  ' Redessiner le giratoire
  gbProjetActif.Donn�es.Redess

Case 5  ' Changer d'unit� d'angle
  gbProjetActif.ChangeUnit�Angle
  
End Select

End Sub

Private Sub mnuTrafic_Click(Index As Integer)
Dim numP�riode As Integer
Dim nomP�riode As String
Dim wTrafic As TRAFIC

  Journal "Menu", mnuTrafic(Index).Caption

With gbProjetActif
  numP�riode = .Donn�es.cboP�riode.ListIndex + 1
  If numP�riode > 0 Then Set wTrafic = .colTrafics.Item(numP�riode)
End With

' Debug----> Ce test deviendra inutile (sera g�r� par GriserMenus)
If numP�riode = 0 And Index <> 0 Then Exit Sub

Select Case Index

Case 0  ' Nouvelle p�riode
  gbProjetActif.newP�riode DrapeauMenu:=True     ' True Indique que l'appel vient du menu
  
Case 1  ' Supprimer p�riode
  gbProjetActif.delP�riode wTrafic

Case 2  ' Renommer p�riode
  gbProjetActif.renameP�riode wTrafic

Case 3  ' Editer p�riode
  gbProjetActif.Donn�es.tabDonn�es.Tab = 2

Case 5  ' Inverser la matrice
  gbProjetActif.inversP�riode wTrafic
  
Case 6  ' Multiplier la matrice
  gbProjetActif.multP�riode wTrafic

Case 8  ' Calcul du diagramme de flux
  If mnuTrafic(Index).Checked Then
    mnuTrafic(Index).Checked = False
    gbProjetActif.Donn�es.AfficheDiagramflux False
  Else
    mnuTrafic(Index).Checked = True
    gbProjetActif.Donn�es.AfficheDiagramflux True
    wTrafic.CalculDiagramFlux
  End If
End Select

End Sub

'*************************************************************************************
' Ouvrir un giratoire : cette proc�dure peut � la rigueur �tre mise dans GirabaseMain
'*************************************************************************************
Private Sub Ouvrir(ByVal PourImportMatrice As Boolean)
Dim Cancel As Boolean

  On Error GoTo TraitementErreur
  
  With dlgFichier
    .InitDir = App.Path
    .flags = cdlOFNFileMustExist Or cdlOFNHideReadOnly Or cdlOFNNoChangeDir
    .ShowOpen
  
    If Not Cancel Then
      If PourImportMatrice Then
        ImportMatrice .FileName
      Else
        gbCreFille .FileName
      End If
    Else
      Screen.ActiveForm.SetFocus
    End If
  End With
          
Exit Sub

TraitementErreur:   ' L'utilisateur a fait 'Annuler
  Cancel = True
  Resume Next


End Sub

Private Sub tbrFile_ButtonClick(ByVal Button As MSComctlLib.Button)

Select Case Button.Key
Case "btnNew"
  mnuFichier_Click 0
Case "btnOpen"
  mnuFichier_Click 1
Case "btnSave"
  mnuFichier_Click 3
Case "btnPrint"
  mnuFichier_Click 9
End Select

End Sub

'Code pour modifier l'ihm suite � l'impl�mentation de Qlm
Private Sub InitQlm()
    'Initialisation des menus modifi�s par QLM
    'les variables globales sont maj par protection.bas
    'ATTENTION : v�rifier les noms des menus!!!
    Me.mnuHelpBar2.Visible = GvisibiliteMnuBarre
    Me.mnuLicence.Visible = GvisibiliteMnuLicence
    'a adapter en fonction du clogiciel
    Me.Caption = "Girabase v" + Format(App.Major) + "." + Format(App.Minor) + "." + Format(App.Revision) + GmodifTitreApplication
    Me.Caption = Me.Caption + " - English version"
    'fin initialisation qlm
End Sub
