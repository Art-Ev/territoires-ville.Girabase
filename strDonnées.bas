Attribute VB_Name = "strDonn�es"

'*************************************************************************************
'*
'*          Projet GIRABASE - CERTU - CETE de l'Ouest
'*
'*          Module de base : DONNEES.BAS - strDonn�es
'*
'*          CONSTANTES DE CHAINE Susceptibles d'�tre traduites du module frmDonn�es
'*          Certaines constantes sont utilis�es �galement utilis�es par frmR�sultats
'*
'*************************************************************************************

Option Explicit


'***********************************************
 
Public Const IDm_Enregistrer = "Enregistrer le giratoire"
Public Const IDm_Cr�eP�riode = "Cr�er la P�riode"
  
' Constantes se rapportant � un changement de contexte
'Public Const IDv_Chevauchement = "Chevauchement des branches entre "
Public Const IDv_Chevauchement = "Impossible de prendre en compte votre demande. Cela conduirait � faire chevaucher les branches "
Public Const IDv_ModifMilieu = _
"Le passage en rase campagne n�cessite de r�duire auparavant la largeur de l'anneau."
Public Const IDm_ReinTrafic = _
"R�initialisation des P�riodes de trafic"

' Constantes d'information
Public Const IDi_P�riode = _
  "Choisissez une p�riode existante ou tapez le nom d'une nouvelle p�riode..."
Public Const IDi_BF = "Le rayon ext�rieur doit �tre inf�rieur � 15 m, la bande franchissable doit �tre de pente inf�rieure � 6 % " _
  & "et �tre d�limit�e par des bordures de moins de 3 cm sans ligne continue." & _
  " Sinon, la bande franchissable est � associer � l'il�t central infranchissable."
Public Const IDi_LE4M = _
 "Largeur conseill�e entre marquages ou � d�faut entre bordures, 3,5 � 4 m pour une voie, 6 � 7 m pour 2 voies, " _
 & "9 � 10 m pour 3 voies."
Public Const IDi_LS = _
 "Largeur conseill�e entre marquages ou � d�faut entre bordures, 4 � 5 m pour une voie, " _
 & "6 � 7 m pour 2 voies."
Public Const IDi_QP = "Trafic bidirectionnel..."
Public Const Idi_D�faut = "   "

' A Tests sur valeurs individuelles
  ' A1 -Site - Dimensionnement

    ' A1.1 Donn�es et r�sultats
Public Const IDm_TropDeBranchesEnRC = _
 "Un giratoire � plus de 6 branches n'est pas recommand� en rase campagne."
Public Const IDm_RTropGrand = _
  "Un rayon d'�lot infranchissable sup�rieur � 25 m est tr�s rarement justifi�."
Public Const IDm_LATropGrand = _
  "Un anneau aussi large est inutile."
Public Const IDm_LEPetit = _
  "Si possible, une largeur d'entr�e d'au moins 3 m est pr�f�rable."
Public Const IDm_LETropLargeEnRC = _
  "Une entr�e � 3 voies n'est pas recommand�e en rase campagne."
Public Const IDm_LETropLargePourPi�tons = _
  "Les pi�tons auront des difficult�s � traverser l'entr�e."
Public Const IDm_LSPetit = _
  "Si possible, une largeur de sortie d'au moins 3,5 m est pr�f�rable."
Public Const IDm_LSTropLarge = _
  "Une sortie aussi large est rarement utile."
    
    ' A1.2 Donn�es seules
Public Const IDv_RayonInferieur100m = "La valeur du rayon est limit�e � 100 m�tres."
Public Const IDm_RTropGrandPourMiniG = _
  "Pour un mini-giratoire, le rayon est pris �gal � 0." _
& " Dans les autres cas, le rayon est obligatoirement sup�rieur � 3,5 m."
Public Const IDm_RNulEnRC = _
  "Les mini-giratoires ne sont pas autoris�s en rase campagne."
Public Const IDm_RNulEnPU = _
  "Un mini-giratoire ne peut pas �tre r�alis� en entr�e d'agglom�ration " _
& "ou sur un itin�raire de contournement."
Public Const IDm_LENul = "Aucune entr�e possible - Branche de sortie uniquement."
Public Const IDm_LETropPetit = "L'entr�e est trop �troite."
Public Const IDm_LE2Roues = "Entr�e sp�ciale 2 roues sinon l'entr�e est trop �troite."
Public Const IDm_LSNul = "Aucune sortie possible - Branche d'entr�e uniquement."
Public Const IDm_LSTropPetit = "La sortie est trop �troite."
Public Const IDm_LS2Roues = "Sortie sp�ciale 2 roues sinon la sortie est trop �troite."
  
  ' A2 Trafics
Public Const IDm_QPTropGrand = "Le trafic pi�ton est tr�s important. V�rifiez vos donn�es."
Public Const IDm_QTropGrand = "Le trafic est tr�s important. V�rifiez vos donn�es."
  
  ' A3 Tests sur valeurs calcul�es
    ' A3.1 Donn�es et R�sultats
Public Const IDm_RgVoirGiration = _
  "V�rifiez la giration des bus et poids-lourds."
Public Const IDm_RgVoirGirationEnRC = _
  "Cette taille de giratoire n'est acceptable que sur le r�seau secondaire en rase campagne." _
& " V�rifiez la giration des bus et poids-lourds."
    ' A3.2 donn�es seules
Public Const IDm_RgTropPetitPourMiniG = _
  "Le rayon ext�rieur est trop faible pour un mini-giratoire."
