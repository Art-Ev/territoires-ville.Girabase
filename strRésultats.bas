Attribute VB_Name = "strR�sultats"
'*************************************************************************************
'*
'*          Projet GIRABASE - CERTU - CETE de l'Ouest
'*
'*          Module de base : RESULTATS.BAS - strR�sultats
'*
'*          CONSTANTES DE CHAINE Susceptibles d'�tre traduites du module frmR�sultats
'*
'*************************************************************************************

Option Explicit

'Constantes pour les libell�s
Public Const IDl_Courbes = "&Courbes"
Public Const IDl_Remarques = "&Remarques"
Public Const IDl_SaturerBranche = "Saturer la branche"
Public Const IDl_SupprimerP�riode = "Supprimer la p�riode"

' Constantes pour les courbes de capacit�
Public Const IDl_Trafic = "Trafic"
Public Const IDl_Genant = "g�nant"

' Constantes pour l'affichage du tableau
Public Const IDl_VehiculeHeure = "vh"

'Constantes pour les conseils
Public Const IDm_BrancheSortie = "Branche de sortie uniquement"
Public Const IDm_BrancheEntr�e = "Branche d'entr�e uniquement"

Public Const IDc_MatriceSaturation = "Branche avec un trafic en entr�e limit� � sa capacit�"
Public Const IDc_TraficsIncomplets = "Les trafics de la p�riode en cours sont incomplets ; " & "les conseils relatifs � cette p�riode ne peuvent �tre �dit�s."
Public Const IDc_QEnul = "Comme il n'y a jamais de trafic, la largeur d'entr�e de la branche devrait �tre nulle."
Public Const IDc_QSnul = "Comme il n'y a jamais de trafic, la largeur de sortie la branche devrait �tre nulle."
Public Const IDc_RTropGrand2 = "Il peut �tre r�duit au b�n�fice de la s�curit�."
Public Const IDc_IlotEtroit = "Un �lot plus large serait pr�f�rable pour les pi�tons."
Public Const IDc_IlotASeparer = "Penser � s�parer l'entr�e de la sortie par une bande en relief, une zone pav�e ou autre."
Public Const IDc_LS2voiesN = "Une sortie � deux voies est n�cessaire. "
Public Const IDc_LS2voiesP = "Une sortie � deux voies peut �tre envisag�e. "
Public Const IDc_Travers�ePi�tons = "Attention aux travers�es pi�tonnes."

'Constantes pour les conseils de fonctionnement (Branche active)
Public Const IDc_RCn�gative = "ENTR�E SATUR�E ; vous pouvez : "
Public Const IDc_RCfaible = "Attention, la r�serve de capacit� est faible ; vous pouvez : "
Public Const IDc_RC1 = " - envisager une voie directe de tourne-�-droite"
Public Const IDc_RC2 = " - �largir l'entr�e � 2 voies"
Public Const IDc_RC2p = ", mais attention au traitement des travers�es pi�tonnes"
Public Const IDc_RC3 = " - �largir l'entr�e � 3 voies"
Public Const IDc_RC3p = " si le trafic pi�ton est tr�s faible"
Public Const IDc_RC4 = " - �largir l'anneau et, si n�cessaire, l'entr�e"
Public Const IDc_RC5 = " - �largir l'�lot s�parateur"
Public Const IDc_RC6 = " - agrandir le giratoire"
Public Const IDc_RC11 = "Un des mouvements est assez important pour envisager de d�niveler le carrefour."
Public Const IDc_RC12 = "Une entr�e � une voie suffit probablement."
Public Const IDc_RC13 = "Une entr�e � une voie suffit probablement et serait plus favorable aux pi�tons"
Public Const IDc_RC14 = "Une entr�e � 2 voies suffit probablement."
Public Const IDc_TMA1 = "Le temps d'attente sur la branche est important."
Public Const IDc_TMA2 = "Le temps moyen d'attente sur la branche est tr�s important."
Public Const IDc_LK1 = "La file d'attente sur la branche est importante. " & "Attention aux pertes de visibilit� en approche dues au profil en long ou au trac�."
Public Const IDc_LK2 = "La file d'attente sur la branche est tr�s importante. " & "Attention aux pertes de visibilit� en approche dues au profil en long ou au trac�."
Public Const IDc_LK3 = "La file d'attente sur la branche est importante, penser au carrefour en amont."
Public Const IDc_LK4 = "La file d'attente sur la branche est tr�s importante, penser au carrefour en amont."
Public Const IDc_LK5 = "La file d'attente sur la branche peut �tre importante. " & "Attention aux pertes de visibilit� en approche dues au profil en long ou au trac�."
Public Const IDc_LK6 = "La file d'attente sur la branche peut �tre importante, penser au carrefour en amont."

