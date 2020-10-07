Attribute VB_Name = "DessinGiratoire"
Option Explicit

Private Const IDl_Egal = " = "

Public Const maLongueurBranche As Single = 18 'Longueur r�elle en m�tres des branches pour le dessin (utilis� aussi par frmImprimer)
Private Const uneMarge As Single = 50 'Pour laisser de la place autour du dessin

Private Const monEpsilon = 100 'Pour tester les valeurs proches de z�ro

' Constantes permettant de connaitre le type d'objet qui a �t� s�lectionn�
Private Const NoObjSelect = 0
Private Const ObjPoignee = 1
Private Const ObjBranche = 2
Private Const ObjAnneauInt = 3
Private Const ObjAnneauMil = 4
Private Const ObjAnneauExt = 5

Public monNumBrancheSelect As Integer 'Num�ro de la branche s�lectionn�e, 0 sinon
Public gbRayonInt As Single
Public gbRayonExt As Single
Public gbBandeFranchissable As Single
Public gbDemiLargeur As Single
Public gbDemiHauteur As Single
Public gbFacteurZoom As Single

Private monAngle As String    ' Ajout - AV (05.02.99) : pour mise � jour du tableau

Private maLargeurAnneau As Single 'RVG : artifice pour maintenir l'anneau constant si modification interactive du rayon int�rieur

'Drapeaux pour d�tecter si l'utilisateur a d�j� cliqu� et s'il est en train de faire glisser la souris
Private DebutClick As Boolean
Private Glisser As Boolean
 
Private monObjetSelect As Integer 'Objet graphique s�lectionn�


'***************************************************************************************
' MouseDown  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Public Sub Dessin_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim i As Integer
Dim exNumBrancheSelect As Integer
    
    DebutClick = True
   
    'D�selection de la s�lection pr�c�dente : indispensable pour que les MouseMove soient ignor�es jusqu'� la fin de la proc�dure
    monObjetSelect = NoObjSelect
    exNumBrancheSelect = monNumBrancheSelect
     monNumBrancheSelect = 0
    
    'Test si s�lection interactive d'un poign�e
      With gbProjetActif.Donn�es.shpPoign�e
        If .Visible And Distance(X, .Left + .Width / 2, Y, .Top + .Height / 2) < monEpsilon Then
          'Le centre de la poign�e et le pointeur souris sont proches
          'et si la poign�e est s�lectionnable ==> S�lection de la poign�e
          If .Tag <> "" Then
            monObjetSelect = CInt(.Tag)
            If monObjetSelect = ObjBranche Then monNumBrancheSelect = exNumBrancheSelect
          Else
            monObjetSelect = ObjPoignee
          End If

          Exit Sub
          
        Else
        End If
      End With
    
    'Test si s�lection interactive d'un branche (�quation de droite : ux + vy +w = 0)
      Dim u As Single 'Coefficients d'une �quation
      Dim v As Single 'de droite du type
      Dim w As Single 'uX + vY + w = 0
      Dim uneDistance As Single   ' Distance en Twips
      
      For i = 1 To gbProjetActif.NbBranches    ' On n'autorise pas de modifier la branche 1 (AV - 05.02.99)
        'Test si le pointeur souris est dans la boite englobante du segment de branche
        With gbProjetActif.Donn�es.linBranche(i)
          If X > (Min(.X1, .X2) - monEpsilon) And X < (Max(.X1, .X2) + monEpsilon) And _
             Y > (Min(.Y1, .Y2) - monEpsilon) And Y < (Max(.Y1, .Y2) + monEpsilon) Then
            'Calcul du vecteur directeur de la branche i
            u = .Y1 - .Y2
            v = .X2 - .X1
            w = -u * .X1 - v * .Y1 'w = -ux-vy
              'Calcul de la distance entre le pointeur souris et la branche i
            uneDistance = Abs(u * X + v * Y + w) / Sqr(u * u + v * v)
            If (uneDistance < monEpsilon) Then
              'Cas o� le click est proche de la branche i ==> S�lection de celle-ci
              SelectBranche i
              Exit Sub
            End If
          End If
        End With
      Next i
    
    'Test si s�lection interactive d'un Cercle
      If SelectCercle(0, X, Y) Then Exit Sub
      
      ' Echec de la recherche
    With gbProjetActif.Donn�es.shpPoign�e
      .Tag = ""
      .Visible = False
    End With
    monObjetSelect = NoObjSelect
    monNumBrancheSelect = 0
    DebutClick = False
      
End Sub

Private Function SelectCercle(ByVal NumAnneau As Integer, ByVal X As Single, ByVal Y As Single) As Boolean
Dim unRayon(ObjAnneauInt To ObjAnneauExt) As Single   ' En twips
Dim nom As String

  unRayon(ObjAnneauInt) = gbRayonInt * gbFacteurZoom
  unRayon(ObjAnneauMil) = (gbRayonInt + gbBandeFranchissable) * gbFacteurZoom
  unRayon(ObjAnneauExt) = gbRayonExt * gbFacteurZoom

  'Calcul de la distance entre le point �cran (X, Y) et le centre des cercles des anneaux = centre de la vue
    Dim DistanceAuCentreVue As Single  ' Distance en Twips
    Dim DistMin As Single
    Dim DistAnneau
    DistanceAuCentreVue = Distance(gbDemiLargeur, X, gbDemiHauteur, Y)
    DistMin = 2 * monEpsilon
  'Test si s�lection interactive de l'anneau
    For NumAnneau = ObjAnneauInt To ObjAnneauExt
      DistAnneau = Abs(unRayon(NumAnneau) - DistanceAuCentreVue)
      If DistAnneau < monEpsilon Then
        If DistAnneau < DistMin Then
    '==> S�lection de l'anneau correspondant
          monObjetSelect = NumAnneau
          DistMin = DistAnneau
        End If
      End If
    Next
    
  If monObjetSelect = NoObjSelect Then Exit Function
  
  Select Case (monObjetSelect)
  Case ObjAnneauInt
    nom = "txtR"
  Case ObjAnneauMil
    nom = "txtBf"
  Case ObjAnneauExt
    nom = "txtLA"
  End Select

  'Cas o� la distance entre le pointeur et le centre est proche du rayon
  '0699
  'Positionne le focus sur un contr�le quelconque
  gbProjetActif.Donn�es.txtVariante.SetFocus
  'Repositionne le contr�le associ� au cercle en cours
  gbProjetActif.Donn�es.Controls(nom).SetFocus
  ' L'Instruction SetFocus g�n�re un �v�nement GotFocus, qui appelle InitControle et rend la
  ' poign�e invisible --> on la rend visible ci-dessous
  DoEvents
  
    'Stockage du type d'�l�ment dont elle est la poign�e
  gbProjetActif.Donn�es.shpPoign�e.Tag = CStr(monObjetSelect)
  With gbProjetActif.Donn�es.shpPoign�e
  'Coordonn�es de la projection sur un cercle de la poign�e de ce cercle
    Dim XProj As Single
    Dim YProj As Single
    'Affichage de la poign�e sur l'anneau pr�s du pointeur souris
    XProj = X + (unRayon(monObjetSelect) - DistanceAuCentreVue) * Sgn(X - gbDemiLargeur)
    YProj = Y + (unRayon(monObjetSelect) - DistanceAuCentreVue) * Sgn(Y - gbDemiHauteur)
    .Left = XProj - .Width / 2
    .Top = YProj - .Height / 2
    .Visible = True
  End With
  
  maLargeurAnneau = gbRayonExt - gbRayonInt - gbBandeFranchissable
  
  SelectCercle = True

