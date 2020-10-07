Attribute VB_Name = "strConst"
'**************************************************************************************
'          Projet GIRABASE - CERTU - CETE de l'Ouest

'     Mise � jour pour la version anglaise : D�cembre 2000
'
'   R�alisation : Andr� VIGNAUD

'   Module standard : strConst   -   STRCONST.BAS

'   Fonctions du module
'     Constantes de chaine � traduire

'**************************************************************************************
Option Explicit

' Constantes utilis�es dans plusieurs modules
'--------------------------------------------
Public Const IDl_Version = "Version"

Public Const IDm_Obligatoire = "Data mandatory"

Public Const IDl_ET = " and "
Public Const IDl_DE = " of "
Public Const IDl_VERS = " towards "

Public Const IDl_Giratoire = "Roundabout"
Public Const IDl_Branche = "Arm "
Public Const IDl_P�riode = "Period"
Public Const IDl_Angle = "Angle"
Public Const IDl_DeLaP�riode = " of the " & IDl_P�riode ' Conserver les blancs en d�but et fin de chaine
Public Const IDl_LaBranche = "the " & IDl_Branche ' Conserver les blancs en d�but et fin de chaine
Public Const IDl_DeLaBranche = " of the " & IDl_Branche ' Conserver les blancs en d�but et fin de chaine
Public Const IDl_Multiplication = "Multiplication"    ' GIRATOIRE - TrafMult
  

'Titre de la fen�tre R�sultats
Public Const IDl_R�sultats = "Results"

Public Const IDm_SupprP�riode = "Cancellation of p�riode" 'GIRATOIRE - R�sultats

Public Const IDl_Imprimante = "Printer"                  ' PrintAPI et frmImprimer
Public Const IDm_ErrImprim = "Error " & IDl_Imprimante     ' PrintAPI et frmImprimer

Public Const IDl_ModeVLPL2R = "LH-HV-2W Mode" ' Donn�es - Imprimer
Public Const IDl_ModeUVP = "PCU Mode"          ' Donn�es - Imprimer - TRAFIC

  '--------------- Autres Constantes chaines
Public Const IDl_METRE = " m"   ' Utilis�es par frmDonn�es et frmImprimer
Public Const IDl_Abr�vSaturBranche = "/SArm"

' Module GirabaseMain
'--------------------
Public Const IDm_MenuAngle = "&Transform the angles into"
Public Const IDl_Degr�s = "degrees"
Public Const IDl_Grades = "grades"

'Module Giratoire.cls
'--------------------
' Constantes de libell�s pour les p�riodes de trafic
Public Const IDl_NouvelleP�riode = "New period"
Public Const IDl_RenP�riode = "Rename period"
Public Const IDl_Inversion = "Inversion"
Public Const IDm_P�riodeIncompl�te = "Traffic period incomplete"
Public Const IDm_PasDeP�riode = "No traffic Periods in the project imported"

' Import de matrice
Public Const IDm_NbBranchesDiff�rent = "Number of arms of the imported projet different to the current roundabout"
Public Const IDm_IncompatibleBrancheUnidirection = "Incompatibility between the two projects (arm 'one-way')"

' Constante de lecture de fichier
Public Const IDm_ErrLectureFichier = "Error in reading file"
Public Const IDm_ligne = "line"

' Module Outils
'--------------------
Public Const IDm_Numeric = "Numerical mandatory"
Public Const IDm_Positif = "Strictly positive value"
Public Const IDm_ErreurFatale = "Fatal error"
Public Const IDm_LectureSeule = "Read only file"
Public Const IDm_FichierUtilis� = "File currently in use"
Public Const IDm_FichierD�jaOuvert = "File already open"
Public Const IDm_EnregistrerSousDabord = "Save it beforehand under another name"

'Module Branches.cls
'--------------------
Public Const IDm_DoublonBranche = "Arm name already used"

'Module Trafics.cls
'--------------------
Public Const IDm_DoublonP�riode = "Period name already used"
Public Const IDm_IncompletP�riode = "Traffic period(s) incompletely entered"

'Module DessinGiratoire
'----------------------
' Constantes permettant d'afficher des messages dans l'invite
Public Const IDl_RayonInt�rieur = "Internal radius"
Public Const IDl_RayonExt�rieur = "External radius"
Public Const IDl_LargeurAnneau = "Circulatory carriageway width"
Public Const IDl_BandeFranchissable = "Crossing slip"
Public Const IDm_LargeurAnneauNonNulle = "The circulatory carriageway width must not be zero"
Public Const IDm_LargeurBandePositive = "The crossing slip width must be positive"
Public Const IDm_BorneBranche = " must stay between arms "

'Module Imprimer
'---------------
Public Const IDl_ImprimanteEnCours = "Current printer"
'Const IDl_Imprimante = "Printer"
'Const IDm_ErrImprim = "Erreur " & IDl_Imprimante           ' MDIGirabase et frmImprimer

Public Const IDl_Date = "Date"
Public Const IDl_Page = "Page"
Public Const IDl_Suite = " (next)"

Public Const IDl_EnMetre = " (in m)"
Public Const IDl_OUI = "YES"
Public Const IDl_Neant = "None"

Public Const IDl_Branches = "Arms"
Public Const IDl_Conseils = "Recommendations"

Public Const IDl_P�riodesTrafic = "Traffic periods"
Public Const IDl_ToutesP�riodes = "All periods"
Public Const IDl_Entrant = "Entering"
Public Const IDl_Sortant = "Exiting"
Public Const IDl_Total = "Total"
Public Const IDl_EnUVP = " in PCU"

Public Const IDl_FichierTexte = "Text file"

Public Const IDm_SaisirFichier = "Enter a file name"
Public Const IDm_ExistFichier = "already exists" & vbCrLf & "Do you want to replace it?"

Public Const IDm_SaturBranche = "In accepting a saturation ont the arm"
'Const IDm_BrancheSortie = "Branche de sortie uniquement"
Public Const IDm_GiratoireNonConforme = "Roundabout non-compliant"
Public Const IDm_DessinImpossible = "Roundabout undrawable"