Public Const IDm_RgTropGrandPourMiniG = _
  "Un mini-giratoire n'est pas appropri�." _
& "L'emprise disponible permet l'am�nagement d'un giratoire semi-franchissable."
Public Const IDm_QETropImportant = _
  "Le trafic est tr�s important pour une entr�e. V�rifiez vos donn�es"

' B Tests impliquant plusieurs valeurs
Public Const IDm_RgTropPetit = _
  "Avec une entr�e � 2 voies, un rayon ext�rieur d'au moins 20 m est souhaitable en rase campagne."
Public Const IDm_EvasementEnRC = _
  "En rase campagne, l'�vasement devrait �tre complet 35 m avant l'entr�e."
Public Const IDm_EvasementTropPetit = _
  "La longueur d'�vasement est courte."
Public Const IDm_LATropEtroit = "L'anneau est trop �troit."
Public Const IDm_LATropEtroitPourEntrer = _
  "L'anneau est trop �troit pour une circulation optimale de la voie d'entr�e "
Public Const IDm_LITropPetit = _
  "La largeur d'�lot s�parateur est insuffisante pour les pi�tons."
Public Const IDm_LITropGrand = _
  "Le trafic sortant n'a pas d'influence sur la capacit�." _
& "Vous pouvez �ventuellement r�duire la largeur de l'�lot s�parateur."
Public Const IDm_Bf = _
  "Pour un giratoire semi-franchissable," _
& " la largeur de bande franchissable doit �tre comprise entre 1,5 m et 2 m."
Public Const IDm_AngleTropPetitPourMiniG = _
  "Configuration dangereuse : risque de contournement permanent par la gauche pour le tourne � gauche."
Public Const IDm_AnglePourMiniG = _
  "Configuration dangereuse : risque de contournement par la gauche pour le tourne � gauche."
Public Const IDm_QTropPetitPourTAD = _
  "Le trafic ne justifie pas la pr�sence de cette voie directe de tourne-�-droite."
  
Public Const IDv_RapportLE = _
  "Le rapport LE � 4m / LE � 15m doit �tre compris entre 1 et 2,5."
Public Const IDm_BfTropPetitPourMiniG = _
  "Le d�me central franchissable d'un mini-giratoire doit avoir un rayon compris entre 1,5 m et 2,5 m."
Public Const IDv_LTropGrand = _
  "La somme des largeurs d'entr�e � 4m, d'ilot et de sortie doit �tre inf�rieure au diam�tre ext�rieur de l'anneau."
Public Const IDm_QENul = _
  "Attention ! Incoh�rence entre la largeur d'entr�e et le trafic."
Public Const IDm_QSNul = _
  "Attention ! Incoh�rence entre la largeur de sortie et le trafic."
Public Const IDm_QEGrandPourMiniG = _
  "Attention ! Trafic important, il existe un risque de dysfonctionnement."
Public Const IDm_QETropGrandPourMiniG = _
  "Le trafic est trop important pour un mini-giratoire."
Public Const IDm_QETropGrand = _
  "Trafic tr�s important pour un giratoire."


' C Messages d'avertissement � la saisie

Public Const IDv_LE0etTAD = _
 "Une largeur d'entr�e nulle n'est pas compatible avec la pr�sence d'une voie de Tourne � Droite."
Public Const IDv_LE0etLS0 = _
 "La largeur d'entr�e et la largeur de sortie ne peuvent �tre toutes deux nulles."
Public Const IDv_RgOuBranchesIncorrect = _
 "Le rayon ext�rieur n'est pas compatible avec la dimension des branches ; " & vbCrLf & _
 "il vous faudra d'abord rectifier les branches concern�es avant de r�duire le rayon ext�rieur."
Public Const IDv_RgOuUneBrancheIncorrect = _
  "Cette valeur n'est pas compatible avec les autres donn�es g�om�triques du giratoire."
Public Const IDv_ValeurNum�rique = _
 "La valeur n'est pas num�rique."
Public Const IDv_ValeurPositive = _
 "La valeur doit �tre positive ou nulle."
Public Const IDv_ControleBornes = _
 "La valeur doit �tre comprise entre "
Public Const IDv_ControleBornesLA = _
 "La largeur d'anneau doit �tre comprise entre "
Public Const IDv_ValidationRgMinimal = _
 "La valeur du rayon ext�rieur doit �tre sup�rieure � "
Public Const IDv_ControleBornesRg = _
  "La valeur du rayon ext�rieur doit �tre comprise entre "
Public Const IDv_TraficTotalNul = _
  "Le trafic total de la p�riode active est nul."

Public Const IDv_RetTAD = _
 "Les voies Tourne � Droite sont interdites sur un mini-giratoire." _
  & vbCrLf & "Voulez-vous supprimer les voies de tourne � droite introduites sur le giratoire?"
Public Const IDv_PasTrafic = _
  "Aucun trafic n'a �t� saisi."
Public Const IDv_NonValide = _
  "Des donn�es non valides ou incompl�tes ont �t� rencontr�es lors de la phase de v�rification." _
  & vbCrLf & "Vous devez corriger les erreurs pour obtenir les r�sultats."
Public Const IDv_TraficNonNul = _
  "Des Trafics non nuls ont �t� d�tect�s sur des largeurs d'entr�e ou de sortie nulles." _
  & vbCrLf & "Vous pouvez effacer les trafics ou corriger le dimensionnement ;" _
  & vbCrLf & "Voulez-vous effacer les trafics rencontr�s sur des largeurs nulles?"
