VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "tabctl32.ocx"
Object = "{B02F3647-766B-11CE-AF28-C3A2FBE76A13}#2.5#0"; "ss32x25.ocx"
Begin VB.Form frmDonn�es 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FFFFFF&
   Caption         =   "Giratoire1"
   ClientHeight    =   7590
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   14670
   Icon            =   "Donn�es.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7590
   ScaleWidth      =   14670
   Begin TabDlg.SSTab tabDonn�es 
      Height          =   6375
      Left            =   3960
      TabIndex        =   23
      TabStop         =   0   'False
      Top             =   120
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   11245
      _Version        =   393216
      Tab             =   1
      TabHeight       =   520
      TabCaption(0)   =   "Description du site"
      TabPicture(0)   =   "Donn�es.frx":030A
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "fraEnvironnement"
      Tab(0).Control(1)=   "txtNomGiratoire"
      Tab(0).Control(2)=   "txtLocalisation"
      Tab(0).Control(3)=   "fraCarBranches"
      Tab(0).Control(4)=   "lblNomGiratoire"
      Tab(0).Control(5)=   "lblLocalisation"
      Tab(0).ControlCount=   6
      TabCaption(1)   =   "Dimensionnement"
      TabPicture(1)   =   "Donn�es.frx":0326
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "fraAnneau"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "fraBranches"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "fraVariante"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).ControlCount=   3
      TabCaption(2)   =   "Donn�es de trafic"
      TabPicture(2)   =   "Donn�es.frx":0342
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "lblP�riode"
      Tab(2).Control(1)=   "fraTrafic(0)"
      Tab(2).Control(2)=   "fraTraficTout"
      Tab(2).Control(3)=   "fraTrafic(1)"
      Tab(2).Control(4)=   "cboP�riode"
      Tab(2).Control(5)=   "fraQTE"
      Tab(2).Control(6)=   "cmdChangeMode"
      Tab(2).Control(7)=   "vgdTrafic(0)"
      Tab(2).ControlCount=   8
      Begin FPSpread.vaSpread vgdTrafic 
         Height          =   1215
         Index           =   0
         Left            =   -74760
         TabIndex        =   20
         Top             =   3480
         Width           =   2790
         _Version        =   131077
         _ExtentX        =   4921
         _ExtentY        =   2143
         _StockProps     =   64
         AutoSize        =   -1  'True
         ColHeaderDisplay=   1
         EditEnterAction =   5
         EditModePermanent=   -1  'True
         EditModeReplace =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxCols         =   4
         MaxRows         =   4
         ProcessTab      =   -1  'True
         ScrollBars      =   0
         SelectBlockOptions=   0
         SpreadDesigner  =   "Donn�es.frx":035E
         UnitType        =   2
         UserResize      =   0
         VisibleCols     =   500
         VisibleRows     =   500
      End
      Begin VB.CommandButton cmdChangeMode 
         Caption         =   "Mode VL-PL-2R"
         Height          =   495
         Left            =   -70560
         TabIndex        =   22
         Top             =   2760
         Width           =   855
      End
      Begin VB.Frame fraQTE 
         Enabled         =   0   'False
         Height          =   1815
         Left            =   -71880
         TabIndex        =   47
         Top             =   3360
         Width           =   855
         Begin VB.TextBox txtQE 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   0
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   49
            Top             =   340
            Visible         =   0   'False
            Width           =   615
         End
         Begin VB.TextBox txtQT 
            Alignment       =   1  'Right Justify
            Height          =   285
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   48
            Top             =   1440
            Width           =   615
         End
         Begin VB.Label lblTQE 
            Caption         =   "TE"
            Height          =   255
            Left            =   240
            TabIndex        =   50
            Top             =   0
            Width           =   375
         End
      End
      Begin VB.ComboBox cboP�riode 
         BackColor       =   &H00FFFFFF&
         Height          =   315
         ItemData        =   "Donn�es.frx":0525
         Left            =   -73560
         List            =   "Donn�es.frx":0527
         TabIndex        =   11
         Text            =   "P�riode1"
         Top             =   840
         Width           =   3015
      End
      Begin VB.Frame fraVariante 
         Height          =   615
         Left            =   720
         TabIndex        =   44
         Top             =   480
         Width           =   5415
         Begin VB.TextBox txtVariante 
            Height          =   285
            Left            =   1080
            TabIndex        =   6
            Top             =   240
            Width           =   2655
         End
         Begin VB.Label lblDateModif 
            AutoSize        =   -1  'True
            Height          =   195
            Left            =   4080
            TabIndex        =   63
            Top             =   240
            Width           =   45
         End
         Begin VB.Label lblVariante 
            Caption         =   "Variante :"
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
            TabIndex        =   45
            Top             =   240
            Width           =   855
         End
      End
      Begin VB.Frame fraBranches 
         Caption         =   "Branches"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3015
         Left            =   720
         TabIndex        =   36
         Top             =   3120
         Width           =   5415
         Begin FPSpread.vaSpread vgdLargBranche 
            Height          =   1935
            Left            =   360
            TabIndex        =   10
            Top             =   960
            Width           =   4680
            _Version        =   131077
            _ExtentX        =   8255
            _ExtentY        =   3413
            _StockProps     =   64
            AutoSize        =   -1  'True
            DisplayColHeaders=   0   'False
            EditEnterAction =   5
            EditModePermanent=   -1  'True
            EditModeReplace =   -1  'True
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            GrayAreaBackColor=   -2147483643
            MaxCols         =   5
            MaxRows         =   8
            ProcessTab      =   -1  'True
            ScrollBars      =   0
            SelectBlockOptions=   0
            ShadowDark      =   12632256
            ShadowText      =   4210752
            SpreadDesigner  =   "Donn�es.frx":0529
            UserResize      =   0
            VisibleCols     =   500
            VisibleRows     =   500
         End
         Begin VB.Label lblLE15m 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "� 15 m"
            Height          =   255
            Left            =   1560
            TabIndex        =   43
            Top             =   720
            Width           =   735
         End
         Begin VB.Label lblLE4m 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "� 4 m"
            Height          =   255
            Left            =   840
            TabIndex        =   42
            Top             =   720
            Width           =   735
         End
         Begin VB.Label lblLargeurs 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Largeurs"
            Height          =   255
            Left            =   840
            TabIndex        =   41
            Top             =   240
            Width           =   3135
         End
         Begin VB.Label lblLS 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Sortie"
            Height          =   495
            Left            =   3240
            TabIndex        =   40
            Top             =   480
            Width           =   735
         End
         Begin VB.Label lblLI 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Il�t"
            Height          =   495
            Left            =   2400
            TabIndex        =   39
            Top             =   480
            Width           =   735
         End
         Begin VB.Label lblEntr�e 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Entr�e"
            Height          =   255
            Left            =   840
            TabIndex        =   38
            Top             =   480
            Width           =   1455
         End
         Begin VB.Label lblEntr�eEvas�e 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Entr�e �vas�e"
            Height          =   495
            Left            =   4080
            TabIndex        =   37
            Top             =   480
            Width           =   855
         End
      End
      Begin VB.Frame fraEnvironnement 
         Caption         =   "Environnement"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   -74760
         TabIndex        =   18
         Top             =   2040
         Width           =   5895
         Begin VB.OptionButton optMilieu 
            Caption         =   "Urbain"
            Height          =   255
            Index           =   2
            Left            =   4320
            TabIndex        =   4
            TabStop         =   0   'False
            Top             =   360
            Width           =   975
         End
         Begin VB.OptionButton optMilieu 
            Caption         =   "P�ri Urbain"
            Height          =   255
            Index           =   1
            Left            =   2280
            TabIndex        =   3
            Top             =   360
            Width           =   1455
         End
         Begin VB.OptionButton optMilieu 
            Caption         =   "Rase Campagne"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   2
            Top             =   360
            Width           =   1575
         End
      End
      Begin VB.TextBox txtNomGiratoire 
         Height          =   375
         Left            =   -73080
         TabIndex        =   0
         Top             =   720
         Width           =   4095
      End
      Begin VB.TextBox txtLocalisation 
         Height          =   495
         Left            =   -73080
         MultiLine       =   -1  'True
         TabIndex        =   1
         Top             =   1200
         Width           =   4095
      End
      Begin VB.Frame fraAnneau 
         Caption         =   "Anneau"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   720
         TabIndex        =   24
         Top             =   1200
         Width           =   5415
         Begin VB.TextBox txtRg 
            BackColor       =   &H8000000B&
            Height          =   285
            Left            =   2880
            Locked          =   -1  'True
            TabIndex        =   64
            Top             =   1320
            Width           =   735
         End
         Begin VB.TextBox txtBf 
            Height          =   285
            Left            =   2880
            TabIndex        =   8
            Top             =   600
            Width           =   735
         End
         Begin VB.TextBox txtR 
            Height          =   285
            Left            =   2880
            MaxLength       =   8
            TabIndex        =   7
            Top             =   240
            Width           =   735
         End
         Begin VB.TextBox txtLA 
            Height          =   285
            Left            =   2880
            MaxLength       =   8
            TabIndex        =   9
            Top             =   960
            Width           =   735
         End
         Begin VB.Label lblMetres 
            Caption         =   "m�tres"
            Height          =   255
            Index           =   3
            Left            =   3720
            TabIndex        =   32
            Top             =   1440
            Width           =   615
         End
         Begin VB.Label lblRg 
            Caption         =   "Rayon ext�rieur du giratoire :"
            Height          =   255
            Left            =   240
            TabIndex        =   31
            Top             =   1440
            Width           =   2295
         End
         Begin VB.Label lblMetres 
            Caption         =   "m�tres"
            Height          =   255
            Index           =   1
            Left            =   3720
            TabIndex        =   30
            Top             =   720
            Width           =   615
         End
         Begin VB.Label lblBf 
            Caption         =   "Largeur de la bande franchissable : "
            Height          =   255
            Left            =   240
            TabIndex        =   29
            Top             =   720
            Width           =   2535
         End
         Begin VB.Label lblR 
            Caption         =   "Rayon de l'�lot infranchissable :"
            Height          =   255
            Left            =   240
            TabIndex        =   28
            Top             =   360
            Width           =   2295
         End
         Begin VB.Label lblLA 
            AutoSize        =   -1  'True
            Caption         =   "Largeur de l'anneau :"
            Height          =   195
            Left            =   240
            TabIndex        =   27
            Top             =   1080
            Width           =   2145
         End
         Begin VB.Label lblMetres 
            AutoSize        =   -1  'True
            Caption         =   "m�tres"
            Height          =   195
            Index           =   0
            Left            =   3720
            TabIndex        =   26
            Top             =   360
            Width           =   465
         End
         Begin VB.Label lblMetres 
            AutoSize        =   -1  'True
            Caption         =   "m�tres"
            Height          =   195
            Index           =   2
            Left            =   3720
            TabIndex        =   25
            Top             =   1080
            Width           =   465
         End
      End
      Begin VB.Frame fraCarBranches 
         Caption         =   "Caract�ristiques des branches"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2895
         Left            =   -74760
         TabIndex        =   19
         Top             =   3240
         Width           =   6015
         Begin FPSpread.vaSpread vgdCarBranche 
            Height          =   1935
            Left            =   120
            TabIndex        =   5
            Top             =   840
            Width           =   5655
            _Version        =   131077
            _ExtentX        =   9975
            _ExtentY        =   3413
            _StockProps     =   64
            AutoSize        =   -1  'True
            BackColorStyle  =   3
            ColHeaderDisplay=   0
            DisplayColHeaders=   0   'False
            EditEnterAction =   5
            EditModePermanent=   -1  'True
            EditModeReplace =   -1  'True
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   5
            MaxRows         =   8
            ProcessTab      =   -1  'True
            ScrollBars      =   0
            SelectBlockOptions=   0
            SpreadDesigner  =   "Donn�es.frx":1692
            UserResize      =   0
            VisibleCols     =   500
            VisibleRows     =   500
         End
         Begin VB.Label lblNomBranche 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Nom"
            Height          =   495
            Left            =   600
            TabIndex        =   57
            Top             =   360
            Width           =   2295
         End
         Begin VB.Label lblTAD 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Tourne � droite"
            Height          =   495
            Left            =   5040
            TabIndex        =   56
            Top             =   360
            Width           =   735
         End
         Begin VB.Label lblRampe 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Rampe > 3%"
            Height          =   495
            Left            =   4320
            TabIndex        =   55
            Top             =   360
            Width           =   735
         End
         Begin VB.Label lblEcart 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Ecart"
            Height          =   495
            Left            =   3600
            TabIndex        =   54
            Top             =   360
            Width           =   735
         End
         Begin VB.Label lblAngleBranche 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Angle "
            Height          =   495
            Left            =   2880
            TabIndex        =   53
            Top             =   360
            Width           =   735
         End
      End
      Begin VB.Frame fraTrafic 
         Caption         =   "Trafic Pi�tons"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Index           =   1
         Left            =   -74880
         TabIndex        =   51
         Top             =   1320
         Width           =   6255
         Begin FPSpread.vaSpread vgdTrafic 
            Height          =   495
            Index           =   1
            Left            =   600
            TabIndex        =   12
            Top             =   360
            Width           =   4935
            _Version        =   131077
            _ExtentX        =   8705
            _ExtentY        =   873
            _StockProps     =   64
            AutoSize        =   -1  'True
            ColHeaderDisplay=   1
            DisplayRowHeaders=   0   'False
            EditEnterAction =   5
            EditModePermanent=   -1  'True
            EditModeReplace =   -1  'True
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   8
            MaxRows         =   1
            ProcessTab      =   -1  'True
            ScrollBars      =   0
            SelectBlockOptions=   0
            SpreadDesigner  =   "Donn�es.frx":36C9
            UnitType        =   2
            UserResize      =   0
            VisibleCols     =   500
            VisibleRows     =   500
         End
      End
      Begin VB.Frame fraTraficTout 
         Caption         =   "Trafic"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   -74640
         TabIndex        =   21
         Top             =   2640
         Visible         =   0   'False
         Width           =   3615
         Begin VB.OptionButton optTrafic 
            Caption         =   "VL"
            Height          =   255
            Index           =   0
            Left            =   240
            TabIndex        =   14
            Top             =   240
            Value           =   -1  'True
            Width           =   615
         End
         Begin VB.OptionButton optTrafic 
            Caption         =   "PL"
            Height          =   255
            Index           =   1
            Left            =   840
            TabIndex        =   17
            Top             =   240
            Width           =   615
         End
         Begin VB.OptionButton optTrafic 
            Caption         =   "2R"
            Height          =   255
            Index           =   2
            Left            =   1440
            TabIndex        =   16
            Top             =   240
            Width           =   615
         End
         Begin VB.OptionButton optTrafic 
            Caption         =   "Voir UVP"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   -1  'True
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   3
            Left            =   2280
            TabIndex        =   15
            Top             =   240
            Width           =   1095
         End
      End
      Begin VB.Frame fraTrafic 
         Caption         =   "Trafic V�hicules"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3855
         Index           =   0
         Left            =   -74880
         TabIndex        =   52
         Top             =   2400
         Width           =   6255
         Begin VB.Frame fraQTS 
            Enabled         =   0   'False
            Height          =   495
            Left            =   120
            TabIndex        =   60
            Top             =   2280
            Width           =   2865
            Begin VB.TextBox txtQS 
               Alignment       =   1  'Right Justify
               Height          =   285
               Index           =   0
               Left            =   480
               Locked          =   -1  'True
               TabIndex        =   61
               Top             =   120
               Visible         =   0   'False
               Width           =   615
            End
            Begin VB.Label lblTQS 
               Caption         =   "TS"
               Height          =   255
               Left            =   120
               TabIndex        =   62
               Top             =   120
               Width           =   375
            End
         End
         Begin VB.Label lblTraficUVP 
            AutoSize        =   -1  'True
            Caption         =   "Trafic UVP"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   360
            TabIndex        =   13
            Top             =   240
            Width           =   2505
         End
      End
      Begin VB.Label lblNomGiratoire 
         AutoSize        =   -1  'True
         Caption         =   "Nom du Carrefour : "
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
         Left            =   -74760
         TabIndex        =   35
         Top             =   840
         Width           =   1770
      End
      Begin VB.Label lblLocalisation 
         AutoSize        =   -1  'True
         Caption         =   "Localisation :"
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
         Left            =   -74760
         TabIndex        =   34
         Top             =   1320
         Width           =   1155
      End
      Begin VB.Label lblP�riode 
         AutoSize        =   -1  'True
         Caption         =   "P�riode :"
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
         Left            =   -74640
         TabIndex        =   33
         Top             =   840
         Width           =   780
      End
   End
   Begin VB.Frame fraInvite 
      Height          =   600
      Left            =   120
      TabIndex        =   58
      Top             =   6360
      Width           =   5000
      Begin VB.Label lblInvite 
         Height          =   1275
         Left            =   0
         TabIndex        =   59
         Top             =   0
         Width           =   11595
         WordWrap        =   -1  'True
      End
   End
   Begin MSComDlg.CommonDialog dlgFichier 
      Left            =   120
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
      DefaultExt      =   ".gbs"
      Filter          =   "Giratoire (*.gbs)|*.Gbs"
   End
   Begin VB.Label lblNumBranche 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "B0"
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
      Index           =   0
      Left            =   2400
      TabIndex        =   65
      Top             =   240
      Visible         =   0   'False
      Width           =   240
   End
   Begin VB.Line linVoieSortie 
      BorderColor     =   &H00C0C0C0&
      Index           =   0
      Visible         =   0   'False
      X1              =   0
      X2              =   1680
      Y1              =   120
      Y2              =   0
   End
   Begin VB.Line linVoieEntr�e 
      BorderColor     =   &H00C0C0C0&
      Index           =   0
      Visible         =   0   'False
      X1              =   0
      X2              =   1560
      Y1              =   120
      Y2              =   0
   End
   Begin VB.Shape shpAnneauMil 
      Height          =   1095
      Left            =   720
      Shape           =   3  'Circle
      Top             =   720
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Shape shpAnneauInt 
      Height          =   855
      Left            =   840
      Shape           =   3  'Circle
      Top             =   885
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Shape shpAnneauExt 
      Height          =   1515
      Left            =   600
      Shape           =   3  'Circle
      Top             =   525
      Visible         =   0   'False
      Width           =   1515
   End
   Begin VB.Line linBranche 
      Index           =   0
      Visible         =   0   'False
      X1              =   1440
      X2              =   3000
      Y1              =   2805
      Y2              =   2085
   End
   Begin VB.Shape shpPoign�e 
      BackStyle       =   1  'Opaque
      FillStyle       =   0  'Solid
      Height          =   105
      Left            =   120
      Top             =   765
      Visible         =   0   'False
      Width           =   105
   End
   Begin VB.Label lblLibell�Branche 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Branche0"
      Height          =   195
      Index           =   0
      Left            =   1440
      TabIndex        =   46
      Top             =   240
      Visible         =   0   'False
      Width           =   690
   End
   Begin VB.Line linBordVoieEntr�e 
      BorderColor     =   &H00C0C0C0&
      Index           =   0
      Visible         =   0   'False
      X1              =   240
      X2              =   1800
      Y1              =   1725
      Y2              =   1605
   End
   Begin VB.Line linBordVoieSortie 
      BorderColor     =   &H00C0C0C0&
      Index           =   0
      Visible         =   0   'False
      X1              =   0
      X2              =   1680
      Y1              =   2325
      Y2              =   2205
   End
   Begin VB.Line linBordIlotGir 
      BorderColor     =   &H00C0C0C0&
      BorderWidth     =   5
      Index           =   0
      Visible         =   0   'False
      X1              =   480
      X2              =   480
      Y1              =   3405
      Y2              =   2925
   End
   Begin VB.Line linBordIlotEntr�e 
      BorderColor     =   &H00C0C0C0&
      BorderWidth     =   5
      Index           =   0
      Visible         =   0   'False
      X1              =   480
      X2              =   1560
      Y1              =   2925
      Y2              =   3165
   End
   Begin VB.Line linBordIlotSortie 
      BorderColor     =   &H00C0C0C0&
      BorderWidth     =   5
      Index           =   0
      Visible         =   0   'False
      X1              =   480
      X2              =   1560
      Y1              =   3405
      Y2              =   3165
   End
