Attribute VB_Name = "Outils"
'******************************************************************************
'*
'*          Projet GIRABASE - CERTU - CETE de l'Ouest
'*
'*          Module standard : OUTILS.BAS
'*
'*          Fonctions Utilitaires diverses
'*
'******************************************************************************

Option Explicit


'*************************************************************************************
' Retourne la plus petite des valeurs du tableau Valeurs
'*************************************************************************************
Public Function Min(ParamArray Valeurs()) As Variant
Dim Valeur As Variant

  Min = Valeurs(0)
  For Each Valeur In Valeurs
    If Valeur < Min Then Min = Valeur
  Next

End Function

'*************************************************************************************
' Retourne la plus grande des valeurs du tableau Valeurs
'*************************************************************************************
Public Function Max(ParamArray Valeurs()) As Variant
Dim i As Integer

  Max = Valeurs(0)
  For i = 1 To UBound(Valeurs)
    If Valeurs(i) > Max Then Max = Valeurs(i)
  Next
End Function

'******************************************************************************
' Retourne si une feuille est charg�e
'******************************************************************************
Public Function EstCharg�e(ByVal FeuilleCherch�e As Form) As Boolean
Dim Feuille As Form
  For Each Feuille In Forms
    If Feuille Is FeuilleCherch�e Then EstCharg�e = True: Exit For
  Next
End Function
'*************************************************************************************
' Existence d'un fichier
'   Nom : nom du fichier
'   Retourne True si le fichier existe
'*************************************************************************************
Public Function ExistFich(ByVal nom As String, Optional attrib As Variant) As Boolean
  
  On Error GoTo TraitementErreur
  If nom = "" Then Exit Function
  If IsMissing(attrib) Then
    ExistFich = (Dir(nom) <> "")
  Else
    ExistFich = (Dir(nom, attrib) <> "")
  End If
  Exit Function

TraitementErreur:
  ExistFich = False
  Resume Next
  
End Function

'******************************************************************
' D�tecte si le fichier est en lecture seule ou en mise � jour
'******************************************************************
Public Function FichierProt�g�(ByVal NomFich As String, Optional ByVal MsgLectureSeule As Boolean = True, Optional ByVal Titre As String, Optional ByVal LectureSeuleAutoris�e As Boolean) As Boolean
Dim numFich As Integer
Dim Chaine As String
'Dim f As Scripting.File
'Dim gtFso As New Scripting.FileSystemObject

  If NomFich = "" Then Exit Function
  If Not ExistFich(NomFich) Then Exit Function

On Error GoTo GestErr

    ' D�tection d'une protection syst�me en �criture
'  Set f = gtFso.GetFile(NomFich)
'  If (f.Attributes And ReadOnly) = ReadOnly Then Err.Raise 75
  numFich = FreeFile
  Open NomFich For Append Lock Write As numFich
  Close numFich
    
    ' D�tection d'un verrouillage en �criture par un autre utilisateur
  numFich = FreeFile
  Open NomFich For Random Lock Write As numFich
  Close numFich
  
  If LectureSeuleAutoris�e Then FichierProt�g� = False
  
Exit Function

GestErr:
  FichierProt�g� = True
  If Err = 75 Then  ' ReadOnly ou Append Lock Write
    If MsgLectureSeule Then MsgBox IDm_LectureSeule, vbInformation, Titre
    If LectureSeuleAutoris�e Then Resume Next
  ElseIf Err = 70 Then
    MsgBox IDm_FichierUtilis�, vbExclamation, Titre
  ElseIf Err = 55 Then  ' Append Lock Write
    MsgBox IDm_FichierD�jaOuvert & vbCrLf & IDm_EnregistrerSousDabord, vbExclamation, NomFich
  Else
    'ErrGeneral "Girstand : FichierProt�g�"
  End If

End Function

