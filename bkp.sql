USE [master]
GO
/****** Object:  Database [prestamo]    Script Date: 17/11/2019 15:08:14 ******/
CREATE DATABASE [prestamo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prestamo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\prestamo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'prestamo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\prestamo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [prestamo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prestamo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prestamo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prestamo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prestamo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prestamo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prestamo] SET ARITHABORT OFF 
GO
ALTER DATABASE [prestamo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [prestamo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prestamo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prestamo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prestamo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prestamo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prestamo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prestamo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prestamo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prestamo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [prestamo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prestamo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prestamo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prestamo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prestamo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prestamo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prestamo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prestamo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [prestamo] SET  MULTI_USER 
GO
ALTER DATABASE [prestamo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prestamo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prestamo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prestamo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [prestamo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [prestamo] SET QUERY_STORE = OFF
GO
USE [prestamo]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 17/11/2019 15:08:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 17/11/2019 15:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 17/11/2019 15:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 17/11/2019 15:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 17/11/2019 15:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17/11/2019 15:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 17/11/2019 15:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 17/11/2019 15:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[NumeroCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[TipoDocumento] [int] NOT NULL,
	[Documento] [varchar](22) NOT NULL,
	[Sexo] [int] NOT NULL,
	[RazonSocial] [varchar](50) NOT NULL,
	[Nacimiento] [datetime] NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[LugarTrabajo] [varchar](50) NOT NULL,
	[AntiguedadLaboral] [int] NOT NULL,
	[DireccionLaboral] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[NumeroCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cobranza]    Script Date: 17/11/2019 15:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cobranza](
	[cob_nro] [int] IDENTITY(1,1) NOT NULL,
	[cob_fech] [datetime] NOT NULL,
	[cob_montototal] [int] NOT NULL,
	[cob_totalmora] [int] NOT NULL,
	[cob_totaldcto] [int] NOT NULL,
 CONSTRAINT [PK_cobranza] PRIMARY KEY CLUSTERED 
(
	[cob_nro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cobranza_cheque]    Script Date: 17/11/2019 15:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cobranza_cheque](
	[cobcheque_codigo] [int] IDENTITY(1,1) NOT NULL,
	[cobcheque_tipo] [varchar](3) NULL,
	[cobcheque_nro] [varchar](8) NOT NULL,
	[cob_nro] [int] NOT NULL,
	[cobcheque_fecha] [date] NOT NULL,
	[cobcheque_monto] [int] NOT NULL,
 CONSTRAINT [PK_cobranza_cheque] PRIMARY KEY CLUSTERED 
(
	[cobcheque_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cobranza_detalle]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cobranza_detalle](
	[cobdet_id] [int] IDENTITY(1,1) NOT NULL,
	[cobcab_nro] [int] NOT NULL,
	[cobdet_preid] [int] NOT NULL,
	[cobdet_mora] [int] NOT NULL,
	[cobdet_dcto] [int] NULL,
 CONSTRAINT [PK_cobranza_detalle] PRIMARY KEY CLUSTERED 
(
	[cobdet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Comentario] [varchar](120) NOT NULL,
 CONSTRAINT [PK_Comentario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[forma_pago]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forma_pago](
	[fpa_codigo] [varchar](3) NOT NULL,
	[fpa_descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_forma_pago] PRIMARY KEY CLUSTERED 
(
	[fpa_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Informconf]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Informconf](
	[Documento] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[RazonSocial] [varchar](50) NOT NULL,
	[Informconf] [nchar](10) NOT NULL,
	[Faja] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Informconf] PRIMARY KEY CLUSTERED 
(
	[Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[moneda]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[moneda](
	[mon_codigo] [varchar](30) NOT NULL,
	[mon_descripcion] [varchar](30) NOT NULL,
	[mon_pais] [varchar](30) NULL,
 CONSTRAINT [PK_moneda] PRIMARY KEY CLUSTERED 
(
	[mon_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personal]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal](
	[NumeroEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Documento] [varchar](50) NOT NULL,
	[Cargo] [int] NOT NULL,
	[FechaNac] [datetime] NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[TipoDeDocumento] [int] NOT NULL,
	[Sexo] [int] NOT NULL,
 CONSTRAINT [PK_personal] PRIMARY KEY CLUSTERED 
(
	[NumeroEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestamo]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestamo](
	[pre_numero] [int] IDENTITY(1,1) NOT NULL,
	[pre_fecha] [date] NOT NULL,
	[pre_cliente] [int] NOT NULL,
	[pre_tipoprestamo] [varchar](10) NOT NULL,
	[pre_montosolicitado] [int] NOT NULL,
	[pre_moneda] [varchar](3) NOT NULL,
	[pre_cantcuota] [int] NOT NULL,
	[pre_interes] [int] NOT NULL,
	[pre_montototal] [int] NOT NULL,
	[usuario] [varchar](20) NOT NULL,
 CONSTRAINT [PK_prestamo] PRIMARY KEY CLUSTERED 
(
	[pre_numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestamo_detalle]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestamo_detalle](
	[predet_id] [int] IDENTITY(1,1) NOT NULL,
	[predet_nrocabecera] [int] NOT NULL,
	[predet_nrocuota] [int] NOT NULL,
	[predet_monto] [int] NOT NULL,
	[predet_saldo] [int] NOT NULL,
	[predet_vencimiento] [date] NOT NULL,
	[predet_estado] [varchar](10) NOT NULL,
 CONSTRAINT [PK_prestamo_detalle] PRIMARY KEY CLUSTERED 
(
	[predet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sexo]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sexo](
	[Id] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sexo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Solicitud_Credito]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitud_Credito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NumeroCliente] [int] NOT NULL,
	[TotalEgreso] [int] NOT NULL,
	[TotalIngreso] [int] NOT NULL,
	[Informconf] [varchar](50) NOT NULL,
	[aprobado] [varchar](1) NULL,
 CONSTRAINT [PK_Solicitud_Credito] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_prestamo]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_prestamo](
	[tpre_codigo] [varchar](20) NOT NULL,
	[tpre_descripcion] [varchar](30) NOT NULL,
	[tpre_interes] [int] NOT NULL,
 CONSTRAINT [PK_tipo_prestamo] PRIMARY KEY CLUSTERED 
(
	[tpre_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDeDocumento]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDeDocumento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoDeDocumento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 17/11/2019 15:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[usu_codigo] [varchar](15) NOT NULL,
	[usu_clave] [varchar](18) NOT NULL,
	[usu_nombrecompleto] [varchar](50) NOT NULL,
	[usu_ultacceso] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201910121709246_InitialCreate', N'TuCredito.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A79E22B572E92EF604F616A9939C137473C13ABBE8DB82966887588952252A9BE0A0BFEC3CF427F52F9CA144C9122FBAD88AED140B2C2C72F8CD70382487C361FEFADF9FE39F9F02DF7AC47142423AB18F4687B685A91B7A842E2776CA163FBEB37F7EFF8FEFC6175EF0647D2EE84E381DB4A4C9C47E602C3A759CC47DC0014A460171E33009176CE4868183BCD0393E3CFC977374E46080B001CBB2C61F53CA4880B30FF89C86D4C5114B917F1D7AD84F4439D4CC3254EB06053889908B27F67D3A8DB1475838CA696DEBCC2708E498617F615B88D2902106529E7E4AF08CC5215DCE222840FEFD7384816E81FC040BE94F57E45D3B7278CC3BE2AC1A16506E9AB030E80978742234E3C8CDD7D2AF5D6A0E7477013A66CFBCD799FE26F69587B3A28FA10F0A90199E4EFD98134FECEB92C55912DD60362A1A8E72C8CB18E0BE85F1D75115F1C0EADCEEA0B4A4E3D121FF77604D539FA5319E509CB218F907D65D3AF789FB2B7EBE0FBF623A39399A2F4EDEBD798BBC93B73FE19337D59E425F81AE560045777118E11864C38BB2FFB6E5D4DB3972C3B259A54DAE15B0259814B6758D9E3E60BA640F305D8EDFD9D62579C25E51228CEB13253087A0118B53F8BC497D1FCD7D5CD63B8D3CF9FF0D5C8FDFBC1D84EB0D7A24CB6CE825FE30716298571FB19FD5260F24CAA7576DBCBF08B2CB380CF877DDBEF2DA2FB3308D5DDE99D048728FE2256675E9C6CECA783B9934871ADEAC0BD4FD376D2EA96ADE5A52DEA1756642C162DBB3A190F765F976B6B8B32882C1CB4C8B6BA4C9E0E4AD6A24B53DB04A8A95D91C75351B0ADDF93BAF82170122FE00CB60072EE07F2C481CE0B297BF84607488F696F90E2509AC02DE7F50F2D0203AFC1C40F41976D3188C73C65010BD38B7BB8790E29B3498739BDF1EAFC186E6FE5B78895C16C61794B7DA18EF43E87E0D537641BD73C4F027E61680FCF39E04DD010611E7CC7571925C8231636F1A827B5D005E517672DC1B8E2F4FBB7643A63E2281DE0F9116D22F05E9CA17D15328FE88814CE7933489FA215C12DA4DD482D42C6A4ED12AAA20EB2B2A07EB26A9A0340B9A11B4CA99530DE6E5652334BC9B97C1EEBF9FB7D9E66D5A0B2A6A9CC10A89FF8D298E6119F3EE106338A6AB11E8B26EECC259C8868F337DF1BD29E3F419F9E9D0ACD69A0DD92230FC6CC860F77F36646242F123F1B857D2E1F05310037C277AFDB9AA7DCE49926D7B3AD4BAB96DE6DB59034CD3E52C49429764B34013F612418BBAFCE0C359ED118CBC377214043A06864EF8960725D0375B36AA5B7A8E7DCCB075E6E661C1294A5CE4A96A840E793D042B76548D60AB68485DB81F149E60E938E68D103F042530530965EAB420D42511F25BB524B5ECB885F1BE973CE49A731C61CA19B66AA20B737DF0830B50F29106A54D4363A76271CD8668F05A4D63DEE6C2AEC65D89496CC5265B7C67835D0AFFED450CB359635B30CE66957411C018C8DB85818AB34A5703900F2EFB66A0D289C960A0C2A5DA8A81D635B60303ADABE4D519687E44ED3AFED27975DFCCB37E50DEFEB6DEA8AE1DD8664D1F7B669AB9EF096D18B4C0B16A9EE7735E899F98E67006728AF359225C5DD94438F80CB37AC866E5EF6AFD50A7194436A226C095A1B5808A2B40054899503D842B62798DD2092FA2076C11776B84156BBF045BB10115BB7A155A21345F98CAC6D9E9F451F6ACB406C5C83B1D162A381A839017AF7AC73B28C514975515D3C517EEE30D573A2606A341412D9EAB4149456706D752619AED5AD239647D5CB28DB424B94F062D159D195C4BC246DB95A4710A7AB8051BA9A8BE850F34D98A4847B9DB94756327CF8F120563C7904835BE465144E8B29258254AAC599E5535FD71D63FE128C8311C37D1E41D95D2969C5818A325966A8135487A49E2849D2386E688C779A65EA09069F756C3F25FB0AC6E9FEA2016FB4041CD7F8BBB42F9E2BEB6D3AAAE8840B884FE05DC9FC982E89AD1D737B7789A1BF251AC89DB4F433F0DA8D9BD32B7CE6FEFAAEDF3121561EC48F22BEE93A22BC5C9AD2BBED3B0A8536290212A7D97F587C90C615276E17956D56DF246CD284570AA8A620A58ED6CD84C4E4C8FA192BDC3FE23D58AF032734AA4A4540144514F8C4A56830256A9EB8E5A4F3CA962D66BBA234AD9255548A9AA8794D51C929A90D58AB5F00C1AD55374E7A0668D54D1D5DAEEC89AFC912AB4A67A0D6C8DCC725D77544D8A49155853DD1D7B956F222FA17BBC6B19CF2C6B6E5BF9A176B37DCB80F132EBE130DB5EE5EEBE0A5429EE89256EE7153051BE97B6643CD9AD694B792463335B326098579DDA9D777DD169BCA83763D62EB26B0B7BD345BE19AF9FC5BEA85D28C73A99A4E45E1EEFA463DC581CA9DA1FCD2867AC9CC4B60A35C2A6FE9C301C8C38C168F6BB3FF509E64B7841708D2859E084E5C91BF6F1E1D1B1F4F2667F5EC13849E2F99A23A9E9294C7DCCB69087451F51EC3EA058CD8AD8E0A5C80A5409385F510F3F4DECFF66AD4EB3D805FF95151F5857C9274A7E4FA1E23E4EB1F5879AE5394CE67C87B71AA5A07FBC8A4710DD557EF5DB97BCE981751BC3743AB50E2545AF33FCF5A711BDA4C99B6E20CDDA0F265EEF6CABBD48D0A24AB365FD070873C206797C5048F97D809EFED95734ED03838D10358F0886C21B4485A64702EB60191F0878F0C9B20702FD3AAB7F30B08E68C6C70284F607939F0A745F868A963BDC8734C7A56D2C49999E5B53AD37CABBDCF5DEA464646F34D1D5ACEB1E708366566FE6A2BCB28CE5C1B64E4D42F260D8BBB4FB17CF42DE97C4E395D3BEDB7CE36DA618375C25FDAD328BF720174E93DBB3FBFCE16DDB9A29FEBBE74998FDB284F7CCD8C436BFFB5CE06D1B9B2940BCE7C6D62BE377CF6C6D57FBE78E2DADF316BAF3FC5D3515C9708FA38B22B7E5E7E6217738FECF433082DCA3CC9F55EA13C29A92595B18AE48CC4CCD9968326365E2287C158A66B6FDFA2A36FCC6CE0A9A66B686FCCD26DE62FD6FE42D689A791BB222779159ACCD4BD4657BB7AC634D8953AF2993B8D69396C4F5369FB5F152FE35250E0FA294DAEC31DC2EBF9E3CE1415432E4D4E99117AC5E14C3DE59F91B8CB07F2764B982E07F919162B7B66B9634577411169BB7245141224568AE31431E6CA96731230BE432A8E601E8EC5D7816D4E3D72073EC5DD1DB944529832EE360EED7025EDC0968E29F253FD7651EDF46FC2B19A20B2026E181FB5BFA4B4A7CAF94FB521313324070EF42847BF958321EF65D3E97483721ED0824D4573A45F738887C004B6EE90C3DE2756403F3FB8097C87D5E45004D20ED035157FBF89CA0658C824460ACDAC327D8B0173CBDFF3FE91F11FA8A540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8f7f1d9a-2ae8-4a6b-ac9e-28364d88822e', N'linuxvera@gmail.com', 0, N'AGQsYcElhYtN2RPMTkdVIastK8sRXZmSKfNa1TLwe/4HiMRtCTaxrMX48WiHac5Vnw==', N'707bed9d-7c4a-4ce1-ae6d-be7af117132c', NULL, 0, 0, NULL, 1, 0, N'linuxvera@gmail.com')
SET IDENTITY_INSERT [dbo].[Cargo] ON 

INSERT [dbo].[Cargo] ([Id], [Descripcion]) VALUES (1, N'Supervisor')
INSERT [dbo].[Cargo] ([Id], [Descripcion]) VALUES (2, N'coordinador')
INSERT [dbo].[Cargo] ([Id], [Descripcion]) VALUES (3, N'Gerente')
SET IDENTITY_INSERT [dbo].[Cargo] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([NumeroCliente], [Nombre], [Apellido], [TipoDocumento], [Documento], [Sexo], [RazonSocial], [Nacimiento], [Telefono], [Direccion], [LugarTrabajo], [AntiguedadLaboral], [DireccionLaboral]) VALUES (7, N'Martin Augusto', N'Gimenez ', 1, N'4484097', 1, N'', CAST(N'2019-06-30T01:16:29.087' AS DateTime), N'1', N'Brasilia 1234', N'ptsa', 48, N'gabriel pellon')
INSERT [dbo].[Cliente] ([NumeroCliente], [Nombre], [Apellido], [TipoDocumento], [Documento], [Sexo], [RazonSocial], [Nacimiento], [Telefono], [Direccion], [LugarTrabajo], [AntiguedadLaboral], [DireccionLaboral]) VALUES (11, N'Christianddddd', N'Sanchez', 1, N'4815078', 1, N'systech', CAST(N'2019-11-05T00:00:00.000' AS DateTime), N'5569852', N'boqueron', N'systech', 65, N'boqueron')
INSERT [dbo].[Cliente] ([NumeroCliente], [Nombre], [Apellido], [TipoDocumento], [Documento], [Sexo], [RazonSocial], [Nacimiento], [Telefono], [Direccion], [LugarTrabajo], [AntiguedadLaboral], [DireccionLaboral]) VALUES (13, N'Seymour', N'DieraSS', 1, N'66666', 2, N'xxx', CAST(N'2019-11-05T00:00:00.000' AS DateTime), N'666', N'dsd', N'zxxx', 45, N'xxxx')
INSERT [dbo].[Cliente] ([NumeroCliente], [Nombre], [Apellido], [TipoDocumento], [Documento], [Sexo], [RazonSocial], [Nacimiento], [Telefono], [Direccion], [LugarTrabajo], [AntiguedadLaboral], [DireccionLaboral]) VALUES (14, N'CVERA', N'SANCHEZ', 2, N'5669852', 1, N'DD', CAST(N'2019-11-05T00:00:00.000' AS DateTime), N'5555', N'DDDD', N'DDDDD', 4, N'DDDDD')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[cobranza] ON 

INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1, CAST(N'2019-06-28T21:23:27.427' AS DateTime), 551737, 82173, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (2, CAST(N'2019-06-28T23:54:04.360' AS DateTime), 664433, 82173, -4695)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (3, CAST(N'2019-06-29T00:02:36.407' AS DateTime), 664433, 82173, -4695)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (4, CAST(N'2019-06-29T00:25:46.177' AS DateTime), 664433, 82173, -4695)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (5, CAST(N'2019-06-29T00:26:20.383' AS DateTime), 664433, 82173, -4695)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (6, CAST(N'2019-06-29T00:38:40.877' AS DateTime), 422607, 70434, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (7, CAST(N'2019-06-29T00:45:59.657' AS DateTime), 551737, 82173, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (8, CAST(N'2019-06-29T00:51:09.777' AS DateTime), 140869, 23478, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (9, CAST(N'2019-06-29T00:56:28.017' AS DateTime), 551737, 82173, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (10, CAST(N'2019-06-29T01:16:46.783' AS DateTime), 422607, 70434, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (11, CAST(N'2019-06-29T01:19:49.707' AS DateTime), 422607, 70434, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (12, CAST(N'2019-06-29T01:23:08.813' AS DateTime), 422607, 70434, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (13, CAST(N'2019-06-29T01:26:28.310' AS DateTime), 422607, 70434, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (14, CAST(N'2019-06-29T01:27:43.720' AS DateTime), 422607, 70434, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (15, CAST(N'2019-06-29T01:31:38.013' AS DateTime), 422607, 70434, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (16, CAST(N'2019-06-29T01:46:37.050' AS DateTime), 551737, 82173, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (17, CAST(N'2019-06-29T01:49:46.423' AS DateTime), 664433, 82173, -4695)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (18, CAST(N'2019-06-29T01:55:06.020' AS DateTime), 551737, 82173, 0)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (19, CAST(N'2019-06-29T01:58:38.480' AS DateTime), 563480, 0, -23475)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1002, CAST(N'2019-06-29T23:52:44.197' AS DateTime), 338088, 0, -14085)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1003, CAST(N'2019-06-29T23:58:03.267' AS DateTime), 338088, 0, -14085)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1004, CAST(N'2019-06-30T00:51:58.377' AS DateTime), 450784, 0, -18780)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1005, CAST(N'2019-06-30T01:00:07.630' AS DateTime), 112696, 0, -4695)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1006, CAST(N'2019-06-30T01:02:07.240' AS DateTime), 338088, 0, -14085)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1007, CAST(N'2019-06-30T01:18:42.027' AS DateTime), 2389336, 0, -99552)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1008, CAST(N'2019-06-30T01:29:37.990' AS DateTime), 597334, 0, -24888)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1009, CAST(N'2019-06-30T02:22:06.863' AS DateTime), 1194668, 0, -49776)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1010, CAST(N'2019-06-30T02:25:41.303' AS DateTime), 34428, 0, -1434)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1011, CAST(N'2019-06-30T02:29:47.840' AS DateTime), 1194668, 0, -49776)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1012, CAST(N'2019-06-30T02:33:20.470' AS DateTime), 1792002, 0, -74664)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1013, CAST(N'2019-06-30T02:37:19.360' AS DateTime), 597334, 0, -24888)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1014, CAST(N'2019-06-30T13:29:43.153' AS DateTime), 2389336, 0, -99552)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1015, CAST(N'2019-06-30T14:18:07.493' AS DateTime), 1194668, 0, -49776)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1016, CAST(N'2019-06-30T14:20:15.207' AS DateTime), 1194668, 0, -49776)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1017, CAST(N'2019-06-30T14:22:09.633' AS DateTime), 34428, 0, -1434)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1018, CAST(N'2019-06-30T14:48:02.967' AS DateTime), 1792002, 0, -74664)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1019, CAST(N'2019-06-30T15:11:35.067' AS DateTime), 1194668, 0, -49776)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1020, CAST(N'2019-06-30T15:14:45.843' AS DateTime), 597334, 0, -24888)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1021, CAST(N'2019-06-30T15:20:16.430' AS DateTime), 1792002, 0, -74664)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1022, CAST(N'2019-06-30T23:08:30.210' AS DateTime), 4320, 0, -180)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1023, CAST(N'2019-06-30T23:47:05.200' AS DateTime), 4320, 0, -180)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1024, CAST(N'2019-06-30T23:53:24.757' AS DateTime), 4320, 0, -180)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1025, CAST(N'2019-07-01T00:06:13.567' AS DateTime), 4320, 0, -180)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1026, CAST(N'2019-07-01T22:47:47.273' AS DateTime), 4320, 0, -180)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1027, CAST(N'2019-07-01T22:47:54.973' AS DateTime), 4320, 0, -180)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1028, CAST(N'2019-07-01T22:49:47.683' AS DateTime), 4320, 0, -180)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1029, CAST(N'2019-07-05T20:09:35.280' AS DateTime), 3240000, 0, -135000)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1030, CAST(N'2019-07-05T20:09:49.690' AS DateTime), 3240000, 0, -135000)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1031, CAST(N'2019-07-05T20:13:09.130' AS DateTime), 12960, 0, -540)
INSERT [dbo].[cobranza] ([cob_nro], [cob_fech], [cob_montototal], [cob_totalmora], [cob_totaldcto]) VALUES (1032, CAST(N'2019-07-05T20:16:01.087' AS DateTime), 998400, 0, -41600)
SET IDENTITY_INSERT [dbo].[cobranza] OFF
SET IDENTITY_INSERT [dbo].[cobranza_cheque] ON 

INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1, NULL, N'*', 9, CAST(N'2019-06-29' AS Date), 551737)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (2, N'CHD', N'*', 10, CAST(N'2019-06-29' AS Date), 422607)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (3, N'CHD', N'*', 11, CAST(N'2019-06-29' AS Date), 422607)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (4, N'CHF', N'00002222', 15, CAST(N'2019-06-29' AS Date), 422607)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (5, N'CHD', N'00002222', 17, CAST(N'2019-06-29' AS Date), 664433)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (6, N'CHD', N'00000555', 18, CAST(N'2019-06-29' AS Date), 551737)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (7, N'CHD', N'00006666', 19, CAST(N'2019-06-29' AS Date), 563480)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1004, N'CHD', N'00040000', 1002, CAST(N'2019-06-29' AS Date), 338088)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1005, N'CHF', N'00088888', 1003, CAST(N'2019-06-29' AS Date), 338088)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1006, N'EFE', N'00000000', 1004, CAST(N'2019-06-30' AS Date), 450784)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1007, N'EFE', N'00000000', 1005, CAST(N'2019-06-30' AS Date), 112696)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1008, N'CHD', N'00008888', 1006, CAST(N'2019-06-30' AS Date), 300000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1009, N'EFE', N'00000000', 1006, CAST(N'2019-06-30' AS Date), 38088)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1010, N'CHF', N'00123456', 1007, CAST(N'2019-06-30' AS Date), 2000000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1011, N'EFE', N'00000000', 1007, CAST(N'2019-06-30' AS Date), 389336)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1012, N'CHD', N'00088888', 1008, CAST(N'2019-06-30' AS Date), 500000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1013, N'EFE', N'00000000', 1008, CAST(N'2019-06-30' AS Date), 97334)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1014, N'CHD', N'00009999', 1009, CAST(N'2019-06-30' AS Date), 1000000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1015, N'EFE', N'00000000', 1009, CAST(N'2019-06-30' AS Date), 194668)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1016, N'CHD', N'00099999', 1010, CAST(N'2019-06-30' AS Date), 30000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1017, N'CHD', N'00004444', 1010, CAST(N'2019-06-30' AS Date), 4428)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1018, N'EFE', N'00000000', 1010, CAST(N'2019-06-30' AS Date), 0)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1019, N'EFE', N'00000000', 1011, CAST(N'2019-06-30' AS Date), 1194668)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1020, N'EFE', N'00000000', 1012, CAST(N'2019-06-30' AS Date), 1792002)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1021, N'EFE', N'00000000', 1013, CAST(N'2019-06-30' AS Date), 597334)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1022, N'CHD', N'00088888', 1014, CAST(N'2019-06-30' AS Date), 2000000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1023, N'EFE', N'00000000', 1014, CAST(N'2019-06-30' AS Date), 389336)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1024, N'EFE', N'00000000', 1015, CAST(N'2019-06-30' AS Date), 1194668)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1025, N'EFE', N'00000000', 1016, CAST(N'2019-06-30' AS Date), 1194668)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1026, N'EFE', N'00000000', 1017, CAST(N'2019-06-30' AS Date), 34428)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1027, N'CHD', N'00008888', 1018, CAST(N'2019-06-30' AS Date), 1000000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1028, N'EFE', N'00000000', 1018, CAST(N'2019-06-30' AS Date), 792002)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1029, N'EFE', N'00000000', 1019, CAST(N'2019-06-30' AS Date), 1194668)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1030, N'EFE', N'00000000', 1020, CAST(N'2019-06-30' AS Date), 597334)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1031, N'EFE', N'00000000', 1021, CAST(N'2019-06-30' AS Date), 1792002)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1032, N'CHD', N'00000000', 1022, CAST(N'2019-06-30' AS Date), 0)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1033, N'EFE', N'00000000', 1022, CAST(N'2019-06-30' AS Date), 4320)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1034, N'EFE', N'00000000', 1023, CAST(N'2019-06-30' AS Date), 4320)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1035, N'EFE', N'00000000', 1024, CAST(N'2019-06-30' AS Date), 4320)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1036, N'EFE', N'00000000', 1025, CAST(N'2019-07-01' AS Date), 4320)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1037, N'EFE', N'00000000', 1026, CAST(N'2019-07-01' AS Date), 4320)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1038, N'EFE', N'00000000', 1027, CAST(N'2019-07-01' AS Date), 4320)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1039, N'EFE', N'00000000', 1028, CAST(N'2019-07-01' AS Date), 4320)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1040, N'CHD', N'00013456', 1029, CAST(N'2019-07-05' AS Date), 3000000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1041, N'EFE', N'00000000', 1029, CAST(N'2019-07-05' AS Date), 240000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1042, N'CHD', N'00013456', 1030, CAST(N'2019-07-05' AS Date), 3000000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1043, N'EFE', N'00000000', 1030, CAST(N'2019-07-05' AS Date), 240000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1044, N'EFE', N'00000000', 1031, CAST(N'2019-07-05' AS Date), 12960)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1045, N'CHD', N'00123456', 1032, CAST(N'2019-07-05' AS Date), 900000)
INSERT [dbo].[cobranza_cheque] ([cobcheque_codigo], [cobcheque_tipo], [cobcheque_nro], [cob_nro], [cobcheque_fecha], [cobcheque_monto]) VALUES (1046, N'EFE', N'00000000', 1032, CAST(N'2019-07-05' AS Date), 98400)
SET IDENTITY_INSERT [dbo].[cobranza_cheque] OFF
SET IDENTITY_INSERT [dbo].[cobranza_detalle] ON 

INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1, 7, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (2, 7, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (3, 7, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (4, 7, 3333, 11739, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (5, 8, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (6, 9, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (7, 9, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (8, 9, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (9, 9, 3333, 11739, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (10, 10, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (11, 10, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (12, 10, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (13, 11, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (14, 11, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (15, 11, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (16, 12, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (17, 12, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (18, 12, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (19, 13, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (20, 13, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (21, 13, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (22, 14, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (23, 14, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (24, 14, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (25, 15, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (26, 15, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (27, 15, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (28, 16, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (29, 17, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (30, 17, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (31, 17, 3333, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (32, 17, 3333, 11739, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (33, 17, 3333, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (34, 18, 131, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (35, 18, 132, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (36, 18, 133, 23478, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (37, 18, 134, 11739, 0)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (38, 19, 135, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (39, 19, 136, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (40, 19, 137, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (41, 19, 138, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (42, 19, 139, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (43, 19, 135, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (44, 19, 136, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (45, 19, 137, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (46, 19, 138, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (47, 19, 139, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1002, 1002, 140, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1003, 1002, 141, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1004, 1002, 142, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1005, 1003, 143, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1006, 1003, 144, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1007, 1003, 145, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1008, 1004, 146, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1009, 1004, 147, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1010, 1004, 148, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1011, 1004, 149, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1012, 1005, 150, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1013, 1006, 151, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1014, 1006, 152, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1015, 1006, 153, 0, 4695)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1016, 1007, 1, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1017, 1007, 2, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1018, 1007, 3, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1019, 1007, 4, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1020, 1008, 5, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1021, 1009, 6, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1022, 1009, 7, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1023, 1010, 1154, 0, 717)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1024, 1010, 1155, 0, 717)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1025, 1011, 8, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1026, 1011, 9, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1027, 1012, 10, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1028, 1012, 11, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1029, 1012, 12, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1030, 1013, 13, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1031, 1014, 14, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1032, 1014, 15, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1033, 1014, 16, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1034, 1014, 17, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1035, 1015, 18, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1036, 1015, 19, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1037, 1016, 20, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1038, 1016, 21, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1039, 1017, 1172, 0, 717)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1040, 1017, 1173, 0, 717)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1041, 1018, 22, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1042, 1018, 23, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1043, 1018, 24, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1044, 1019, 25, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1045, 1019, 26, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1046, 1020, 27, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1047, 1021, 28, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1048, 1021, 29, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1049, 1021, 30, 0, 24888)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1050, 1022, 154, 0, 180)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1051, 1023, 155, 0, 180)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1052, 1024, 156, 0, 180)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1053, 1025, 157, 0, 180)
GO
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1054, 1026, 158, 0, 180)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1055, 1027, 158, 0, 180)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1056, 1028, 159, 0, 180)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1057, 1029, 1214, 0, 45000)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1058, 1029, 1215, 0, 45000)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1059, 1029, 1204, 0, 45000)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1060, 1030, 1214, 0, 45000)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1061, 1030, 1215, 0, 45000)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1062, 1030, 1204, 0, 45000)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1063, 1031, 160, 0, 180)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1064, 1031, 161, 0, 180)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1065, 1031, 162, 0, 180)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1066, 1032, 1234, 0, 10400)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1067, 1032, 1235, 0, 10400)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1068, 1032, 1236, 0, 10400)
INSERT [dbo].[cobranza_detalle] ([cobdet_id], [cobcab_nro], [cobdet_preid], [cobdet_mora], [cobdet_dcto]) VALUES (1069, 1032, 1237, 0, 10400)
SET IDENTITY_INSERT [dbo].[cobranza_detalle] OFF
SET IDENTITY_INSERT [dbo].[Comentario] ON 

INSERT [dbo].[Comentario] ([Id], [Nombre], [Apellido], [Comentario]) VALUES (1, N'Christian', N'vera', N'esto es una prueba')
INSERT [dbo].[Comentario] ([Id], [Nombre], [Apellido], [Comentario]) VALUES (2, N'Christian', N'Vera', N'esto es otra prueba mas')
INSERT [dbo].[Comentario] ([Id], [Nombre], [Apellido], [Comentario]) VALUES (3, N'juan', N'perez', N'esto es una prueba de juan perez')
INSERT [dbo].[Comentario] ([Id], [Nombre], [Apellido], [Comentario]) VALUES (4, N'christian', N'vera', N'esto es una prueba')
SET IDENTITY_INSERT [dbo].[Comentario] OFF
INSERT [dbo].[forma_pago] ([fpa_codigo], [fpa_descripcion]) VALUES (N'CHD', N'Cheque al dia')
INSERT [dbo].[forma_pago] ([fpa_codigo], [fpa_descripcion]) VALUES (N'CHF', N'Cheque diferido')
INSERT [dbo].[forma_pago] ([fpa_codigo], [fpa_descripcion]) VALUES (N'EFE', N'Efectivo')
INSERT [dbo].[forma_pago] ([fpa_codigo], [fpa_descripcion]) VALUES (N'ESP', N'Especias')
INSERT [dbo].[Informconf] ([Documento], [Nombre], [Apellido], [RazonSocial], [Informconf], [Faja]) VALUES (598996, N'Adrian', N'Velazquez', N'El Pintor SA', N'S         ', N'X         ')
INSERT [dbo].[Informconf] ([Documento], [Nombre], [Apellido], [RazonSocial], [Informconf], [Faja]) VALUES (4815078, N'Christian', N'Vera', N'Christian Vera', N'N         ', N'A         ')
INSERT [dbo].[Informconf] ([Documento], [Nombre], [Apellido], [RazonSocial], [Informconf], [Faja]) VALUES (4968778, N'Jose', N'Perez', N'JPEREZ SA', N'N         ', N'A         ')
INSERT [dbo].[moneda] ([mon_codigo], [mon_descripcion], [mon_pais]) VALUES (N'BL', N'Peso Boliviano', N'Bolivia')
INSERT [dbo].[moneda] ([mon_codigo], [mon_descripcion], [mon_pais]) VALUES (N'GS', N'Guaranies', N'Paraguay')
INSERT [dbo].[moneda] ([mon_codigo], [mon_descripcion], [mon_pais]) VALUES (N'REAL', N'Real', N'Brasil')
INSERT [dbo].[moneda] ([mon_codigo], [mon_descripcion], [mon_pais]) VALUES (N'UK', N'Libra ', N'Gran Bretaña')
INSERT [dbo].[moneda] ([mon_codigo], [mon_descripcion], [mon_pais]) VALUES (N'USD', N'Dolares', N'EEUU')
SET IDENTITY_INSERT [dbo].[personal] ON 

INSERT [dbo].[personal] ([NumeroEmpleado], [Nombre], [Apellido], [Documento], [Cargo], [FechaNac], [Telefono], [Direccion], [TipoDeDocumento], [Sexo]) VALUES (1, N'ManuelDDDD', N'González', N'4470572', 1, CAST(N'1986-11-11T22:19:10.000' AS DateTime), N'0982840044', N'Calle L 396 Laurelty', 1, 1)
INSERT [dbo].[personal] ([NumeroEmpleado], [Nombre], [Apellido], [Documento], [Cargo], [FechaNac], [Telefono], [Direccion], [TipoDeDocumento], [Sexo]) VALUES (6, N'Seymour satan', N'Diera', N'6666', 2, CAST(N'2019-11-04T00:00:00.000' AS DateTime), N'556895', N'555568', 1, 1)
INSERT [dbo].[personal] ([NumeroEmpleado], [Nombre], [Apellido], [Documento], [Cargo], [FechaNac], [Telefono], [Direccion], [TipoDeDocumento], [Sexo]) VALUES (7, N'SSD', N'SSSD', N'4515151', 1, CAST(N'2019-11-05T00:00:00.000' AS DateTime), N'212201', N'ADSFASDF', 2, 1)
SET IDENTITY_INSERT [dbo].[personal] OFF
SET IDENTITY_INSERT [dbo].[prestamo] ON 

INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (1, CAST(N'2019-06-02' AS Date), 123456, N'auto', 2000000, N'GS', 12, 12, 2240004, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (123, CAST(N'2019-06-02' AS Date), 1, N'auto', 200000, N'GS', 16, 12, 224000, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (789, CAST(N'2019-06-02' AS Date), 123456, N'auto', 4000000, N'GS', 15, 12, 4480005, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (1231, CAST(N'2019-06-02' AS Date), 4484097, N'auto', 20000000, N'GS', 36, 12, 22399992, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (1234, CAST(N'2019-06-02' AS Date), 123456, N'casa', 400000000, N'GS', 31, 4, 416000005, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (2222, CAST(N'2019-06-02' AS Date), 123456, N'auto', 20000000, N'GS', 12, 35, 27000000, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (3333, CAST(N'2019-06-02' AS Date), 4815078, N'auto', 2000000, N'GS', 23, 35, 2699993, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (4567, CAST(N'2019-06-02' AS Date), 4484097, N'auto', 40000000, N'GS', 36, 12, 44799984, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (123456, CAST(N'2019-06-02' AS Date), 123456, N'auto', 1000000, N'GS', 22, 12, 1119998, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (2222222, CAST(N'2019-06-29' AS Date), 4815078, N'casa', 400000, N'GS', 15, 4, 415995, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (2222223, CAST(N'2019-06-29' AS Date), 4815078, N'auto', 40000, N'GS', 12, 35, 54000, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (2223223, CAST(N'2019-06-30' AS Date), 4484097, N'casa', 500000, N'GS', 29, 4, 519999, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (2223224, CAST(N'2019-06-30' AS Date), 4484097, N'auto', 10000000, N'GS', 15, 35, 13500000, N'admin')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (2223225, CAST(N'2019-07-05' AS Date), 4815078, N'auto', 30000000, N'GS', 36, 35, 40500000, N'admin2')
INSERT [dbo].[prestamo] ([pre_numero], [pre_fecha], [pre_cliente], [pre_tipoprestamo], [pre_montosolicitado], [pre_moneda], [pre_cantcuota], [pre_interes], [pre_montototal], [usuario]) VALUES (2223226, CAST(N'2019-07-05' AS Date), 4484097, N'casa', 1000000, N'GS', 4, 4, 1040000, N'admin')
SET IDENTITY_INSERT [dbo].[prestamo] OFF
SET IDENTITY_INSERT [dbo].[prestamo_detalle] ON 

INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1, 1231, 1, 622222, 0, CAST(N'2019-07-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (2, 1231, 2, 622222, 0, CAST(N'2019-08-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (3, 1231, 3, 622222, 0, CAST(N'2019-09-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (4, 1231, 4, 622222, 0, CAST(N'2019-10-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (5, 1231, 5, 622222, 0, CAST(N'2019-11-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (6, 1231, 6, 622222, 0, CAST(N'2019-12-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (7, 1231, 7, 622222, 0, CAST(N'2020-01-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (8, 1231, 8, 622222, 0, CAST(N'2020-02-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (9, 1231, 9, 622222, 0, CAST(N'2020-03-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (10, 1231, 10, 622222, 0, CAST(N'2020-04-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (11, 1231, 11, 622222, 0, CAST(N'2020-05-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (12, 1231, 12, 622222, 0, CAST(N'2020-06-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (13, 1231, 13, 622222, 0, CAST(N'2020-07-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (14, 1231, 14, 622222, 0, CAST(N'2020-08-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (15, 1231, 15, 622222, 0, CAST(N'2020-09-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (16, 1231, 16, 622222, 0, CAST(N'2020-10-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (17, 1231, 17, 622222, 0, CAST(N'2020-11-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (18, 1231, 18, 622222, 0, CAST(N'2020-12-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (19, 1231, 19, 622222, 0, CAST(N'2021-01-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (20, 1231, 20, 622222, 0, CAST(N'2021-02-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (21, 1231, 21, 622222, 0, CAST(N'2021-03-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (22, 1231, 22, 622222, 0, CAST(N'2021-04-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (23, 1231, 23, 622222, 0, CAST(N'2021-05-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (24, 1231, 24, 622222, 0, CAST(N'2021-06-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (25, 1231, 25, 622222, 0, CAST(N'2021-07-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (26, 1231, 26, 622222, 0, CAST(N'2021-08-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (27, 1231, 27, 622222, 0, CAST(N'2021-09-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (28, 1231, 28, 622222, 0, CAST(N'2021-10-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (29, 1231, 29, 622222, 0, CAST(N'2021-11-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (30, 1231, 30, 622222, 0, CAST(N'2021-12-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (31, 1231, 31, 622222, 622222, CAST(N'2022-01-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (32, 1231, 32, 622222, 622222, CAST(N'2022-02-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (33, 1231, 33, 622222, 622222, CAST(N'2022-03-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (34, 1231, 34, 622222, 622222, CAST(N'2022-04-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (35, 1231, 35, 622222, 622222, CAST(N'2022-05-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (36, 1231, 36, 622222, 622222, CAST(N'2022-06-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (37, 4567, 1, 1244444, 1244444, CAST(N'2019-07-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (38, 4567, 2, 1244444, 1244444, CAST(N'2019-08-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (39, 4567, 3, 1244444, 1244444, CAST(N'2019-09-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (40, 4567, 4, 1244444, 1244444, CAST(N'2019-10-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (41, 4567, 5, 1244444, 1244444, CAST(N'2019-11-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (42, 4567, 6, 1244444, 1244444, CAST(N'2019-12-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (43, 4567, 7, 1244444, 1244444, CAST(N'2020-01-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (44, 4567, 8, 1244444, 1244444, CAST(N'2020-02-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (45, 4567, 9, 1244444, 1244444, CAST(N'2020-03-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (46, 4567, 10, 1244444, 1244444, CAST(N'2020-04-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (47, 4567, 11, 1244444, 1244444, CAST(N'2020-05-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (48, 4567, 12, 1244444, 1244444, CAST(N'2020-06-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (49, 4567, 13, 1244444, 1244444, CAST(N'2020-07-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (50, 4567, 14, 1244444, 1244444, CAST(N'2020-08-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (51, 4567, 15, 1244444, 1244444, CAST(N'2020-09-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (52, 4567, 16, 1244444, 1244444, CAST(N'2020-10-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (53, 4567, 17, 1244444, 1244444, CAST(N'2020-11-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (54, 4567, 18, 1244444, 1244444, CAST(N'2020-12-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (55, 4567, 19, 1244444, 1244444, CAST(N'2021-01-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (56, 4567, 20, 1244444, 1244444, CAST(N'2021-02-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (57, 4567, 21, 1244444, 1244444, CAST(N'2021-03-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (58, 4567, 22, 1244444, 1244444, CAST(N'2021-04-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (59, 4567, 23, 1244444, 1244444, CAST(N'2021-05-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (60, 4567, 24, 1244444, 1244444, CAST(N'2021-06-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (61, 4567, 25, 1244444, 1244444, CAST(N'2021-07-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (62, 4567, 26, 1244444, 1244444, CAST(N'2021-08-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (63, 4567, 27, 1244444, 1244444, CAST(N'2021-09-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (64, 4567, 28, 1244444, 1244444, CAST(N'2021-10-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (65, 4567, 29, 1244444, 1244444, CAST(N'2021-11-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (66, 4567, 30, 1244444, 1244444, CAST(N'2021-12-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (67, 4567, 31, 1244444, 1244444, CAST(N'2022-01-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (68, 4567, 32, 1244444, 1244444, CAST(N'2022-02-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (69, 4567, 33, 1244444, 1244444, CAST(N'2022-03-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (70, 4567, 34, 1244444, 1244444, CAST(N'2022-04-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (71, 4567, 35, 1244444, 1244444, CAST(N'2022-05-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (72, 4567, 36, 1244444, 1244444, CAST(N'2022-06-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (73, 789, 1, 298667, 298667, CAST(N'2019-07-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (74, 789, 2, 298667, 298667, CAST(N'2019-08-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (75, 789, 3, 298667, 298667, CAST(N'2019-09-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (76, 789, 4, 298667, 298667, CAST(N'2019-10-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (77, 789, 5, 298667, 298667, CAST(N'2019-11-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (78, 789, 6, 298667, 298667, CAST(N'2019-12-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (79, 789, 7, 298667, 298667, CAST(N'2020-01-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (80, 789, 8, 298667, 298667, CAST(N'2020-02-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (81, 789, 9, 298667, 298667, CAST(N'2020-03-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (82, 789, 10, 298667, 298667, CAST(N'2020-04-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (83, 789, 11, 298667, 298667, CAST(N'2020-05-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (84, 789, 12, 298667, 298667, CAST(N'2020-06-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (85, 789, 13, 298667, 298667, CAST(N'2020-07-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (86, 789, 14, 298667, 298667, CAST(N'2020-08-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (87, 789, 15, 298667, 298667, CAST(N'2020-09-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (88, 1234, 1, 13419355, 13419355, CAST(N'2019-07-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (89, 1234, 2, 13419355, 13419355, CAST(N'2019-08-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (90, 1234, 3, 13419355, 13419355, CAST(N'2019-09-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (91, 1234, 4, 13419355, 13419355, CAST(N'2019-10-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (92, 1234, 5, 13419355, 13419355, CAST(N'2019-11-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (93, 1234, 6, 13419355, 13419355, CAST(N'2019-12-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (94, 1234, 7, 13419355, 13419355, CAST(N'2020-01-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (95, 1234, 8, 13419355, 13419355, CAST(N'2020-02-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (96, 1234, 9, 13419355, 13419355, CAST(N'2020-03-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (97, 1234, 10, 13419355, 13419355, CAST(N'2020-04-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (98, 1234, 11, 13419355, 13419355, CAST(N'2020-05-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (99, 1234, 12, 13419355, 13419355, CAST(N'2020-06-02' AS Date), N'No_pagado')
GO
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (100, 1234, 13, 13419355, 13419355, CAST(N'2020-07-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (101, 1234, 14, 13419355, 13419355, CAST(N'2020-08-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (102, 1234, 15, 13419355, 13419355, CAST(N'2020-09-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (103, 1234, 16, 13419355, 13419355, CAST(N'2020-10-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (104, 1234, 17, 13419355, 13419355, CAST(N'2020-11-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (105, 1234, 18, 13419355, 13419355, CAST(N'2020-12-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (106, 1234, 19, 13419355, 13419355, CAST(N'2021-01-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (107, 1234, 20, 13419355, 13419355, CAST(N'2021-02-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (108, 1234, 21, 13419355, 13419355, CAST(N'2021-03-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (109, 1234, 22, 13419355, 13419355, CAST(N'2021-04-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (110, 1234, 23, 13419355, 13419355, CAST(N'2021-05-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (111, 1234, 24, 13419355, 13419355, CAST(N'2021-06-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (112, 1234, 25, 13419355, 13419355, CAST(N'2021-07-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (113, 1234, 26, 13419355, 13419355, CAST(N'2021-08-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (114, 1234, 27, 13419355, 13419355, CAST(N'2021-09-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (115, 1234, 28, 13419355, 13419355, CAST(N'2021-10-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (116, 1234, 29, 13419355, 13419355, CAST(N'2021-11-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (117, 1234, 30, 13419355, 13419355, CAST(N'2021-12-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (118, 1234, 31, 13419355, 13419355, CAST(N'2022-01-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (119, 2222, 1, 2250000, 2250000, CAST(N'2019-07-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (120, 2222, 2, 2250000, 2250000, CAST(N'2019-08-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (121, 2222, 3, 2250000, 2250000, CAST(N'2019-09-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (122, 2222, 4, 2250000, 2250000, CAST(N'2019-10-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (123, 2222, 5, 2250000, 2250000, CAST(N'2019-11-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (124, 2222, 6, 2250000, 2250000, CAST(N'2019-12-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (125, 2222, 7, 2250000, 2250000, CAST(N'2020-01-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (126, 2222, 8, 2250000, 2250000, CAST(N'2020-02-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (127, 2222, 9, 2250000, 2250000, CAST(N'2020-03-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (128, 2222, 10, 2250000, 2250000, CAST(N'2020-04-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (129, 2222, 11, 2250000, 2250000, CAST(N'2020-05-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (130, 2222, 12, 2250000, 2250000, CAST(N'2020-06-02' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (131, 3333, 1, 117391, 0, CAST(N'2019-02-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (132, 3333, 2, 117391, 0, CAST(N'2019-03-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (133, 3333, 3, 117391, 0, CAST(N'2019-04-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (134, 3333, 4, 117391, 0, CAST(N'2019-06-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (135, 3333, 5, 117391, 0, CAST(N'2019-07-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (136, 3333, 6, 117391, 0, CAST(N'2019-12-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (137, 3333, 7, 117391, 0, CAST(N'2020-01-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (138, 3333, 8, 117391, 0, CAST(N'2020-02-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (139, 3333, 9, 117391, 0, CAST(N'2020-03-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (140, 3333, 10, 117391, 0, CAST(N'2020-04-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (141, 3333, 11, 117391, 0, CAST(N'2020-05-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (142, 3333, 12, 117391, 0, CAST(N'2020-06-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (143, 3333, 13, 117391, 0, CAST(N'2020-07-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (144, 3333, 14, 117391, 0, CAST(N'2020-08-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (145, 3333, 15, 117391, 0, CAST(N'2020-09-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (146, 3333, 16, 117391, 0, CAST(N'2020-10-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (147, 3333, 17, 117391, 0, CAST(N'2020-11-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (148, 3333, 18, 117391, 0, CAST(N'2020-12-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (149, 3333, 19, 117391, 0, CAST(N'2021-01-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (150, 3333, 20, 117391, 0, CAST(N'2021-02-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (151, 3333, 21, 117391, 0, CAST(N'2021-03-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (152, 3333, 22, 117391, 0, CAST(N'2021-04-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (153, 3333, 23, 117391, 0, CAST(N'2021-05-02' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (154, 2222223, 1, 4500, 0, CAST(N'2019-07-29' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (155, 2222223, 2, 4500, 0, CAST(N'2019-08-29' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (156, 2222223, 3, 4500, 0, CAST(N'2019-09-29' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (157, 2222223, 4, 4500, 0, CAST(N'2019-10-29' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (158, 2222223, 5, 4500, 0, CAST(N'2019-11-29' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (159, 2222223, 6, 4500, 0, CAST(N'2019-12-29' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (160, 2222223, 7, 4500, 0, CAST(N'2020-01-29' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (161, 2222223, 8, 4500, 0, CAST(N'2020-02-29' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (162, 2222223, 9, 4500, 0, CAST(N'2020-03-29' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (163, 2222223, 10, 4500, 4500, CAST(N'2020-04-29' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (164, 2222223, 11, 4500, 4500, CAST(N'2020-05-29' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (165, 2222223, 12, 4500, 4500, CAST(N'2020-06-29' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1154, 2223223, 1, 17931, 0, CAST(N'2019-07-30' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1155, 2223223, 2, 17931, 0, CAST(N'2019-08-30' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1156, 2223223, 3, 17931, 17931, CAST(N'2019-09-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1157, 2223223, 4, 17931, 17931, CAST(N'2019-10-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1158, 2223223, 5, 17931, 17931, CAST(N'2019-11-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1159, 2223223, 6, 17931, 17931, CAST(N'2019-12-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1160, 2223223, 7, 17931, 17931, CAST(N'2020-01-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1161, 2223223, 8, 17931, 17931, CAST(N'2020-02-29' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1162, 2223223, 9, 17931, 17931, CAST(N'2020-03-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1163, 2223223, 10, 17931, 17931, CAST(N'2020-04-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1164, 2223223, 11, 17931, 17931, CAST(N'2020-05-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1165, 2223223, 12, 17931, 17931, CAST(N'2020-06-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1166, 2223223, 13, 17931, 17931, CAST(N'2020-07-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1167, 2223223, 14, 17931, 17931, CAST(N'2020-08-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1168, 2223223, 15, 17931, 17931, CAST(N'2020-09-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1169, 2223223, 16, 17931, 17931, CAST(N'2020-10-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1170, 2223223, 17, 17931, 17931, CAST(N'2020-11-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1171, 2223223, 18, 17931, 17931, CAST(N'2020-12-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1172, 2223223, 19, 17931, 0, CAST(N'2021-01-30' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1173, 2223223, 20, 17931, 0, CAST(N'2021-02-28' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1174, 2223223, 21, 17931, 17931, CAST(N'2021-03-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1175, 2223223, 22, 17931, 17931, CAST(N'2021-04-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1176, 2223223, 23, 17931, 17931, CAST(N'2021-05-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1177, 2223223, 24, 17931, 17931, CAST(N'2021-06-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1178, 2223223, 25, 17931, 17931, CAST(N'2021-07-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1179, 2223223, 26, 17931, 17931, CAST(N'2021-08-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1180, 2223223, 27, 17931, 17931, CAST(N'2021-09-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1181, 2223223, 28, 17931, 17931, CAST(N'2021-10-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1182, 2223223, 29, 17931, 17931, CAST(N'2021-11-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1183, 2223224, 1, 900000, 900000, CAST(N'2019-07-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1184, 2223224, 2, 900000, 900000, CAST(N'2019-08-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1185, 2223224, 3, 900000, 900000, CAST(N'2019-09-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1186, 2223224, 4, 900000, 900000, CAST(N'2019-10-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1187, 2223224, 5, 900000, 900000, CAST(N'2019-11-30' AS Date), N'No_pagado')
GO
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1188, 2223224, 6, 900000, 900000, CAST(N'2019-12-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1189, 2223224, 7, 900000, 900000, CAST(N'2020-01-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1190, 2223224, 8, 900000, 900000, CAST(N'2020-02-29' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1191, 2223224, 9, 900000, 900000, CAST(N'2020-03-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1192, 2223224, 10, 900000, 900000, CAST(N'2020-04-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1193, 2223224, 11, 900000, 900000, CAST(N'2020-05-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1194, 2223224, 12, 900000, 900000, CAST(N'2020-06-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1195, 2223224, 13, 900000, 900000, CAST(N'2020-07-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1196, 2223224, 14, 900000, 900000, CAST(N'2020-08-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1197, 2223224, 15, 900000, 900000, CAST(N'2020-09-30' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1198, 2223225, 1, 1125000, 1125000, CAST(N'2019-08-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1199, 2223225, 2, 1125000, 1125000, CAST(N'2019-09-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1200, 2223225, 3, 1125000, 1125000, CAST(N'2019-10-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1201, 2223225, 4, 1125000, 1125000, CAST(N'2019-11-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1202, 2223225, 5, 1125000, 1125000, CAST(N'2019-12-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1203, 2223225, 6, 1125000, 1125000, CAST(N'2020-01-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1204, 2223225, 7, 1125000, 0, CAST(N'2020-02-05' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1205, 2223225, 8, 1125000, 1125000, CAST(N'2020-03-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1206, 2223225, 9, 1125000, 1125000, CAST(N'2020-04-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1207, 2223225, 10, 1125000, 1125000, CAST(N'2020-05-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1208, 2223225, 11, 1125000, 1125000, CAST(N'2020-06-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1209, 2223225, 12, 1125000, 1125000, CAST(N'2020-07-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1210, 2223225, 13, 1125000, 1125000, CAST(N'2020-08-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1211, 2223225, 14, 1125000, 1125000, CAST(N'2020-09-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1212, 2223225, 15, 1125000, 1125000, CAST(N'2020-10-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1213, 2223225, 16, 1125000, 1125000, CAST(N'2020-11-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1214, 2223225, 17, 1125000, 0, CAST(N'2020-12-05' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1215, 2223225, 18, 1125000, 0, CAST(N'2021-01-05' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1216, 2223225, 19, 1125000, 1125000, CAST(N'2021-02-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1217, 2223225, 20, 1125000, 1125000, CAST(N'2021-03-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1218, 2223225, 21, 1125000, 1125000, CAST(N'2021-04-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1219, 2223225, 22, 1125000, 1125000, CAST(N'2021-05-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1220, 2223225, 23, 1125000, 1125000, CAST(N'2021-06-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1221, 2223225, 24, 1125000, 1125000, CAST(N'2021-07-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1222, 2223225, 25, 1125000, 1125000, CAST(N'2021-08-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1223, 2223225, 26, 1125000, 1125000, CAST(N'2021-09-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1224, 2223225, 27, 1125000, 1125000, CAST(N'2021-10-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1225, 2223225, 28, 1125000, 1125000, CAST(N'2021-11-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1226, 2223225, 29, 1125000, 1125000, CAST(N'2021-12-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1227, 2223225, 30, 1125000, 1125000, CAST(N'2022-01-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1228, 2223225, 31, 1125000, 1125000, CAST(N'2022-02-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1229, 2223225, 32, 1125000, 1125000, CAST(N'2022-03-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1230, 2223225, 33, 1125000, 1125000, CAST(N'2022-04-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1231, 2223225, 34, 1125000, 1125000, CAST(N'2022-05-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1232, 2223225, 35, 1125000, 1125000, CAST(N'2022-06-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1233, 2223225, 36, 1125000, 1125000, CAST(N'2022-07-05' AS Date), N'No_pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1234, 2223226, 1, 260000, 0, CAST(N'2019-08-05' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1235, 2223226, 2, 260000, 0, CAST(N'2019-09-05' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1236, 2223226, 3, 260000, 0, CAST(N'2019-10-05' AS Date), N'Pagado')
INSERT [dbo].[prestamo_detalle] ([predet_id], [predet_nrocabecera], [predet_nrocuota], [predet_monto], [predet_saldo], [predet_vencimiento], [predet_estado]) VALUES (1237, 2223226, 4, 260000, 0, CAST(N'2019-11-05' AS Date), N'Pagado')
SET IDENTITY_INSERT [dbo].[prestamo_detalle] OFF
INSERT [dbo].[sexo] ([Id], [Descripcion]) VALUES (1, N'Hombre')
INSERT [dbo].[sexo] ([Id], [Descripcion]) VALUES (2, N'Mujer')
INSERT [dbo].[sexo] ([Id], [Descripcion]) VALUES (3, N'Nobinarie')
SET IDENTITY_INSERT [dbo].[Solicitud_Credito] ON 

INSERT [dbo].[Solicitud_Credito] ([id], [NumeroCliente], [TotalEgreso], [TotalIngreso], [Informconf], [aprobado]) VALUES (4, 7, 5000000, 1000000, N'n', N'n')
INSERT [dbo].[Solicitud_Credito] ([id], [NumeroCliente], [TotalEgreso], [TotalIngreso], [Informconf], [aprobado]) VALUES (5, 7, 10000000, 11000000, N's', N's')
SET IDENTITY_INSERT [dbo].[Solicitud_Credito] OFF
INSERT [dbo].[tipo_prestamo] ([tpre_codigo], [tpre_descripcion], [tpre_interes]) VALUES (N'auto', N'auto 0 km', 35)
INSERT [dbo].[tipo_prestamo] ([tpre_codigo], [tpre_descripcion], [tpre_interes]) VALUES (N'casa', N'primera casa', 4)
INSERT [dbo].[tipo_prestamo] ([tpre_codigo], [tpre_descripcion], [tpre_interes]) VALUES (N'pru', N'prueba', 2)
SET IDENTITY_INSERT [dbo].[TipoDeDocumento] ON 

INSERT [dbo].[TipoDeDocumento] ([Id], [Descripcion]) VALUES (1, N'CIP')
INSERT [dbo].[TipoDeDocumento] ([Id], [Descripcion]) VALUES (2, N'Pasaporte')
SET IDENTITY_INSERT [dbo].[TipoDeDocumento] OFF
INSERT [dbo].[usuario] ([usu_codigo], [usu_clave], [usu_nombrecompleto], [usu_ultacceso]) VALUES (N'admin', N'123456', N'Administrador8', CAST(N'2019-07-06T21:12:26.000' AS DateTime))
INSERT [dbo].[usuario] ([usu_codigo], [usu_clave], [usu_nombrecompleto], [usu_ultacceso]) VALUES (N'prueba', N'123456789', N'pruebas', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[usuario] ([usu_codigo], [usu_clave], [usu_nombrecompleto], [usu_ultacceso]) VALUES (N'therm', N'123456', N'Miguel Leal', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[usuario] ([usu_codigo], [usu_clave], [usu_nombrecompleto], [usu_ultacceso]) VALUES (N'admin2', N'123456', N'Admin Dos', CAST(N'1900-01-01T00:00:00.000' AS DateTime))
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 17/11/2019 15:08:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 17/11/2019 15:08:17 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 17/11/2019 15:08:17 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 17/11/2019 15:08:17 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 17/11/2019 15:08:17 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 17/11/2019 15:08:17 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cobranza] ADD  CONSTRAINT [DF_cobranza_cob_fech]  DEFAULT (sysdatetime()) FOR [cob_fech]
GO
ALTER TABLE [dbo].[cobranza] ADD  CONSTRAINT [DF_cobranza_cob_totalmora]  DEFAULT ((0)) FOR [cob_totalmora]
GO
ALTER TABLE [dbo].[cobranza] ADD  CONSTRAINT [DF_cobranza_cob_totaldcto]  DEFAULT ((0)) FOR [cob_totaldcto]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF_usuario_usu_ultacceso]  DEFAULT (((1)/(1))/(9999)) FOR [usu_ultacceso]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_sexo] FOREIGN KEY([Sexo])
REFERENCES [dbo].[sexo] ([Id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_sexo]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_TipoDeDocumento] FOREIGN KEY([TipoDocumento])
REFERENCES [dbo].[TipoDeDocumento] ([Id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_TipoDeDocumento]
GO
ALTER TABLE [dbo].[personal]  WITH CHECK ADD  CONSTRAINT [FK_personal_Cargo] FOREIGN KEY([Cargo])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[personal] CHECK CONSTRAINT [FK_personal_Cargo]
GO
ALTER TABLE [dbo].[personal]  WITH CHECK ADD  CONSTRAINT [FK_personal_sexo] FOREIGN KEY([Sexo])
REFERENCES [dbo].[sexo] ([Id])
GO
ALTER TABLE [dbo].[personal] CHECK CONSTRAINT [FK_personal_sexo]
GO
ALTER TABLE [dbo].[personal]  WITH CHECK ADD  CONSTRAINT [FK_personal_TipoDeDocumento] FOREIGN KEY([TipoDeDocumento])
REFERENCES [dbo].[TipoDeDocumento] ([Id])
GO
ALTER TABLE [dbo].[personal] CHECK CONSTRAINT [FK_personal_TipoDeDocumento]
GO
ALTER TABLE [dbo].[Solicitud_Credito]  WITH CHECK ADD  CONSTRAINT [FK_Solicitud_Credito_Cliente] FOREIGN KEY([NumeroCliente])
REFERENCES [dbo].[Cliente] ([NumeroCliente])
GO
ALTER TABLE [dbo].[Solicitud_Credito] CHECK CONSTRAINT [FK_Solicitud_Credito_Cliente]
GO
/****** Object:  StoredProcedure [dbo].[MovFondosCobranza]    Script Date: 17/11/2019 15:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MovFondosCobranza] @Idmf int AS
SELECT 
		forma_pago.fpa_descripcion as FormaPago,
		ISNULL(SUM(cobcheque_monto),0) AS Total
FROM cobranza
INNER JOIN cobranza_cheque ON cobranza_cheque.cob_nro=cobranza.cob_nro
INNER JOIN forma_pago ON forma_pago.fpa_codigo=cobranza_cheque.cobcheque_tipo
WHERE cobranza.cob_nro=@Idmf
GROUP BY fpa_descripcion

GO
/****** Object:  StoredProcedure [dbo].[ObtenerCabeceraCobranza]    Script Date: 17/11/2019 15:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ObtenerCabeceraCobranza] @Idcab int AS
SELECT 
		Nombre+', '+Apellido as Cliente,
		Documento as CiCliente,
		Direccion,
		Telefono,
		CONVERT(varchar, cob_fech,103) as Fecha,
		RIGHT('00000' + Ltrim(Rtrim(cob_nro)),8) as NumeroRecibo,
		cobranza.cob_montototal as TotalGral,
		cobranza.cob_totaldcto as TotaDcto,
		cob_totalmora as TotalMora
FROM cobranza
INNER JOIN cobranza_detalle ON cobranza.cob_nro=cobranza_detalle.cobcab_nro
INNER JOIN prestamo_detalle ON cobdet_preid=predet_id
INNER JOIN prestamo ON predet_nrocabecera=pre_numero
INNER JOIN Cliente ON Cliente.Documento=prestamo.pre_cliente
WHERE cobranza.cob_nro=@Idcab
GROUP BY Nombre,Apellido,Documento,cob_nro,cob_fech, cob_montototal,cob_totaldcto,cob_totalmora, Direccion, Telefono
GO
/****** Object:  StoredProcedure [dbo].[ObtenerDetalleCobranza]    Script Date: 17/11/2019 15:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ObtenerDetalleCobranza] @Iddet int AS
SELECT 
		prestamo_detalle.predet_id as Numero,
		tpre_descripcion as TipoPrestamo,
		prestamo_detalle.predet_nrocuota as NumeroCuota,
		prestamo_detalle.predet_monto as Monto,
		cobranza_Detalle.cobdet_mora as Mora,
		cobranza_detalle.cobdet_dcto as Dcto,
		CONVERT(varchar, prestamo_detalle.predet_vencimiento,103) as Vencimiento
FROM cobranza
INNER JOIN cobranza_detalle ON cobranza.cob_nro=cobranza_detalle.cobcab_nro
INNER JOIN prestamo_detalle ON cobdet_preid=predet_id
INNER JOIN prestamo ON predet_nrocabecera=pre_numero
INNER JOIN Cliente ON Cliente.Documento=prestamo.pre_cliente
INNER JOIN tipo_prestamo ON prestamo.pre_tipoprestamo=tipo_prestamo.tpre_codigo
WHERE cobranza.cob_nro=@Iddet
GROUP BY predet_id,tpre_descripcion,predet_nrocuota,predet_vencimiento,predet_monto,cobdet_mora,cobdet_dcto
GO
USE [master]
GO
ALTER DATABASE [prestamo] SET  READ_WRITE 
GO