End
Attribute VB_Name = "frmDonn�es"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************************************
'*
'*          Projet GIRABASE - CERTU - CETE de l'Ouest
'*
'*          Module de feuille : DONNEES.FRM - frmDonn�es
'*
'*          Feuille principale de GIRABASE
'*
'*          Feuille fille de la feuille MDIGirabase
'*
'*          Un objet GIRATOIRE est associ� � chaque feuille frmDonn�es
'*          La propri�t� Donn�es de cet objet d�signe cette feuille
'*
'******************************************************************************

Option Explicit


Public GiratoireProjet As GIRATOIRE
Public flagErreurFatale As Boolean

Private SauvHelpContextId As Integer
Private InviteGotFocus As String
Public FeuilleBranche As Form
Public AncienXc As Single
Public AncienYc As Single
Public DemiLargeur As Single
Public DemiHauteur As Single
Public FacteurZoom As Single
Public AutreOnglet As Boolean
Public ValidateObjet As Boolean
Public ChargementEnCours As Boolean ' Permet d'inhiber certains �v�nements lors du chargement (initialisations n�cessaires)
Public Nouveau As Boolean           ' Indique si le projet est Nouveau ou lu (commande Ouvrir)
Public BrancheS�lect�e As Integer
Public Donn�eModifi�e As Boolean    ' Indique si un champ a �t� modifi�
Public FichierModifi� As Boolean    ' Indique si une modification a �t� faite
                                    ' depuis le dernier enregistrement
Private Donn�eValide As Boolean     ' Indique si la donn�e peut �tre valid�e
Private DiagramFlux As Boolean      ' Indique si le dessin du diagramme de flux a �t� demand�
Private NbBranches As Integer       ' Nombre de branches

'******************************************************************************
Private FlagPtDecimal As Boolean    ' Drapeau indiquant que l'utilisateur a frapp� le point d�cimal
                                    'sur le pav� num�rique
Private TraficActif As TRAFIC       'Objet Trafic
Private TraficModifi� As Boolean  'Indicateur de modification de la matrice Trafic
Private IndicSaisie As Boolean      ' Indicateur interdisant la modification du nombre de branches d�s qu'une donn�e a �t� saisie
Public MessageEmis As Boolean       ' Indicateur signalant l'�mission de messages d'erreur ou de recommandantion
' Indicateurs pour de gestion des controles SPREAD
Private D�bordement As Boolean      ' Si Vrai, l'utilisateur a quitt� le SPREAD avec TAB ou SHIFT TAB
Private DrapeauSuivant As Boolean   ' Si Vrai et D�bordement, sortie par TAB (sinon SHIFT TAB)
Private controleEnCours As Boolean
Public TypeControleActif As String  ' Type de variable en cours de saisie
Public ControleActif As Control     ' Contr�le en cours de saisie
'Pour une matrice...
Public TypeMatriceActive  As Integer ' Type de matrice en cours de saisie
Public Num�roColonneActive          ' Num�ro de la colonne active
Public Num�roLigneActive            ' Num�ro de la ligne active
Private EvenementClick
' Sauvegarde des valeurs lors du GotFocus
Private sauvAngle() As Single
Private SauveValeur As String
Private SauveValeurSpread As String 'GS09
Private ChaineInvite, ChaineMessage As String
Private ChangementOnglet As Boolean


'******************************************************************************
' Choix d'une p�riode dans la liste
'******************************************************************************
Public Sub cboP�riode_Click()
Dim i, j As Integer
  If cboP�riode.ListIndex = -1 Then
    Set TraficActif = Nothing
    AutorTrafic False
    cboP�riode.SetFocus
    'Efface le diagramme de flux
    cLS
    'Efface la matrice de pi�tons
    With vgdTrafic(PIETON)
      .Row = 1
      For j = 1 To NbBranches
        .Col = j
        .Value = ""
      Next j
    End With
    'Efface la matrice de trafic
    txtQT = ""
    With vgdTrafic(VEHICULE)
      For i = 1 To NbBranches
        .Row = i
        For j = 1 To NbBranches
          .Col = j
          .Value = ""
        Next j
      Next i
    End With
    For j = 1 To NbBranches
      txtQS(j) = ""
    Next
    For i = 1 To NbBranches
      txtQE(i) = ""
    Next i
    Exit Sub
  End If
  
  On Error GoTo GestErr
  Set TraficActif = GiratoireProjet.colTrafics.Item(cboP�riode.ListIndex + 1)
  If TraficActif.modeUVP Then
    If fraTraficTout.Visible Then
      'Bascule MODE VL-PL-2R --> UVP
      cmdChangeMode.Caption = IDl_ModeVLPL2R
      fraTraficTout.Visible = False
      lblTraficUVP.Visible = True
    End If
    vgdTrafic(VEHICULE).Enabled = True
    TraficActif.setV�hicule UVP
  Else
    If Not fraTraficTout.Visible Then
    'Bascule MODE  UVP  --> VL-PL-2R
      cmdChangeMode.Caption = IDl_ModeUVP
      fraTraficTout.Visible = True
      lblTraficUVP.Visible = False
      optTrafic(VL) = True
    End If
    TraficActif.setV�hicule Numopt(optTrafic)
  End If
  'Contr�le d'un trafic inexistant pour une voie d'entr�e ou de sortie non nulle
  'rq0599 'Inversion des 2 tests
  ControleValeursTrafic
  ControleMatriceTrafic
  AutorTrafic True
  If DiagramFlux And Not TraficActif Is Nothing Then cLS: TraficActif.CalculDiagramFlux

Exit Sub
  
GestErr:
  If Err = 9 Then
    Exit Sub
  Else
    ErreurFatale
  End If
End Sub

Private Sub cboP�riode_GotFocus()
  lblInvite = IDi_P�riode
  AutreOnglet = False
  Journal "GotFocus"
End Sub

Private Sub cboP�riode_LostFocus()
  If ActiveControl.Name = "vgdTrafic" Then
'    With ActiveControl
'      .Action = 0
'    End With
  End If
End Sub

'******************************************************************************
' Validation du choix d'une p�riode dans la liste
'******************************************************************************
Private Sub cboP�riode_Validate(Cancel As Boolean)
Dim i As Integer
Dim inactTrafic As Boolean

If cboP�riode = "" Then Cancel = True: Exit Sub
Journal "Validate"

' M�morisation de l'�tat initial de l'activation de la saisie du trafic, avant autorisation
inactTrafic = cmdChangeMode.Enabled
AutorTrafic True

With ActiveControl
  If .ListCount = 0 Then
    GiratoireProjet.newP�riode DrapeauMenu:=False  ' False Indique que l'appel ne vient pas du menu
    Exit Sub
  End If
  
  
  For i = 1 To .ListCount
    If StrComp(.List(i - 1), .Text, vbTextCompare) = 0 Then
      .ListIndex = i - 1
      Exit Sub
    End If
  Next
  
  If MsgBox(IDm_Cr�eP�riode & " " & .Text, vbYesNo + vbQuestion) = vbYes Then
    GiratoireProjet.newP�riode DrapeauMenu:=False  ' False Indique que l'appel ne vient pas du menu
  Else
    Cancel = True
    AutorTrafic inactTrafic   ' Remise � l'�tat initial de l'activation de la saisie du trafic
  End If
End With

End Sub

'******************************************************************************
' Changement de mode de Saisie des matrices de Trafic
'******************************************************************************
Private Sub cmdChangeMode_Click()

  Journal "Click"
  
  If controlChangeMode() Then
    fraTraficTout.Visible = Not fraTraficTout.Visible
    lblTraficUVP.Visible = Not lblTraficUVP.Visible
    If fraTraficTout.Visible Then
      cmdChangeMode.Caption = IDl_ModeUVP
      optTrafic(VL) = True
      TraficActif.setV�hicule VL
    Else
      cmdChangeMode.Caption = IDl_ModeVLPL2R
      vgdTrafic(VEHICULE).Enabled = True
      TraficActif.setV�hicule UVP
    End If
    TraficActif.Dimensionner NbBranches, cmdChangeMode.Caption
    'Faire �tat de la modification
    DetectModif
  End If
  
End Sub
'******************************************************************************
' Active et d�sactive les matrices de saisie lorsque l'utilisateur
' change d'onglet
'  param�tre : onglet = num�ro de l'onglet appel�
'******************************************************************************
Private Sub ChangeTabStop(ByVal Onglet As Integer)
  Select Case Onglet
    Case 0: vgdCarBranche.TabStop = True
            vgdLargBranche.TabStop = False
            vgdTrafic.Item(0).TabStop = False
            vgdTrafic.Item(1).TabStop = False
            'Lorsqu'on chang� d'onglet, il faut se replacer sur la matrice de caract�ristiques
            'des branches car la pr�sentation de celle-ci a pu �tre affect� par le d�placement
            'graphique des branches faite � partir des autres onglets
            With vgdCarBranche
              .Col = 1
              .Row = 1
              .Action = 0
            End With
    Case 1: vgdCarBranche.TabStop = False
            vgdLargBranche.TabStop = True
            vgdTrafic.Item(0).TabStop = False
            vgdTrafic.Item(1).TabStop = False
            
    Case 2: vgdCarBranche.TabStop = False
            vgdLargBranche.TabStop = False
            vgdTrafic.Item(0).TabStop = True
            vgdTrafic.Item(1).TabStop = True
  End Select
End Sub

'******************************************************************************
' Demande de confirmation de changement de mode (� d�velopper)
'******************************************************************************
Private Function controlChangeMode() As Boolean
  controlChangeMode = (MsgBox(IDm_ReinTrafic, vbYesNo + vbQuestion) = vbYes)
End Function

'******************************************************************************
' Activation de la feuille
'******************************************************************************
Public Sub Form_Activate()
Dim i As Integer

  GiratoireProjet.Activate
  GriserMenus True
  MDIGirabase.mnuTrafic(8).Checked = DiagramFlux
  For i = 1 To GiratoireProjet.NbBranches
    MDIGirabase.mnuBranche(i - 1).Caption = "&" & CStr(i) & " " & GiratoireProjet.colBranches.Item(i).nom
  Next
  
    ' Aide contextuelle
  MDIGirabase.HelpContextID = HelpContextID

  Journal "Activation"
  
End Sub

Private Sub Form_Click()
'  MDIGirabase.HelpContextID = IDhlp_Graphique
End Sub

Private Sub Form_DblClick()

  'Affichage des caract�ristiques de la branche s�lectionn�e
  If monNumBrancheSelect > 0 Then
    VerifieDonn�e
    frmCarBranche.Show vbModal
  End If
End Sub

Private Sub Form_Deactivate()

  ' Aide contextuelle
  HelpContextID = MDIGirabase.HelpContextID

  If TypeOf ActiveControl Is vaSpread Then
    ' R�soud un pb possible d'affichage lors qu'on passe de la fen�tre r�sultats � la fen�tre donn�es
    With ActiveControl
      If .CellType = 10 Then  ' Pb en fait sur les check box
        .Col = 1
        .Action = 0
      End If
    End With
  End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
' Gestion du point d�cimal comme virgule
' Si l'utilisateur est ainsi configur�, on d�tecte la frappe du point d�cimal
' mais seule la fonction KeyPress semble en mesure de r�afficher la virgule
Dim i As Integer

  If KeyCode = vbKeyDecimal And Shift = 0 Then
    FlagPtDecimal = True
  End If

End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
  If FlagPtDecimal Then
    KeyAscii = gbPtDecimal
    FlagPtDecimal = False
  End If
  If Not Donn�eModifi�e Then
    'affecte la couleur normale au controle au premier caract�re frapp�
    ActiveControl.ForeColor = vbWindowText
  End If
  Donn�eModifi�e = True
End Sub

'******************************************************************************
' ConstruitChampTexte
' Reconstruit un champ de saisie � partir du contr�le texte
'******************************************************************************
Private Function ConstruitChampTexte(ByVal KeyAscii As Integer) As String
  Dim ChaineTrait�e As String
  ConstruitChampTexte = ""
  If KeyAscii <> 8 And KeyAscii <> 0 And TypeOf ActiveControl Is TextBox Then
    With ActiveControl
      'Constitution de la nouvelle chaine
      If .SelLength = 0 Then
        'Aucun texte n'est s�lectionn�
        If .SelStart = 0 Then
          ChaineTrait�e = Chr(KeyAscii) & .Text
        Else
          If .SelStart >= Len(.Text) Then
            ChaineTrait�e = .Text & Chr(KeyAscii)
          Else
            ChaineTrait�e = Left(.Text, .SelStart) & Chr(KeyAscii) & Mid(.Text, .SelStart + 1)
          End If
        End If
      Else
        'Texte s�lectionn�
        ChaineTrait�e = ""
        If .SelStart >= 1 Then ChaineTrait�e = Left(.Text, .SelStart)
        ChaineTrait�e = ChaineTrait�e & Chr(KeyAscii)
        If .SelStart + .SelLength < Len(.Text) Then
         ChaineTrait�e = ChaineTrait�e & Mid(.Text, .SelStart + .SelLength + 1)
        End If
      End If
     End With
     ConstruitChampTexte = ChaineTrait�e
    End If
    
  End Function
    
Function LimiteNbD�cimales(ByRef ChaineTrait�e As String, ByVal NbD�cimales As Integer) As Boolean
Dim i As Integer
Dim D�cimale As Boolean
  LimiteNbD�cimales = False
  'Recherche de la d�cimale
  i = 1
  D�cimale = False
  Do While i <= Len(ChaineTrait�e) And Not D�cimale
    If Mid(ChaineTrait�e, i, 1) = "," Then
      D�cimale = True
    Else
      i = i + 1
    End If
  Loop
  'Validation ou non du caract�re frapp�
  If D�cimale Then
    If Len(ChaineTrait�e) > i + NbD�cimales Then
      LimiteNbD�cimales = True
      'Conserve NbD�cimales
      ChaineTrait�e = Left(ChaineTrait�e, i + NbD�cimales)
    End If
  End If
End Function

'******************************************************************************
' Demande de fermeture de la feuille
'******************************************************************************
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Dim flag As Integer
Dim reponse As Integer

If flagErreurFatale Then Exit Sub

flag = vbYesNoCancel + vbQuestion
If FichierModifi� Then 'And Not VersionDemo Then
  reponse = MsgBox(IDm_Enregistrer & " " & Me.Caption, flag)
Else
  reponse = vbNo
End If

Select Case reponse
Case vbYes
  ' La ligne suivante a �t� rajout�e le 28/11/2000(AV : bug possible si Quitter alors qu'un autre giratoire que celui � sauvegarder est actif)
  Set gbProjetActif = GiratoireProjet
  gbProjetActif.Enregistrer Cancel
Case vbCancel
  Cancel = True
End Select

End Sub

'******************************************************************************
' D�chargement de la feuille
'******************************************************************************
Private Sub Form_Unload(Cancel As Integer)
Dim i As Integer

  If Not GiratoireProjet.R�sultats Is Nothing Then Unload GiratoireProjet.R�sultats
  With gbGiratoires
    For i = 1 To .count
      If .Item(i) Is GiratoireProjet Then .Remove i: Exit For
    Next
    ' Maintenance : 28/11/2000 : D�clanchement de Class_Terminate suite � l'activation de la protection
    Set GiratoireProjet = Nothing
    Set gbProjetActif = Nothing
    If gbGiratoires.count = 0 Then GriserMenus False
  End With
  
End Sub

Private Sub fraTrafic_MouseUp(Index As Integer, Button As Integer, Shift As Integer, x As Single, Y As Single)
 If Button = vbRightButton And tabDonn�es.Tab = 2 Then PopupMenu MDIGirabase.mnuBarre(2), , , , MDIGirabase.mnuTrafic(0)
End Sub

'************************************************************************************************************************
' Proc�dures lblLibell�Branche_xxx : D�port�es dans le module de dessin de DessinGiratoire.Bas, sous le nom LabelBranche_xxx
'************************************************************************************************************************
Private Sub lblLibell�Branche_DblClick(Index As Integer)
  LabelBranche_DblClick Index
End Sub

Private Sub lblLibell�Branche_MouseDown(Index As Integer, Button As Integer, Shift As Integer, x As Single, Y As Single)
  LabelBranche_MouseDown Index, Button, Shift, x, Y
End Sub

Private Sub lblLibell�Branche_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, Y As Single)
  LabelBranche_MouseMove Index, Button, Shift, x, Y
End Sub

Private Sub lblLibell�Branche_MouseUp(Index As Integer, Button As Integer, Shift As Integer, x As Single, Y As Single)
  Dessin_MouseUp Button, Shift, x, Y
End Sub

'******************************************************************************
' Chargement de la feuille :  Fonction Nouveau ou Ouvrir
'   Cr�ation de l'objet GIRATOIRE
'******************************************************************************
Private Sub Form_Load()
Dim i As Integer

Set gbProjetActif = GiratoireProjet

SetDeviceIndependentWindow Me

  'Matrice en cours de saisie
  TypeMatriceActive = AUCUN
  'Modifie la couleur de fond des cellules verrouill�es
  vgdLargBranche.LockBackColor = vbGrayText
  vgdCarBranche.LockBackColor = vbGrayText
  If Nouveau Then
    With tabDonn�es
      'D�sactive les onglets Dimensionnements et Trafics
      .TabEnabled(1) = False
      .TabEnabled(2) = False
    End With
  Else
    If Not GiratoireProjet.Lire Then Exit Sub
  End If
  
  'Onglet actif
  With tabDonn�es
    .Visible = True
    .Tab = 0
  End With
  
  GiratoireProjet.Cr�ation
  
  ' Branches
  NbBranches = GiratoireProjet.NbBranches
  'Unit�s d'angle
  lblAngleBranche.Caption = IDl_Angle & " (" & libelAngle(GiratoireProjet.modeangle) & ")"

  HelpContextID = IDhlp_OngletSite
  
  With vgdCarBranche
    .Col = 2
    For i = 1 To 8
      .Row = i
      .TypeIntegerMax = angConv(2 * PI, False) - 1
    Next
'    .HelpContextID = IDhlp_OngletSite
  End With
  
'  vgdLargBranche.HelpContextID = IDhlp_OngletDimensionnement
'  vgdTrafic(PIETON).HelpContextID = IDhlp_OngletTrafic
'  vgdTrafic(VEHICULE).HelpContextID = IDhlp_OngletTrafic
  
  DoEvents
  
  cmdChangeMode.Caption = IDl_ModeVLPL2R
  
  fraCarBranches.Height = vgdCarBranche.Top + vgdCarBranche.Height + lblNomBranche.Top / 2
  fraBranches.Height = vgdLargBranche.Top + vgdLargBranche.Height + lblLargeurs.Top / 2
  fraTrafic(VEHICULE).Height = fraQTS.Top + fraQTS.Height + lblTraficUVP.Top
  
  DessinerGiratoire IsPremierDessin:=True    ' True : Premier Dessin du Giratoire
  