End Function

Private Function SelectCercleOK(ByVal NumAnneau As Integer, ByVal X As Single, ByVal Y As Single) As Boolean
Dim unRayon As Single   ' En twips
Dim nom As String


  Select Case NumAnneau
  Case ObjAnneauInt
    unRayon = gbRayonInt * gbFacteurZoom
    nom = "txtR"
  Case ObjAnneauMil
    unRayon = (gbRayonInt + gbBandeFranchissable) * gbFacteurZoom
    nom = "txtBf"
  Case ObjAnneauExt
    unRayon = gbRayonExt * gbFacteurZoom
    nom = "txtLA"
  End Select

  'Calcul de la distance entre le point �cran (X, Y) et le centre des cercles des anneaux = centre de la vue
    Dim DistanceAuCentreVue As Single  ' Distance en Twips
    DistanceAuCentreVue = Distance(gbDemiLargeur, X, gbDemiHauteur, Y)
  
  'Test si s�lection interactive de l'anneau
  If Abs(DistanceAuCentreVue - unRayon) < monEpsilon Then
    'Cas o� la distance entre le pointeur et le centre est proche du rayon
    gbProjetActif.Donn�es.Controls(nom).SetFocus
    ' L'Instruction SetFocus g�n�re un �v�nement GotFocus, qui appelle InitControle et rend la
    ' poign�e invisible --> on la rend visible plus loin
    DoEvents
    
    '==> S�lection de l'anneau correspondant
    monObjetSelect = NumAnneau
      'Stockage du type d'�l�ment dont elle est la poign�e
    gbProjetActif.Donn�es.shpPoign�e.Tag = CStr(NumAnneau)
    With gbProjetActif.Donn�es.shpPoign�e
    'Coordonn�es de la projection sur un cercle de la poign�e de ce cercle
      Dim XProj As Single
      Dim YProj As Single
      'Affichage de la poign�e sur l'anneau pr�s du pointeur souris
      XProj = X + (unRayon - DistanceAuCentreVue) * Sgn(X - gbDemiLargeur)
      YProj = Y + (unRayon - DistanceAuCentreVue) * Sgn(Y - gbDemiHauteur)
      .Left = XProj - .Width / 2
      .Top = YProj - .Height / 2
      .Visible = True
    End With
    
    maLargeurAnneau = gbRayonExt - gbRayonInt - gbBandeFranchissable
    
    SelectCercleOK = True
  End If

End Function

Public Sub SelectBranche(num As Integer)
            
  With gbProjetActif.Donn�es
    'Mise en surbrillance de la colonne de l'angle
    .BrancheS�lect�e = num
    
    With .vgdCarBranche
      .Row = num
      .Col = 2
      monAngle = .Value
      .Action = 0
      .SetFocus
      'L'�v�nement GotFocus n'est plus d�clench� si le focus est d�j� sur le spread
      'L'appel de la proc�dure suivante replace le focus sur la bonne cellule puis
      'affiche l'invite correspondant � la branche s�lect�e
      gbProjetActif.Donn�es.vgdD�placeFocus num, 2
  ' L'Instruction SetFocus g�n�re un �v�nement GotFocus, qui appelle AfficheSpreadNormal et rend la
  ' poign�e invisible --> on la rend visible plus loin
      DoEvents
    End With

    .BrancheS�lect�e = 0
    'S�lection d'une branche par s�lection de son num�ro
    monNumBrancheSelect = num
    monObjetSelect = ObjBranche
    'Stockage du type d'�l�ment dont elle est la poign�e
    .shpPoign�e.Tag = CStr(ObjBranche)
    'Affichage de la poign�e � l'extr�mit� de la branche s�lectionn�e
    .shpPoign�e.Left = .linBranche(monNumBrancheSelect).X2 - .shpPoign�e.Width / 2
    .shpPoign�e.Top = .linBranche(monNumBrancheSelect).Y2 - .shpPoign�e.Height / 2
    .shpPoign�e.Visible = True
  End With

End Sub