'*************************************************************************************
' Extrait le chemin d'un nom de fichier, y compris l'�ventuel dernier '\'
'*************************************************************************************
Public Function extraiRep(s As String) As String
  Dim pos As Integer
  
    pos = InStrRev(s, "\")
    If pos <> 0 Then
      extraiRep = Left(s, pos)
    End If
    
    Exit Function
    
    pos = InStr(s, "\")
    If pos <> 0 Then
      extraiRep = Left(s, pos) & extraiRep(Mid(s, pos + 1))
    Else
      extraiRep = ""
    End If

End Function

'*************************************************************************************
' Supprime l'extension dans un nom de fichier (avec ou sans chemin)
'*************************************************************************************
Public Function suppExt(s As String) As String
  Dim pos%
  
  ' Sous W95 et >, seul le dernier point est un s�parateur : d'o� InstrRev au lieu de Instr (InstrRev n'existait pas dans VB4)
  pos = InStrRev(s, ".")
  If pos <> 0 Then
    suppExt = Left(s, pos - 1)
  Else
    suppExt = s
  End If
  
End Function

'*************************************************************************************
' Retourne l'extension d'un nom de fichier (�ventuellement en majuscules ou minuscules)
'*************************************************************************************
Public Function Extension(s As String, Optional indic As Variant) As String
  Dim pos%
  
  ' Sous W95 et >, seul le dernier point est un s�parateur : d'o� InstrRev au lieu de Instr (InstrRev n'existait pas dans VB4)
  pos = InStrRev(s, ".")
  If pos = 0 Then
    Extension = ""
  Else
    Extension = Mid(s, pos + 1)
    If Not IsMissing(indic) Then Extension = StrConv(Extension, indic)
  End If
  
End Function

'*************************************************************************************
'Extrait le nom principal d'un fichier (sans son chemin ni son extension)
'*************************************************************************************
Public Function nomCourt(s As String) As String
Dim pos%

    pos = Len(extraiRep(s))
    nomCourt = suppExt(Mid(s, pos + 1))
  
End Function

'*************************************************************************************
' Red�finit les dimensions de la feuille ind�pendamment de la d�finition et de la r�solution de l'�cran
'*************************************************************************************
Public Sub SetDeviceIndependentWindow(ByVal ThisForm As Form)
'Static Gauche As Integer, Sommet As Integer, Largeur As Integer, Hauteur As Integer
' Correctif pour �cran de haute r�solution 2013-04-23
Static Gauche As Single, Sommet As Single, Largeur As Single, Hauteur As Single

  With ThisForm
    
    If Largeur = 0 Then
    
      ' D�finit la largeur de la feuille.
      .Width = MDIGirabase.Width * 0.985
  ' D�finit la hauteur de la feuille.
      .Height = MDIGirabase.Height * 0.914
      .Height = MDIGirabase.Height * 0.866    ' Pour la barre d'outils
      Gauche = .Left
      Sommet = .Top
      Largeur = .Width
      Hauteur = .Height
      
    Else  ' Une feuille a d�j� �t� charg�e
      .Move Gauche, Sommet, Largeur, Hauteur
    End If
      
    ' Positionnement de l'onglet principal � droite de la fen�tre
    If ThisForm Is gbProjetActif.Donn�es Then
      .tabDonn�es.Move .Width - (.tabDonn�es.Width + 300), 150
    End If
  End With
fin:
End Sub

'*************************************************************************************
' Retourne le num�ro d'option en cours dans un groupe de boutons
' Retourne -1 si aucun
'*************************************************************************************
Public Function Numopt(ByVal bouton As Object) As Integer
  Dim i%

  Numopt = -1   ' a priori aucun bouton s�lectionn�
  For i = 1 To bouton.count
    If bouton(i - 1) = True Then Numopt = i - 1: Exit Function  ' bouton trouv�
  Next
  
End Function

'*****************************************************************************************************
' Contr�le lors de la frappe d'un caract�re que celui-ci est bien un nombre d�cimal
' Le point ou la virgule sont accept�s comme point d�cimal selon la configuration du poste de travail
'*****************************************************************************************************
Public Function ControleR�el(KeyAscii As Integer) As Integer
  If (KeyAscii >= 48 And KeyAscii <= 57) Or KeyAscii = gbPtDecimal Or KeyAscii = 8 Then
  Else
    Beep
    KeyAscii = 0
  End If
  ControleR�el = KeyAscii
End Function

'*************************************************************************************
' Controle qu'une donn�e est bien num�rique, et �ventuellement strictement positive
'*************************************************************************************
Public Function MonCtrlNumeric(ByVal v As Object, ByVal Obligatoire As Boolean, ByVal Positif As Boolean) As Boolean
Dim Style As String

  Style = vbOKOnly + vbExclamation
  If v = "" Then
    If Obligatoire Then
      MsgBox IDm_Obligatoire, Style
    End If
    MonCtrlNumeric = Obligatoire
  ElseIf Not IsNumeric(v) Then
    MsgBox IDm_Numeric, Style
    MonCtrlNumeric = True
  ElseIf Positif And v <= 0 Then
    MsgBox IDm_Positif, Style
    MonCtrlNumeric = True
  Else
    MonCtrlNumeric = False
  End If
End Function

'*****************************************************************************************
' V�rifie que la valeur lue dans le fichier est bien un entier et compris entre les bornes
'*****************************************************************************************
Public Sub OkEntier(ByVal Valeur, ByRef variable As Integer, ByVal valMin As Integer, Optional ByVal ValMax)
Dim Ok As Boolean

  If VarType(Valeur) = vbInteger Then
    If IsMissing(ValMax) Then
      Ok = (Valeur >= valMin)
    Else
      Ok = (Valeur >= valMin) And (Valeur <= ValMax)
    End If
    If Ok Then
      variable = Valeur
    Else
      Err.Raise 100
    End If
  Else
    Err.Raise 100
  End If
End Sub

'*****************************************************************************************
' V�rifie que la valeur lue dans le fichier est bien un entier long et compris entre les bornes
'*****************************************************************************************
Public Sub OkLong(ByVal Valeur, ByRef variable As Long, ByVal valMin As Integer, Optional ByVal ValMax)
Dim Ok As Boolean

  If VarType(Valeur) = vbLong Or VarType(Valeur) = vbInteger Then
    If IsMissing(ValMax) Then
      Ok = (Valeur >= valMin)
    Else
      Ok = (Valeur >= valMin) And (Valeur <= ValMax)
    End If
    If Ok Then
      variable = Valeur
    Else
      Err.Raise 100
    End If
  Else
    Err.Raise 100
  End If
End Sub


'*****************************************************************************************
' V�rifie que la valeur lue dans le fichier est bien un flottant
'*****************************************************************************************
Public Sub OkFlottant(ByVal Valeur As String, ByRef variable As Single)
Dim pos%
' Dans le fichier, le pt d�cimal est tjs stock� comme "." - Substitution �ventuelle au param�tre r�gional
' IsNumeric tient compte du param�tre r�gional
pos = InStr(Valeur, ".")
If pos <> 0 Then Mid(Valeur, pos) = Chr(gbPtDecimal)

If IsNumeric(Valeur) Then
  variable = CSng(Valeur)
Else
  Err.Raise 100
End If
End Sub

Public Sub ErreurFatale(Optional ByVal NomFonc As String)
  MsgBox IDm_ErreurFatale & " " & CStr(Err.Number) & vbCrLf & Err.Description, vbCritical, App.Title
  If gbProjetActif Is Nothing Then
    End
  Else
    With gbProjetActif.Donn�es
      .flagErreurFatale = True
      If .ChargementEnCours Then
      Else
        Unload gbProjetActif.Donn�es
      End If
    End With
  End If
  
End Sub
'*************************************************************************************
' Concat�nation d'un nombre variable de chaines
'*************************************************************************************
Public Function concatLignes(Chaine As String, ParamArray tabChaines() As Variant) As String
Dim i As Integer

  concatLignes = Chaine
  If Not IsMissing(tabChaines) Then
    For i = 0 To UBound(tabChaines)
      concatLignes = concatLignes & vbCrLf & tabChaines(i)
    Next
  End If
  
End Function

'''*************************************************************************************
''' substVirgulePoint :  remplace le point d�cimal par une virgule ou r�ciproquement (issu de GIRATION : p�rim� cf OKFlottant)
'''*************************************************************************************
''Public Function substVirgulePoint(ByVal s As String) As String
''' If IsNumeric("1.1") Then gbPtDecimal = 46 (.) Else gbPtDecimal = 44 (,)
''' ceci permet aux fontions Cdbl et IsNumeric (en particulier) de fonctionner correctement
''
''  Dim pos%
''  Dim FauxPoint As String * 1
''
''    If gbPtDecimal = Asc(",") Then
''      FauxPoint = "."
''    Else
''      FauxPoint = ","
''    End If
''
''    pos = InStr(s, FauxPoint)
''    If pos <> 0 Then
''      substVirgulePoint = Left(s, pos - 1) & Chr(gbPtDecimal) & substVirgulePoint(Mid(s, pos + 1))
''    Else
''      substVirgulePoint = s
''    End If
''
''End Function


''Public Function substEspaceCRLF(ByVal s As String) As String
''' fonction appel�e pour remplacer les retour-chariot par un espace pour les impressions
''
''  Dim pos%
''
''    pos = InStr(s, vbCrLf)
''    If pos <> 0 Then
''      substEspaceCRLF = Left(s, pos - 1) & " " & substEspaceCRLF(Mid(s, pos + 2))
''    Else
''      substEspaceCRLF = s
''    End If
''
''End Function

'************************************************************************************************
' Conversion d'un angle de degr�/grade en radian (radian = True) et r�ciproquement (radian=False)
'************************************************************************************************
Public Function angConv(ByVal x As Single, ByVal radian As Boolean) As Single
'  If radian Then angConv = x * pi / 180 Else angConv = x * 180 / pi
' eqvPI vaut 180 ou 200 selon que les unites sont en degr�s  ou en grades

  If radian Then
    angConv = x * PI / eqvPI(gbProjetActif.modeangle)
  Else
    angConv = x * eqvPI(gbProjetActif.modeangle) / PI
  End If

End Function

'************************************************************************************************
' Calcul de l'angle directeur du vecteur OM - M(X,Y) - Retourne 0 si M=O
'************************************************************************************************
Public Function AngleDirecteur(ByVal x As Single, ByVal Y As Single) As Single
  If Y = 0 Then
    If x >= 0 Then AngleDirecteur = 0 Else AngleDirecteur = PI
  ElseIf x = 0 Then
    If Y > 0 Then AngleDirecteur = PI / 2 Else AngleDirecteur = 3 * PI / 2
  Else
    AngleDirecteur = Atn(Y / x)
    If x < 0 Then AngleDirecteur = AngleDirecteur + PI
    If AngleDirecteur < 0 Then AngleDirecteur = AngleDirecteur + 2 * PI
  End If
End Function

Public Function Arccos(ByVal x As Double) As Double
' ArcCosinus
  Select Case x
  Case 1
    Arccos = 0
  Case -1
    Arccos = PI
  Case Else
    Arccos = Atn(-x / Sqr(-x * x + 1)) + PI / 2
  End Select
  
End Function

Public Function suppCNull(v As String) As String
' Supprime tous les caract�res apr�s et y compris le  caract�re NULL d'une chaine C

  suppCNull = Left(v, InStr(v, Chr(0)) - 1)
  
End Function