End Sub

'************************************************************************************************************************
' Proc�dures Form_Mousexxx : D�port�es dans le module de dessin de DessinGiratoire.Bas, sous le nom Dessin_Mousexxx
'************************************************************************************************************************
Private Sub Form_MouseDown(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If Not gbProjetActif.Donn�es.VerifieDonn�e Then Exit Sub
    'Cas du bouton gauche trait� uniquement
    If Button = vbLeftButton Then
      
      Dessin_MouseDown Button, Shift, x, Y
    ElseIf Button = vbRightButton Then
      PopupMenu MDIGirabase.mnuBarre(1), , , , MDIGirabase.mnuSite(3)
    End If
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)

If Button = 1 Then Dessin_MouseMove Button, Shift, x, Y
Exit Sub

If x > gbDemiLargeur * 2 And MDIGirabase.HelpContextID = IDhlp_Graphique Then
  MDIGirabase.HelpContextID = SauvHelpContextId
ElseIf x < gbDemiLargeur * 2 And MDIGirabase.HelpContextID <> IDhlp_Graphique Then
  SauvHelpContextId = MDIGirabase.HelpContextID
  MDIGirabase.HelpContextID = IDhlp_Graphique
End If

End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, x As Single, Y As Single)
  Dessin_MouseUp Button, Shift, x, Y
End Sub

'******************************************************************************
' Redimensionnement de la feuille
'******************************************************************************
Private Sub Form_Resize()
  'On ne fait pas de traitements lors d'une mise en icone
  If WindowState <> vbMinimized Then
    If MDIGirabase.Cascade Then Set gbProjetActif = GiratoireProjet
    'Pour �viter le probl�me de fermeture si plusieurs fen�tres sont agrandies
    If Not gbProjetActif Is GiratoireProjet Then Exit Sub
    'Calage en bas et tout le long de la largeur de la Form GiraBase
    'de la zone de message
    With fraInvite
      .Left = 0
      .Top = ScaleHeight - .Height
      .Width = ScaleWidth
      lblInvite.Width = .Width
    End With
    
    'Calage � droite tout le long de la hauteur de la form GiraBase
    With tabDonn�es
      .Top = 0
      .Left = ScaleWidth - .Width
      .Height = ScaleHeight - fraInvite.Height
    End With
    
    If Not ChargementEnCours Then Redess
    
    'Stockage du centre de la zone graphique pour le prochain resize
    AncienXc = DemiLargeur
    AncienYc = DemiHauteur
  
  End If

End Sub

'******************************************************************************
' Validation du champ optMilieu
'******************************************************************************
Private Sub optMilieu_Click(Index As Integer)
  Dim i As Integer
  
  Journal "Click"
  
  'Active les onglets Dimensionnement et trafic
  tabDonn�es.TabEnabled(1) = True
  tabDonn�es.TabEnabled(2) = True
  'V�rifie si le changement de milieu est autoris�
  ControleMilieu
  GriserMenus True
End Sub
Private Sub optMilieu_Validate(Index As Integer, Cancel As Boolean)
  'ControleMilieu
End Sub
'******************************************************************************
' V�rifier si le changement de Milieu est autoris�
'******************************************************************************
Private Sub ControleMilieu()
  optMilieu(0).ForeColor = vbWindowText
  'Validation 'Rq0599
'  If ValidationLA(Numopt(optMilieu), txtLA, "") Then
'    GiratoireProjet.Milieu = Numopt(optMilieu)
'    ControleRecommandations False
'  Else
'    optMilieu(GiratoireProjet.Milieu).SetFocus
'    MsgBox IDv_ModifMilieu, vbExclamation
'  End If
  TypeControleActif = TYPE_MILIEU
  If ValidationDonn�es(Numopt(optMilieu)) Then
    GiratoireProjet.MajCompl�ment Numopt(optMilieu)
    ControleRecommandations False
  End If
End Sub

'******************************************************************************
' Choix d'une matrice de trafic (VL - PL  - 2R -UVP)
'******************************************************************************
Private Sub optTrafic_Click(Index As Integer)

Journal "Click"

TraficActif.setV�hicule (Index)
' Trafic UVP : � voir seulement
vgdTrafic(VEHICULE).Enabled = (Index <> UVP)

End Sub

Function VerifieDonn�e(Optional ByVal PreviousTab As Integer = -1) As Boolean
  Dim Cancel As Boolean
  Dim NewTab As Integer
  Dim RepositionnerFocus As Boolean
  VerifieDonn�e = True
  If controleEnCours Then Exit Function
  AutreOnglet = True
  Dim Matrice As Integer
  'Une matrice �tait en cours de saisie lorsque l'on a voulu changer d'onglet
  'Dans certains cas, l'�v�nement _LeaveCell n'a pu �tre appel�
  'On appelle l'�v�nement _LeaveCell
  NewTab = tabDonn�es.Tab
  If TypeMatriceActive <> AUCUN Then
    'AutreOnglet = True
    ChangementOnglet = True
   'S'il y avait un contr�le non valid� au moment du changement
    'd'onglet, on lance la v�rification de la donn�e
    controleEnCours = True 'pour �viter les appels r�cursifs lors des changements d'onglet
    'On repasse dans l'onglet pr�c�dent
    'On passera dans l'onglet souhait� seulement si la donn�e est valide
    'et si elle n'est sujette � aucun avertissement
    If PreviousTab >= 0 Then tabDonn�es.Tab = PreviousTab
    controleEnCours = False
    Matrice = TypeMatriceActive
    Select Case TypeMatriceActive
      Case DIMENSION:
      'Si on clique dans la partie graphique alors qu'on �tait sur le spread
      'on place d'abord le focus en dehors
      'du spread avant de lancer la proc�dure de v�rification
      'Lorsqu'il ya demande de changement d'onglet le focus est dej� en dehors du
      'spread
      txtVariante.SetFocus
      vgdLargBranche_LeaveCell Num�roColonneActive, Num�roLigneActive, -1, -1, Cancel
      Case BRANCHE:
      txtNomGiratoire.SetFocus
      vgdCarBranche_LeaveCell Num�roColonneActive, Num�roLigneActive, -1, -1, Cancel
      Case TRAFIC:
          Dim IndexEnCours As Integer
          If TypeControleActif = TYPE_QP Then
            IndexEnCours = PIETON
          Else
            IndexEnCours = VEHICULE
          End If
          cboP�riode.SetFocus
          'Rq19/05 Point1
          'vgdTrafic_LeaveCell IndexEnCours, Num�roColonneActive, 1, -1, -1, Cancel
          vgdTrafic_LeaveCell IndexEnCours, Num�roColonneActive, Num�roLigneActive, -1, -1, Cancel
    End Select
    controleEnCours = True
    'If Not MessageEmis And Donn�eValide Then
    If ChangementOnglet And Donn�eValide Then
      'Changement d'onglet
      tabDonn�es.Tab = NewTab
      lblInvite = ""
    Else
      VerifieDonn�e = False
    End If
    controleEnCours = False
  End If
  If Not (ControleActif Is Nothing) Then
    'Si le champ qui a le focus a fait l'objet d'une modification
    RepositionnerFocus = False
    If Donn�eModifi�e Then
      'S'il y avait un contr�le non valid� au moment du changement
      'd'onglet, on lance la v�rification de la donn�e
      controleEnCours = True 'pour �viter les appels r�cursifs lors des changements d'onglet
      'On repasse dans l'onglet pr�c�dent
      'On passera dans l'onglet souhait� seulement si la donn�e est valide
      If PreviousTab >= 0 Then tabDonn�es.Tab = PreviousTab
      If ValidationDonn�es(ControleActif.Text) Then
        'R�cup�re le nom du controle
        Dim ControleActif2 As Control
        Set ControleActif2 = ControleActif
        If ControleRecommandations(False, TYPE_AVANT) Then
         'S'il y a eu un message on reste dans l'onglet initial
          RepositionnerFocus = True
          Set ControleActif = ControleActif2
          Set ControleActif2 = Nothing
        Else
          tabDonn�es.Tab = NewTab
        End If
      Else
        VerifieDonn�e = False
        RepositionnerFocus = True
        'On affecte la valeur pr�c�dente
        ControleActif.Text = SauveValeur
      End If
      If RepositionnerFocus Then
        'Pour ne pas que le clic sur le dessin du giratoire
        ' soit pris en compte
        VerifieDonn�e = False
        'On r�initialise l'invite qui sera recalcul�e dans l'ev�nement GotFocus
        lblInvite = ""
        'La donn�e ne peut �tre valid�e,
        'on  positionne le focus � nouveau sur celle-ci
        ControleActif.SetFocus
        '0599
        InitControle True
        ControleRecommandations True
        'Pour �viter de red�clencher l'�v�nement click...
        'Set ControleActif = Nothing
        'Retourne sur l'onglet pr�c�demment s�lectionn�
        'tabDonn�es.Tab = PreviousTab
      End If
    End If
    controleEnCours = False
  End If
  ChangementOnglet = False
End Function

'******************************************************************************
' Onglet principal
'******************************************************************************
Private Sub tabDonn�es_Click(PreviousTab As Integer)
  'V�rifie les derni�res donn�es saisies avant la demande de changement d'onglet
  If controleEnCours Then Exit Sub
  
  
  VerifieDonn�e PreviousTab
  If PreviousTab = tabDonn�es.Tab Then Exit Sub 'Sortie si on n'a pas chang� d'onglet
  
  Journal "Click"
  
  ChangeTabStop (tabDonn�es.Tab)
  Select Case tabDonn�es.Tab
    Case 0
    ' Aide contextuelle
      MDIGirabase.HelpContextID = IDhlp_OngletSite
      
    Case 1
    ' Aide contextuelle
      MDIGirabase.HelpContextID = IDhlp_OngletDimensionnement
      txtNomGiratoire.SetFocus
    Case 2
    ' Aide contextuelle
      MDIGirabase.HelpContextID = IDhlp_OngletTrafic
      If cboP�riode.ListCount = 0 Or cboP�riode = "" Then
        AutorTrafic False
        cboP�riode.SetFocus
      ElseIf cboP�riode.ListIndex = -1 And cboP�riode.ListCount > 0 Then
        cboP�riode.ListIndex = 0
      End If
      'Contr�le d'un trafic �ventuel existant avec une largeur d'entr�e ou
      'de sortie nulle
      If ControleTrafic Then
        tabDonn�es.Tab = PreviousTab
      'Contr�le d 'un trafic inexistant pour une voie d'entr�e ou de sortie
      'non nulle
      Else
        ControleMatriceTrafic
        ControleValeursTrafic
      End If
  End Select
  
  tabDonn�es.HelpContextID = MDIGirabase.HelpContextID
  
End Sub

Private Sub tabDonn�es_MouseUp(Button As Integer, Shift As Integer, x As Single, Y As Single)
  If Button = vbRightButton And tabDonn�es.Tab = 2 Then PopupMenu MDIGirabase.mnuBarre(2), , , , MDIGirabase.mnuTrafic(0)
End Sub

'******************************************************************************
' autorTrafic : il faut au moins une p�riode de cr��e
'******************************************************************************
Private Sub AutorTrafic(ByVal actif As Boolean)
'  vgdTrafic(PIETON).Enabled = actif
'  vgdTrafic(VEHICULE).Enabled = actif
  fraTraficTout.Enabled = actif
  cmdChangeMode.Enabled = actif
End Sub

Private Sub txtBf_Change()
   Donn�eModifi�e = True
End Sub

Private Sub txtBf_GotFocus()
  Journal "GotFocus"
  
  InitControle True
  ControleRecommandations True
End Sub

'******************************************************************************
' txtBf : doit �tre num�rique
'******************************************************************************
Private Sub txtBf_KeyPress(KeyAscii As Integer)
  ' On alerte un caract�re non num�rique
  KeyAscii = ControleChampR�el(KeyAscii)
End Sub

Private Sub txtBf_KeyUp(KeyCode As Integer, Shift As Integer)
  If KeyCode = vbKeyReturn Then SendKeys "{TAB}"
End Sub

'******************************************************************************
' Validation du champ txtBf
'******************************************************************************
Public Sub txtBf_Validate(Cancel As Boolean)
  If Donn�eModifi�e Then
    txtBf = FormateR�el(txtBf.Text)
    If ValidationDonn�es(txtBf) Then
      ControleRecommandations False
      Journal "Validate"
    Else
      Cancel = True
      InitControle False
      'Pour remette � jour le graphique
      calculRg True
    End If
  End If
End Sub

Private Sub txtLA_Change()
   Donn�eModifi�e = True
End Sub

Private Sub txtLA_GotFocus()
  InitControle True
  ControleRecommandations True
  Journal "GotFocus"
End Sub

'******************************************************************************
' txtLA : doit �tre num�rique
'******************************************************************************
Private Sub txtLA_KeyPress(KeyAscii As Integer)
  'On alerte un caract�re non num�rique
  KeyAscii = ControleChampR�el(KeyAscii)
End Sub

Private Sub txtLA_KeyUp(KeyCode As Integer, Shift As Integer)
  If KeyCode = vbKeyReturn Then SendKeys "{TAB}"
End Sub

'******************************************************************************
' Validation du champ txtLA
'******************************************************************************
Public Sub txtLA_Validate(Cancel As Boolean)
  If Donn�eModifi�e Then
    txtLA = FormateR�el(txtLA.Text)
    If ValidationDonn�es(txtLA) Then
      ControleRecommandations False
      Journal "Validate"
    Else
      Cancel = True
      InitControle False
      'Pour remette � jour le graphique
      calculRg True
    End If
  End If
End Sub

Private Sub txtLocalisation_GotFocus()
  InitControle True
  ControleRecommandations True
  'Pour ne pas contr�ler ce champ...
  Set ControleActif = Nothing
  Journal "GotFocus"
End Sub

Private Sub txtLocalisation_KeyUp(KeyCode As Integer, Shift As Integer)
  If KeyCode = vbKeyReturn Then SendKeys "{TAB}"
End Sub

'******************************************************************************
' Validation du champ txtLocalisation
'******************************************************************************
Private Sub txtLocalisation_Validate(Cancel As Boolean)
  If Donn�eModifi�e Then
    GiratoireProjet.Localisation = txtLocalisation
    DetectModif False
  End If
  Journal "Validate"
End Sub

Private Sub txtNomGiratoire_Change()
  Donn�eModifi�e = True
End Sub

'******************************************************************************
' Focus sur le contr�le txtNomGiratoire
'******************************************************************************
Private Sub txtNomGiratoire_GotFocus()
  InitControle True
  'D�clenche les premi�res v�rifications des donn�es
  'Pour mettre en rouge les valeurs erron�es
  'Le focus est positionn� sur ce champ lors de l'appel � Girabase
  ControleRecommandations True
  'Pour ne pas contr�ler ce champ...
  Set ControleActif = Nothing
  Journal "GotFocus"
End Sub

Private Sub txtNomGiratoire_KeyUp(KeyCode As Integer, Shift As Integer)
  If KeyCode = vbKeyReturn Then SendKeys "{TAB}"
End Sub

'******************************************************************************
' Validation du champ txtNomGiratoire
'******************************************************************************
Private Sub txtNomGiratoire_Validate(Cancel As Boolean)
  If Donn�eModifi�e Then
    GiratoireProjet.nom = txtNomGiratoire
    DetectModif False
  End If
  Journal "Validate"
End Sub


Private Sub txtR_Change()
  Donn�eModifi�e = True
End Sub

'******************************************************************************
'
'******************************************************************************
Private Sub txtR_GotFocus()
  InitControle True
  ControleRecommandations True
  Journal "GotFocus"
End Sub

'******************************************************************************
' txtR : doit �tre num�rique
'******************************************************************************
Private Sub txtR_KeyPress(KeyAscii As Integer)
  ' On alerte un caract�re non num�rique
  KeyAscii = ControleChampR�el(KeyAscii)
End Sub
Private Function ControleChampR�el(ByVal KeyAscii As Integer) As Integer
  Dim Chaine As String
  '1606 Filtre les caract�res CTRL V et CTRL C et CtrlX
  If KeyAscii <> 3 And KeyAscii <> 22 And KeyAscii <> 24 Then
    ControleChampR�el = ControleR�el(KeyAscii)
    If KeyAscii <> 0 Then
      Chaine = ConstruitChampTexte(KeyAscii)
      If LimiteNbD�cimales(Chaine, 1) Then
        Beep
        ControleChampR�el = 0
      End If
    End If
  Else
    ControleChampR�el = KeyAscii
  End If
End Function
'******************************************************************************
' FormateR�el
'  Fonction transformant un nombre r�el en nombre r�el format�
'  avec suppression des 0 inutiles
'******************************************************************************
Private Function FormateR�el(ByVal Texte As String) As String
  If Texte = "" Then
    'Une absence de valeur est consid�r�e comme une valeur nulle
    'Valeur
    Texte = "0"
    FormateR�el = "0"
  ElseIf IsNumeric(Texte) Then
    '1606...Conserve une seule d�cimale pour les valeurs r�elles
    FormateR�el = CStr(Round(CSng(Texte), 1))
  Else
    '1606 Texte inchang� (Impl�mentation du Ctrl C, Ctrl V)
    FormateR�el = Texte
  End If
End Function

Private Sub txtR_KeyUp(KeyCode As Integer, Shift As Integer)
  If KeyCode = vbKeyReturn Then SendKeys "{TAB}"
End Sub

'******************************************************************************
' Contr�le du champ txtR
'******************************************************************************
Public Sub txtR_Validate(Cancel As Boolean)
  If Donn�eModifi�e Then
    txtR = FormateR�el(txtR.Text)
    If ValidationDonn�es(txtR) Then
      ControleRecommandations False
      Journal "Validate"
    Else
      Cancel = True
      InitControle False
      'Pour remette � jour le graphique
      calculRg True
    End If
  End If
End Sub
'******************************************************************************
' Calcul du Rayon ext�rieur du  giratoire
'******************************************************************************
Public Sub calculRg(ByVal Dessiner As Boolean)
  txtRg = CDbl(txtR) + CDbl(txtLA)
  If txtBf <> "" Then txtRg = txtRg + CDbl(txtBf)
  GiratoireProjet.MajCompl�ment
  
  If Dessiner Then DessinerGiratoire IsPremierDessin:=False        ' False : Giratoire d�j� dessin�

End Sub

Private Sub txtVariante_Change()
  Donn�eModifi�e = True
End Sub

Private Sub txtVariante_GotFocus()
  InitControle True
  Journal "GotFocus"
End Sub

Private Sub txtVariante_KeyUp(KeyCode As Integer, Shift As Integer)
  If KeyCode = vbKeyReturn Then SendKeys "{TAB}"
End Sub

Private Sub txtVariante_Validate(Cancel As Boolean)
  If Donn�eModifi�e Then
    GiratoireProjet.NomVariante = txtVariante
    DetectModif False
  End If
  Journal "Validate"
End Sub

Private Sub vgdCarBranche_ButtonClicked(ByVal Col As Long, ByVal Row As Long, ByVal ButtonDown As Integer)
  'En lecture de fichier la variable Num�roLigneActive doit �tre aliment�e
  'car il n'y a pas eu de passage par le GotFocus du spread
  Num�roLigneActive = Row
  Donn�eModifi�e = True
  If Col = 4 Then
    GiratoireProjet.colBranches.Item(Row).Rampe = ButtonDown
  ElseIf Col = 5 Then
    GiratoireProjet.colBranches.Item(Row).TAD = ButtonDown
  End If
End Sub