'***************************************************************************************
' MouseMove  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Public Sub Dessin_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
  Dim unRayonDyn As Single
  
  If monObjetSelect = NoObjSelect Then Exit Sub
  If monObjetSelect = ObjBranche And monNumBrancheSelect = 1 Then Exit Sub
  
  If DebutClick Then
    DebutClick = False
    Glisser = True
  End If
  
  If Not Glisser Then Exit Sub
  
  Dim lblInvite As Label
  Set lblInvite = gbProjetActif.Donn�es.lblInvite
  
    'Cas du bouton gauche enfonc� trait� uniquement
    If Button = 1 Then
      Dim shpAnneauInt As Shape
      Dim shpAnneauExt As Shape
      Dim shpAnneauMil As Shape
      With gbProjetActif.Donn�es
        Set shpAnneauInt = .shpAnneauInt
        Set shpAnneauExt = .shpAnneauExt
        Set shpAnneauMil = .shpAnneauMil
      End With
      If monObjetSelect = NoObjSelect Then
          'Rien de s�lectionn�
          
      ElseIf monObjetSelect = ObjBranche Then
        'Modification dynamique de la branche
        ModifDynamicBranche X, Y
        
      ElseIf monObjetSelect = ObjAnneauInt Then
        'Modification du rayon int�rieur : LA et Bf restent constantes--->
        '    Redimensionnement en cons�quence des 3 anneaux
        'Calcul du nouveau rayon
        unRayonDyn = Distance(gbDemiLargeur, X, gbDemiHauteur, Y)
       'D�placement de la poign�e de s�lection
       Poign�eMove X, Y
        'Modification de l'anneau int�rieur
        DessinerAnneau shpAnneauInt, unRayonDyn
        gbRayonInt = trEchel(unRayonDyn, True)
        'Affichage dynamique de la valeur du rayon
        lblInvite.Caption = IDl_RayonInt�rieur & IDl_Egal + Format(gbRayonInt, "0.0")
        
        ' Maintien de l'anneau constant
        gbRayonExt = gbRayonInt + maLargeurAnneau + gbBandeFranchissable
        unRayonDyn = trEchel(gbRayonExt, False)
        DessinerAnneau shpAnneauExt, unRayonDyn
        
        ' Maintien de la Bande franchissable constante
        unRayonDyn = trEchel(gbRayonInt + gbBandeFranchissable, False)
        DessinerAnneau shpAnneauMil, unRayonDyn
      
      ElseIf monObjetSelect = ObjAnneauExt Then
        'Modification du rayon ext�rieur : lui seul est modifi� (LA est recalcul� en cons�quence)
        'Calcul du nouveau rayon
        unRayonDyn = Distance(gbDemiLargeur, X, gbDemiHauteur, Y)
        If unRayonDyn > trEchel(gbRayonInt + gbBandeFranchissable, False) Then
         'Diminution possible jusqu'au rayon int�rieur
         'D�placement de la poign�e de s�lection
         Poign�eMove X, Y
         'Modification de l'anneau int�rieur
         DessinerAnneau shpAnneauExt, unRayonDyn
         gbRayonExt = trEchel(unRayonDyn, True)
         'Affichage dynamique de la valeur du rayon
         lblInvite.Caption = _
              IDl_LargeurAnneau & IDl_Egal & Format(gbRayonExt - gbRayonInt - gbBandeFranchissable, "0.0") & _
              "  (" & IDl_RayonExt�rieur & IDl_Egal & Format(gbRayonExt, "0.0") & ")"
        Else
         'Cas o� le rayon int�rieur devient > au rayon ext�rieur
          lblInvite.Caption = IDm_LargeurAnneauNonNulle
        End If
      
      ElseIf monObjetSelect = ObjAnneauMil Then
        'Modification du rayon interm�diaire LA reste constante--->
        '    Redimensionnement en cons�quence des 2 anneaux
        'Calcul du nouveau rayon
        unRayonDyn = Distance(gbDemiLargeur, X, gbDemiHauteur, Y)
        If unRayonDyn < trEchel(gbRayonInt, False) Then
          lblInvite.Caption = IDm_LargeurBandePositive
        ElseIf unRayonDyn >= trEchel(gbRayonExt, False) Then
          lblInvite.Caption = IDm_LargeurAnneauNonNulle
        Else
          Poign�eMove X, Y
         'Modification de l'anneau interm�diaire
         DessinerAnneau shpAnneauMil, unRayonDyn
         'Calcul de la nouvelle bande franchissable
         Dim unRayonMil As Single
         unRayonMil = trEchel(unRayonDyn, True)
         gbBandeFranchissable = unRayonMil - gbRayonInt
         'Modification de l'anneau ext�rieur
         gbRayonExt = gbRayonInt + gbBandeFranchissable + maLargeurAnneau
         unRayonDyn = trEchel(gbRayonExt, False)
         DessinerAnneau shpAnneauExt, unRayonDyn
         'Affichage dynamique de la valeur du rayon
         lblInvite.Caption = _
                      IDl_BandeFranchissable & IDl_Egal & Format(gbBandeFranchissable, "0.0")
        End If
      End If
      
    Else
      lblInvite.Caption = ""
    End If
    
End Sub

'***************************************************************************************
' MouseUp  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Public Sub Dessin_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
  'Stockage pour la modification interactive suivante
  
  DebutClick = False
                                                                          
  If Not Glisser Then Exit Sub
  
  With gbProjetActif.Donn�es
    Dim unNbBranches As Integer
    unNbBranches = gbProjetActif.NbBranches
    'M�morise la modification de donn�e
    .Donn�eModifi�e = True
    'RVG : anneau constant
    If (monObjetSelect = ObjAnneauExt Or _
       monObjetSelect = ObjAnneauMil Or _
       monObjetSelect = ObjAnneauInt) Then
     
      'Affichage de la poign�e de s�lection de l'anneau ext�rieur
      .shpPoign�e.Visible = True
      .txtR = Format(gbRayonInt, "0.0")
      .txtLA = Format(gbRayonExt - gbRayonInt - gbBandeFranchissable, "0.0")
      .txtBf = Format(gbBandeFranchissable, "0.0")
      .ValidateObjet = True 'Valide l'objet
      Select Case monObjetSelect
        Case ObjAnneauInt
        .txtR_Validate False
        Case ObjAnneauMil
        .txtBf_Validate False
        Case ObjAnneauExt
        .txtLA_Validate False
      End Select
      .ValidateObjet = False
    ElseIf monObjetSelect = ObjBranche Then
      With .vgdCarBranche
        .Col = 2
        Dim Ecart, Valeur  As Integer
        Ecart = .Value - monAngle
        .Value = monAngle
        .Col = 3
        If .Value = "" Then
          .Value = -Ecart
        Else
          .Value = CInt(.Value) - Ecart
        End If
        If monNumBrancheSelect < unNbBranches Then
          .Row = monNumBrancheSelect + 1
          .Col = 2
          Valeur = .Value
          .Col = 3
          .Value = Valeur - monAngle
        End If
      End With
   
      'Valider l'angle et transf�rer la donn�e
      .Num�roLigneActive = monNumBrancheSelect
      .vgdCarBranche_LeaveCell 2, monNumBrancheSelect, 2, monNumBrancheSelect, False
      '0699
      .vgdD�placeFocus monNumBrancheSelect, 2
    End If
  End With
  
  Glisser = False

End Sub

