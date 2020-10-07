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

Public Const IDm_Obligatoire = "Saisie obligatoire"

Public Const IDl_ET = " et "
Public Const IDl_DE = " de "
Public Const IDl_VERS = " vers "

Public Const IDl_Giratoire = "Giratoire"
Public Const IDl_Branche = "Branche "
Public Const IDl_P�riode = "P�riode"
Public Const IDl_Angle = "Angle"
Public Const IDl_DeLaP�riode = " de la " & IDl_P�riode ' Conserver les blancs en d�but et fin de chaine
Public Const IDl_LaBranche = "la " & IDl_Branche ' Conserver les blancs en d�but et fin de chaine
Public Const IDl_DeLaBranche = " de la " & IDl_Branche ' Conserver les blancs en d�but et fin de chaine
Public Const IDl_Multiplication = "Multiplication"    ' GIRATOIRE - TrafMult
  

'Titre de la fen�tre R�sultats
Public Const IDl_R�sultats = "R�sultats"

Public Const IDm_SupprP�riode = "Suppression de la p�riode" 'GIRATOIRE - R�sultats

Public Const IDl_Imprimante = "Imprimante"                  ' PrintAPI et frmImprimer
Public Const IDm_ErrImprim = "Erreur " & IDl_Imprimante     ' PrintAPI et frmImprimer

Public Const IDl_ModeVLPL2R = "Mode VL-PL-2R" ' Donn�es - Imprimer
Public Const IDl_ModeUVP = "Mode UVP"          ' Donn�es - Imprimer - TRAFIC

  '--------------- Autres Constantes chaines
Public Const IDl_METRE = " m"   ' Utilis�es par frmDonn�es et frmImprimer
Public Const IDl_Abr�vSaturBranche = "/SBr"

' Module GirabaseMain
'--------------------
Public Const IDm_MenuAngle = "&Transformer les angles en"
Public Const IDl_Degr�s = "degr�s"
Public Const IDl_Grades = "grades"

'Module Giratoire.cls
'--------------------
' Constantes de libell�s pour les p�riodes de trafic
Public Const IDl_NouvelleP�riode = "Nouvelle p�riode"
Public Const IDl_RenP�riode = "Renommer p�riode"
Public Const IDl_Inversion = "Inversion"
Public Const IDm_P�riodeIncompl�te = "P�riode de trafic incompl�te"
Public Const IDm_PasDeP�riode = "Pas de P�riodes de trafic dans le projet lu"

' Import de matrice
Public Const IDm_NbBranchesDiff�rent = "Nombre de branches du projet import� diff�rent du giratoire courant"
Public Const IDm_IncompatibleBrancheUnidirection = "Incompatibilit� entre les deux projets (branche unidirectionnelle)"

' Constante de lecture de fichier
Public Const IDm_ErrLectureFichier = "Erreur en lecture du fichier"
Public Const IDm_ligne = "ligne"

' Module Outils
'--------------------
Public Const IDm_Numeric = "Num�rique obligatoirement"
Public Const IDm_Positif = "Valeur strictement positive"
Public Const IDm_ErreurFatale = "Erreur fatale"
Public Const IDm_LectureSeule = "Fichier en lecture seule"
Public Const IDm_FichierUtilis� = "Fichier en cours d'utilisation"
Public Const IDm_FichierD�jaOuvert = "Fichier d�j� ouvert"
Public Const IDm_EnregistrerSousDabord = "Enregistrez le d'abord sous un autre nom"

'Module Branches.cls
'--------------------
Public Const IDm_DoublonBranche = "Nom de branche d�j� utilis�"

'Module Trafics.cls
'--------------------
Public Const IDm_DoublonP�riode = "Nom de p�riode d�j� utilis�"
Public Const IDm_IncompletP�riode = "P�riode(s) de trafic incompl�tement saisie(s)"

'Module DessinGiratoire
'----------------------
' Constantes permettant d'afficher des messages dans l'invite
Public Const IDl_RayonInt�rieur = "Rayon int�rieur"
Public Const IDl_RayonExt�rieur = "Rayon ext�rieur"
Public Const IDl_LargeurAnneau = "Largeur de l'anneau"
Public Const IDl_BandeFranchissable = "Bande franchissable"
Public Const IDm_LargeurAnneauNonNulle = "La largeur de l'anneau ne doit pas �tre nulle"
Public Const IDm_LargeurBandePositive = "La largeur de la bande franchissable doit �tre positive"
Public Const IDm_BorneBranche = " doit rester entre les branches "

'Module Imprimer
'---------------
Public Const IDl_ImprimanteEnCours = "Imprimante en cours"
'Const IDl_Imprimante = "Imprimante"
'Const IDm_ErrImprim = "Erreur " & IDl_Imprimante           ' MDIGirabase et frmImprimer

Public Const IDl_Date = "Date"
Public Const IDl_Page = "Page"
Public Const IDl_Suite = " (suite)"

Public Const IDl_EnMetre = " (en m)"
Public Const IDl_OUI = "OUI"
Public Const IDl_Neant = "N�ant"

Public Const IDl_Branches = "Branches"
Public Const IDl_Conseils = "Conseils"

Public Const IDl_P�riodesTrafic = "P�riodes de trafic"
Public Const IDl_ToutesP�riodes = "Toutes les p�riodes"
Public Const IDl_Entrant = "Entrant"
Public Const IDl_Sortant = "Sortant"
Public Const IDl_Total = "Total"
Public Const IDl_EnUVP = " en UVP"

Public Const IDl_FichierTexte = "Fichier texte"

Public Const IDm_SaisirFichier = "Saisir un nom de fichier"
Public Const IDm_ExistFichier = "existe d�j�" & vbCrLf & "Voulez-vous le remplacer?"

Public Const IDm_SaturBranche = "En acceptant une saturation sur la branche"
'Const IDm_BrancheSortie = "Branche de sortie uniquement"
Public Const IDm_GiratoireNonConforme = "Giratoire non conforme"
Public Const IDm_DessinImpossible = "Giratoire non dessinable"