Private Sub vgdCarBranche_Change(ByVal Col As Long, ByVal Row As Long)
' Ajout AV - 14.04.99 : si on fait bouger l'�cart avec l'UpDown (incr�ment � double fl�che), le drapeau n'est pas arm�
  If Col = 3 Then Donn�eModifi�e = True
  
End Sub

'******************************************************************************
' On entre dans la grille de saisie des branches
' Soit en amenant le focus � l'int�rieur de la grille de saisie alors que
' celui-ci vient de l'ext�rieur de la grille
' soit lorsque l'on vient de modifier graphiquement une branche
'******************************************************************************
Private Sub vgdCarBranche_GotFocus()
Dim i As Integer
  If controleEnCours Then Exit Sub
  
  Journal "GotFocus"
  TypeMatriceActive = BRANCHE
  vgdCarBranche.OperationMode = OperationModeNormal
  ReDim sauvAngle(1 To NbBranches) As Single
  With GiratoireProjet.colBranches
    For i = 1 To NbBranches
      sauvAngle(i) = .Item(i).Angle
    Next
  End With
  
  AfficheSpreadNormal
  If BrancheS�lect�e > 0 Or AutreOnglet Then
    vgdCarBranchePrepare vgdCarBranche.ActiveRow, vgdCarBranche.ActiveCol
    If BrancheS�lect�e = 1 Then
      With vgdCarBranche
        'La premi�re branche est s�lectionn�e graphiquement.
        'On positionne le focus sur le nom de la branche car l'angle
        'n'est pas modifiable
        .Col = 1
        .Action = 0
        .SetFocus
        'L'appel de la proc�dure suivante replace le focus sur la bonne cellule puis
        'affiche l'invite correspondant � la branche s�lect�e
        vgdD�placeFocus 1, 2
      End With
    End If
    AutreOnglet = False
  Else
    PlaceFocus vgdCarBranche
    vgdCarBranchePrepare 1, 1
  End If
End Sub

'******************************************************************************
' vgdD�placeFocus est appel�e par SelectBranche dans DessinGiratoire.Bas
'******************************************************************************
Public Sub vgdD�placeFocus(ByVal Row As Long, ByVal Col As Long)
    TypeMatriceActive = BRANCHE
    vgdCarBranchePrepare Row, Col
End Sub

'******************************************************************************
'
'******************************************************************************
Private Sub PlaceFocus(vgdSpread As vaSpread, Optional ByVal Col As Integer = 1, _
  Optional ByVal Row As Integer = 1)
  With vgdSpread
    .Row = Row
    .Col = Col
    .Action = 0
  End With
End Sub

'******************************************************************************
' Grille de saisie des caract�ristiques des branches
' Pr�pare l 'invite en fonction de la nouvelle cellule active
'   param�tres : NewRow, NewCol : ligne et colonne de destination
'******************************************************************************
Public Sub vgdCarBranchePrepare(ByVal NewRow As Long, ByVal NewCol As Long)
  With vgdCarBranche
    'Sauvegarde l'ancienne valeur
    .Col = NewCol
    .Row = NewRow
    SauveValeurSpread = .Value
    Journal "***Prepare" & .Value
  End With
  Num�roLigneActive = NewRow
  Num�roColonneActive = NewCol
  Select Case NewCol
      Case 1: TypeControleActif = TYPE_COURANT
      Case 2: TypeControleActif = TYPE_ANGLE
      Case 3: TypeControleActif = TYPE_ANGLE
      Case 4: TypeControleActif = TYPE_COURANT
      Case 5: TypeControleActif = TYPE_COURANT
  End Select
  ControleRecommandations True, TYPE_MATRICE
End Sub

'******************************************************************************
' Validation d'une cellule de la grille Caract�ristiques des branches
'******************************************************************************
Public Sub vgdCarBranche_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
Dim wValeur As Single, Ecart As Single, i As Integer
Dim wBranche As BRANCHE
  
  If controleEnCours Then Exit Sub
  
  
  TypeMatriceActive = BRANCHE
  With vgdCarBranche
    .Col = Col
    .Row = Row
  End With
  Journal "LeaveCell", NewCol, NewRow
  
  Set wBranche = GiratoireProjet.colBranches.Item(Row)
  Donn�eValide = True
  If Donn�eModifi�e Then
    If Col = 2 Then
      Donn�eValide = ValidationDonn�es(vgdCarBranche.Value, wBranche)
    ElseIf Col = 3 Then
      Dim Angle As Single
      Angle = GiratoireProjet.colBranches.Item(Row - 1).Angle + vgdCarBranche.Value
      Donn�eValide = ValidationDonn�es(Angle, wBranche)
    End If
  End If
  If Donn�eValide Then
    'La donn�e saisie a �t� valid�e
    If Donn�eModifi�e Then
    Select Case Col
    Case 1    ' Nom
      wBranche.nom = vgdCarBranche.Value
      lblLibell�Branche(Row) = wBranche.nom
      ControleRecommandations False, TYPE_AUCUN 'Seulement pour l'invite
      D�placerNomBranche lblLibell�Branche(Row), linBranche(Row), Cos(Angle), -Sin(Angle)        ' "-" pour le sinus : car l'axe des Y est vers le bas
      MDIGirabase.mnuBranche(Row - 1).Caption = "&" & CStr(Row) & " " & wBranche.nom
    Case 2    ' Angle
      With vgdCarBranche
        If .Value = "" Then
          MsgBox IDm_Obligatoire, vbOKOnly + vbExclamation
          Cancel = True
          Journal "Cancel"
          Exit Sub
        End If
      
        wValeur = CSng(.Value)
        wBranche.Angle = wValeur
        If Row > 1 Then
          Set wBranche = GiratoireProjet.colBranches.Item(Row - 1)
          Ecart = wValeur - wBranche.Angle
          .Col = 3
          If Ecart > 0 Then
            .Value = Ecart
          Else
            .Value = ""
          End If
          If Row < NbBranches Then
            Set wBranche = GiratoireProjet.colBranches.Item(Row + 1)
            .Row = Row + 1
            Ecart = wBranche.Angle - wValeur
            If Ecart > 0 Then
              .Value = Ecart
            Else
              .Value = ""
            End If
          End If
        End If
      End With
      
      monNumBrancheSelect = Row
      'Modifier la branche graphiquement sans sp�cifier l'invite
      ModifierBranche angConv(wValeur, True), False
      If DiagramFlux And Not TraficActif Is Nothing Then cLS: TraficActif.CalculDiagramFlux
          'Controle de l'�cart avec l'angle pr�c�dent
      ControleRecommandations False, TYPE_ANGLE
    
    Case 3    ' Ecart
      If vgdCarBranche.Value <> "" Then
        Ecart = CSng(vgdCarBranche.Value)
        With vgdCarBranche
          .Col = 2
          .Value = GiratoireProjet.colBranches.Item(Row - 1).Angle + Ecart
          wBranche.Angle = .Value

          monNumBrancheSelect = Row
          ModifierBranche angConv(wBranche.Angle, True), False
          If DiagramFlux And Not TraficActif Is Nothing Then cLS: TraficActif.CalculDiagramFlux
          If Row < NbBranches Then
            wValeur = .Value
            Set wBranche = GiratoireProjet.colBranches.Item(Row + 1)
            .Row = Row + 1
            .Col = 3
            Ecart = wBranche.Angle - wValeur
            If Ecart > 0 Then
              .Value = Ecart
            Else
              .Value = ""
              .Col = 2
              .Action = 0
            End If
          End If
        'Controle de l'�cart avec l'angle pr�c�dent
        ControleRecommandations False, TYPE_ANGLE
        End With
      End If
    
    Case 4      ' Rampe
      ControleRecommandations False, TYPE_AUCUN 'Seulement pour l'invite
  
    Case 5      ' Tourne a droite
      ControleRecommandations False, TYPE_AUCUN 'Seulement pour l'invite
      If DiagramFlux And Not TraficActif Is Nothing Then cLS: TraficActif.CalculDiagramFlux

    End Select
      
    End If
    Journal "***LeaveCell"
    If NewRow = -1 Then
      ' Traitement final : sortie de la grille de saisie
      'Rq19/09
      Journal "***LeaveCellNewRow-1"
      If MessageEmis And ChangementOnglet Then
        'R�activer la cellule s'il y a eu une demande de changement d'onglet
        'et qu'un message d'avertissement doit �tre �mis
        Cancel = True
        PlaceFocus vgdCarBranche, Col, Row
        vgdCarBranchePrepare Row, Col
        vgdCarBranche.SetFocus
        ChangementOnglet = False
        Journal "***LeaveCellChangeOnglet"
      Else
        'Interdire de modifier les branches, et d�terminer le champ de saisie suivant
        BloqueNbBranches 0
        'La v�rification est termin�e
        TypeMatriceActive = AUCUN
        Donn�eValide = True
      End If
    Else
      'La valeur est valide
      'et l'utilisateur n'a pas tent� de sortir de la grille de saisie
      'R�activer la cellule
      PlaceFocus vgdCarBranche, NewCol, NewRow
      vgdCarBranchePrepare NewRow, NewCol
      If FeuilleBranche Is Nothing Then
        vgdCarBranche.SetFocus
      End If
    End If
  Else
    'La valeur n'a pas �t� valid�e, le focus reste ou revient � sa position
    AutreOnglet = True
    'r�cup�rer l'ancienne valeur
    vgdCarBranche.Value = SauveValeurSpread
    Journal "***Leavecell" & vgdCarBranche.Value
    'r�activer la cellule
    Cancel = True
    PlaceFocus vgdCarBranche, Col, Row
    vgdCarBranchePrepare Row, Col
    If FeuilleBranche Is Nothing Then
      vgdCarBranche.SetFocus
    End If
  End If
  
  If Cancel Then Journal "Cancel"
  
  DoEvents
End Sub

'******************************************************************************
' Bloquage du champ txtNbBranches  et d�termination du champ de saisie suivant
'******************************************************************************
Private Sub BloqueNbBranches(ByVal numGrille As Integer)
Dim ControleSuivant As Control
  ' Si l'utilisateur est arriv� en bout de grille avec les touches de tabulation,
  ' activation du champ qui suit (DrapeauSuivant = True) ou qui pr�c�de
  If D�bordement Then
    D�bordement = False
    Select Case numGrille
    ' Onglet site
    Case 0
      If DrapeauSuivant Then
        Set ControleSuivant = txtNomGiratoire
      Else
        If GiratoireProjet.Milieu >= 0 Then
          Set ControleSuivant = optMilieu(GiratoireProjet.Milieu)
        Else
          Set ControleSuivant = txtLocalisation
        End If
      End If
    ' Onglet Dimensionnement
    Case 1
      If DrapeauSuivant Then
        Set ControleSuivant = txtVariante 'txtR
      Else
        Set ControleSuivant = txtLA
      End If
    ' Onglet Trafic
    Case 2
      Set ControleSuivant = vgdTrafic(PIETON)
    Case 3
      Set ControleSuivant = vgdTrafic(VEHICULE)
    End Select
    ControleSuivant.SetFocus
  End If
      
End Sub


'******************************************************************************
' Controle de validit� des branches
' Param�tres
'   Numbranche  =0   => on contr�le toutes les branches
'               >0   => On contr�le seulement la branche n
' Retour
'    = 0 : pas d'erreur
'    > 0 : erreur entre la branche n et n-1
'         (on arr�te sur la premi�re erreur rencontr�e)
'******************************************************************************
''Private Function controleChevauchementBranches(ByVal EcritMessage As Boolean, Optional ByVal NumBranche As Integer = 0) As Integer
''  Dim i, j As Integer
''  Dim fin As Integer
''  Dim Ecart, valeur As Single
''  controleChevauchementBranches = 0
''  With GiratoireProjet.colBranches
''    If NumBranche = 0 Then
''      i = 1
''      fin = .count
''    Else
''      i = NumBranche
''      fin = NumBranche
''    End If
''
''    Do While i <= fin And controleChevauchementBranches = 0
''      j = i Mod .count + 1
''      valeur = .Item(i).LI / 2 + .Item(i).LE4m + .Item(j).LS + .Item(j).LI / 2
''        Ecart = angConv(.Item(i).Angle - .Item(j).Angle, True)
''      If Ecart < 0 Then Ecart = Ecart + 2 * PI
''      If valeur > Ecart * txtRg Then
''        'Chevauchement pour la branche i
''        controleChevauchementBranches = i
''        If EcritMessage Then
''          Dim MessageAEcrire As String
''          MessageAEcrire = IDv_Chevauchement + .Item(i).nom + IDl_ET + .Item(j).nom & "."
''
''          Select Case TypeControleActif
''            Case TYPE_LE4M:
''              AfficheRecommandations TypeControleActif, MessageAEcrire, TYPE_LE4M
''            Case TYPE_LS:
''              AfficheRecommandations TypeControleActif, MessageAEcrire, TYPE_LS
''            Case TYPE_LI:
''              AfficheRecommandations TypeControleActif, MessageAEcrire, TYPE_LI
''          End Select
''        End If
''      End If
''      i = i + 1
''    Loop
''  End With
''End Function

'******************************************************************************
' D�tection de la frappe de la touche TAB ou SHIFT TAB
'******************************************************************************
Private Sub vgdCarBranche_QueryAdvance(ByVal AdvanceNext As Boolean, Cancel As Boolean)
  Cancel = False
  D�bordement = True
  DrapeauSuivant = AdvanceNext
End Sub

Public Sub vgdLargBrancheClic(ByVal Lig As Integer, ByVal ButtonDown As Boolean)
  Num�roLigneActive = Lig
  vgdLargBranche.Row = Lig
  vgdLargBranche.Col = 5
  TypeMatriceActive = DIMENSION
  vgdLargBranche.Value = ButtonDown
  vgdLargBrancheEntr�e ButtonDown
End Sub

Private Sub vgdLargBranche_ButtonClicked(ByVal Col As Long, ByVal Row As Long, ByVal ButtonDown As Integer)
  vgdLargBrancheEntr�e ButtonDown
  Donn�eModifi�e = True
End Sub

'******************************************************************************
' Autorise ou interdit l'acc�s � la largeur d'entr�e �vas�e
' suivant que la case � cocher Entr�e Evas�e est coch�e ou non.
'******************************************************************************
Private Sub vgdLargBrancheEntr�e(ByVal ButtonDown As Integer)
  vgdLargBranche.Col = 2
  If ButtonDown = 0 Then
    vgdLargBranche.Value = ""
    vgdLargBranche.Lock = True
    If TypeMatriceActive = DIMENSION Then
      GiratoireProjet.colBranches.Item(Num�roLigneActive).Entr�eEvas�e = False
      ControleRecommandations False, DIMENSION
    End If
  Else
    vgdLargBranche.Lock = False
  '0604
   ' vgdLargBranche.Value = GiratoireProjet.colBranches.Item(Num�roLigneActive).LE4m
    If TypeMatriceActive = DIMENSION Then
      With GiratoireProjet.colBranches.Item(Num�roLigneActive)
        '0604
        If Not .Entr�eEvas�e Then
          vgdLargBranche.Value = .LE4m
          .Entr�eEvas�e = True
          .LE15m = .LE4m
        End If
      End With
      ControleRecommandations False, DIMENSION
    End If
  End If
  lblInvite = Idi_D�faut
  If Not ChargementEnCours Then Donn�eModifi�e = True
End Sub

'******************************************************************************
'
'******************************************************************************
Private Sub vgdLargBranche_GotFocus()
  Dim TypeVariableCourant As String
  If controleEnCours Then Exit Sub
  
  Journal "GotFocus"
  
  With vgdLargBranche
    .OperationMode = OperationModeNormal
    TypeMatriceActive = DIMENSION
    AfficheSpreadNormal 'retire la poign�e
    'Pr�pare l'invite de la premi�re cellule
    If AutreOnglet Then
      vgdLargBranchePrepare .ActiveRow, .ActiveCol
      AutreOnglet = False
    Else
      PlaceFocus vgdLargBranche
      vgdLargBranchePrepare 1, 1
    End If
  End With
End Sub

'******************************************************************************
' Pr�pare l'invite en fonction de la nouvelle cellule active
'******************************************************************************
Private Sub vgdLargBranchePrepare(ByVal NewRow As Long, ByVal NewCol As Long)
  With vgdLargBranche
    'Sauvegarde l'ancienne valeur
    .Col = NewCol
    .Row = NewRow
    SauveValeurSpread = .Value
    lblInvite = ""
    Num�roColonneActive = NewCol
    Num�roLigneActive = NewRow
    Select Case NewCol
      Case 1: TypeControleActif = TYPE_LE4M
      Case 2: TypeControleActif = TYPE_LE15M
      Case 3: TypeControleActif = TYPE_LI
      Case 4: TypeControleActif = TYPE_LS
      Case 5: TypeControleActif = TYPE_ENTREE
    End Select
    ControleRecommandations True, TYPE_MATRICE
  End With

End Sub

Private Sub vgdLargBranche_KeyPress(KeyAscii As Integer)
' Suppression AV 22/02/2000 - V4.0.18 suite � gestion du point d�cimal sur le Spread (GIRATOIRE.Cr�ation)
'  KeyAscii = ControleR�el(KeyAscii)
End Sub
'******************************************************************************
' ChangeLE4m
' La valeur de LE4m a chang�
' D'autres cellules peuvent changer d''�tat
' Si la largeur d'entr�e est nulle, il faut bloquer la largeur d'ilot
' l'entr�e �vas�e et le tourne � droite
' Dans le cas contraire, il faut autoriser la saisie de contr�les qui pouvaient
' pr�c�demment �tre verrouill�s
'******************************************************************************
Public Sub ChangeLE4m(ByVal Row As Long, ByVal Entr�eNulle As Boolean)
  With vgdLargBranche
    If Entr�eNulle Then
      'Interdit la saisie de l'entr�e �vas�e...
      .Row = Row
      .Col = 2
      .Value = ""
      .Lock = True
      'Interdit la largeur d'ilot LI...
      .Col = 3
      .Value = ""
      GiratoireProjet.colBranches.Item(Row).LI = 0
      .Lock = True
      'Interdit de cocher l'entr�e �vas�e
      Dim TypeMatriceActiveA As Integer
      TypeMatriceActiveA = TypeMatriceActive
      TypeMatriceActive = AUCUN
      .Col = 5
      GiratoireProjet.colBranches.Item(Row).Entr�eEvas�e = False
      .Lock = True
      .Value = False
      TypeMatriceActive = TypeMatriceActiveA
      'Interdit le Tourne-A-Droite...
      GiratoireProjet.colBranches.Item(Row).TAD = False
      With vgdCarBranche
        .Row = Row
        .Col = 5
        .Value = False
        .Lock = True
      End With
    Else
      'Autorise l'entr�e de la largeur d'ilot LI si la sortie n'est pas nulle
      .Row = Row
      .Col = 3
      If GiratoireProjet.colBranches.Item(Row).SortieNulle Then
        .Value = 0
      Else
        .Lock = False
        .Value = DEFAUT_LI 'remise � la valeur par d�faut de LI...
        GiratoireProjet.colBranches.Item(Row).LI = DEFAUT_LI
      End If
      'Autorise de cocher l'entr�e �vas�e
      .Col = 5
      .Lock = False
      'Autorise l'entr�e du Tourne-A-Droite...
      If GiratoireProjet.R > 0 Then
        vgdCarBranche.Row = Row
        vgdCarBranche.Col = 5
        vgdCarBranche.Lock = False
      End If
    End If
    .Col = 1
  End With
End Sub