'***************************************************************************************
' DessinerTout  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Public Sub DessinerTout(ByVal IsPremierDessin As Boolean)
  Dim i As Integer
  Dim unMax As Single
  Dim unAngleBranche As Single
  Dim unCos As Single
  Dim unSin As Single
  Dim unXi As Single
  Dim unYi As Single
  Dim xD�butBranche As Single
  Dim yD�butBranche As Single
  Dim xFinBranche As Single
  Dim yFinBranche As Single
  Dim monFacteurZoomPrecedent As Single 'Facteur de zoom pr�c�dent
  Dim Poign�e As Shape

  'D�termination du facteur de Zoom pour un cadrage maximun
  If gbFacteurZoom = 0 Then    ' Modif AV : 08.02.99 --> on ne rezoome pas � chaque redessin du giratoire (g�rer quand m�me le MDI)
    If (gbDemiLargeur < gbDemiHauteur) Then
      gbFacteurZoom = (gbDemiLargeur - uneMarge * 5) / (gbRayonExt + maLongueurBranche)
    Else
      gbFacteurZoom = (gbDemiHauteur - uneMarge * 5) / (gbRayonExt + maLongueurBranche)
    End If
  End If
  
  'Correction si le facteur de zoom est n�gatif (cas apr�s une mise en icone)
  If gbFacteurZoom <= 0 Then
      gbFacteurZoom = 1
  End If
  
  With gbProjetActif.Donn�es
    .FacteurZoom = gbFacteurZoom
    Set Poign�e = .shpPoign�e
  
    'Positionnement dans le nouveau niveau de zoom
    If IsPremierDessin Then
      'Dimensionnement du tableau de branches lors du chargement
      'ou de la cr�ation d'un giratoire, donc lors du premier dessin
    Else
      'Cas du chargement d'un giratoire existant
      'ou du redessin � un nouveau niveau de zoom
      Dim Xc As Single
      Dim Yc As Single
      Xc = .AncienXc
      Yc = .AncienYc
      monFacteurZoomPrecedent = gbProjetActif.FacteurZoomPrecedent
      With Poign�e
        .Left = gbDemiLargeur + (.Left - Xc) * (gbFacteurZoom / monFacteurZoomPrecedent)
        .Top = gbDemiHauteur + (.Top - Yc) * (gbFacteurZoom / monFacteurZoomPrecedent)
      End With
    End If
    
    'Dessin des anneaux
    ' Anneau int�rieur
    Dim shpAnneau As Shape
    Set shpAnneau = .shpAnneauInt
    DessinerAnneau shpAnneau, gbFacteurZoom * gbRayonInt
    With shpAnneau
      .Visible = True
      ControlePoign�e ObjAnneauInt, .Height / 2, Poign�e
    End With
    
    ' Anneau interm�diaire
    Set shpAnneau = .shpAnneauMil
    With shpAnneau
      If gbBandeFranchissable = 0 Then
        .Visible = False
      Else
        DessinerAnneau shpAnneau, gbFacteurZoom * (gbRayonInt + gbBandeFranchissable)
        .Visible = True
        ControlePoign�e ObjAnneauMil, .Height / 2, Poign�e
      End If
    End With
    
    ' Anneau ext�rieur
    Set shpAnneau = .shpAnneauExt
    DessinerAnneau shpAnneau, gbFacteurZoom * gbRayonExt
    With shpAnneau
      .Visible = True
      ControlePoign�e ObjAnneauExt, .Height / 2, Poign�e
    End With
    
    'Dessin des branches avec leur num�ro
    For i = 1 To gbProjetActif.NbBranches
      unAngleBranche = angConv(gbProjetActif.colBranches.Item(i).Angle, CVRADIAN)
      If IsPremierDessin Then
        'Cr�ation en m�moire des instances des tableaux de controles
        Load .linBranche(i)
        Load .linBordIlotEntr�e(i)
        Load .linBordIlotSortie(i)
        Load .linBordIlotGir(i)
        Load .linBordVoieEntr�e(i)
        Load .linVoieSortie(i)
        Load .linVoieEntr�e(i)
        Load .linBordVoieSortie(i)
        Load .lblLibell�Branche(i)
        Load .lblNumBranche(i)
''        'On stocke l'angle de la branche cr��e dans
''        'son champ Tag  pour utilisation ult�rieure
        .linBranche(i).Tag = CStr(unAngleBranche)
      End If
      
      unCos = Cos(unAngleBranche)
      unSin = -Sin(unAngleBranche)      ' "-" : car l'axe des Y est vers le bas
      'Creation de l'axe de la branche
      With .linBranche(i)
        TrRot gbRayonExt, 0, unXi, unYi, unCos, unSin
        .X1 = unXi
        .Y1 = unYi
        xD�butBranche = .X1
        yD�butBranche = .Y1
        TrRot gbRayonExt + maLongueurBranche, 0, unXi, unYi, unCos, unSin
        .X2 = unXi
        .Y2 = unYi
        xFinBranche = .X2
        yFinBranche = .Y2
        .Visible = True
      End With
      
      'Cr�ation du reste de la branche (Voies entrante, sortante et ilot)
      DessinerBranche i, unAngleBranche
      
      'Positionnement des noms de branches
      With .lblLibell�Branche(i)