Public Sub ChangeLS(ByVal Row As Long, ByVal SortieNulle As Boolean)
  'Si la largeur de sortie est nulle, il faut bloquer la saisie
  'de la largeur d'ilot et lui imposer une valeur nulle
  With vgdLargBranche
    .Row = Row
    .Col = 3
    If SortieNulle Then
      .Lock = True
      .Value = ""
      GiratoireProjet.colBranches.Item(Row).LI = 0
    Else
      'Autorise l'entr�e de LI si l'entr�e n'est pas nulle
      If GiratoireProjet.colBranches.Item(Row).Entr�eNulle Then
        .Value = ""
      Else
        .Lock = False
        .Value = DEFAUT_LI 'remise � la valeur par d�faut de LI
        GiratoireProjet.colBranches.Item(Row).LI = DEFAUT_LI
      End If
    End If
    .Col = 4
  End With
End Sub

'******************************************************************************
' Validation d'une cellule de la grille Largeur des branches
'******************************************************************************
Public Sub vgdLargBranche_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
Dim wValeur As Single, Ecart As Single, i As Integer
Dim wBranche As BRANCHE
Dim Valeur As String
'Dim Donn�eValide As Boolean
Dim ESPr�c�dente As Boolean
  If controleEnCours Then Exit Sub
  
    
  TypeMatriceActive = DIMENSION
  With vgdLargBranche
    .Col = Col
    .Row = Row
  End With
  
  Journal "LeaveCell", NewCol, NewRow
  
  Set wBranche = GiratoireProjet.colBranches.Item(Row)
  Valeur = vgdLargBranche.Value
  RemplaceVirgule Valeur
  If Donn�eModifi�e Then
    Donn�eValide = ValidationDonn�es(Valeur, wBranche)
  Else
    Donn�eValide = True
  End If
  If Donn�eValide Then
    'Donn�e valide
    If Donn�eModifi�e Then
      'Affectation de la valeur � la variable associ�e � la cellule
      Select Case Col
      Case 1:
              wBranche.LE4m = Valeur
              ESPr�c�dente = wBranche.Entr�eNulle
              wBranche.Entr�eNulle = (CSng(Valeur) = 0#)
              If ESPr�c�dente <> wBranche.Entr�eNulle Then
                ChangeLE4m Row, wBranche.Entr�eNulle
                'Interdit le d�placement sur la m�me ligne du spread
                If NewRow = Row Then NewCol = 1
              End If
      Case 2: wBranche.LE15m = Valeur
      Case 3: wBranche.LI = Valeur
      Case 4: wBranche.LS = Valeur
              ESPr�c�dente = wBranche.SortieNulle
              wBranche.SortieNulle = (CSng(Valeur) = 0#)
              If ESPr�c�dente <> wBranche.SortieNulle Then
                ChangeLS Row, wBranche.SortieNulle
              End If
      Case 5: wBranche.Entr�eEvas�e = Valeur
      End Select
      
      ControleRecommandations False, TYPE_MATRICE
      DessinerBranche Row, angConv(wBranche.Angle, CVRADIAN)
      If DiagramFlux And Not TraficActif Is Nothing Then cLS: TraficActif.CalculDiagramFlux
    End If
    
    If NewRow = -1 Then
      If MessageEmis And ChangementOnglet Then
        'R�activer la cellule s'il y a eu une demande de changement d'onglet
        'et qu'un message d'avertissement doit �tre �mis
        Cancel = True
        PlaceFocus vgdLargBranche, Col, Row
        vgdLargBranchePrepare Row, Col
        vgdLargBranche.SetFocus
        ChangementOnglet = False
      Else
      '0599
        ''controleChevauchementBranches (True)
        vgdLargBranche.EditMode = True
        vgdLargBranche.Refresh
        'Fin de v�rification
        TypeMatriceActive = AUCUN
        'Traitement final : sortie de la grille de saisie
        BloqueNbBranches 1
      End If
    Else
      'Repositionnement sur la nouvelle cellule
      vgdLargBranchePrepare NewRow, NewCol
      'R�activer la cellule
      PlaceFocus vgdLargBranche, NewCol, NewRow
      If FeuilleBranche Is Nothing Then
        vgdLargBranche.SetFocus
      End If
    End If
  Else
    'R�cup�rer l'ancienne valeur
    AutreOnglet = True
    vgdLargBranche.Value = SauveValeurSpread
    'R�activer la cellule
    Cancel = True
    PlaceFocus vgdLargBranche, Col, Row
    vgdLargBranchePrepare Row, Col
    If FeuilleBranche Is Nothing Then
      vgdLargBranche.SetFocus
    End If
  End If
  DoEvents
End Sub

' Modif AV : 09/03/99 : le Spread retourne toujours un point (.) dans Value pour le point d�cimal
' Il faut remettre ce qu'il faut pour que la fonction IsNumeric fonctionne correctement
Private Sub RemplaceVirgule(ByRef Chaine As String)
  Dim Position As Long
  Position = InStr(1, Chaine, ".", 1)
  If Position Then
    Mid(Chaine, Position) = Chr(gbPtDecimal)  ' = ","
  End If
End Sub

'******************************************************************************
' D�tection de la frappe de la touche TAB ou SHIFT TAB
'******************************************************************************
Private Sub vgdLargBranche_QueryAdvance(ByVal AdvanceNext As Boolean, Cancel As Boolean)
  Cancel = False
  D�bordement = True
  DrapeauSuivant = AdvanceNext
  
End Sub

Private Sub vgdTrafic_GotFocus(Index As Integer)
  'Si l'on n'est pas sorti de la matrice alors qu'un �v�nement GotFocus
  'survient il faut quitter cette fonction
  'C'est le cas lorsque la derni�re cellule d'une grille ne peut �tre valid�e
  'Un gotfocus est renvoy� mais il ne faut pas positionner le focus
  'sur la premi�re cellule de la grille
  If controleEnCours Then Exit Sub
    
  Journal "GotFocus"
  
  With vgdTrafic(Index)
    .OperationMode = OperationModeNormal
     TypeMatriceActive = TRAFIC
    AfficheSpreadNormal 'Retire la poign�e
    If AutreOnglet Then
      'Le focus �tait positionn� sur un autre onglet et l'utilisateur a cliqu�
      'sur le spread
      vgdTraficPrepare .ActiveRow, .ActiveCol, Index
      AutreOnglet = False
    Else
      'Le focus �tait sur un autre contr�le appartenant � l'onglet actif
      'L'utilisateur a cliqu� dans une cellule du spread ou a frapp�
      ' un touche (TAB...) qui m�ne � ce spread
      'Dans tous les cas on se positionne sur la premi�re cellule accessible
      'Positionnement sur la premi�re cellule si celle-ci est accessible
      'Le clic sera interpr�t� par le spread qui positionnera le focus �
      'l'endroit voulu
      Dim Bloqu� As Boolean
      .Col = 1
      .Row = 1
      Bloqu� = .Lock
      'Positionnement sur la premi�re cellule accessible
      If Bloqu� Then
        Dim ColEnabled As Integer, RowEnabled As Integer
        Dim Continue As Boolean
        Continue = True
        RowEnabled = 1
        Do While Continue And RowEnabled <= NbBranches
          .Row = RowEnabled
          ColEnabled = 1
          Do While Continue And ColEnabled <= NbBranches
            .Col = ColEnabled
            If .Lock Then
              ColEnabled = ColEnabled + 1
            Else
              Continue = False
            End If
          Loop
          If Continue Then RowEnabled = RowEnabled + 1
        Loop
        PlaceFocus vgdTrafic(Index), ColEnabled, RowEnabled
        vgdTraficPrepare RowEnabled, ColEnabled, Index
        
        Dim Cancel As Boolean
        vgdTrafic_LeaveCell Index, 1, 1, ColEnabled, RowEnabled, Cancel
      Else
        'Pr�pare l'invite de la premi�re cellule
        PlaceFocus vgdTrafic(Index), 1, 1
        vgdTraficPrepare 1, 1, Index
      End If
    End If
  End With
End Sub

Private Sub vgdTraficPrepare(ByVal NewRow As Long, ByVal NewCol As Long, ByVal Index As Integer)
  With vgdTrafic(Index)
    .Col = NewCol
    .Row = NewRow
    'Sauvegarde l'ancienne valeur
    SauveValeurSpread = .Value
    Num�roColonneActive = NewCol
    Num�roLigneActive = NewRow
    TypeControleActif = Index
    Select Case Index
      Case PIETON: TypeControleActif = TYPE_QP
      Case VEHICULE: TypeControleActif = TYPE_Q
    End Select
    'Affiche les messages de recommandations et affiche l'invite
    'pour la nouvelle cellule
    ControleRecommandations True, TYPE_MATRICE
  End With
End Sub

Private Sub vgdTrafic_KeyPress(Index As Integer, KeyAscii As Integer)
  'La donn�e pouvait �tre affich� en rouge ;
  'toute nouvelle frappe repasse la valeur dans la couleur normale
  vgdTrafic.Item(Index).ForeColor = vbWindowText
End Sub

'******************************************************************************
' Validation d'une cellule de la grille Matrice de Trafics
'******************************************************************************
Private Sub vgdTrafic_LeaveCell(Index As Integer, ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
Dim wBranche As Integer
Dim Valeur As String
'Dim Donn�eValide As Boolean
  
  If TraficActif Is Nothing Then Exit Sub
  If controleEnCours Then Exit Sub
  
  TypeMatriceActive = TRAFIC
  With vgdTrafic(Index)
    .Col = Col
    .Row = Row
    Valeur = .Value
    
    Journal "LeaveCell", NewRow, NewCol
    
    If Valeur = "" Or Not Donn�eModifi�e Then
      Donn�eValide = True
      Valeur = -1
    Else
      Donn�eValide = ValidationDonn�es(Valeur)
    End If
    If Donn�eValide Then
      If Donn�eModifi�e Then TraficModifi� = True
      If Donn�eModifi�e Then
      'Affectation de la valeur � la variable associ�e � la cellule
        Select Case Index
          Case VEHICULE:
            TraficActif.setQ Row, Col, .Value, True   ' True = pour faire afficher les totaux dans la grille
          Case PIETON:
            TraficActif.setQP Col, .Value
        End Select
        ControleRecommandations False, TYPE_MATRICE
        If DiagramFlux And Index = VEHICULE Then cLS: TraficActif.CalculDiagramFlux
        TraficActif.InvalideCalcul
      End If
      ' Traitement final : sortie de la grille de saisie
      If NewRow = -1 Then
        'Dans le cas d'�mission d'un message et si on a tent� de positionner le focus
        'sur la matrice de Pi�ton/trafic ce dernier ne se repositionne pas correctement
        'On pr�f�re faire dispara�tre le focus, ce qui permet d'�viter le probl�me
        If MessageEmis Then txtNomGiratoire.SetFocus
        If MessageEmis And ChangementOnglet Then
          'R�active la cellule s'il y a eu une demande de changement d'onglet
          'et qu'un message d'avertissement a �t� �mis
          Cancel = True
          PlaceFocus vgdTrafic(Index), Col, Row
          vgdTraficPrepare Row, Col, Index
          vgdTrafic(Index).SetFocus
          ChangementOnglet = False
        Else
          'Sortie de la matrice
          .EditMode = True
          TypeMatriceActive = AUCUN
          BloqueNbBranches 2 + Index
          If Index = VEHICULE And TraficModifi� Then ControleMatriceTrafic
          TraficModifi� = False
        End If
      Else
        'On passe � la cellule demand�e
        vgdTraficPrepare NewRow, NewCol, Index
        '.Row = NewRow
        '.Col = NewCol
        '.Action = 0
        PlaceFocus vgdTrafic(Index), NewCol, NewRow
        .SetFocus
      End If
    Else
      'On reste sur la cellule en cours
      'R�cup�re l'ancienne valeur
      .Value = SauveValeurSpread
      'R�active la cellule
      Cancel = True
      PlaceFocus vgdTrafic(Index), Col, Row
      '+19/05
      vgdTraficPrepare NewRow, NewCol, Index
      .SetFocus
      DoEvents
    End If
  End With
  
  If Cancel Then Journal "Cancel"
  
  DoEvents
End Sub

'******************************************************************************
' D�tection de la frappe de la touche TAB ou SHIFT TAB
'******************************************************************************
Private Sub vgdTrafic_QueryAdvance(Index As Integer, ByVal AdvanceNext As Boolean, Cancel As Boolean)
  Cancel = False
  D�bordement = True
  DrapeauSuivant = AdvanceNext
End Sub

'******************************************************************************
' AfficheRecommandations
' Pr�pare les messages d'invite ou la boite de message des anomalies
' Param�tres
'   TypeControleActif : Type du controle en cours de v�rification
'   Message           : Message actuel
'   chaineMessage     : message r�sultant � �crire dans l'invite ou la boite de message
'    CP               : Contr�le principal concern�
'    C2 , C3, C4      : Autres contr�les optionnels concern�s
' Appel� par :
'   ControleRecommandations
'******************************************************************************
Public Sub AfficheRecommandations(TypeControleActif As String, message As String, _
   Cp As String, Optional C2 As String = TYPE_AUCUN, _
   Optional C3 As String = TYPE_AUCUN, Optional C4 As String = TYPE_AUCUN)
    
    If TypeControleActif = Cp Then
      'Pr�parer l'invite
      ChaineInvite = ChaineInvite & message & " " ' & Chr(13)
    End If
    If TypeControleActif = Cp Or TypeControleActif = C2 Or _
    TypeControleActif = C3 Or TypeControleActif = C4 Then
      'Pr�parer le message (boite de dialogue) pour le controle actif
      ChaineMessage = ChaineMessage & message & " " & Chr(13)
    Else
      If Cp = TYPE_RG Then
      'Afficher un message d'avertissement sur la valeur du rayon ext�rieur
      'Ce message ne sera affich� que pour les boites de message
      'et invite relatifs aux variables R, Bf et LA
        If TypeControleActif = TYPE_R Or TypeControleActif = TYPE_LA Or TypeControleActif = TYPE_BF Then
          ChaineInvite = ChaineInvite & message & " " '& Chr(13)
          ChaineMessage = ChaineMessage & message & Chr(13)
        End If
      'Si une valeur LA, Bf, ou R est modifi�e, elle peut entrainer une modification de RG
      'qui peut entrainer un avertissement sur une autre valeur entrant dans la composition de Rg
      ElseIf (C2 = TYPE_RG Or C3 = TYPE_RG Or C4 = TYPE_RG) And _
        (TypeControleActif = TYPE_R Or TypeControleActif = TYPE_LA Or TypeControleActif = TYPE_BF) Then
        ChaineMessage = ChaineMessage & message & Chr(13)
      End If
    End If
  
  'Colorer les avertissements
  ColoreRecommandations Cp
End Sub

'******************************************************************************
' ColoreRecommandations
' Affiche en rouge les valeurs qui sortent des intervalles recommand�s
' Param�tres
'   Controle : controle en cours
' Appel� par : AfficheRecommandations
'******************************************************************************
Public Sub ColoreRecommandations(controle As String)
  Select Case controle
    Case TYPE_MILIEU: optMilieu(GiratoireProjet.Milieu).ForeColor = vbRed
    Case TYPE_R:  txtR.ForeColor = vbRed
    Case TYPE_LA: txtLA.ForeColor = vbRed
    Case TYPE_BF: txtBf.ForeColor = vbRed
    Case TYPE_RG: txtRg.ForeColor = vbRed
    Case TYPE_LE4M, TYPE_LE15M, TYPE_LI, TYPE_LS:
      vgdLargBranche.Row = Num�roLigneActive
      vgdLargBranche.Col = CalculeNoColonneLargeur(controle)
      vgdLargBranche.ForeColor = vbRed
    Case TYPE_ANGLE
      'Colore les colonnes Angle et �carts de la matrice
      'pour la ligne consid�r�e
      vgdCarBranche.Row = Num�roLigneActive
      vgdCarBranche.Col = 2
      vgdCarBranche.ForeColor = vbRed
      vgdCarBranche.Col = 3
      vgdCarBranche.ForeColor = vbRed
    Case TYPE_QP
      With vgdTrafic(PIETON)
        .Col = Num�roColonneActive
        .ForeColor = vbRed
      End With
    Case TYPE_Q
      With vgdTrafic(VEHICULE)
        .Row = Num�roLigneActive
        .Col = Num�roColonneActive
        .ForeColor = vbRed
      End With
    End Select
    'Colore les contr�les erron�es appartenant � la feuille des caract�ristiques de branche
    If Not FeuilleBranche Is Nothing Then
      ColoreRecommandationsCarBranche (controle)
    End If
End Sub

Private Function ColoreRecommandationsCarBranche(controle As String)
  With FeuilleBranche
    Select Case controle
      Case TYPE_LE4M: .txtLE4m.ForeColor = vbRed
      Case TYPE_LE15M: .txtLE15m.ForeColor = vbRed
      Case TYPE_LI: .txtLE4m.ForeColor = vbRed
      Case TYPE_LS: .txtLS.ForeColor = vbRed
      Case TYPE_ANGLE:
        .txtAngleBranche.ForeColor = vbRed
        .txtEcart.ForeColor = vbRed
    End Select
  End With
End Function
Private Function CalculeNoColonneLargeur(NomVariable As String) As Integer
  Select Case NomVariable
    Case TYPE_LE4M: CalculeNoColonneLargeur = 1
    Case TYPE_LE15M: CalculeNoColonneLargeur = 2
    Case TYPE_LI: CalculeNoColonneLargeur = 3
    Case TYPE_LS: CalculeNoColonneLargeur = 4
    Case Else: CalculeNoColonneLargeur = 1
  End Select
End Function

'******************************************************************************
' ControleRecommandations
' Affiche en rouge les valeurs qui sortent des intervalles recommand�s
' Cette proc�fure est appel� si la valeur est valide
' Param�tres
'
' Appel� par :
'      GotFocus - Chaque fois que le focus est d�plac� sur un champ,
'       cette proc�dure affiche l'invite relative au champ
'      Validate - Chaque fois qu'un champ est valid�
'       par Tab ou par d�placement sur un autre champ,
'       la proc�dure affiche un message de recommandation si la valeur est en dehors
'       des valeurs recommand�es, puis colore en rouge les valeurs non recommand�es.
'      tabDonn�es -
'        Lors de la validation d'un champ par clic sur un autre onglet,
'        l'�v�nement Validate n'est pas appel�
'        L 'appel de cette proc�dure est fait � ce niveau
'******************************************************************************
Public Function ControleRecommandations(ByVal GotFocus As Boolean, Optional ByVal TypeControle As String = TYPE_COURANT)
 Dim TraficActif As TRAFIC
 Dim Control As Control
 Dim LE4max As Single
 Dim iMax As Integer
 Dim message As String
 Dim Erreur As Boolean
 
  ControleRecommandations = False
  If ChargementEnCours Then Exit Function
  Dim i As Integer
  Select Case TypeControle
    Case TYPE_COURANT
      Set ControleActif = ActiveControl
      TypeControleActif = Mid(ControleActif.Name, 4)
    Case TYPE_AVANT
      'On a cliqu� sur un  contr�le qui ne g�re pas l'�v�nement Validate
      'On r�cup�re s'il existe le contr�le pr�c�dant non v�rifi�
      TypeControleActif = Mid(ControleActif.Name, 4)
    Case Else
      'Le type de controle actif a d�j� �t� affect�
  End Select

  ChaineInvite = ""
  ChaineMessage = ""
  If Not GotFocus Then
    'Remet les contr�les TextBox dans leur couleur initiale
    'lorsque l'ulilisateur a valid� une donn�e...
    For Each Control In Controls
      If TypeOf Control Is TextBox Then
        'Les valeurs cumul�es des trafics ne sont pas modifi�es
        If Left(Control, 5) <> Left(txtQE(1), 5) _
        And Left(Control, 5) <> Left(txtQS(1), 5) Then
          Control.ForeColor = vbWindowText
        End If
      End If
    Next
    'Remet les boutons radio de l'environnement dans sa couleur normale
    optMilieu(0).ForeColor = vbWindowText
  End If
  
  With GiratoireProjet
  'Site et Dimensionnement
  If .Milieu = rc And NbBranches > 6 Then
    'Changement du milieu
    AfficheRecommandations TypeControleActif, IDm_TropDeBranchesEnRC, TYPE_MILIEU, TYPE_NBBRANCHES
  End If
  If .R > 0 And .R < 3.5 Then
    AfficheRecommandations TypeControleActif, IDm_RTropGrandPourMiniG, TYPE_R
  End If
  If .R > 25 Then
    AfficheRecommandations TypeControleActif, IDm_RTropGrand, TYPE_R
  End If
   'Passage en validation Rq0599
   'If .R = 0 And .Milieu = RC Then
   ' AfficheRecommandations TypeControleActif, IDm_RNulEnRC, TYPE_R
  'End If
  'If .R = 0 And .Milieu = PU Then 'Rq0499
  If .R = 0 And .Milieu = PU And txtRg < 12 Then
    AfficheRecommandations TypeControleActif, IDm_RNulEnPU, TYPE_R, TYPE_MILIEU
  End If
  'Test de la largeur de l'anneau LA
  If .LA < 6 And .Milieu = rc Then
    AfficheRecommandations TypeControleActif, IDm_LATropEtroit, TYPE_LA
  ElseIf (.LA > 9 And .Milieu = rc) Or (.LA > 12) Then
    AfficheRecommandations TypeControleActif, IDm_LATropGrand, TYPE_LA
  End If
  'Test du rayon ext�rieur Rg
  If txtRg < 7.5 And .R = 0 Then
    AfficheRecommandations TypeControleActif, IDm_RgTropPetitPourMiniG, TYPE_RG
  End If
  If txtRg > 12 And .R = 0 Then
    AfficheRecommandations TypeControleActif, IDm_RgTropGrandPourMiniG, TYPE_RG
  End If
  If (txtRg > 12 And txtRg < 15) And .Milieu = rc Then
    AfficheRecommandations TypeControleActif, IDm_RgVoirGirationEnRC, TYPE_RG
  End If
  If (txtRg > 12 And txtRg < 15) And (.Milieu = PU Or .Milieu = CV) Then
    AfficheRecommandations TypeControleActif, IDm_RgVoirGiration, TYPE_RG
  End If
  message = ValidationRg()
  If message <> "" Then
    AfficheRecommandations TypeControleActif, message, TYPE_RG
  End If
  If .LA + .Bf < 7 And .Milieu <> rc Then
    AfficheRecommandations TypeControleActif, IDm_LATropEtroit, TYPE_LA, TYPE_BF
  End If
  'Rq0499
  message = ValidationBf(Recommandation:=True)
'  If .Bf < 1.5 And .R = 0 Then
'    AfficheRecommandations TypeControleActif, IDm_BfTropPetitPourMiniG, TYPE_BF, TYPE_R
'  End If
'  If (txtRg > 12 And txtRg < 15) And (.Bf < 1.5 Or .Bf > 2.5) Then
'    AfficheRecommandations TypeControleActif, IDm_Bf, TYPE_BF, TYPE_RG
'  End If
  'Controle des donn�es de chaque ligne de branche
  Select Case TypeMatriceActive
    Case 0: 'Aucune matrice en cours de saisie
      'Controle de la matrice Dimensionnement (Pour modif R, LA, Bf, Angle et RC)
      D�coloreMatrice vgdLargBranche, 1, 1, NbBranches, 4
      'Contr�le rapport LE4/LE15 suivant RC, LE4m, LE15m
      'Largeur > dimension giratoire
      For Num�roLigneActive = 1 To NbBranches
        ControleDimensionnement1 TypeControleActif
        ControleDimensionnementN TypeControleActif
      Next
      D�coloreMatrice vgdCarBranche, 1, 2, NbBranches, 3
      For Num�roLigneActive = 1 To NbBranches
        'Pour un mini-giratoire seulement, contr�le des angles entre les branches
        If .R = 0 Then ControleCarBranches Num�roLigneActive
        'Erreur = controleChevauchementBranches(True, Num�roLigneActive) 'Contr�l� parce que repass� dans la couleur normale
      Next
      'Contr�le de la valeur maxi de Rg en fonction LE4Max en Rase campagne
      'Contr�le de la largeur d'anneau LA en fonction de LE4Max
      ControleLE4Max
    Case BRANCHE:
      
      'Pour un mini-giratoire seulement, contr�le des angles entre les branches
      If .R = 0 Then
         Dim j As Integer, Res As Integer
        j = Num�roLigneActive Mod NbBranches + 1
        If Num�roLigneActive < j Then
          D�coloreMatrice vgdCarBranche, Num�roLigneActive, 2, j, 3
        Else
          D�coloreMatrice vgdCarBranche, j, 2, j, 3
          D�coloreMatrice vgdCarBranche, Num�roLigneActive, 2, Num�roLigneActive, 3
        End If
        'Contr�le de l'�cart avec la branche suivante
        Res = ControleCarBranches(j, False)
        'Si erreur, colore les cellules erron�es et affiche le message
        'relatif � la branche suivante
        If Res <> 0 Then
          ColoreMatriceBranche (j)
          If Res < 0 Then
            ChaineMessage = IDm_AngleTropPetitPourMiniG
          Else
            ChaineMessage = IDm_AnglePourMiniG
          End If
          ChaineMessage = ChaineMessage & ".." & IDl_DE & "" _
          & GiratoireProjet.colBranches.Item(j).nom
        End If
        Res = ControleCarBranches(Num�roLigneActive)
      End If
    Case DIMENSION:
      'La matrice de saisie de caract�ristiques ou de dimensionnement est active
      D�coloreMatrice vgdLargBranche, Num�roLigneActive, 1, Num�roLigneActive, 4
      ControleDimensionnement1 TypeControleActif
      ControleDimensionnementN TypeControleActif
      'Colore Angle ; Contr�le � partir de Angle, LE4m, LE15m?, LI et LS
      'Erreur = controleChevauchementBranches(True, Num�roLigneActive)
    Case TRAFIC
      'Tests sur les trafics
      Set TraficActif = GiratoireProjet.colTrafics.Item(cboP�riode.ListIndex + 1)
      If TypeControleActif = TYPE_QP Then
        'Trafics pi�tons
        If TraficActif.getQP(Num�roColonneActive) > 999 Then
          AfficheRecommandations TypeControleActif, IDm_QPTropGrand, TYPE_QP
        End If
      Else
        'Trafics v�hicule
        If TraficActif.getQ(Num�roLigneActive, Num�roColonneActive) > 1500 Then
          AfficheRecommandations TypeControleActif, IDm_QTropGrand, TYPE_Q
        End If
        'Tourne-�-droite non justifi�
        If Num�roColonneActive = Num�roLigneActive Mod NbBranches + 1 Then
          If GiratoireProjet.colBranches.Item(Num�roLigneActive).TAD Then
            'Pr�sence d'un TAD
            If TraficActif.getQ(Num�roLigneActive, Num�roColonneActive) < 100 And _
              TraficActif.getQ(Num�roLigneActive, Num�roColonneActive) <> DONNEE_INEXISTANTE Then
              AfficheRecommandations TypeControleActif, IDm_QTropPetitPourTAD, TYPE_Q
            Else
              'Mettre le TAD en surbrillance
              With vgdTrafic(VEHICULE)
                .Col = Num�roColonneActive
                .Row = Num�roLigneActive
                .ForeColor = vbGrayText
              End With
            End If
          End If
        End If
      End If
    End Select
  End With
  
  MessageEmis = False
  'Le controle en cours vient de perdre le focus
  If Not GotFocus Then
    lblInvite = ""
    If ChaineMessage <> "" Then
      controleEnCours = True
      MsgBox ChaineMessage, vbInformation
      controleEnCours = False
      ControleRecommandations = True
      MessageEmis = True
    End If
    'La valeur a �t� v�rifi�e et le focus est positionn� sur une autre variable
    If TypeMatriceActive = 0 Then
      Set ControleActif = Nothing
    End If
    DetectModif
  End If
  'On vient d'avoir le focus ou le focus est rest� sur le m�me objet
  If GotFocus Or ValidateObjet Then
    PrepareInvite ChaineInvite
    InviteGotFocus = ChaineInvite
    'Lignes ci-dessous � mettre si on veut mettre le focus en surbrillance
    If ValidateObjet And Not ActiveControl Is Nothing Then
      With ActiveControl
        .SelStart = 0
        .SelLength = Len(.Text)
      End With
    End If
  End If
  Donn�eModifi�e = False ' la donn�e n'est pas modifi�e
End Function
Sub ColoreMatriceBranche(ByVal j As Integer)
 Dim Row, Col As Integer
  With vgdCarBranche
    Col = .ActiveCol
    Row = .ActiveRow
    .Col = 2
    .Row = j
    .ForeColor = vbRed
    .Col = 3
    .ForeColor = vbRed
    .Row = Row
    .Col = Col
    .Action = 0
  End With
End Sub

'******************************************************************************
' Proc�dure appel�e si une modification a �t� faite et valid�e
' Passe FichierModifi� � vrai
' Lorque l'indicateur CalculAFaire a la valeur VRAI, l'indicateur calculFait
' est mis � FAUX pour signaler que le calcul devra �tre refait
'******************************************************************************
Private Sub DetectModif(Optional ByVal CalculAFaire As Boolean = True)
  If Not FichierModifi� Then
    FichierModifi� = True
    GriserMenus True
  End If
  If CalculAFaire And tabDonn�es.Tab < TRAFIC - 1 Then
    GiratoireProjet.CalculFait = False
  End If
End Sub

Private Sub ControleLE4Max()
  Dim i As Integer
  Dim LE4max As Single
  LE4max = 0
  Num�roLigneActive = 0
  For i = 1 To NbBranches
    If LE4max < GiratoireProjet.colBranches.Item(i).LE4m Then
        LE4max = GiratoireProjet.colBranches.Item(i).LE4m
        Num�roLigneActive = i
    End If
  Next i
  'If i <= NbBranches Then
    'Rq0499
    'If GiratoireProjet.colBranches.Item(i).LE4m >= 6 And txtRg < 20 And GiratoireProjet.Milieu = RC Then
    If LE4max < 8 And LE4max >= 6 And txtRg < 20 And GiratoireProjet.Milieu = rc Then
      AfficheRecommandations TypeControleActif, IDm_RgTropPetit, TYPE_RG, TYPE_LE4M
    End If
    'If GiratoireProjet.LA < LE4max * 1.2 Then 'Rq0499
    Dim LAU As Single
     LAU = GiratoireProjet.LA + 0.5 * GiratoireProjet.Bf
    If LAU < LE4max * 1.2 Then
      AfficheRecommandations TypeControleActif, _
      IDm_LATropEtroitPourEntrer & GiratoireProjet.colBranches.Item(Num�roLigneActive).nom & ".", _
      TYPE_LA, TYPE_LE4M
    End If
End Sub

Private Sub D�coloreMatrice(vgd As vaSpread, _
  ByVal i1 As Integer, ByVal j1 As Integer, ByVal i2 As Integer, ByVal j2 As Integer)
  With vgd
      .Row = i1
      .Col = j1
      .Row2 = i2
      .Col2 = j2
      .BlockMode = True
      .ForeColor = vbWindowText
      .BlockMode = False
    End With
End Sub

Private Sub ControleDimensionnement1(TypeControleActif As String)
  Dim BrancheActive As BRANCHE
  Set BrancheActive = GiratoireProjet.colBranches.Item(Num�roLigneActive)
  With BrancheActive
    'Contr�le la valeur LE4m de la matrice Dimensionnement
    If .LE4m = 0 Then
      AfficheRecommandations TypeControleActif, IDm_LENul, TYPE_LE4M
    End If
    If .LE4m > 0 And .LE4m < 1.5 Then
      AfficheRecommandations TypeControleActif, IDm_LETropPetit, TYPE_LE4M
    End If
    If .LE4m >= 1.5 And .LE4m < 2.5 Then
      AfficheRecommandations TypeControleActif, IDm_LE2Roues, TYPE_LE4M
    ElseIf .LE4m >= 2.5 And .LE4m < 3 Then
      AfficheRecommandations TypeControleActif, IDm_LEPetit, TYPE_LE4M
    ElseIf .LE4m > 8 And GiratoireProjet.Milieu = rc Then
      AfficheRecommandations TypeControleActif, IDm_LETropLargeEnRC, TYPE_LE4M
    End If
    'GS09 ne pas prendre en compte en Rase campagne
    If .LE4m >= 9 And GiratoireProjet.Milieu <> rc Then
      AfficheRecommandations TypeControleActif, IDm_LETropLargePourPi�tons, TYPE_LE4M
    End If
    'Contr�le la valeur LS de la matrice Dimensionnement
    If .LS = 0 Then
      AfficheRecommandations TypeControleActif, IDm_LSNul, TYPE_LS
    End If
    If .LS > 0 And .LS < 1.5 Then
      AfficheRecommandations TypeControleActif, IDm_LSTropPetit, TYPE_LS
    ElseIf .LS >= 1.5 And .LS < 2.75 Then
      AfficheRecommandations TypeControleActif, IDm_LS2Roues, TYPE_LS
    ElseIf .LS >= 2.75 And .LS < 3.5 Then
      AfficheRecommandations TypeControleActif, IDm_LSPetit, TYPE_LS
    ElseIf .LS > 7 Then
      AfficheRecommandations TypeControleActif, IDm_LSTropLarge, TYPE_LS
    End If
    If GiratoireProjet.Milieu >= 0 Then
      'Pour r�aliser ce contr�le le milieu doit �tre d�fini.
      If BrancheActive.LI > GiratoireProjet.LImax Then
        AfficheRecommandations TypeControleActif, IDm_LITropGrand, TYPE_LI, TYPE_LI
      End If
    End If
  End With
  Set BrancheActive = Nothing
End Sub

Private Sub ControleDimensionnementN(TypeControleActif As String)
  Dim rapport As Single
  Dim BrancheActive As BRANCHE
  Set BrancheActive = GiratoireProjet.colBranches.Item(Num�roLigneActive)
  With BrancheActive
    'Tests impliquant plusieurs valeurs
    If .Entr�eEvas�e Then
      If .LE15m = 0 Then
        rapport = 10 'Pour afficher un message
      Else
        rapport = .LE4m / .LE15m
      End If
      'condition de validit�
      If rapport < 1 Or rapport > 2.5 Then
        AfficheRecommandations TypeControleActif, IDv_RapportLE, TYPE_LE4M
        AfficheRecommandations TypeControleActif, IDv_RapportLE, TYPE_LE15M
      End If
      If GiratoireProjet.Milieu = rc And rapport > 1 Then
        AfficheRecommandations TypeControleActif, IDm_EvasementEnRC, TYPE_LE4M
        AfficheRecommandations TypeControleActif, IDm_EvasementEnRC, TYPE_LE15M
      End If
      If GiratoireProjet.Milieu <> rc And rapport > 1.5 Then
        AfficheRecommandations TypeControleActif, IDm_EvasementTropPetit, TYPE_LE4M
        AfficheRecommandations TypeControleActif, IDm_EvasementTropPetit, TYPE_LE15M
      End If
    End If
    If .LI < 2 And Not .Entr�eNulle And Not .SortieNulle And _
      GiratoireProjet.Milieu = CV And GiratoireProjet.R > 0 Then
      AfficheRecommandations TypeControleActif, IDm_LITropPetit, TYPE_LI, TYPE_LE4M, TYPE_LS, TYPE_BF
    End If
    'Condition de validit� sur la largeur
    If .LE4m + .LI + .LS >= 2 * txtRg Then
      AfficheRecommandations TypeControleActif, IDv_LTropGrand, TYPE_LE4M, TYPE_LI, TYPE_LS, TYPE_RG
    End If
 
    If TypeMatriceActive = DIMENSION Then
      'Contr�le sur en saisie de la matrice, sinon contr�le global au niveau de Max(LE4m)
      If .LE4m < 8 And .LE4m >= 6 And txtRg < 20 And GiratoireProjet.Milieu = rc Then
        AfficheRecommandations TypeControleActif, IDm_RgTropPetit, TYPE_RG, TYPE_LE4M
      End If
      If GiratoireProjet.LA < .LE4m * 1.2 Then
        AfficheRecommandations TypeControleActif, _
        IDm_LATropEtroitPourEntrer & GiratoireProjet.colBranches.Item(Num�roLigneActive).nom & ".", _
        TYPE_LA, TYPE_LE4M
      End If
    End If
  End With
  Set BrancheActive = Nothing
End Sub

'******************************************************************************
' Controle de validit� des branches
' Param�tres
'   Numbranche  : Num�ro de branche � contr�ler
' Retour
'    n = 0 : pas d'erreur
'    n > 0 : erreur entre la branche n et n-1
'******************************************************************************
Public Function ControleCarBranches(ByVal NumBranche As Integer, Optional EcrireMessage As Boolean = True) As Integer
  Dim EcartAngle, Valeur As Single
  ControleCarBranches = 0
  With GiratoireProjet.colBranches.Item(NumBranche)
    'On fait  les tests si la branche a une entr�e
    If Not .Entr�eNulle Then
        If NumBranche = 1 Then
          Valeur = GiratoireProjet.colBranches.Item(CInt(NbBranches)).Angle
          If gbProjetActif.modeangle = GRADE Then
            EcartAngle = (400 - Valeur) * 0.9
          Else
            EcartAngle = 360 - Valeur
          End If
          '1606
        Else
          EcartAngle = .Angle - GiratoireProjet.colBranches.Item(NumBranche - 1).Angle
          If gbProjetActif.modeangle = GRADE Then EcartAngle = EcartAngle * 0.9
          If EcartAngle < 0 Then EcartAngle = EcartAngle + 360
        End If
        If EcartAngle < 70 Then
          ControleCarBranches = -NumBranche
          If EcrireMessage Then
            AfficheRecommandations TypeControleActif, IDm_AngleTropPetitPourMiniG, TYPE_ANGLE
          End If
        ElseIf EcartAngle < 80 Then
          ControleCarBranches = NumBranche
          If EcrireMessage Then
            AfficheRecommandations TypeControleActif, IDm_AnglePourMiniG, TYPE_ANGLE
          End If
      End If
    End If
  End With
End Function

'******************************************************************************
' PrepareInvite
' Prepare l'invite pour une variable � saisir
'  en rajoutant au param�tre Message l'invite appropri�
' Param�tres
'   Message : Message initial de l'invite
' Appel� par
'
'******************************************************************************
Private Sub PrepareInvite(ByVal message As String)
  lblInvite = message
  'L'invite est compl�t� par l'invite par d�faut
  If lblInvite <> "" Then lblInvite = lblInvite + vbCrLf
  Select Case TypeControleActif
    Case TYPE_BF
      lblInvite = lblInvite + IDi_BF
    Case TYPE_LE4M
      lblInvite = lblInvite + IDi_LE4M
    Case TYPE_LS
      lblInvite = lblInvite & IDi_LS
    Case TYPE_QP
      lblInvite = lblInvite & IDi_QP
    Case TYPE_Q
      lblInvite = lblInvite & IDl_DE & _
      GiratoireProjet.colBranches.Item(Num�roLigneActive).nom & IDl_VERS & _
      GiratoireProjet.colBranches.Item(Num�roColonneActive).nom & "..."
    Case Else
      'Invite g�n�ral par d�faut pour les contr�les qui n'ont pas leur propre invite
      lblInvite = lblInvite + Idi_D�faut
  End Select
End Sub

'******************************************************************************
'  ValideRayonEtBranches
'  V�rifie que la modification du rayon ext�rieur peut �tre valid�e
' Retourne le bool�en TRUE si valide
'******************************************************************************
Private Function ValideRayonEtBranches(ByRef message As String) As Boolean
  Dim i As Integer
  Dim Continue As Boolean
  Dim uneBranche As BRANCHE
  i = 1
  Continue = True
  calculRg False
  Do While i < NbBranches And Continue
    Set uneBranche = gbProjetActif.colBranches.Item(i)
    Continue = VerifierAngleBranche(i, CSng(txtRg), uneBranche, message)
    i = i + 1
  Loop
  ValideRayonEtBranches = Continue
End Function

'******************************************************************************
' ValidationDonn�es
' V�rifie si la donn�e saisie peut �tre valid�e
' Retour
'   VRAI si oui
'   FAUX sinon. Un message signalant l'erreur est affich�e
' Param�tres
'   Valeur = valeur de la variable � valider
' La variable TypeControleActif pr�cise le type de donn�e � v�rifier
' Appel par
'   Validate des variables
'   tabDonn�es_click lors d'un changement d'onglet
'   X_LeaveCell pour les matrices
'******************************************************************************
Public Function ValidationDonn�es(ByVal Valeur As Variant, Optional wBranche As BRANCHE) As Boolean
  Dim message As String
  Dim x As Single
  
  message = ""
  ValidationDonn�es = True
  If Valeur = "" Then Valeur = 0
  
  If IsNumeric(Valeur) Then
    x = CSng(Valeur)
    Select Case TypeControleActif
      
      'Contr�le de l'angle entre les branches
      Case TYPE_ANGLE
        If Valeur < 0 Then
          message = IDv_ValeurPositive
          ValidationDonn�es = False
        Else
          'Contr�le de la compatibilit� de l'angle avec les autres donn�es
          ValidationDonn�es = VerifierAngleBranche(Num�roLigneActive, x, wBranche, message)
        End If
      
      'Contr�le du rayon du giratoire
      Case TYPE_R
        If Valeur > 100# Then
          message = IDv_RayonInferieur100m
          ValidationDonn�es = False
        ElseIf Valeur < 0 Then
          message = IDv_ValeurPositive
          ValidationDonn�es = False
        'Rajout en validit� Rq0599
        'Un mini-giratoire est interdit en rase campagne
        Else
          'Calcule le rayon ext�rieur Rg
          calculRg False
          If Valeur = 0 And GiratoireProjet.Milieu = rc Then
            message = IDm_RNulEnRC
            ValidationDonn�es = False
            'Rajout en validit� Rq0599
            'Un mini-giratoire est interdit en p�ri-urbain
            'Suppression car ce n'est pas une cause d'invalidit�
'          ElseIf valeur = 0 And GiratoireProjet.Milieu = PU And txtRg <= 12 Then
'            message = IDm_RNulEnPU
'            ValidationDonn�es = False
          Else
            'Compatibilit� du rayon avec les branches
            ValidationDonn�es = ValideRayonEtBranches(message)
            If ValidationDonn�es Then
              'Si des TAD sont d�finis on ne peut passer en mini-giratoire sans effacer
              'ceux-ci
              ValidationDonn�es = ValidationRetTAD(Valeur)
            End If
          End If
        End If
      
      'Contr�le de la bande franchissable Bf
      Case TYPE_BF
        If Valeur < 0 Or Valeur > 3 Then
          message = IDv_ControleBornes & str(0) & IDl_ET & str(3) & IDl_METRE & "."
          ValidationDonn�es = False
        Else
          'Calcule le rayon ext�rieur Rg
          calculRg False
          'Compatibilit� du rayon avec les branches
          ValidationDonn�es = ValideRayonEtBranches(message)
        End If
      
      'Contr�le de la largeur d'anneau LA
      Case TYPE_LA
        ValidationDonn�es = ValidationLA(GiratoireProjet.Milieu, Valeur, message)
        If ValidationDonn�es Then
          calculRg False
          'Compatibilit� de la largeur d'anneau avec les branches
          ValidationDonn�es = ValideRayonEtBranches(message)
        End If
      
      'Contr�le de la largeur de l'�lot
      Case TYPE_LI
        If Valeur < 0 Then
          message = IDv_ValeurPositive
          ValidationDonn�es = False
        Else
          ValidationDonn�es = VerifierAngleBranche(Num�roLigneActive, x, wBranche, message)
        End If
      
      'Contr�le de la largeur d'entr�e
      Case TYPE_LE4M
        If Valeur < 0 Or Valeur > 12 Then
          message = IDv_ControleBornes & str(0) & IDl_ET & str(12) & IDl_METRE & "."
          ValidationDonn�es = False
        ElseIf Valeur = 0 And GiratoireProjet.colBranches.Item(Num�roLigneActive).TAD Then
          'Pas d'entr�e nulle si TAD
          message = IDv_LE0etTAD
          ValidationDonn�es = False
        ElseIf Valeur = 0 And GiratoireProjet.colBranches.Item(Num�roLigneActive).SortieNulle Then
          'Entr�e et Sortie ne peuvent �tre toutes deux nulles
          message = IDv_LE0etLS0
          ValidationDonn�es = False
        Else
          'Compatibilit� evec les autres donn�es
          ValidationDonn�es = VerifierAngleBranche(Num�roLigneActive, x, wBranche, message)
        End If
      
      'Contr�le de la largeur de sortie LS
      Case TYPE_LS
        If Valeur < 0 Or Valeur > 10 Then
          message = IDv_ControleBornes & str(0) & IDl_ET & str(10) & IDl_METRE & "."
          ValidationDonn�es = False
        ElseIf Valeur = 0 And GiratoireProjet.colBranches.Item(Num�roLigneActive).Entr�eNulle Then
          'Entr�e et Sortie ne peuvent �tre toutes deux nulles
          message = IDv_LE0etLS0
          ValidationDonn�es = False
        '0699 a impl�menter compl�tement dans prochaine version
        'en retirant inhibant le TAD de la branche si la sortie de i+1 est nulle
'        ElseIf valeur = 0 And _
'          GiratoireProjet.colBranches.Item(BranchePr�c�dent(Num�roLigneActive)).TAD Then
'          'sortie nulle et TAD sur la branche pr�c�dente
'          message = IDv_LS0etTAD
'          ValidationDonn�es = False
        Else
          'Coh�rence de l'ensemble
          ValidationDonn�es = VerifierAngleBranche(Num�roLigneActive, x, wBranche, message)
        End If
      
      'Contr�le du trafic (en fait r�alis� par le spread de trafic)
      Case TYPE_Q
        If Valeur < 0 Or Valeur > 2500 Then
          Const IDl_UVP = " uvp"
          message = IDv_ControleBornes & str(0) & IDl_ET & str(2500) & IDl_UVP & "."
          ValidationDonn�es = False
        End If
      'Contr�le du trafic pi�ton (�galement r�alis� par le spread de trafic)
      Case TYPE_QP
        'GS09 Correction test
        'If valeur < 0 Or valeur > 250 Then
        If Valeur < 0 Or Valeur > 2500 Then
          Const IDl_PIETON = " p"
          message = IDv_ControleBornes & str(0) & IDl_ET & str(2500) & IDl_PIETON & "."
          ValidationDonn�es = False
        End If
        
      'Contr�le du type de site
      Case TYPE_MILIEU
        'Rajout en validit� Rq0599
        If Valeur = rc And GiratoireProjet.R = 0 Then
          message = IDm_RNulEnRC
          ValidationDonn�es = False
          '1606 Ce n'est pas une cause d'invalidit�
'        ElseIf valeur = PU And GiratoireProjet.R = 0 And txtRg <= 12 Then
'          message = IDm_RNulEnPU
'          ValidationDonn�es = False
        ElseIf Not ValidationLA(Valeur, GiratoireProjet.LA, message) Then
          message = IDv_ModifMilieu
          ValidationDonn�es = False
        End If
        If Not ValidationDonn�es And Not ChargementEnCours Then
          'Ne valide pas la modification et
          'Replace le focus � sa position ant�rieure
          optMilieu(GiratoireProjet.Milieu).SetFocus
        End If
    End Select
    
    If ValidationDonn�es Then
      Select Case TypeControleActif
        'Contr�le de la valeur du rayon ext�rieur
        Case TYPE_R, TYPE_BF, TYPE_LA
          'essai 0599
           'suppression du test de validit� sur Rg en saisie 1606
          'message = ValidationRg
          message = ""
          If message <> "" Then
            ValidationDonn�es = False
          Else
            'Affectation des valeurs
            Select Case TypeControleActif
              Case TYPE_R: GiratoireProjet.R = Valeur
              Case TYPE_BF: GiratoireProjet.Bf = Valeur
              Case TYPE_LA: GiratoireProjet.LA = Valeur
            End Select
            calculRg True
          End If
      End Select
    End If
    
  Else
    'Valeur non num�rique
    message = IDv_ValeurNum�rique
    ValidationDonn�es = False
  End If
  
  If message <> "" Then
    'Une erreur a �t� d�tect�e
    'Impression du message
    controleEnCours = True
    MsgBox message, vbExclamation
    controleEnCours = False
    lblInvite = InviteGotFocus
  End If
End Function
'******************************************************************************
' ValidationRetTAD
' V�rifie si la donn�e saisie R peut �tre valid�e
' Si un ou plusieurs tourne-�-droite existent,
' le rayon R ne peut �tre valid� qu'apr�s suppression de tous les TAD
' sur confirmation de l'utilisateur
' La fonction renvoie  VRAI si R peut �tre valid�, FAUX dans le cas contraire
'******************************************************************************
Private Function ValidationRetTAD(ByVal Valeur As Variant) As Boolean
  Dim i As Integer
  Dim TAD As Boolean
  ValidationRetTAD = True
  TAD = False
  If Valeur = 0 Then
    'On transforme le giratoire en mini-giratoire
    'Des tournes � droite ont-ils �t� d�finis?
    For i = 1 To NbBranches
      If GiratoireProjet.colBranches.Item(i).TAD Then
        TAD = True
      End If
    Next i
    If TAD Then
      If MsgBox(IDv_RetTAD, vbYesNo + vbQuestion + vbDefaultButton2) = vbNo Then
        ValidationRetTAD = False
      Else
        'Les tourne-�-droite sont supprim�s
        For i = 1 To NbBranches
          GiratoireProjet.colBranches.Item(i).TAD = False
        Next i
      End If
    End If
    If ValidationRetTAD Then
      'Il faut interdire la possibilit� de saisir les tournes � droite
      With vgdCarBranche
        .Col = 5
        For i = 1 To NbBranches
          .Row = i
          .Value = False
          .Lock = True
        Next i
      End With
    End If
  ElseIf Valeur <> 0 And GiratoireProjet.R = 0 Then
    'On transforme un mini-giratoire en giratoire normal
    'On autorise � nouveau l'acc�s aux tournes � droite
    'pour chaque branche dont l'entr�e n'est pas nulle
    With vgdCarBranche
      .Col = 5
      'Parcours des branches
      For i = 1 To NbBranches
        .Row = i
        .Value = False
        'Autorisation de TAD
        If Not GiratoireProjet.colBranches.Item(i).Entr�eNulle Then .Lock = False
      Next i
    End With
  End If
End Function


'******************************************************************************
' ValidationRg
' V�rifie si la donn�e saisie Rg peut �tre valid�e
' Retour
'   Si pas d'erreur : la chaine message ne contient rien (chaine vide)
'   Si erreur : la chaine message signalant l'erreur
'
'******************************************************************************
Private Function ValidationRg() As String
  Dim message As String
  message = ""
  '??0699
  If txtR = 0 Then
    If txtRg < 7.5 Or txtRg > 12 Then
      message = IDv_ControleBornesRg & str(7.5) & IDl_ET & str(12) & IDl_METRE & "."
    End If
  Else
    If txtRg < 12 Then
      message = IDv_ValidationRgMinimal & str(12) & IDl_METRE & "."
    End If
  End If
  ValidationRg = message
End Function

Private Function ValidationBf(ByVal Recommandation As Boolean) As String
  Dim message As String
  message = ""
  With GiratoireProjet
    'If .Bf < 1.5 And .R = 0 Then
    If (.Bf < 1.5 Or .Bf > 2.5) And .R = 0 Then
      message = IDm_BfTropPetitPourMiniG
      If Recommandation Then AfficheRecommandations TypeControleActif, message, TYPE_BF, TYPE_R
'    ElseIf (txtRg > 12 And txtRg < 15) And (.Bf < 1.5 Or .Bf > 2.5) Then
'      If Recommandation Then AfficheRecommandations TypeControleActif, IDm_Bf, TYPE_BF, TYPE_RG
'    End If
  '1606 Le test Bf non compris entre 1.5 et 2.5 est seulement en recommandations
     ElseIf (txtRg > 12 And txtRg < 15) And (.Bf < 1.5 Or .Bf > 2#) And Recommandation Then
      AfficheRecommandations TypeControleActif, IDm_Bf, TYPE_BF, TYPE_RG
    End If
  End With
  ValidationBf = message
End Function

Private Function ValidationRgEtBranches(message As String) As Boolean
  Dim i As Integer
  ValidationRgEtBranches = True
  For i = 1 To NbBranches
    With GiratoireProjet.colBranches.Item(i)
      If txtRg < .LE4m + .LI Then
        ValidationRgEtBranches = False
      End If
    End With
  Next i
  If Not ValidationRgEtBranches Then message = IDv_RgOuBranchesIncorrect
End Function

Private Function ValidationRgEtUneBranche(ByVal TypeDonn�e As String, ByVal Valeur As Variant, _
  message As String) As Boolean
  ValidationRgEtUneBranche = True
  If TypeDonn�e = TYPE_LE4M Then
    If CSng(txtRg) < CSng(Valeur) + GiratoireProjet.colBranches.Item(Num�roLigneActive).LI Then
      ValidationRgEtUneBranche = False
    End If
  Else
    If CSng(txtRg) < GiratoireProjet.colBranches.Item(Num�roLigneActive).LE4m + CSng(Valeur) Then
      ValidationRgEtUneBranche = False
    End If
  End If
  If Not ValidationRgEtUneBranche Then message = IDv_RgOuUneBrancheIncorrect
End Function

'******************************************************************************
' ValidationLA
' V�rifie si la variable LA est valid�
' Retour
'   VRAI si oui et on pourra d�placer le focus
'   FAUX sinon ; un message signalant l'erreur est affich�e et,
'                on refusera le d�placement du focus
'
'******************************************************************************
Private Function ValidationLA(ByVal Milieu, ByVal LA, ByRef message As String)
  ValidationLA = True
  If Milieu = rc Then
    If LA < 4.5 Or LA > 12 Then
      message = IDv_ControleBornesLA & str(4.5) & IDl_ET & str(12) & IDl_METRE & "."
       ValidationLA = False
    End If
  Else
    If LA < 4.5 Or LA > 18 Then
      message = IDv_ControleBornesLA & str(4.5) & IDl_ET & str(18) & IDl_METRE & "."
      ValidationLA = False
    End If
  End If
End Function

'******************************************************************************
' InitControle
' Met le contr�le dans la couleur normale, (le passe en surbrillance)
' et sauvegarde sa valeur
'******************************************************************************
Public Sub InitControle(GotFocus As Boolean)
  If ActiveControl Is Nothing Then Exit Sub
  'Sortie par s�curit� si ActiveControl est nothing ; ce qui ne devrait pas arriv�
  'puisque cette proc�dure est activ�e seulement lorsque le contr�le a le focus
  With ActiveControl
    If GotFocus Then
      'D�sactive la poign�e de s�lection sur le dessin du giratoire
      shpPoign�e.Visible = False
      lblInvite = ""
      .ForeColor = vbWindowText
      If TypeOf ActiveControl Is TextBox Then
        Journal "***InitCTRLSauveValeur=TEXT"
        SauveValeur = .Text
        'Lignes ci-dessous � mettre si on veut mettre le focus en surbrillance
        .SelStart = 0
        .SelLength = Len(.Text)
      End If
    Else
      Journal "***InitCtrlTEXT=SauveValeur"
      .Text = SauveValeur
      '0699
      Donn�eModifi�e = False ' la donn�e n'est pas modifi�e
    End If
   End With
End Sub

'******************************************************************************
' Dessin du Giratoire
' IsPremierDessin : indique que  c'est la premi�re fois qu'on dessine
' FacteurZoom=0 : indique qu'il faut recalculer l'�chelle
'******************************************************************************
Private Sub DessinerGiratoire(IsPremierDessin As Boolean)
If FacteurZoom = 0 Then
  DemiHauteur = (ScaleHeight - fraInvite.Height) / 2
  DemiLargeur = (ScaleWidth - tabDonn�es.Width) / 2
  DessinGiratoire.gbDemiHauteur = DemiHauteur
  DessinGiratoire.gbDemiLargeur = DemiLargeur
  DessinGiratoire.gbFacteurZoom = 0
End If

With GiratoireProjet
  DessinGiratoire.gbRayonInt = .R
  DessinGiratoire.gbRayonExt = .R + .LA + .Bf
  DessinGiratoire.gbBandeFranchissable = .Bf
End With

DessinGiratoire.DessinerTout IsPremierDessin
If DiagramFlux And Not TraficActif Is Nothing Then cLS: TraficActif.CalculDiagramFlux

End Sub

'******************************************************************************
' Dessin du Giratoire
' FacteurZoom=0 : indique qu'il faut recalculer l'�chelle
'******************************************************************************
Public Sub Redess()
  FacteurZoom = 0
  DessinerGiratoire IsPremierDessin:=False
End Sub

Public Sub AfficheDiagramflux(ByVal Etat As Boolean)
Dim i As Integer
  cLS
  If Not Etat Then
    With GiratoireProjet.colBranches
      For i = 1 To NbBranches
        linBordIlotEntr�e(i).Visible = (linBordIlotEntr�e(i).Tag = "V")
        linBordIlotSortie(i).Visible = (linBordIlotSortie(i).Tag = "V")
        linBordIlotGir(i).Visible = (linBordIlotGir(i).Tag = "V")
        linBordIlotEntr�e(i).Tag = ""
        linBordIlotSortie(i).Tag = ""
        linBordIlotGir(i).Tag = ""
      Next
    End With
  End If
  
  DiagramFlux = Etat
End Sub

'**********************************************************************************
' R�affichage du Spread en mode normal suite � la s�lection graphique d'une branche
'**********************************************************************************
Private Sub AfficheSpreadNormal()
  If TypeOf ActiveControl Is vaSpread Then
    With ActiveControl
      If .OperationMode = OperationModeRow Then .OperationMode = OperationModeNormal
    End With
    shpPoign�e.Visible = False
  End If
End Sub

'**********************************************************************************
' V�rifie les donn�es de la feuille de donn�es avant de lancer le calcul
' Retourne
'   True : aucune erreur n'est apparue et le calcul peut �tre d�clench�
'   False : des erreurs de dimensionnement ont �t� faites ;
'**********************************************************************************
Public Function ValiderFeuilleDonn�es(Optional ByRef MessageImprim) As Boolean
  Dim message, Message2 As String
  Dim NoBrancheErron�e As Integer
  Dim i, j As Integer
  Dim rapport As Single
  If ControleTrafic Then Exit Function
  
  'V�rification du rayon Rg
  message = ValidationRg
  If message <> "" Then message = message & vbCrLf
  'V�rification de la valeur Bf
  '1606Message2 = ValidationBf(Recommandation:=True)
  Message2 = ValidationBf(Recommandation:=False)
  If Message2 <> "" Then message = message & vbCrLf & Message2 & vbCrLf

  'V�rification de la validit� des rapports LE4m/LE15m...
  With GiratoireProjet.colBranches
    For i = 1 To NbBranches
      If .Item(i).Entr�eEvas�e Then
        '0406 Eviter l'entr�e nulle
        If .Item(i).LE15m = 0 Then
          rapport = 10 'Pour afficher un message
        Else
          rapport = .Item(i).LE4m / .Item(i).LE15m
        End If
        'condition de validit�
        If rapport < 1 Or rapport > 2.5 Then message = message + IDl_Branche & .Item(i).nom & " : " & IDv_RapportLE & vbCrLf
      End If
    Next i
  End With
  If GiratoireProjet.colTrafics.count = 0 Then
    message = message + IDv_PasTrafic
  'ElseIf txtQT = "" Then
   'V�rication du trafic total
   ' message = message & vbCrLf & IDv_TraficTotalNul & vbCrLf
  End If
  
  If message = "" Then
    ValiderFeuilleDonn�es = True
  Else
    If IsMissing(MessageImprim) Then
      message = message & vbCrLf & vbCrLf & IDv_NonValide
      MsgBox message, vbOKOnly + vbExclamation
    Else
      MessageImprim = message
    End If
  End If
End Function

'******************************************************************************
' Contr�le des donn�es de trafic en fonction des largeurs d'entr�e et de sortie
' Les lignes ou colonnes de la matrice de trafic seront oblit�r�es si les largeurs
' d'entr�e ou sortie sont nulles
' Param�tre AfficheMessage :
'      Vrai  ->  on affiche les messages d'erreur
'                on ne verrouille pas les cellules dont les largeurs sont nulles
'      Faux  ->  on affiche pas les messages d'erreur
'                on verrouille les cellules dont les largeurs sont nulles
'******************************************************************************
Private Function ControleTrafic(Optional ByVal AfficheMessage As Boolean = True) As Boolean
Dim NumBranche, i, j, ip, ip2 As Integer
Dim message As String
Dim ErreurBranche As Boolean
Dim AfficherTraficCourant As Boolean
Const LIGNE = 0
Const COLONNE = 1

  'Pour l'ensemble des p�riodes
  'a-t-on des trafics sur des voies de largeur nulle (LE ou LS = 0)
  If cboP�riode.ListIndex = -1 Then Exit Function
  ErreurBranche = False
  ip = 1
  Do While ip <= GiratoireProjet.nbP�riodes  'Boucle sur les p�riodes
  With GiratoireProjet.colTrafics.Item(ip)
      For i = 1 To NbBranches
        If GiratoireProjet.colBranches.Item(i).LE4m = 0 And .getQE(i) > 0 Then
          If AfficheMessage Then
            ErreurBranche = True
          Else
            'Remettre � z�ro les cellules de la ligne
            For ip2 = 1 To GiratoireProjet.nbP�riodes
              AfficherTraficCourant = (ip2 = cboP�riode.ListIndex + 1)
              GiratoireProjet.colTrafics.Item(ip2).AnnulerTrafic LIGNE, i, AfficherTraficCourant
            Next ip2
          End If
        End If
      Next i
      For i = 1 To NbBranches
        If GiratoireProjet.colBranches.Item(i).LS = 0 And .getQS(i) > 0 Then
          If AfficheMessage Then
            ErreurBranche = True
          Else
             'Remettre � z�ro les cellules de la colonne
            For ip2 = 1 To GiratoireProjet.nbP�riodes
              AfficherTraficCourant = (ip2 = cboP�riode.ListIndex + 1)
              GiratoireProjet.colTrafics.Item(ip2).AnnulerTrafic COLONNE, i, AfficherTraficCourant
            Next ip2
          End If
        End If
      Next i
    End With
    ip = ip + 1
  Loop
  'Erreur rencontr�e
  If ErreurBranche Then
    controleEnCours = True
    If MsgBox(IDv_TraficNonNul, vbYesNo + vbQuestion + vbDefaultButton2) = vbNo Then
      'Revenir s'il y a lieu dans l'onglet Dimensionnement
      AfficheMessage = False
    Else
      'Passer s'il y a lieu dans l'onglet Trafic
      'Bloquer/d�bloquer les entr�es/sorties du spread VEHICULE
      ControleTrafic False
      ErreurBranche = False
    End If
    controleEnCours = False
    
    ControleTrafic = ErreurBranche
  End If
  
  If AfficheMessage Then
    GiratoireProjet.colBranches.BlocageTrafic Me
    'R�affecte les trafics affich�s dans le spread courant
    'Fait par AnnulerTrafic dans TRAFIC.CLS (AV - 26.04.99)
  End If
End Function

'******************************************************************************
' Controle de la matrice de trafic
' V�rifie s'il y a un trafic entrant ou sortant sur chaque entr�e ou sortie
' Ce contr�le ne peut se faire que sur la matrice UVP
' Il est d�clench�
'     -en affichage de l'onglet Trafic
'     -en sortie de la matrice trafic
'     -au changement de p�riode
' Remarque : le controle pendant la saisie n'est pas r�alisable
'******************************************************************************
Private Sub ControleMatriceTrafic()
  Dim TraficActif As TRAFIC
  If ChargementEnCours Or cboP�riode.ListIndex = -1 Then Exit Sub
  Set TraficActif = GiratoireProjet.colTrafics.Item(cboP�riode.ListIndex + 1)
  '0599 Faire le contr�le m�me si la saisie du trafic est incompl�te
  'If Not TraficActif.EstCompl�te Then Exit Sub
  Dim message, Message2 As String
  Dim i, j As Integer
  'R�initialise les couleurs des cellules de trafic
  If ChargementEnCours Then Exit Sub
  For i = 1 To NbBranches
    txtQE(i).ForeColor = vbWindowText
    txtQS(i).ForeColor = vbWindowText
  Next i
  txtQT.ForeColor = vbWindowText
  'Tests des trafics cumul�s d'entr�e et de sortie
  For i = 1 To NbBranches
    With GiratoireProjet.colBranches.Item(i)
      If TraficActif.getQE(i) > 2500 Then
        message = message & IDl_Branche & .nom & " : " & IDm_QETropImportant & vbCrLf
        txtQE(i).ForeColor = vbRed
      End If
      'If TraficActif.getQE(i) = 0 And .LE4m <> 0 Then
      If txtQE(i) <> "" Then
        'des trafics ont �t� saisis sur la ligne i
        'Test sur le trafic UVP
        If TraficActif.getQE(i) = 0 And .LE4m <> 0 Then
          message = message & IDl_Branche & .nom & " : " & IDm_QENul & vbCrLf
          txtQE(i).ForeColor = vbRed
        End If
      End If

      If txtQS(i) <> "" Then
        'des trafics ont �t� saisis sur la colonne i
        '1606If txtQS(i) = 0 And .LS <> 0 Then
        'Test sur le trafic UVP
        If TraficActif.getQS(i) = 0 And .LS <> 0 Then
          message = message & IDl_Branche & .nom & " : " & IDm_QSNul & vbCrLf
          txtQS(i).ForeColor = vbRed
        End If
      End If
    End With
  Next i
  'Test du trafic total du giratoire
  Message2 = ControleTraficTotal
  If Message2 <> "" Then
    message = message & Message2
    txtQT.ForeColor = vbRed
  End If
  controleEnCours = True
  If message <> "" Then MsgBox (message)
  controleEnCours = False
End Sub


Public Function ControleTraficTotal(Optional ByVal Num�roTraficActif As Integer = 0) As String
  Dim message As String
  Dim QETotal As Integer, num�roBranche As Integer
  message = ""
  'Calcul du trafic total pour la p�riode active
  If Num�roTraficActif = 0 Then
    If txtQT = "" Then
      QETotal = 0
    Else
      QETotal = CInt(txtQT)
    End If
  Else
    'Calcul du total pour la p�riode demand�e
    Dim i As Integer
    Dim TraficR�sultat As TRAFIC
    QETotal = 0
    Set TraficR�sultat = GiratoireProjet.colTrafics.Item(Num�roTraficActif)
    With TraficR�sultat
      For i = 1 To NbBranches
        If .getQE(i) <> DONNEE_INEXISTANTE Then QETotal = QETotal + .getQE(i)
      Next i
    End With
  End If
  'Test sur le trafic total du giratoire
  '-------------------------------------
  If GiratoireProjet.R = 0 Then
    If QETotal > 1500 And QETotal <= 1800 Then
      message = IDm_QEGrandPourMiniG
    ElseIf QETotal > 1800 Then
      message = IDm_QETropGrandPourMiniG
    End If
  ElseIf QETotal > 5000 Then
    message = IDm_QETropGrand
  End If
  ControleTraficTotal = message
End Function

'******************************************************************************
' Controle des valeurs de la matrice de trafic courante
' V�rifie les valeurs de trafic et r�affecte les couleurs normales ou rouges
' � chaque cellule de la trafic active
' Ce contr�le est d�clench�
'     -en affichage de l'onglet Trafic si la p�riode est compl�te c-a-d si
'                   toutes les cellules ont �t� saisies.
'     -au changement de p�riode
' Les m�mes tests sont �galement d�clench�s dans ControleRecommandations
' lors de la saisie individuelle des valeurs de trafic
'******************************************************************************
Private Sub ControleValeursTrafic()
  Dim i, j As Integer
  
  If cboP�riode.ListIndex = -1 Then Exit Sub
  
  Set TraficActif = GiratoireProjet.colTrafics.Item(cboP�riode.ListIndex + 1)
  'Controle de la matrice des pi�tons
  With vgdTrafic(PIETON)
    For i = 1 To NbBranches
      .Row = i
      If TraficActif.getQP(i) > 999 Then
        'Trafic trop important
        .ForeColor = vbRed
      Else
        'Trafic normal
        .ForeColor = vbWindowText
      End If
    Next i
  End With
  'Controle de la matrice des v�hicules
  With vgdTrafic(VEHICULE)
    For i = 1 To NbBranches
      .Row = i
      For j = 1 To NbBranches
        .Col = j
        If TraficActif.getQ(i, j) > 1500 Then
          'Trafic trop important
          .ForeColor = vbRed
        Else
          'Trafic normal
          If j = i Mod NbBranches + 1 And GiratoireProjet.colBranches.Item(i).TAD Then
            'Pr�sence d'un TAD de i vers i+1
            'On fait ressortir celui-ci dans la cellule de trafic i->i+1
            .ForeColor = vbGrayText
          Else
            .ForeColor = vbWindowText
          End If
        End If
      Next j
    Next i
    'Tourne-�-droite non justifi� sur la matrice v�hicules
    For i = 1 To NbBranches
      j = i Mod NbBranches + 1
      If TraficActif.getQ(i, j) < 100 And _
        TraficActif.getQ(i, i) <> DONNEE_INEXISTANTE _
        And GiratoireProjet.colBranches.Item(i).TAD Then
          'Trafic ne n�cessitant pas la pr�sence d'un tourne � droite
          .Row = i
          .Col = j
          .ForeColor = vbRed
      End If
    Next i
  End With
End Sub

'******************************************************************************
' CalculBord
' Calcul les angles des bords extr�mes de chauss�e relativement � l'axe central
' Les angles sont retourn�s dans les variables linBordVoieEntr�e et
'  linBordVoieSortie
' Le calcul est fait pour la branche courante si NumBranche est �gal � 0.
' Dans ce cas les valeurs g�om�triques de la branche sont transmis en param�tres.
' Si Nmbranche est diff�rent de 0, les angles des bords de chauss�e de la branche
' numbranche sont calcul�s. Les param�tres sont recherch�s dans l'objet Branche
' La fonction renvoie TRUE si le calcul a pu s'effectuer normalement
' FAUX si la modification du giratoire entraine une impossibilit�
'******************************************************************************

Private Function calculBord(ByVal NumBranche As Integer, ByVal LE4m As Single, _
 ByVal LI2 As Single, ByVal LS As Single, ByVal Rg As Single, _
  ByRef linBordVoieEntr�e As Single, ByRef linBordVoieSortie As Single) As Boolean
   Dim unXLoc, unYLoc As Single
   If NumBranche > 0 Then
     With GiratoireProjet.colBranches.Item(NumBranche)
      LE4m = .LE4m
      LS = .LS
      LI2 = .LI / 2
     End With
   End If
    'Entr�e ou sortie nulle
   If LE4m = 0 Or LS = 0 Then
    If LE4m = 0 Then
      'Entr�e nulle
      unXLoc = Carr�(Rg) - Carr�(LS)
      If unXLoc >= 0 Then
        unXLoc = Sqr(unXLoc)
        unYLoc = LS
        linBordVoieEntr�e = 0#
        linBordVoieSortie = Arccos(unXLoc / Rg)
      End If
    Else
      unXLoc = Carr�(Rg) - Carr�(LE4m)
      If unXLoc >= 0 Then
        unXLoc = Sqr(unXLoc)
        unYLoc = -LE4m
        linBordVoieEntr�e = Arccos(unXLoc / Rg)
        linBordVoieSortie = 0#
      End If
    End If
  Else ' Cas g�n�ral
    unXLoc = Carr�(Rg) - Carr�(LE4m + LI2)
    If unXLoc >= 0 Then
      unXLoc = Sqr(unXLoc)
      unYLoc = -(LE4m + LI2)
      linBordVoieEntr�e = Arccos(unXLoc / Rg)
      unXLoc = Carr�(Rg) - Carr�(LS + LI2)
      If unXLoc >= 0 Then
        unXLoc = Sqr(unXLoc)
        unYLoc = LS + LI2
        linBordVoieSortie = Arccos(unXLoc / Rg)
      End If
    End If
  End If
  calculBord = (unXLoc >= 0)
 End Function
 
'******************************************************************************
' VerifierAngleBranche
' Cette fonction v�rifie si les branches du giratoire ne se chevauchent pas.
' La fonction est appel�e d�s qu'une modification g�om�trique est r�alis�e
' sur les angles, les largeurs d'entr�e, d'ilot et de sortie et sur le rayon
' ext�rieur.
' Les calculs sont analogues � ceux de la fonction VerifierAngleBranche du
' module DessinGiratoire d�clench�e en cas de modification graphique de l'angle
' d'une branche. Les modifications graphiques interactives des rayons
' d�clenchent l'appel de cette fonction ci-dessous car la validation de ces
' donn�es est du ressort de FrmDonn�es.
' La fonction returne Vrai si la modification du giratoire peut �tre valid�e.
' Sans le cas contraire, la chaine de caract�res Message contenant le message
' d'erreur appropri� est retourn�e en param�tre.
'******************************************************************************
  Private Function VerifierAngleBranche(ByVal NumBrancheSelect As Integer, x As Single, wBranche As BRANCHE, _
  ByRef message As String)
  Dim unAngleAval As Single, unAngleAmont As Single, unAngle As Single, unAnglePourTest As Single
  Dim Angle As Single, LE4m As Single, LI As Single, LS As Single, Rg As Single
  Dim unNumAval, unNumAmont As Integer
  Dim linBordVoieEntr�eI As Single, linBordVoieSortieI As Single
  Dim linBordVoieEntr�eAmont As Single, linBordVoieSortieAmont As Single
  Dim linBordVoieEntr�eAval As Single, linBordVoieSortieAval As Single
  Dim LI2 As Single
 
  VerifierAngleBranche = True
  Rg = gbRayonExt
  Angle = wBranche.Angle
  LE4m = wBranche.LE4m
  LI = wBranche.LI
  LS = wBranche.LS
  Select Case TypeControleActif
    Case TYPE_ANGLE: Angle = x
    Case TYPE_LE4M
      If x > 0 And LE4m = 0 Then
        LI = DEFAUT_LI 'Remet la valeur par d�faut de LI
      End If
      LE4m = x
    Case TYPE_LI: LI = x
    Case TYPE_LS
      If x > 0 And LS = 0 Then
        LI = DEFAUT_LI 'Remet la valeur par d�faut de LI
      End If
      LS = x
    Case Else: Rg = x
  End Select

  message = ""
  LI2 = LI / 2# ' Moiti� d'ilot r�parti uniform�ment de chaque cot� de l'axe
  'Calcul des angles de la branche concern�e en fonction des valeurs
  ' LI, LS et LE
  'angle de la branche stock�e dans les valeurs
  'linBordVoieEntr�e, linBordVoieSortie
  'Calcul des num�ros de branches amont et aval
  unNumAmont = (NumBrancheSelect - 1) Mod NbBranches
  If unNumAmont = 0 Then unNumAmont = NbBranches
  unNumAval = NumBrancheSelect Mod NbBranches + 1
  VerifierAngleBranche = calculBord(0, LE4m, LI2, LS, Rg, linBordVoieEntr�eI, linBordVoieSortieI)
  If VerifierAngleBranche Then
    VerifierAngleBranche = calculBord(unNumAmont, LE4m, LI2, LS, Rg, linBordVoieEntr�eAmont, linBordVoieSortieAmont)
  End If
  If VerifierAngleBranche Then
    VerifierAngleBranche = calculBord(unNumAval, LE4m, LI2, LS, Rg, linBordVoieEntr�eAval, linBordVoieSortieAval)
  End If
  If Not VerifierAngleBranche Then
    'La modification du giratoire ou des branches ne peut �tre r�alis�e
    message = IDv_RgOuUneBrancheIncorrect
  Else
    '-------------------------------------------------------------
    'V�rification des angles des branches
    unAngle = angConv(Angle, True)

    '------------------------------------------------------------------------------------
    'Test si la branche d�passe sa branche amont ou aval
    ' On met des moins pour avoir des angles > 0 car le rep�re
    '�cran est indirect (X > 0 vers la droite et Y > 0 vers le bas)
    unAngleAval = CSng(linBranche(unNumAval).Tag)
    unAngleAmont = CSng(linBranche(unNumAmont).Tag)
    unAngleAval = unAngleAval - linBordVoieSortieAval
    unAngleAmont = unAngleAmont + linBordVoieEntr�eAmont
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
    
    Dim unAngleMini As Single
    Dim unAngleMaxi As Single
    'Calcule les angles de bords de chauss�e de la branche � v�rifier...
    unAngleMini = unAnglePourTest - linBordVoieSortieI
    unAngleMaxi = unAnglePourTest + linBordVoieEntr�eI
    'retourne True si entre angle amont et angle aval, faux sinon
    VerifierAngleBranche = (unAngleMini > unAngleAmont And unAngleMaxi < unAngleAval)
    If Not VerifierAngleBranche Then
      If unAngleMini <= unAngleAmont Then
        message = IDv_Chevauchement + GiratoireProjet.colBranches.Item(unNumAmont).nom + _
          IDl_ET + GiratoireProjet.colBranches.Item(NumBrancheSelect).nom & "."
      Else
        message = IDv_Chevauchement + GiratoireProjet.colBranches.Item(NumBrancheSelect).nom + _
          IDl_ET + GiratoireProjet.colBranches.Item(unNumAval).nom & "."
      End If
    End If
  End If
End Function