'''        .Caption = Left(IDl_Branche, 1) & CStr(i)
       .Caption = "  " & gbProjetActif.colBranches.Item(i).nom & "  "
''        unMax = Max(.Width, .Height)+ uneMarge
        DecalXY xFinBranche, yFinBranche, unCos, unSin, .Caption
        .Left = xFinBranche ''+ (unMax * unCos - .Width) / 2
        .Top = yFinBranche ''+ (unMax * unSin - .Height) / 2
        .Visible = True
      End With
      
      With .lblNumBranche(i)
        .Caption = CStr(i)
        unMax = Max(.Width, .Height) + 3 * uneMarge     ' Coef 3 : Car on a substitu� n � Bn
        .Left = xD�butBranche + (-unMax * unCos - .Width) / 2
        .Top = yD�butBranche + (-unMax * unSin - .Height) / 2
        .Visible = True
      End With
      
    Next i
    
  End With    ' gbProjetActif.Donn�es
    
    'Stockage ancien facteur de zoom
  gbProjetActif.FacteurZoomPrecedent = gbFacteurZoom
  
End Sub

Private Sub ControlePoign�e(ByVal NumAnneau As Integer, ByVal unRayon As Single, ByVal Poign�e As Shape)
  If monObjetSelect = NumAnneau And Poign�e.Visible Then
    Dim exRayon As Single
    With Poign�e
      exRayon = Distance(.Left + .Width / 2, gbDemiLargeur, .Top + .Height / 2, gbDemiHauteur)
      If Abs(unRayon - exRayon) > monEpsilon Then
      ' La modification graphique a �t� refus�e : on replace la poign�e sur l'anneau
        .Left = gbDemiLargeur - .Width / 2 + (.Left + .Width / 2 - gbDemiLargeur) * (unRayon / exRayon)
        .Top = gbDemiHauteur - .Height / 2 + (.Top + .Height / 2 - gbDemiHauteur) * (unRayon / exRayon)
      End If
    End With
  End If
End Sub

'***************************************************************************************
' lblLibell�Branche_DblClick  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Public Sub LabelBranche_DblClick(Index As Integer)
        'Affichage des caract�ristiques de la branche s�lectionn�e
  frmCarBranche.Show vbModal

End Sub

'***************************************************************************************
' lblLibell�Branche_MouseDown  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Public Sub LabelBranche_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
  
  DebutClick = True
    
    'D�selection de la s�lection pr�c�dente : indispensable pour que les MouseMove soient ignor�es jusqu'� la fin de la proc�dure
    monObjetSelect = NoObjSelect
    monNumBrancheSelect = 0
    
  'S�lection d'une branche par s�lection de son num�ro
  SelectBranche Index
  
End Sub
'***************************************************************************************
' lblLibell�Branche_MouseMove  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Public Sub LabelBranche_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    
  If Index = 1 Then Exit Sub  ' On n'autorise pas de modifier la branche 1 (AV - 05.02.99)
  If monObjetSelect = NoObjSelect Then Exit Sub
  
  If DebutClick Then
    DebutClick = False
    Glisser = True
  End If
  
  If Not Glisser Then Exit Sub
  
  'Cas du bouton gauche enfonc� trait� uniquement
  If Button = 1 Then
    With gbProjetActif.Donn�es
      'Translation dans le rep�re absolu de la Form GiraBase
      X = .lblLibell�Branche(monNumBrancheSelect).Left + X
      Y = .lblLibell�Branche(monNumBrancheSelect).Top + Y
      'Modification dynamique de la branche
      ModifDynamicBranche X, Y
    End With
  End If
  
End Sub

'***************************************************************************************
' DessinerBranche  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Public Sub DessinerBranche(ByVal unNumBranche As Integer, ByVal unAngle As Single)
  'Proc�dure dessinnant le reste de la branche :
  'Deux bords de Chauss�e + il�t s�parateur
  
  Dim unXLoc As Single
  Dim unYLoc As Single
  Dim unCos As Single
  Dim unSin As Single
  Dim unXi As Single
  Dim unYi As Single
  Dim uneLargeurEntr�e As Single
  Dim uneLargeurSortie As Single
  Dim unRayonIlot As Single
  Dim uneLongueurIlot As Single
  
  Dim wLigne As Line
  
  
'R�cup�ration des largeurs d'entr�e et de sortie de la branche
  With gbProjetActif.colBranches.Item(unNumBranche)
    uneLargeurEntr�e = .LE4m
    uneLargeurSortie = .LS
    unRayonIlot = .LI / 2
    uneLongueurIlot = .LI
    uneLargeurEntr�e = .LE4m
    uneLargeurSortie = .LS
    unCos = Cos(unAngle)
    unSin = -Sin(unAngle)      ' "-" : car l'axe des Y est vers le bas
  End With
  
  With gbProjetActif.Donn�es
  
    If uneLargeurEntr�e = 0 Or uneLargeurSortie = 0 Then
    ' Entr�e ou sortie seulement (pas d'ilot)
      unRayonIlot = 0
      If uneLargeurEntr�e = 0 Then
        unXLoc = Sqr(Carr�(gbRayonExt) - Carr�(uneLargeurSortie))
        unYLoc = uneLargeurSortie
        .linVoieEntr�e(unNumBranche).Visible = False
        .linBordVoieEntr�e(unNumBranche).Tag = 0
        .linBordVoieSortie(unNumBranche).Tag = Arccos(unXLoc / gbRayonExt)
        Set wLigne = .linVoieSortie(unNumBranche)
      Else
        unXLoc = Sqr(Carr�(gbRayonExt) - Carr�(uneLargeurEntr�e))
        unYLoc = -uneLargeurEntr�e
        .linVoieSortie(unNumBranche).Visible = False
        .linBordVoieSortie(unNumBranche).Tag = 0
        .linBordVoieEntr�e(unNumBranche).Tag = Arccos(unXLoc / gbRayonExt)
        Set wLigne = .linVoieEntr�e(unNumBranche)
      End If
      
      With wLigne
        TrRot unXLoc, unYLoc, unXi, unYi, unCos, unSin
        .X1 = unXi
        .Y1 = unYi
        unXLoc = gbRayonExt + maLongueurBranche
        TrRot unXLoc, unYLoc, unXi, unYi, unCos, unSin
        .X2 = unXi
        .Y2 = unYi
        .Visible = True
      End With
      .linBordVoieEntr�e(unNumBranche).Visible = False
      .linBordVoieSortie(unNumBranche).Visible = False
    
    Else
      Set wLigne = .linBordVoieEntr�e(unNumBranche)
      With wLigne
        .Visible = True
      'Calcul des coordonn�es de l'intersection du bord
      'de la chauss�e entrante avec l'anneau ext�rieur
      'dans le rep�re local de la branche (origine centre des anneaux)
        unXLoc = Sqr(Carr�(gbRayonExt) - Carr�(uneLargeurEntr�e + unRayonIlot))
        unYLoc = -(uneLargeurEntr�e + unRayonIlot)
        .Tag = Arccos(unXLoc / gbRayonExt)
      
      'Calcul des coordonn�es absolues (translation centre vers origine (0,0)
      'de la feuile frmDonn�es plus une rotation autour du centre des anneaux
      'et stockage dans linBordVoieEntr�e
        TrRot unXLoc, unYLoc, unXi, unYi, unCos, unSin
        .X1 = unXi
        .Y1 = unYi
        TrRot gbRayonExt + uneLongueurIlot, -uneLargeurEntr�e, unXi, unYi, unCos, unSin
        .X2 = unXi
        .Y2 = unYi
        Set wLigne = gbProjetActif.Donn�es.linVoieEntr�e(unNumBranche)
        With wLigne
          .Visible = True
          .X1 = unXi
          .Y1 = unYi
          TrRot gbRayonExt + Max(maLongueurBranche, uneLongueurIlot), -uneLargeurEntr�e, unXi, unYi, unCos, unSin
          .X2 = unXi
          .Y2 = unYi
        End With
      End With
    
      Set wLigne = .linBordVoieSortie(unNumBranche)
      With wLigne
        .Visible = True
        'Calcul des coordonn�es de l'intersection du bord
        'de la chauss�e sortante avec l'anneau ext�rieur
        'dans le rep�re local de la branche (origine centre des anneaux)
        unXLoc = Sqr(Carr�(gbRayonExt) - Carr�(uneLargeurSortie + unRayonIlot))
        unYLoc = uneLargeurSortie + unRayonIlot
        .Tag = Arccos(unXLoc / gbRayonExt)
        
        'Calcul des coordonn�es absolues
        'et stockage dans linBordVoieSortie
        TrRot unXLoc, unYLoc, unXi, unYi, unCos, unSin
        .X1 = unXi
        .Y1 = unYi
        TrRot gbRayonExt + uneLongueurIlot, uneLargeurSortie, unXi, unYi, unCos, unSin
        .X2 = unXi
        .Y2 = unYi
        Set wLigne = gbProjetActif.Donn�es.linVoieSortie(unNumBranche)
        With wLigne
          .Visible = True
          .X1 = unXi
          .Y1 = unYi
          TrRot gbRayonExt + Max(maLongueurBranche, uneLongueurIlot), uneLargeurSortie, unXi, unYi, unCos, unSin
          .X2 = unXi
          .Y2 = unYi
        End With
      End With
    End If
    

    If unRayonIlot <> 0 Then
      'Calcul des trois points Mi (i valant 1,2 ou 3) du triangle formant l'ilot
      'C entre des anneaux et I intersection axe branche avec anneau ext�rieur
      '                  M1 <-|
      '                  |    |Rayon Ilot
      'C <--Rayon Ext--> I <--|-LongueurIlot---> M2
      '                  |    |Rayon Ilot
      '                  M3 <-|
      
      'Calcul de M1 qui est l'extr�mit� de linBordIlotEntr�e et linBordIlotGir
      TrRot gbRayonExt, unRayonIlot, unXi, unYi, unCos, unSin
      .linBordIlotEntr�e(unNumBranche).X1 = unXi
      .linBordIlotEntr�e(unNumBranche).Y1 = unYi
      .linBordIlotGir(unNumBranche).X1 = unXi
      .linBordIlotGir(unNumBranche).Y1 = unYi
      'Calcul de M2 qui est l'extr�mit� de linBordIlotEntr�e et linBordIlotSortie
      TrRot (gbRayonExt + uneLongueurIlot), 0, unXi, unYi, unCos, unSin
      .linBordIlotEntr�e(unNumBranche).X2 = unXi
      .linBordIlotEntr�e(unNumBranche).Y2 = unYi
      .linBordIlotSortie(unNumBranche).X2 = unXi
      .linBordIlotSortie(unNumBranche).Y2 = unYi
      'Calcul de M3 qui est l'extr�mit� de linBordIlotSortie et linBordIlotGir
      TrRot gbRayonExt, -unRayonIlot, unXi, unYi, unCos, unSin
      .linBordIlotSortie(unNumBranche).X1 = unXi
      .linBordIlotSortie(unNumBranche).Y1 = unYi
      .linBordIlotGir(unNumBranche).X2 = unXi
      .linBordIlotGir(unNumBranche).Y2 = unYi
      
      'Affichage des bords et de l'il�t
      .linBordIlotEntr�e(unNumBranche).Visible = True
      .linBordIlotSortie(unNumBranche).Visible = True
      .linBordIlotGir(unNumBranche).Visible = True
      .linBordVoieEntr�e(unNumBranche).Visible = True
      .linBordVoieSortie(unNumBranche).Visible = True
    Else
      'Effacement des bords et de l'il�t
      .linBordIlotEntr�e(unNumBranche).Visible = False
      .linBordIlotSortie(unNumBranche).Visible = False
      .linBordIlotGir(unNumBranche).Visible = False
      If uneLargeurEntr�e = 0 Or uneLargeurSortie = 0 Then
        .linBordVoieEntr�e(unNumBranche).Visible = False
        .linBordVoieSortie(unNumBranche).Visible = False
      End If
    End If
 
  End With
  
End Sub

'***************************************************************************************
' Op�re une Translation/Rotation d'un point connu dans un rep�re local
' L1, L2 : Coordonn�es locales dans le rep�re de la branche
' unCos, unSin : cosinus et sinus de l'angle fait par l'axe des X du rep�re local et l'axe horizontal absolu
' X1, Y1 : Coordonn�es du point (en twips) dans le rep�re de la feuille
'***************************************************************************************
Public Sub TrRot(ByVal L1 As Single, ByVal L2 As Single, ByRef X As Single, ByRef Y As Single, ByVal unCos As Single, ByVal unSin As Single)
  X = gbDemiLargeur + (L1 * unCos - L2 * unSin) * gbFacteurZoom
  Y = gbDemiHauteur + (L1 * unSin + L2 * unCos) * gbFacteurZoom
End Sub

'***************************************************************************************
' ModifDynamicBranche  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Private Sub ModifDynamicBranche(X As Single, Y As Single)
  Dim unRayonDyn As Single
  Dim unDX As Single
  Dim unDY As Single
  Dim unCos As Single
  Dim unSin As Single
  Dim unAngle As Single
  Dim unNumAmont As Integer
  Dim unNumAval As Integer
  
  'Calcul de la distance au centre des anneaux du pointeur souris
  unDX = X - gbDemiLargeur
  unDY = Y - gbDemiHauteur
  unRayonDyn = Sqr(unDX * unDX + unDY * unDY)
  
  'Calcul du cosinus et sinus de l'angle du segment (centre anneaux, pointeur souris)
  unCos = unDX / unRayonDyn
  unSin = unDY / unRayonDyn
  
  'Calcul de l'angle de la branche
  unAngle = CalculerAngle(unCos, unSin)
  
  If VerifierAngleBranche(unAngle, unNumAmont, unNumAval) Then
    'Modification de la branche s�lectionn�e possible (on reste entre amont et aval)
    ModifierBranche unAngle
  Else
    'Cas o� la branche d�passe sa branche aval ou amont
    gbProjetActif.Donn�es.lblInvite.Caption = IDl_LaBranche & CStr(monNumBrancheSelect) & IDm_BorneBranche & CStr(unNumAmont) & IDl_ET & CStr(unNumAval)
  End If

End Sub

'***************************************************************************************
' CalculerAngle  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Private Function CalculerAngle(ByVal unCos As Single, ByVal unSin As Single) As Single
  'Calcul d'un angle entre 0 et 2PI connaissant son Cosinus et son Sinus
  Dim unAngle As Single
  Dim unEpsilon As Single
  
  unEpsilon = 0.01
  
  'Pour avoir un rep�re direct ==> Y > 0 vers le haut
  unSin = -unSin
  
  If unCos = 0 Then
    If unSin < 1 + unEpsilon Then
      CalculerAngle = PI / 2
    Else
      CalculerAngle = 1.5 * PI
    End If
  Else
    unAngle = Atn(unSin / unCos) 'donne un r�sultat entre -PI/2 et +PI/2
    'Conversion pour avoir un r�sultat entre 0 et 2PI
    If unAngle >= 0 And unSin >= 0 Then
      CalculerAngle = unAngle
    ElseIf unAngle >= 0 And unSin < 0 Then
      CalculerAngle = PI + unAngle
    ElseIf unAngle < 0 And unSin < 0 Then
      CalculerAngle = 2 * PI + unAngle
    ElseIf unAngle < 0 And unSin > 0 Then
      CalculerAngle = PI + unAngle
    End If
  End If
  
End Function

'***************************************************************************************
' VerifierAngleBranche  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Private Function VerifierAngleBranche(ByVal unAngle As Single, ByRef unNumAmont As Integer, ByRef unNumAval As Integer) As Boolean
  Dim unAngleAval As Single
  Dim unAngleAmont As Single
  Dim unAnglePourTest As Single
  
  With gbProjetActif.Donn�es
    'Recherche du num�ro de branche amont et aval
    'Les branches sont num�rot�es de 1 � NbBranches
    unNumAmont = BranchePr�c�dent(monNumBrancheSelect)
    unNumAval = BrancheSuivant(monNumBrancheSelect)
    
    'Test si la branche d�passe sa branche amont ou aval
    unAngleAval = CSng(.linBranche(unNumAval).Tag)
    unAngleAmont = CSng(.linBranche(unNumAmont).Tag)
  End With
  
  If unAngleAval < unAngleAmont Then
    'Cas du d�placement d'une branche ayant un angle aval < � l'angle amont
    'car les angles stock�s sont entre 0 et 2PI
    unAngleAval = unAngleAval + 2 * PI
    If unAngle < unAngleAmont Then
      unAnglePourTest = unAngle + 2 * PI
    Else
      unAnglePourTest = unAngle
    End If
  Else
    unAnglePourTest = unAngle
  End If
  
  Dim EcartInf As Single
  Dim EcartSup As Single
  With gbProjetActif.Donn�es
    EcartInf = angConv(ArrondiSup(angConv(CSng(.linBordVoieEntr�e(unNumAmont).Tag) + CSng(.linBordVoieSortie(monNumBrancheSelect).Tag), False)), CVRADIAN)
    EcartSup = angConv(ArrondiSup(angConv(CSng(.linBordVoieSortie(unNumAval).Tag) + CSng(.linBordVoieEntr�e(monNumBrancheSelect).Tag), False)), CVRADIAN)
  End With
  'retourne True si entre angle amont et angle aval, False sinon
  VerifierAngleBranche = unAnglePourTest > unAngleAmont + EcartInf And unAnglePourTest < unAngleAval - EcartSup
  
End Function

Private Function ArrondiSup(ByVal Valeur As Single) As Integer
  ArrondiSup = Round(Valeur + 0.5)
End Function

Public Function BrancheSuivant(ByVal i As Integer) As Integer
' retourne le num�ro de branche qui suit imm�diatement la branche num�ro i
  BrancheSuivant = (i Mod gbProjetActif.NbBranches) + 1
End Function

Public Function BranchePr�c�dent(ByVal i As Integer) As Integer
' retourne le num�ro de branche qui pr�c�de imm�diatement la branche num�ro i
  BranchePr�c�dent = i - 1
  If BranchePr�c�dent = 0 Then BranchePr�c�dent = gbProjetActif.NbBranches
End Function

'***************************************************************************************
' ModifierBranche  : emprunt� � la maquette du CERTU (GIRABASE.FRM)
'***************************************************************************************
Public Sub ModifierBranche(unAngle As Single, Optional Invite As Boolean = True)
  Dim unCos As Single
  Dim unSin As Single
  Dim unMax As Single
  Dim wLigne As Line
  Dim xD�butBranche As Single
  Dim yD�butBranche As Single
  Dim xFinBranche As Single
  Dim yFinBranche As Single

  'Calcul du sinus et cosinus de l'angle
  unCos = Cos(unAngle)
  unSin = -Sin(unAngle)         ' "-" : car l'axe des Y est vers le bas
  
  With gbProjetActif.Donn�es
    'Modification de l'axe de la branche
    Set wLigne = .linBranche(monNumBrancheSelect)
    With wLigne
      .X1 = gbDemiLargeur + gbRayonExt * gbFacteurZoom * unCos
      .Y1 = gbDemiHauteur + gbRayonExt * gbFacteurZoom * unSin
      .X2 = gbDemiLargeur + (gbRayonExt + maLongueurBranche) * gbFacteurZoom * unCos
      .Y2 = gbDemiHauteur + (gbRayonExt + maLongueurBranche) * gbFacteurZoom * unSin
    End With
    
    'D�placement de la poign�e de s�lection
    With .shpPoign�e
      .Left = wLigne.X2 - .Width / 2
      .Top = wLigne.Y2 - .Height / 2
    End With
    
    'D�placement du nom de la branche
    D�placerNomBranche .lblLibell�Branche(monNumBrancheSelect), wLigne, unCos, unSin
'''    With .lblLibell�Branche(monNumBrancheSelect)
'''''      unMax = Max(.Width, .Height) + uneMarge
'''      xFinBranche = wLigne.X2
'''      yFinBranche = wLigne.Y2
'''      DecalXY xFinBranche, yFinBranche, unCos, unSin, .Caption
'''      .Left = xFinBranche ''+ (unMax * unCos - .Width) / 2
'''      .Top = yFinBranche ''+ (unMax * unSin - .Height) / 2
'''    End With
    
    'D�placement du num�ro de la branche
    With .lblNumBranche(monNumBrancheSelect)
      xD�butBranche = wLigne.X1
      yD�butBranche = wLigne.Y1
      unMax = Max(.Width, .Height) + 3 * uneMarge   ' Coef 3 : Car on a substitu� n � Bn
      .Left = xD�butBranche + (-unMax * unCos - .Width) / 2
      .Top = yD�butBranche + (-unMax * unSin - .Height) / 2
    End With
    
    'D�placement du reste de la branche
    DessinerBranche monNumBrancheSelect, unAngle
    
    'Affichage dynamique de la valeur du rayon
    wLigne.Tag = CStr(unAngle)
    monAngle = Format(angConv(unAngle, False), "0")
    If Invite Then
      .lblInvite.Caption = IDl_Angle & IDl_DeLaBranche & IDl_Egal & monAngle & " " & libelAngle(gbProjetActif.modeangle)
    End If
    
  End With  ' gbProjetActif.Donn�es
  
End Sub

Public Sub D�placerNomBranche(ByVal lblBranche As Label, ByVal wLigne As Line, ByVal unCos As Single, ByVal unSin As Single)
Dim xFinBranche As Single, yFinBranche As Single
    'D�placement du nom de la branche
    With lblBranche
      xFinBranche = wLigne.X2
      yFinBranche = wLigne.Y2
      DecalXY xFinBranche, yFinBranche, unCos, unSin, .Caption
      .Left = xFinBranche
      .Top = yFinBranche
    End With

End Sub

'******************************************************************************************
'Utilitaires emprunt�s � la maquette du CERTU (GIRABASE.FRM)
' DistanceAuCentreVue - gbDemiLargeur - gbDemiHauteur
' Obsol�tes : gbDemiHauteur et gbDemiLargeur sont calcul�s une fois pour toutes dans Dessin_MouseDown
'             DistanceAuCentreVue ne sert que dans Dessin_MouseMove
'*******************************************************************************************

'---> A remettre dans OUTILS(?)

Public Function TransRot(ByVal p As PT, ByVal Trans As PT, ByVal alpha As Single, ByVal Echelle As Single) As PT
' Translation-Rotation d'un point p, point d'insertion de bloc avec ou sans facteur d'�chelle
Dim p0 As New PT

  p0.X = p.X * Echelle
  p0.Y = p.Y * Echelle
  If alpha <> 0 Then
    Set p0 = Rotation(p0, angConv(alpha, CVRADIAN))
  End If
  ' translation
  p0.X = p0.X + Trans.X
  p0.Y = p0.Y + Trans.Y
  
  Set TransRot = p0
  
End Function

Public Function Rotation(ByVal p As PT, ByVal alpha As Single) As PT
Dim p0 As New PT

  p0.X = p.X * Cos(alpha) - p.Y * Sin(alpha)
  p0.Y = p.X * Sin(alpha) + p.Y * Cos(alpha)
  Set Rotation = p0
  
End Function

Public Function RotTrans(ByVal p As PT, ByVal Trans As PT, ByVal alpha As Single) As PT
Dim p0 As New PT
  
  Set p0 = Rotation(p, alpha)
  p0.X = p0.X + Trans.X
  p0.Y = p0.Y + Trans.Y
  Set RotTrans = p0
  
End Function

Public Function Distance(ByVal X As Double, ByVal X1 As Double, ByVal Y As Double, ByVal Y1 As Double) As Double
  Distance = Sqr(Carr�(X1 - X) + Carr�(Y1 - Y))
End Function

Public Function Carr�(ByVal v As Double) As Variant
  Carr� = v ^ 2
End Function

Private Function trEchel(ByVal L As Single, ByVal toReel As Boolean) As Single
'Transform�e d'une longueur L : d'unit�s dessin en unit�s r�elles ou r�ciproquement
' L est exprim� en unit�s dessin (toReel=False) ou r�elles (toReel=True)
  If toReel Then trEchel = L / gbFacteurZoom Else trEchel = L * gbFacteurZoom
End Function

Private Function trEchelX(ByVal X As Single, ByVal toReel As Boolean) As Single
'Transform�e de X : d'unit�s dessin en unit�s r�elles ou r�ciproquement
' orx est exprim� en unit�s dessin
' mil.x est exprim� en unit�s r�elles
' X est exprim� en unit�s dessin (toReel=False) ou r�elles (toReel=True)
Dim mil As PT
Dim Orx As Single
  With gbProjetActif.Donn�es
    If toReel Then
      trEchelX = mil.X + (X - Orx) / gbFacteurZoom
    Else
      trEchelX = (X - mil.X) * gbFacteurZoom + Orx
    End If
  End With
End Function

Private Function trEchelY(ByVal Y As Single, ByVal toReel As Boolean) As Single
'Transform�e de Y : d'unit�s dessin en unit�s r�elles ou r�ciproquement
' ory est exprim� en unit�s dessin
' mil.y est exprim� en unit�s r�elles
' Y est exprim� en unit�s dessin (toReel=False) ou r�eelles (toReel=True)
Dim mil As PT
Dim Ory As Single
  With gbProjetActif.Donn�es
    If toReel Then
      trEchelY = mil.Y - (Y - Ory) / gbFacteurZoom
    Else
      trEchelY = -(Y - mil.Y) * gbFacteurZoom + Ory
    End If
  End With
End Function

Private Sub Poign�eMove(ByVal X As Single, ByVal Y As Single)
' D�placement de la poign�e o� se trouve la souris
  With gbProjetActif.Donn�es.shpPoign�e
    .Left = X - .Width / 2
    .Top = Y - .Height / 2
  End With

End Sub
Private Sub DessinerAnneau(ByVal controle As Shape, ByVal Rayon As Single)
'Dessin de l'anneau - Rayon est en twips
  With controle
    .Width = Rayon * 2
    .Height = Rayon * 2
    .Left = gbDemiLargeur - Rayon
    .Top = gbDemiHauteur - Rayon
  End With
End Sub

Private Sub DecalXY(ByRef Left As Single, ByRef Top As Single, ByVal unCos As Single, ByVal unSin As Single, ByVal Texte As String)
  Dim LgTexte As Single
 
  LgTexte = gbProjetActif.Donn�es.TextWidth(Texte)
  Top = Top - 100
  ''Left = Left + 100
  Left = Left + (unCos / 2 - 0.5) * LgTexte
  Top = Top + unSin * gbProjetActif.Donn�es.TextHeight("")
  If Abs(unSin) < 0.15 Then Top = Top - gbProjetActif.Donn�es.TextHeight("")
  If Abs(unCos) < 0.075 Then
    Top = Top - Sgn(unSin) * gbProjetActif.Donn�es.TextHeight("") * 0.25
  End If
  Left = Max(0, Left)
  Left = Min(Left, gbDemiLargeur * 2 - LgTexte)

End Sub
