Create database DreamyShop

USE DreamyShop
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/12/2023 8:08:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NULL,
	[username] [varchar](100) NULL,
	[password] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[isAdmin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryGame]    Script Date: 7/12/2023 8:08:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryGame](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameCategory] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 7/12/2023 8:08:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[id] [int] primary key IDENTITY(1,1) NOT NULL,
	[nameGame] [nvarchar](100) NULL,
	[imageGame] [varchar](1000) NULL,
	[price] [money] NULL,
	[cateId] [int] NULL
) ON [PRIMARY]
GO

Create table Infomation(
	id int IDENTITY(1,1) NOT NULL,
	[imageGame1] [varchar](1000),
	[imageGame2] [varchar](1000),
	[imageGame3] [varchar](1000),
	[imageGame4] [varchar](1000),
	[description] nvarchar(1000),
	[Video] [varchar](1000),
	foreign key (id) references [Game](id)
)

SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [fullname], [username], [password], [email], [isAdmin]) VALUES (1, N'Trần Minh An', N'anxemer', N'130224', N'anxemer224@mail.com', 1)
INSERT [dbo].[Account] ([id], [fullname], [username], [password], [email], [isAdmin]) VALUES (2, N'Trần Bình Minh', N'minh', N'1234', N'minhtran4@mail.com', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryGame] ON 

INSERT [dbo].[CategoryGame] ([id], [nameCategory]) VALUES (1, N'Sinh Tồn')
INSERT [dbo].[CategoryGame] ([id], [nameCategory]) VALUES (2, N'Thế Giới Mở')
INSERT [dbo].[CategoryGame] ([id], [nameCategory]) VALUES (3, N'Phiêu Lưu')
INSERT [dbo].[CategoryGame] ([id], [nameCategory]) VALUES (4, N'Chiến Thuật')
INSERT [dbo].[CategoryGame] ([id], [nameCategory]) VALUES (5, N'Kinh Dị')
INSERT [dbo].[CategoryGame] ([id], [nameCategory]) VALUES (7, N'Hành Động')
INSERT [dbo].[CategoryGame] ([id], [nameCategory]) VALUES (8, N'Thể Thao')
INSERT [dbo].[CategoryGame] ([id], [nameCategory]) VALUES (9, N'Mô Phỏng')
INSERT [dbo].[CategoryGame] ([id], [nameCategory]) VALUES (10, N'Giải Đố')
SET IDENTITY_INSERT [dbo].[CategoryGame] OFF
GO
SET IDENTITY_INSERT [dbo].[Game] ON 

INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (1, N'Blood Field | Cỏ Máu', N'https://cdn.akamai.steamstatic.com/steam/apps/1673000/header.jpg?t=1688054627', 99000.0000, 5)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (2, N'DAVE THE DIVER', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1868140/header.jpg?t=1688619744', 234000.0000, 3)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (3, N'Need for Speed™ Unbound', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1846380/header.jpg?t=1687458828', 327000.0000, 8)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (4, N'STAR WARS Jedi: Fallen Order™', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1172380/header.jpg?t=1682687298', 950000.0000, 3)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (5, N'A Way Out', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1222700/header.jpg?t=1626878628', 140000.0000, 7)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (6, N'STAR WARS™ Battlefront™ II', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1237950/header.jpg?t=1651767512', 237000.0000, 7)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (7, N'Only Up!', N'https://cdn.cloudflare.steamstatic.com/steam/apps/2381590/header.jpg?t=1688315730', 99000.0000, 3)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (8, N'BattleBit Remastered', N'https://cdn.cloudflare.steamstatic.com/steam/apps/671860/header.jpg?t=1686877598', 253000.0000, 7)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (9, N'The Outlast Trials', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1304930/header.jpg?t=1684452998', 385000.0000, 5)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (10, N'Core Keeper', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1621690/header.jpg?t=1687352119', 172000.0000, 2)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (11, N'Riders Republic', N'https://cdn.cloudflare.steamstatic.com/steam/apps/2290180/header.jpg?t=1688149164', 247000.0000, 8)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (12, N'Hogwarts Legacy', N'https://cdn.cloudflare.steamstatic.com/steam/apps/990080/header.jpg?t=1680647016', 990000.0000, 3)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (13, N'ELDEN RING', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1245620/header.jpg?t=1683618443', 628000.0000, 2)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (14, N'Paper Bride 3 Unresolved Love', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1939790/header.jpg?t=1686192768', 120000.0000, 3)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (15, N'Marvel’s Spider-Man Remastered', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1817070/header.jpg?t=1673999865', 763000.0000, 2)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (16, N'Dark Deception Chapter 4', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1019931/header.jpg?t=1641986247', 60000.0000, 5)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (17, N'Poppy Playtime - Chapter 2', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1817490/header.jpg?t=1683255244', 60000.0000, 5)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (18, N'Home Sweet Home', N'https://cdn.cloudflare.steamstatic.com/steam/apps/617160/header.jpg?t=1544779603', 60000.0000, 5)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (19, N'Call of Duty®: Modern Warfare®', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1938090/header.jpg?t=1687571108', 989000.0000, 1)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (20, N'IL-2 Sturmovik: Battle of Stalingrad', N'https://cdn.cloudflare.steamstatic.com/steam/apps/307960/header.jpg?t=1688724365', 279000.0000, 1)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (21, N'PAYDAY 2', N'https://cdn.cloudflare.steamstatic.com/steam/apps/218620/header_alt_assets_17.jpg?t=1688481014', 13000.0000, 1)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (22, N'Sniper Elite 4', N'https://cdn.cloudflare.steamstatic.com/steam/apps/312660/header.jpg?t=1681207252', 48000.0000, 1)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (23, N'Dying Light 2 Stay Human', N'https://cdn.cloudflare.steamstatic.com/steam/apps/534380/header_alt_assets_20.jpg?t=1688739589', 495000.0000, 7)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (24, N'Battlefield™ 2042', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1517290/header.jpg?t=1688655738', 4247000.0000, 7)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (25, N'Bloons TD 6', N'https://cdn.cloudflare.steamstatic.com/steam/apps/960090/header.jpg?t=1688681768', 40000.0000, 4)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (26, N'Mount & Blade II: Bannerlord', N'https://cdn.cloudflare.steamstatic.com/steam/apps/261550/header.jpg?t=1671213711', 480000.0000, 4)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (27, N'Total War: SHOGUN 2', N'https://cdn.cloudflare.steamstatic.com/steam/apps/201270/header.jpg?t=1603131194', 110000.0000, 4)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (28, N'Lethal League Blaze', N'https://cdn.cloudflare.steamstatic.com/steam/apps/553310/header.jpg?t=1667229780', 122000.0000, 4)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (29, N'Internet Cafe Simulator 2', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1563180/header.jpg?t=1688201539', 94000.0000, 9)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (30, N'Cooking Simulator', N'https://cdn.cloudflare.steamstatic.com/steam/apps/641320/header.jpg?t=1688631389', 69000.0000, 9)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (31, N'Jurassic World Evolution 2', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1244460/header.jpg?t=1688134336', 227000.0000, 9)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (32, N'Animal Shelter', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1239320/header.jpg?t=1688647352', 161000.0000, 9)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (33, N'Keep Talking and Nobody Explodes', N'https://cdn.cloudflare.steamstatic.com/steam/apps/341800/header.jpg?t=1683567664', 82000.0000, 10)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (34, N'PICO PARK', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1509960/header.jpg?t=1627200665', 56000.0000, 10)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (35, N'The Escapists 2', N'https://cdn.cloudflare.steamstatic.com/steam/apps/641990/header.jpg?t=1668604436', 100000.0000, 10)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (36, N'It Takes Two', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1426210/header.jpg?t=1679951279', 316000.0000, 10)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (37, N'Stray', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1332010/header.jpg?t=1688314132', 239000.0000, 3)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (38, N'Blasphemous', N'https://cdn.cloudflare.steamstatic.com/steam/apps/774361/header.jpg?t=1681921922', 125000.0000, 3)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (39, N'Ghostwire: Tokyo', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1475810/header.jpg?t=1681316334', 299000.0000, 3)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (40, N'I Am Fish', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1472560/header.jpg?t=1683890027', 59000.0000, 3)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (41, N'Unravel Two', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1225570/header.jpg?t=1633006815', 117000.0000, 3)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (42, N'BIOMUTANT', N'https://cdn.cloudflare.steamstatic.com/steam/apps/597820/header.jpg?t=1664962616', 222000.0000, 3)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (43, N'7 Days to Die', N'https://cdn.cloudflare.steamstatic.com/steam/apps/251570/header.jpg?t=1688057019', 53000.0000, 1)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (44, N'State of Decay 2: Juggernaut Edition', N'https://cdn.cloudflare.steamstatic.com/steam/apps/495420/header.jpg?t=1684947123', 188000.0000, 1)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (45, N'Risk of Rain 2', N'https://cdn.cloudflare.steamstatic.com/steam/apps/632360/header.jpg?t=1660063598', 110000.0000, 1)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (47, N'Days Gone', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/header.jpg?t=1684177712', 376000.0000, 1)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (48, N'Metro Exodus', N'https://cdn.cloudflare.steamstatic.com/steam/apps/412020/header.jpg?t=1669390585', 103000.0000, 1)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (49, N'Far cry 4', N'https://cdn.cloudflare.steamstatic.com/steam/apps/298110/header.jpg?t=1682464310', 99000.0000, 2)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (50, N'DREDGE', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1562430/header.jpg?t=1688649425', 400000.0000, 2)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (51, N'Project Zomboid', N'https://cdn.cloudflare.steamstatic.com/steam/apps/108600/header.jpg?t=1679306018', 174000.0000, 2)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (52, N'NARUTO TO BORUTO: SHINOBI STRIKER', N'https://cdn.cloudflare.steamstatic.com/steam/apps/633230/header.jpg?t=1688156382', 298000.0000, 7)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (53, N'God of War', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1593500/header.jpg?t=1650554420', 683000.0000, 7)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (54, N'Ghostrunner', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1139900/header.jpg?t=1688460732', 220000.0000, 7)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (55, N'Back 4 Blood', N'https://cdn.cloudflare.steamstatic.com/steam/apps/924970/header.jpg?t=1672856194', 198000.0000, 7)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (56, N'Dead Cells', N'https://cdn.cloudflare.steamstatic.com/steam/apps/588650/header.jpg?t=1678188017', 110000.0000, 7)
INSERT [dbo].[Game] ([id], [nameGame], [imageGame], [price], [cateId]) VALUES (57, N'Ori and the Will of the Wisps', N'https://cdn.cloudflare.steamstatic.com/steam/apps/1057090/header.jpg?t=1667504225', 62000.0000, 7)

SET IDENTITY_INSERT [dbo].[Game] OFF
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD FOREIGN KEY([cateId])
REFERENCES [dbo].[CategoryGame] ([id])
GO


select * from Game

SET IDENTITY_INSERT Infomation ON 

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.akamai.steamstatic.com/steam/apps/1673000/ss_5f3889a095eac5b51f8262fd7d7cc4630a01b70e.116x65.jpg?t=1688054627','https://cdn.akamai.steamstatic.com/steam/apps/1673000/ss_e03647ea199652b748b758659f1c73c50a6b07de.116x65.jpg?t=1688054627','https://cdn.akamai.steamstatic.com/steam/apps/1673000/ss_db27b68a28831ab9a82bd462267e4f5b8986e535.116x65.jpg?t=1688054627','https://cdn.akamai.steamstatic.com/steam/apps/1673000/ss_c09701f811c8ff2596296144ce391af03392d4e6.600x338.jpg?t=1688054627','Explore a sinister world with environments based on Vietnam culture and a storyline inspired by Vietnam myths and folklore.','https://cdn.akamai.steamstatic.com/steam/apps/256950766/movie480_vp9.webm?t=1685845134')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10','Intel® Core™ i5 or AMD Ryzen™ 5','8 GB RAM','NVIDIA® GeForce® GTX 1060 or AMD Radeon™ RX 480','10 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.akamai.steamstatic.com/steam/apps/1868140/ss_7c86a17d545b6260ecdcfdd62622e49dcc9011bd.600x338.jpg?t=1688619744','https://cdn.akamai.steamstatic.com/steam/apps/1868140/ss_783e1f6c2d4c358fb494d055c47c0e888922abd5.600x338.jpg?t=1688619744','https://cdn.akamai.steamstatic.com/steam/apps/1868140/ss_bc9150385c6fcd41ac7195be36597469f54a792c.600x338.jpg?t=1688619744','https://cdn.akamai.steamstatic.com/steam/apps/1868140/ss_d1c0a418890d7dce6fc1ef88e0ab038c12ca69d7.600x338.jpg?t=1688619744','DAVE THE DIVER is a casual, singleplayer adventure RPG featuring deep-sea exploration and fishing during the day and sushi restaurant management at night. Join Dave and his quirky friends as they seek to uncover the secrets of the mysterious Blue Hole.','https://cdn.akamai.steamstatic.com/steam/apps/256955530/movie480_vp9.webm?t=1687942836')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 64 bit','Intel Core i5 - i7 Quad Core','16 GB RAM','NVIDIA Geforce GTX 750Ti / AMD Radeon R9 270x','10 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.akamai.steamstatic.com/steam/apps/1846380/ss_ae0004502b96876a5a897a0d4e117bc2d5a864e3.116x65.jpg?t=1687458828','https://cdn.akamai.steamstatic.com/steam/apps/1846380/ss_9016b82a61f66882c9227ad30ded6ee7c9feb26e.116x65.jpg?t=1687458828','https://cdn.akamai.steamstatic.com/steam/apps/1846380/ss_9974a58ee8832aecf93219096fa749267c420dbf.600x338.jpg?t=1687458828','https://cdn.akamai.steamstatic.com/steam/apps/1846380/ss_61cf031462fef17022757875dcdadab090664761.600x338.jpg?t=1687458828','Race to the top, definitely don’t flop. Outsmart the cops, and enter weekly qualifiers for The Grand: the ultimate street race. Pack your garage with precision-tuned, custom rides and light up the streets with your style.','https://cdn.akamai.steamstatic.com/steam/apps/256936856/movie480_vp9.webm?t=1679389216')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 64-bit','Ryzen 5 3600, Core i7-8700','16 GB RAM','Radeon RX5700 (8GB), GeForce RTX 2070 (8GB)','50 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1172380/ss_695a5724e306269d81ca0118d86308a170c9e913.116x65.jpg?t=1682687298','https://cdn.cloudflare.steamstatic.com/steam/apps/1172380/ss_cfad9481db1a3b68fb5fcb2298cfc74bcb6a469e.116x65.jpg?t=1682687298','https://cdn.cloudflare.steamstatic.com/steam/apps/1172380/ss_763dcc7434f072d6fdbb9037b4d37f4474e29d9b.116x65.jpg?t=1682687298','https://cdn.cloudflare.steamstatic.com/steam/apps/1172380/ss_045d78dba983384cf8282e617e7ba04e40a9e2e9.116x65.jpg?t=1682687298','A galaxy-spanning adventure awaits in Star Wars Jedi: Fallen Order, a 3rd person action-adventure title from Respawn. An abandoned Padawan must complete his training, develop new powerful Force abilities, and master the art of the lightsaber - all while staying one step ahead of the Empire.','https://cdn.cloudflare.steamstatic.com/steam/apps/256764626/movie480.webm?t=1572357570')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('64-bit Windows 7/8.1/10','AMD Ryzen 7 1700/Intel i7-6700K or Equivalent','16 GB RAM','AMD RX Vega 56, Nvidia GTX 1070/GTX1660Ti or Equivalent','55 GB available space')


INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1222700/ss_a7f52388d8d64bf56170baf5bd223fbbb1d9a94a.116x65.jpg?t=1626878628','https://cdn.cloudflare.steamstatic.com/steam/apps/1222700/ss_55237e6d80cf3f9e2f3f0fa41d710a7ea35b022b.116x65.jpg?t=1626878628','https://cdn.cloudflare.steamstatic.com/steam/apps/1222700/ss_666b409c3d07150ef0ddccb179a25d44fb62c937.116x65.jpg?t=1626878628','https://cdn.cloudflare.steamstatic.com/steam/apps/1222700/ss_7348bdffb1dd4418175bcb91149f3b7daf30ecf8.600x338.jpg?t=1626878628','A Way Out is an exclusively co-op adventure where you play the role of one of two prisoners making their daring escape from prison.','https://cdn.cloudflare.steamstatic.com/steam/apps/256790157/movie480_vp9.webm?t=1592600313')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7 64-bit, 8.1 64-bit or Windows 10 64-bit','Intel Core i5 3570K; AMD Ryzen 3 1300x or equivalent','16 GB RAM','Nvidia GTX 960; AMD R9 290 or equivalent','25 GB available space')


INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1237950/ss_4d4265ec83814642cc303d5fe312da8cf6d6a80f.600x338.jpg?t=1651767512','https://cdn.cloudflare.steamstatic.com/steam/apps/1237950/ss_625abcf051f814c2f009ac9322d4c470271fa0e2.116x65.jpg?t=1651767512','https://cdn.cloudflare.steamstatic.com/steam/apps/1237950/ss_6a84c15d3d4ecacdb36545be857d208d6c7d3e92.116x65.jpg?t=1651767512','https://cdn.cloudflare.steamstatic.com/steam/apps/1237950/ss_5b05cfc5e4e6a3f4bde51f2b20370e5f367bddf4.600x338.jpg?t=1651767512','Be the hero in the ultimate STAR WARS™ battle fantasy with STAR WARS™ Battlefront™ II: Celebration Edition!','https://cdn.cloudflare.steamstatic.com/steam/apps/256789731/movie480_vp9.webm?t=1592407744')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('64-bit Windows 10 or later','Processor (AMD): AMD FX 8350 Wraith Processor (Intel): Intel Core i7 6700 or equivalent','16 GB RAM','Graphics card (AMD): AMD Radeon™ RX 480 4GB Graphics card (NVIDIA): NVIDIA GeForce® GTX 1060 3GB','60 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/2381590/ss_aaac1bd5a3d4c433fa6b02ec176905344a1802a0.116x65.jpg?t=1688987288','https://cdn.cloudflare.steamstatic.com/steam/apps/2381590/ss_4b1b83bd94e2f25c1cf9956691b0bf9487db4d28.600x338.jpg?t=1688987288','https://cdn.cloudflare.steamstatic.com/steam/apps/2381590/ss_a423fac175e1fa35a17207ba69221552918ab1f0.600x338.jpg?t=1688987288','https://cdn.cloudflare.steamstatic.com/steam/apps/2381590/ss_a423fac175e1fa35a17207ba69221552918ab1f0.116x65.jpg?t=1688987288','Have you ever wanted to walk up to the clouds? Embark on an exciting journey in Only UP! Exploring a huge world full of secrets and mysteries, you have to get as high as possible, and the most interesting starts above the clouds...','https://cdn.cloudflare.steamstatic.com/steam/apps/256956205/movie480_vp9.webm?t=1688315411')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 8/10/11 (64-Bit)','Intel Core i5 10400 3.1 GHz or AMD Ryzen 5 2600x 3.1 GHz','16 GB RAM','NVIDIA GeForce RTX 3060 or equivalent','6 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/671860/ss_08558f0aa02d2c03c47971cfb39e4af207ac18ff.600x338.jpg?t=1686877598','https://cdn.cloudflare.steamstatic.com/steam/apps/671860/ss_b4175c430cc50636e44a9e6f07fa3a91bfe01548.600x338.jpg?t=1686877598','https://cdn.cloudflare.steamstatic.com/steam/apps/671860/ss_9bb1de4c1890e9df6062b4180abd55b6efe07c8d.600x338.jpg?t=1686877598','https://cdn.cloudflare.steamstatic.com/steam/apps/671860/ss_894fb4283c024f09e204baca4955c9f287ec7f42.600x338.jpg?t=1686877598','BattleBit Remastered is a low-poly, massive multiplayer FPS, supporting 254 players per server. Battle on a near-fully destructible map with various vehicles!','https://cdn.cloudflare.steamstatic.com/steam/apps/256951968/movie480_vp9.webm?t=1686350007')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 (x64) - Windows 11 (x64)','Intel Core i5 4th Generation and above','8 GB RAM','Geforce GTX 600 Series or equivalent or better','2 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1304930/ss_dcf2a8284d687f9319ac91a02b534dc91971754c.116x65.jpg?t=1684452998','https://cdn.cloudflare.steamstatic.com/steam/apps/1304930/ss_6efe75be88bdfe0100f4b67ffe7e1034f1cf0cfe.116x65.jpg?t=1684452998','https://cdn.cloudflare.steamstatic.com/steam/apps/1304930/ss_0576920dd310fd71cf63ff3035ff46137634febf.600x338.jpg?t=1684452998','https://cdn.cloudflare.steamstatic.com/steam/apps/1304930/ss_dc46aa1b812001788a915f9088148356a697b305.600x338.jpg?t=1684452998','Red Barrels invites you to experience mind-numbing terror, this time with friends. Whether you go through the trials alone or in teams, if you survive long enough and complete the therapy, Murkoff will happily let you leave… but will you be the same?','https://cdn.cloudflare.steamstatic.com/steam/apps/256947686/movie480_vp9.webm?t=1684432006')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('WIndows 10','Intel Core i7-6700K or AMD Ryzen 5 2600X','16 GB RAM','NVIDIA GeForce GTX 1660, 6 GB or AMD Radeon RX Vega 56, 8 GB','40 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1621690/ss_8fdb403db359d63c818708b001b39780721d53b2.116x65.jpg?t=1687352119','https://cdn.cloudflare.steamstatic.com/steam/apps/1621690/ss_a2bdd0f177ec445419ce2ce57b8dca33bc09ae41.116x65.jpg?t=1687352119','https://cdn.cloudflare.steamstatic.com/steam/apps/1621690/ss_53f6400b44e4f2a3b6a16174535642bf9209610e.600x338.jpg?t=1687352119','https://cdn.cloudflare.steamstatic.com/steam/apps/1621690/ss_3deb4319186649d1b12bda2e0770444cd244dfc9.600x338.jpg?t=1687352119','Explore an endless cavern of creatures, relics and resources in a mining sandbox adventure for 1-8 players. Mine, build, fight, craft and farm to unravel the mystery of the ancient Core.','https://cdn.cloudflare.steamstatic.com/steam/apps/256945924/movie480_vp9.webm?t=1683709050')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 64-bit','Intel Core i5-8400 / AMD Ryzen 7 2700X','8 GB RAM','GeForce GTX 1050 Ti / Radeon R9 280X','')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/2290180/ss_96d0ef08e986e2585fcb3123c11cd3cb72396c2e.600x338.jpg?t=1688149164','https://cdn.cloudflare.steamstatic.com/steam/apps/2290180/ss_8f137d08e4bbb72bb545ab74e553b7fc984c043e.600x338.jpg?t=1688149164','https://cdn.cloudflare.steamstatic.com/steam/apps/2290180/ss_f80da14ba30d3edf8553f46501cbce7b30539c03.600x338.jpg?t=1688149164','https://cdn.cloudflare.steamstatic.com/steam/apps/2290180/ss_70a70a700c320f7802652d4c9531dd011d849a15.600x338.jpg?t=1688149164','Jump into a massive multiplayer playground! Bike, ski, snowboard, or wingsuit across an open world sports paradise.','https://cdn.cloudflare.steamstatic.com/steam/apps/256956003/movie480_vp9.webm?t=1688149149')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 (64 bit only)','Intel i7-4790 / AMD Ryzen 5 1600','8 GB RAM','Nvidia GeForce GTX 1060 (6 GB) / AMD Radeon RX 570 (8 GB)','20 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/990080/ss_725bf58485beb4aa37a3a69c1e2baa69bf3e4653.600x338.jpg?t=1680647016','https://cdn.cloudflare.steamstatic.com/steam/apps/990080/ss_df93b5e8a183f7232d68be94ae78920a90de1443.116x65.jpg?t=1680647016','https://cdn.cloudflare.steamstatic.com/steam/apps/990080/ss_94058497bf0f8fabdde17ee8d59bece609a60663.116x65.jpg?t=1680647016','https://cdn.cloudflare.steamstatic.com/steam/apps/990080/ss_8e08976236d29b1897769257ac3c64e9264792a5.116x65.jpg?t=1680647016','Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world.','https://cdn.cloudflare.steamstatic.com/steam/apps/256930504/movie480_vp9.webm?t=1676412591')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('64-bit Windows 10','Intel Core i7-8700 (3.2Ghz) or AMD Ryzen 5 3600 (3.6 Ghz)','16 GB RAM','NVIDIA GeForce 1080 Ti or AMD Radeon RX 5700 XT or INTEL Arc A770','85 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1245620/ss_3aec1455923ef49f4e777c2a94dbcd0256f77eb0.116x65.jpg?t=1683618443','https://cdn.cloudflare.steamstatic.com/steam/apps/1245620/ss_b70e156adf9e40aed24c10fb352b7813586e7290.600x338.jpg?t=1683618443','https://cdn.cloudflare.steamstatic.com/steam/apps/1245620/ss_e80a907c2c43337e53316c71555c3c3035a1343e.116x65.jpg?t=1683618443','https://cdn.cloudflare.steamstatic.com/steam/apps/1245620/ss_ae44317e3bd07b7690b4d62cc5d0d1df30367a91.116x65.jpg?t=1683618443','THE NEW FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.','https://cdn.cloudflare.steamstatic.com/steam/apps/256889456/movie480_vp9.webm?t=1654109241')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10/11','INTEL CORE I7-8700K or AMD RYZEN 5 3600X','16 GB RAM','NVIDIA GEFORCE GTX 1070 8 GB or AMD RADEON RX VEGA 56 8 GB','60 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1939790/ss_0c472f98e15317d6402a39daa4db4695dc8f0ad6.600x338.jpg?t=1686192768','https://cdn.cloudflare.steamstatic.com/steam/apps/1939790/ss_acd60c50d90cef5870fa0b8f40c32bf24e058810.600x338.jpg?t=1686192768	','https://cdn.cloudflare.steamstatic.com/steam/apps/1939790/ss_99a2583d27bcbbf2a9a7dc8334e8046600941ab8.600x338.jpg?t=1686192768','https://cdn.cloudflare.steamstatic.com/steam/apps/1939790/ss_0b896399a8d71226f1ec3b3db76bb80b7881ef66.600x338.jpg?t=1686192768','Paper Bride 3 is a Chinese horror mystery puzzle game This is the third horror puzzle game from our team. This time the story takes place in Moshui Village, which is near Zangling Village, and Fulu City, a small town nearby.','https://cdn.cloudflare.steamstatic.com/steam/apps/256904889/movie480_vp9.webm?t=1662688611')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7sp1 or Windows 10','I3 or AMD equivalent or above','8 GB RAM','NVIDIA Geforce GTX560se or AMD Radeon equivalent or above','1 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1939790/ss_a54c5d317488cbbaacf47ffd7eea359d5fe6f6ea.600x338.jpg?t=1686192768','https://cdn.cloudflare.steamstatic.com/steam/apps/1939790/ss_d192b43f4f3a84bf05d8d004bf6b1ba7e1acd001.600x338.jpg?t=1686192768','https://cdn.cloudflare.steamstatic.com/steam/apps/1939790/ss_3918b8552fb6f0497a41dcbb01f6b9299766cd3b.600x338.jpg?t=1686192768','https://cdn.cloudflare.steamstatic.com/steam/apps/1939790/ss_3918b8552fb6f0497a41dcbb01f6b9299766cd3b.600x338.jpg?t=1686192768','Paper Bride 3 is a Chinese horror mystery puzzle game This is the third horror puzzle game from our team. This time the story takes place in Moshui Village, which is near Zangling Village, and Fulu City, a small town nearby.','https://cdn.cloudflare.steamstatic.com/steam/apps/256904914/movie480_vp9.webm?t=1662691483')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7sp1 or Windows 10','I3 or AMD equivalent or above','8 GB RAM','NVIDIA Geforce GTX560se or AMD Radeon equivalent or above','1 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1019931/ss_972d67e61d6a2ecbce52e75fbb76b949b4d77257.600x338.jpg?t=1641986247','https://cdn.cloudflare.steamstatic.com/steam/apps/1019931/ss_c0005eaa8d8caf4dc87a917ed525e2672c2be692.600x338.jpg?t=1641986247','https://cdn.cloudflare.steamstatic.com/steam/apps/1019931/ss_b6f25305794d9e6bb4d3f31c57702b445a93dab1.600x338.jpg?t=1641986247','https://cdn.cloudflare.steamstatic.com/steam/apps/1019931/ss_4c2e126da175f1a2df3e7aea43703f2b200190fd.600x338.jpg?t=1641986247','This content requires the base game Dark Deception on Steam in order to play.','https://cdn.cloudflare.steamstatic.com/steam/apps/256853113/movie480_vp9.webm?t=1632608763')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('64-bit Windows 7, Windows 8, or Windows 10','Intel Corei5-6600K/ AMD Ryzen 5 1600','16 GB RAM','Nvidia GeForce GTX 1060 3GB/ AMD Radeon RX 580 4GB','3 MB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1817490/ss_8d17052384504d09c1ad7a2d8aca4bf4e290b7f9.600x338.jpg?t=1683255244','https://cdn.cloudflare.steamstatic.com/steam/apps/1817490/ss_3ac2e87ee83eb8d716d20e2ff12a1b82241dd264.600x338.jpg?t=1683255244','https://cdn.cloudflare.steamstatic.com/steam/apps/1817490/ss_61d2a20ed52449fa2e585d3dc5a6a15cc62089cd.600x338.jpg?t=1683255244','https://cdn.cloudflare.steamstatic.com/steam/apps/1817490/ss_e54b2c14db53638e9313bce176401ad9dcb21f48.600x338.jpg?t=1683255244','This content requires the base game Poppy Playtime on Steam in order to play.','https://cdn.cloudflare.steamstatic.com/steam/apps/256881110/movie480_vp9.webm?t=1649699281')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10','Intel Core i5','12 GB RAM','Nvidia GeForce RTX 2060 Super / Radeon RX 5700 XT','20 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/617160/ss_c535c3d06124613f5caf82008b686589484d26e5.600x338.jpg?t=1544779603','https://cdn.cloudflare.steamstatic.com/steam/apps/617160/ss_9ed1d973aff6015b087d7dfcc2fb24747a803ffc.116x65.jpg?t=1544779603','https://cdn.cloudflare.steamstatic.com/steam/apps/617160/ss_8e26a35fa8169a9ce8124e5159c5d5f3f2e8f93b.116x65.jpg?t=1544779603','https://cdn.cloudflare.steamstatic.com/steam/apps/617160/ss_50f13e66ebd4efa88e9fca0496344a894bd4cd88.600x338.jpg?t=1544779603','Home Sweet Home is a first-person horror adventure game based on Thai myths and beliefs. The core gameplay focuses on storytelling and stealth to avoid perilous spirits hunting you. Moreover, few puzzles are added into the game, making gameplay more various.','https://cdn.cloudflare.steamstatic.com/steam/apps/256688885/movie480.webm?t=1498796282')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7 / 8 / 8.1 / 10','Intel Core i5','8 GB RAM','NVIDIA® GeForce® GTX 770 or better','11 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1938090/ss_892f9c8a7be3d758f39ecb90bccd1129c912f3cb.116x65.jpg?t=1687571108','https://cdn.cloudflare.steamstatic.com/steam/apps/1938090/ss_6b75b48844279eadc00918b7420f0c52703cb256.116x65.jpg?t=1687571108','https://cdn.cloudflare.steamstatic.com/steam/apps/1938090/ss_ecd2d05c58a778031c1533c1356fa63891839e0a.600x338.jpg?t=1687571108','https://cdn.cloudflare.steamstatic.com/steam/apps/1938090/ss_ecd2d05c58a778031c1533c1356fa63891839e0a.116x65.jpg?t=1687571108','Call of Duty®: Modern Warfare® II drops players into an unprecedented global conflict that features the return of the iconic Operators of Task Force 141.','https://cdn.cloudflare.steamstatic.com/steam/apps/256951745/movie480_vp9.webm?t=1686273391')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows® 10 64 Bit (latest update) or Windows® 11 64 Bit (latest update)','Intel® Core™ i5-6600K / Core™ i7-4770 or AMD Ryzen™ 5 1400','12 GB RAM','NVIDIA® GeForce® GTX 1060 or AMD Radeon™ RX 580 - DirectX 12.0 compatible system or Intel® Arc™ A770','125 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/307960/ss_0ae2ec209a42a5ab5155fda0130ae2245c24a2fe.600x338.jpg?t=1688724365','https://cdn.cloudflare.steamstatic.com/steam/apps/307960/ss_fea6826de21607a0d46918f2e734b0aeedd06fca.600x338.jpg?t=1688724365','https://cdn.cloudflare.steamstatic.com/steam/apps/307960/ss_a16ae32dcdc6381fc1a3b7063cef50b9338a1e87.600x338.jpg?t=1688724365','https://cdn.cloudflare.steamstatic.com/steam/apps/307960/ss_17adaaf32573df6f0fa5f5c8033aa14fb2295411.600x338.jpg?t=1688724365','IL-2 Sturmovik: Battle of Stalingrad is the continuation of the legendary IL-2 Sturmovik series that has set the standard for PC combat flight games for more than ten years. This new entry into the series will offer virtual pilots an even more accurate simulation of the most famous air battles.','https://cdn.cloudflare.steamstatic.com/steam/apps/256749442/movie480.webm?t=1568783714')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Requires a 64-bit processor and operating system','','','','')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/218620/ss_34fae5a836f589c13d08262657b292f028cd87b1.600x338.jpg?t=1688973656','https://cdn.cloudflare.steamstatic.com/steam/apps/218620/ss_2799a1fde932e739138de91f0910ada013ddfca3.116x65.jpg?t=1688973656','https://cdn.cloudflare.steamstatic.com/steam/apps/218620/ss_b26f1852b68ab0af7fdd4932b1c9f78dc87a0325.600x338.jpg?t=1688973656','https://cdn.cloudflare.steamstatic.com/steam/apps/218620/ss_67979091e0441e3df7aa885eaa107e2032973869.600x338.jpg?t=1688973656','PAYDAY 2 is an action-packed, four-player co-op shooter that once again lets gamers don the masks of the original PAYDAY crew - Dallas, Hoxton, Wolf and Chains - as they descend on Washington DC for an epic crime spree.','https://cdn.cloudflare.steamstatic.com/steam/apps/256701266/movie480.webm?t=1572598641')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10','2.3 GHz Intel Quad Core Processor','8 GB RAM','Nvidia & AMD (1GB VRAM)','83 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/312660/ss_4297ec85a725ee3558c579f831ffc34958ac24cd.600x338.jpg?t=1681207252','https://cdn.cloudflare.steamstatic.com/steam/apps/312660/ss_b9f5649b2ee2fea0f4c81d97968353aa0ca843f0.600x338.jpg?t=1681207252','https://cdn.cloudflare.steamstatic.com/steam/apps/312660/ss_72dca23e73e741651caef21ca6a23252acd17156.600x338.jpg?t=1681207252','https://cdn.cloudflare.steamstatic.com/steam/apps/312660/ss_8fbb6d2d4738f7825ec8b51d59ffc7e2bc11f186.600x338.jpg?t=1681207252','Discover unrivalled sniping freedom in the largest and most advanced World War 2 shooter ever built. Experience tactical third-person combat, gameplay choice and epic longshots across gigantic levels as you liberate wartime Italy from the grip of Fascism.','https://cdn.cloudflare.steamstatic.com/steam/apps/256679138/movie480.webm?t=1486467065')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('64-bit Windows 7, 64-bit Windows 8.1 or 64-bit Windows 10','Intel CPU Core i7-3770 or AMD equivalent',' 8 GB RAM','Nvidia GPU GeForce GTX 970 / AMD GPU Radeon RX 480','')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/534380/ss_84ca00f3d3b48e0a1fa6b96b17f02a65f1447950.600x338.jpg?t=1688998367','https://cdn.cloudflare.steamstatic.com/steam/apps/534380/ss_fe9a52a60f4739a44cbd8b0c0856033ea6996624.116x65.jpg?t=1688998367','https://cdn.cloudflare.steamstatic.com/steam/apps/534380/ss_6b8d4cc1f7d657745cfd7aab941d3be0067dec00.600x338.jpg?t=1688998367','https://cdn.cloudflare.steamstatic.com/steam/apps/534380/ss_d7906b3946d4857d28c159e7a1555a003a4426f8.116x65.jpg?t=1688998367','Humanity is fighting a losing battle against the virus. Experience a post-apocalyptic open world overrun by hordes of zombies, where your parkour and combat skills are key to survival. Traverse the City freely during the day, but watch the monsters take over during the night.','https://cdn.cloudflare.steamstatic.com/steam/apps/256873177/movie480_vp9.webm?t=1644840797')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows® 10','AMD / Intel CPU running at 3.6 GHz or higher: AMD Ryzen 5 3600X or Intel i5-8600K or newer','16 GB RAM','NVIDIA® GeForce RTX™ 2060 6GB or AMD RX Vega 56 8GB or newer','60 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1517290/ss_235a1ad9748b981f6ccf4bc4a1965092f6949b2e.600x338.jpg?t=1689084188','https://cdn.cloudflare.steamstatic.com/steam/apps/1517290/ss_01837d07d7c85ddc5eeee62053e392e649fcfacb.600x338.jpg?t=1689084188','https://cdn.cloudflare.steamstatic.com/steam/apps/1517290/ss_95e76a9546ed7abeab442d2f175c2245514d16bf.600x338.jpg?t=1689084188','https://cdn.cloudflare.steamstatic.com/steam/apps/1517290/ss_b2db55aa86228dc9bb4ece0fbd3a6c919a63d4c3.600x338.jpg?t=1689084188','Never back down in Season 5: New Dawn. Battlefield™ 2042 is a first-person shooter that marks the return to the iconic all-out warfare of the franchise.','https://cdn.cloudflare.steamstatic.com/steam/apps/256951317/movie480_vp9.webm?t=1686130077')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('64-bit Windows 10','AMD Ryzen 7 2700X, Intel Core i7 4790','16 GB RAM','AMD Radeon RX 6600 XT, Nvidia GeForce RTX 3060','100 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/960090/ss_a35fc76519036fbf96182927a91e7f03e2e1223e.600x338.jpg?t=1688681768','https://cdn.cloudflare.steamstatic.com/steam/apps/960090/ss_95fbb8514c642ee35c9d1be3088a99f77161bb83.116x65.jpg?t=1688681768','https://cdn.cloudflare.steamstatic.com/steam/apps/960090/ss_b6b18dcde4579eb7be9945a5e74576d7d7e114d6.116x65.jpg?t=1688681768','https://cdn.cloudflare.steamstatic.com/steam/apps/960090/ss_d2f93f02857105d608e928c7bd7556344149e34b.600x338.jpg?t=1688681768','The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.','https://cdn.cloudflare.steamstatic.com/steam/apps/256939310/movie480_vp9.webm?t=1686097247')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 (64bit)','2Ghz or better (x86-64','8192 MB RAM','penGL 2.0 compatible, ATI, Nvidia or Intel HD','4096 MB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/261550/ss_1ab88f5c0198a16f75db23af8477811c0996b864.600x338.jpg?t=1671213711','https://cdn.cloudflare.steamstatic.com/steam/apps/261550/ss_4c9270723717c633c9ec16fa394dab82a071f41c.600x338.jpg?t=1671213711','https://cdn.cloudflare.steamstatic.com/steam/apps/261550/ss_9682cf43bf605e9c655c1dbb4b23d1aac73165dc.600x338.jpg?t=1671213711','https://cdn.cloudflare.steamstatic.com/steam/apps/261550/ss_569257e92fd31d58a6fe08053de637071b4518d3.600x338.jpg?t=1671213711','A strategy/action RPG. Create a character, engage in diplomacy, craft, trade and conquer new lands in a vast medieval sandbox. Raise armies to lead into battle and command and fight alongside your troops in massive real-time battles using a deep but intuitive skill-based combat system.','https://cdn.cloudflare.steamstatic.com/steam/apps/256910718/movie480_vp9.webm?t=1666681395')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 (64-bit only)','Intel® Core™ i5-9600K / AMD Ryzen™ 5 3600X','8 GB RAM','NVIDIA® GeForce® GTX 1060 3GB / AMD Radeon™ RX 580','60 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/201270/ss_6054b66e4b0b3beb25abd977526df59bdde0f58e.116x65.jpg?t=1603131194','https://cdn.cloudflare.steamstatic.com/steam/apps/201270/ss_03704ee5652efd1c4b95397a712f4dfd951629a0.600x338.jpg?t=1603131194','https://cdn.cloudflare.steamstatic.com/steam/apps/201270/ss_333be0aca0dec5c08ab6556bb0b597afb6509c10.600x338.jpg?t=1603131194','https://cdn.cloudflare.steamstatic.com/steam/apps/201270/ss_333be0aca0dec5c08ab6556bb0b597afb6509c10.600x338.jpg?t=1603131194','Total War: SHOGUN 2 is the perfect mix of real-time and turn-based strategy gaming for newcomers and veterans alike.','')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7 / Vista / XP','2nd Generation Intel Core i5 processor (or greater), or AMD equivalent','2GB RAM (XP), 4GB RAM (Vista / Windows7)','AMD Radeon HD 5000 and 6000 series graphics card or equivalent DirectX 11 compatible card','32GB free hard disk space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/553310/ss_c3397116e42ec9dae1dbc5506247b035363e4e46.600x338.jpg?t=1667229780','https://cdn.cloudflare.steamstatic.com/steam/apps/553310/ss_65f94bc9956c1d9f3d5d189b88643097582376fc.600x338.jpg?t=1667229780','https://cdn.cloudflare.steamstatic.com/steam/apps/553310/ss_5205636892c47da607fc973e6700724d319ffc95.600x338.jpg?t=1667229780','https://cdn.cloudflare.steamstatic.com/steam/apps/553310/ss_dcb022877a87f11d683c099652ad3a32a3adb968.600x338.jpg?t=1667229780','Banging beats and mad style, Lethal League Blaze is the most intense ball game you can play online with up to 4 players.','https://cdn.cloudflare.steamstatic.com/steam/apps/256728369/movie480.webm?t=1536591035')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10','Intel Core i5 3.2GHz or AMD 4.0GHz or better','8 GB RAM','NVIDIA GeForce GTX 760 or AMD R9 270X or better','4 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1563180/ss_75ac8c8fcc30a59ff7a6bb19aec690915cb01764.600x338.jpg?t=1688201539','https://cdn.cloudflare.steamstatic.com/steam/apps/1563180/ss_afdb6f9f988fb5cdf0cb693a9af59c38ae075a41.600x338.jpg?t=1688201539','https://cdn.cloudflare.steamstatic.com/steam/apps/1563180/ss_305a761bba7752cac71abc211de6ecdcd1ba5fc3.600x338.jpg?t=1688201539','https://cdn.cloudflare.steamstatic.com/steam/apps/1563180/ss_ff45ed78f3f7dc6c433505468af3c1adbc255abc.600x338.jpg?t=1688201539','Internet Cafe Simulator 2 is an extremely comprehensive and detailed internet cafe business simulation game.','https://cdn.cloudflare.steamstatic.com/steam/apps/256861728/movie480_vp9.webm?t=1637690044')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10','2.5 GHz Dual Core CPU','6 GB RAM','Geforce GTX 970/Radeon RX470 or better','7 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/641320/ss_57dbadff3491ec272ee82715cac500d7820d9a9b.600x338.jpg?t=1689143817','https://cdn.cloudflare.steamstatic.com/steam/apps/641320/ss_c7c9369a21477d518f7247a5f2ecb3550b642c63.600x338.jpg?t=1689143817','https://cdn.cloudflare.steamstatic.com/steam/apps/641320/ss_aa88d850c4f72a663bb43452953f5c6a0b7cf76f.600x338.jpg?t=1689143817','https://cdn.cloudflare.steamstatic.com/steam/apps/641320/ss_328db37f9557e6b384a0fdd849c44c6c0d1614b0.600x338.jpg?t=1689143817','Play one of the best cooking games! Take control of a highly polished, realistic kitchen equipped with all kinds of utensils and stands. Unlock and master over 80 recipes or use dozens of lifelike ingredients to cook everything you like. A simulator spiced up with a dash of real-life physics!','https://cdn.cloudflare.steamstatic.com/steam/apps/256752737/movie480.webm?t=1559838440')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 x64','i5 4570 / Ryzen 7 1700x','16 GB RAM','GTX 1060 6GB / RX 480 GB 8GB','6 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1244460/ss_c78eddae3abebf2fadcf02dd72219e1bb9041406.600x338.jpg?t=1688134336','https://cdn.cloudflare.steamstatic.com/steam/apps/1244460/ss_f22feb0cee0172cd3b9d1b6c845b90d911ee8858.600x338.jpg?t=1688134336','https://cdn.cloudflare.steamstatic.com/steam/apps/1244460/ss_96527037800b404246c4e508062c925eabae20a6.600x338.jpg?t=1688134336','https://cdn.cloudflare.steamstatic.com/steam/apps/1244460/ss_e2043f89661bf4da80628e6ab1e97b0a67f1c7ed.600x338.jpg?t=1688134336','Jurassic World Evolution 2 is the much-anticipated sequel to Frontier’s highly successful Jurassic World Evolution. This bold new era in the Jurassic World Evolution game franchise builds upon the ground-breaking and immersive 2018 management simulation.','https://cdn.cloudflare.steamstatic.com/steam/apps/256859644/movie480_vp9.webm?t=1686217856')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 64bit (min version 1809)','Intel i7-5775C/AMD Ryzen 5 1500X','12 GB RAM','(6GB VRAM) NVIDIA GeForce GTX 1070 / AMD RX 570 (8GB)','14 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1239320/ss_21ed12ae5a0a5ce04cbf0363f6c9536a262c3017.600x338.jpg?t=1688647352','https://cdn.cloudflare.steamstatic.com/steam/apps/1239320/ss_12d739fe980f3e5e375d995ab05980109a2d9082.600x338.jpg?t=1688647352','https://cdn.cloudflare.steamstatic.com/steam/apps/1239320/ss_47f146e16fba5ea0bbb3dcec7df69b17042d4ac1.600x338.jpg?t=1688647352','https://cdn.cloudflare.steamstatic.com/steam/apps/1239320/ss_a4ab5869bcb92a801679a2ef25c191a843740ed9.600x338.jpg?t=1688647352','In Animal Shelter, your main target is to make your four-legged friends happy. Pet them, hand out treats, play with toys - and they will pay you back with great trust. Get to know the animals well enough to find them the best home! Dont wait any longer, open your animal shelter now!','https://cdn.cloudflare.steamstatic.com/steam/apps/256879144/movie480_vp9.webm?t=1658155466')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7 64 Bit / Windows 8 64 Bit / Windows 10 64 Bit','Intel Core i5 3.4 GHz','12 GB RAM','NVidia GeForce GTX 970','12 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/341800/ss_4c429dd69d9682727f15b87549bbee6b7a11df77.600x338.jpg?t=1688998180','https://cdn.cloudflare.steamstatic.com/steam/apps/341800/ss_11c9963bc5d93a2c31857c94760305208fc9b023.600x338.jpg?t=1688998180','https://cdn.cloudflare.steamstatic.com/steam/apps/341800/ss_cfaf92410612fef91cde9fe27f3cdcbdcf5a1380.600x338.jpg?t=1688998180','https://cdn.cloudflare.steamstatic.com/steam/apps/341800/ss_55f22f9996c327c281d241ed09d43c74337d7e30.600x338.jpg?t=1688998180','Find yourself trapped alone in a room with a ticking time bomb. Your friends have the manual to defuse it, but they can not see the bomb, so you are going to have to talk it out – fast!','https://cdn.cloudflare.steamstatic.com/steam/apps/256764724/movie480.webm?t=1571943664')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7 or higher','','2 GB RAM','','')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1509960/ss_a2075d021825129e4b297d217f517cc8ea410d45.600x338.jpg?t=1627200665','https://cdn.cloudflare.steamstatic.com/steam/apps/1509960/ss_4c0452c49441d29f962b9b5f15299edff26a5d0a.600x338.jpg?t=1627200665','https://cdn.cloudflare.steamstatic.com/steam/apps/1509960/ss_f356434b667dd6f5ff948a87d4d8486d29e31b36.600x338.jpg?t=1627200665','https://cdn.cloudflare.steamstatic.com/steam/apps/1509960/ss_d54c6fd82d8c804939d136356eda364295a788cd.600x338.jpg?t=1627200665','PICO PARK is a cooperative local/online multiplay action puzzle game for 2-8 players.','https://cdn.cloudflare.steamstatic.com/steam/apps/256829932/movie480_vp9.webm?t=1618749324')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7 or later 64bit','4 GB RAM','2nd Generation Intel Core HD Graphics (2000/3000), 512MB','','100 MB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/641990/ss_797e85fff36b0c2f5da3caa5028132ab52f3c97c.600x338.jpg?t=1668604436','https://cdn.cloudflare.steamstatic.com/steam/apps/641990/ss_2bb6149a553bbc28c85a624f7628f18fb1573860.600x338.jpg?t=1668604436','https://cdn.cloudflare.steamstatic.com/steam/apps/641990/ss_75c9e0c479c4fb6cc2a40686685ed26d0488f332.600x338.jpg?t=1668604436','https://cdn.cloudflare.steamstatic.com/steam/apps/641990/ss_4c06641e551c04e72abb54d3c190233ff02c05ca.600x338.jpg?t=1668604436','Craft, Steal, Brawl and Escape! It’s time to bust out of the toughest prisons in the world as you return to the life of an inmate in The Escapists 2, now with multiplayer! Have you got what it takes to escape?','https://cdn.cloudflare.steamstatic.com/steam/apps/256694499/movie480.webm?t=1504542318')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7/8.1/10 (64-bit versions)',' i5-2500k@3.3GHz, AMD FX 6300 3.5GHz','4 GB RAM',' GeForce GTX 750, AMD R7 370','4 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1426210/ss_4a62bc8fa398fc5b2094a6225dc5ecff9485f824.600x338.jpg?t=1679951279','https://cdn.cloudflare.steamstatic.com/steam/apps/1426210/ss_fdac523e3ea4d2f32a44449bb8c224857563bd7d.600x338.jpg?t=1679951279','https://cdn.cloudflare.steamstatic.com/steam/apps/1426210/ss_6e987a0678b013bfd0073a9ac4703e1f04ca4dea.600x338.jpg?t=1679951279','https://cdn.cloudflare.steamstatic.com/steam/apps/1426210/ss_3e59753eefaba9a7704a18e902b48e8d38e95e0b.600x338.jpg?t=1679951279','Embark on the craziest journey of your life in It Takes Two. Invite a friend to join for free with Friend’s Pass and work together across a huge variety of gleefully disruptive gameplay challenges. Winner of GAME OF THE YEAR at the Game Awards 2021.','https://cdn.cloudflare.steamstatic.com/steam/apps/256827093/movie480_vp9.webm?t=1616514535')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 8.1 64-bit or Windows 10 64-bit','Intel Core i5 3570K or AMD Ryzen 3 1300x','16 GB RAM','Nvidia GeForce GTX 980 or AMD R9 290X','50 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1332010/ss_3fdd04a5418293864bf82d33c75f833121e63804.600x338.jpg?t=1688314132','https://cdn.cloudflare.steamstatic.com/steam/apps/1332010/ss_2221af260c64362fdc835a9dca65f6f1d1192b25.600x338.jpg?t=1688314132','https://cdn.cloudflare.steamstatic.com/steam/apps/1332010/ss_e8f0cbd5efdba352e89c4cfcee3fe991a1e1be8a.600x338.jpg?t=1688314132','https://cdn.cloudflare.steamstatic.com/steam/apps/1332010/ss_88e209a90c2039fa76bca6fa08c641365be38d50.600x338.jpg?t=1688314132','Lost, alone and separated from family, a stray cat must untangle an ancient mystery to escape a long-forgotten cybercity and find their way home.','https://cdn.cloudflare.steamstatic.com/steam/apps/256896952/movie480_vp9.webm?t=1658250380')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10','Intel Core i5-8400 | AMD Ryzen 5 2600','8 GB RAM','NVIDIA GeForce GTX 780, 3 GB | AMD Radeon R9 290X, 4 GB',' 10 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/774361/ss_933510ac0fd13c6bd4ecc4c187e0506d520f2e70.600x338.jpg?t=1681921922','https://cdn.cloudflare.steamstatic.com/steam/apps/774361/ss_bd57bcb1e9183cbea61339727a97bcc5206677b2.600x338.jpg?t=1681921922','https://cdn.cloudflare.steamstatic.com/steam/apps/774361/ss_b74f57919e88283fac75389e76ead2fed73997e5.600x338.jpg?t=1681921922','https://cdn.cloudflare.steamstatic.com/steam/apps/774361/ss_770720a3db9408ae7ae6625ba157bfb9195a3a68.600x338.jpg?t=1681921922','Blasphemous is a brutal action-platformer with skilled hack’n slash combat set in the nightmare world of Cvstodia. Explore, upgrade your abilities, and perform savage executions on the hordes of enemies that stand between you and your quest to break eternal damnation.','https://cdn.cloudflare.steamstatic.com/steam/apps/256862734/movie480_vp9.webm?t=1639048728')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10','Intel Core i5-750 or AMD Phenom II x4 945','4 GB RAM','GeForce GTX 650 or Radeon HD 5770','4 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1475810/ss_db65ea9601d4b855c013e713c4de078fca61d0f7.600x338.jpg?t=1681316334','https://cdn.cloudflare.steamstatic.com/steam/apps/1475810/ss_db65ea9601d4b855c013e713c4de078fca61d0f7.600x338.jpg?t=1681316334','https://cdn.cloudflare.steamstatic.com/steam/apps/1475810/ss_b62b51519d10a281d2d97a636e6952005b65fa32.600x338.jpg?t=1681316334','https://cdn.cloudflare.steamstatic.com/steam/apps/1475810/ss_67c79411e5b14f370cefce560e84553027d210db.600x338.jpg?t=1681316334','Tokyos population has vanished, and deadly supernatural forces prowl the streets. Use an arsenal of elemental abilities to unravel the truth behind the disappearance and save Tokyo.','https://cdn.cloudflare.steamstatic.com/steam/apps/256940816/movie480_vp9.webm?t=1681311601')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('64bit Windows10 (version 1909 or higher)','Core i7 6700 @3.4ghz / Ryzen 5 2600','16 GB RAM','GTX1080 / RX5600XT / Arc A750* (VRAM 6GB or higher)','26 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1472560/ss_0480024d03a454dbd12178b35b5b10e8619c83e1.600x338.jpg?t=1683890027','https://cdn.cloudflare.steamstatic.com/steam/apps/1472560/ss_1afa229bd43a56ddc114983fb6e2c824f1dd3c3d.600x338.jpg?t=1683890027','https://cdn.cloudflare.steamstatic.com/steam/apps/1472560/ss_30de2e5d50bcb4a0460f5ef6858019665b9bc8d9.600x338.jpg?t=1683890027','https://cdn.cloudflare.steamstatic.com/steam/apps/1472560/ss_448c5e50d0f663660dceb92279f0480b1a55806b.600x338.jpg?t=1683890027','I Am Fish is a charming, physics-based adventure starring four intrepid fish friends, forcibly separated from their home in a pet shop fish tank. Swim, fly, roll and chomp your way to the open ocean in a bid for freedom and to re-unite once again.','https://cdn.cloudflare.steamstatic.com/steam/apps/256854603/movie480_vp9.webm?t=1633532608')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 x64','Intel Core i7-6700 (8 * 3400) or equivalent','12 GB RAM','GeForce RTX 2060 Super (6144VRAM)','12 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1225570/ss_12f19e24d27a444d15d86e54a7613e072736426e.116x65.jpg?t=1633006815','https://cdn.cloudflare.steamstatic.com/steam/apps/1225570/ss_024a11b37d7f53675305b7c1dcab374edef90501.600x338.jpg?t=1633006815','https://cdn.cloudflare.steamstatic.com/steam/apps/1225570/ss_b64105f8f5e5632112209fe5be22f8801afc0409.600x338.jpg?t=1633006815','https://cdn.cloudflare.steamstatic.com/steam/apps/1225570/ss_7839b4bf192afd7b081335311aee5ffa470dc262.600x338.jpg?t=1633006815','When you cut ties to the past, new bonds form. Build relationships with other Yarnys in local co-op or as a single player, fostering friendship and support as you journey together.','https://cdn.cloudflare.steamstatic.com/steam/apps/256782730/movie480_vp9.webm?t=1591282581')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7 64-bit, 8.1 64-bit OR Windows 10 64-bit','Intel i5 2300 @ 2.8GHz OR AMD FX 6100 @ 3.3 GHz','6 GB RAM','ATI Radeon R9 270 OR Nvidia GTX 670',' 8 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/597820/ss_4b97632576bb60f0d054cc5a3c358ab6e8ef4b81.1920x1080.jpg?t=1664962616','https://cdn.cloudflare.steamstatic.com/steam/apps/597820/ss_fa1b23e67a75d8e58cae0621a3a465b790e12535.1920x1080.jpg?t=1664962616','https://cdn.cloudflare.steamstatic.com/steam/apps/597820/ss_e3529eca99bde58e8ea506c02d5b89ae14f8b43c.600x338.jpg?t=1664962616','https://cdn.cloudflare.steamstatic.com/steam/apps/597820/ss_c90cb58d38bfbcc79618185427f8790a2af0568b.600x338.jpg?t=1664962616','BIOMUTANT® is an open-world, post-apocalyptic Kung-Fu fable RPG, with a unique martial arts styled combat system allowing you to mix melee, shooting and mutant ability action.','https://cdn.cloudflare.steamstatic.com/steam/apps/256693352/movie480.webm?t=1504602804')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES (' Windows 10 (64bit)','AMD Ryzen 5 1600 or Intel Core i7-6700K or newer running at 3.2 GHz or higher','16 GB RAM','6 GB Direct3D 11 capable video card - GeForce GTX 1660Ti or Radeon RX 590','25 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/251570/ss_fab3d39d4fdcab63df04a5e7bb69b5c0f81a0896.600x338.jpg?t=1688057019','https://cdn.cloudflare.steamstatic.com/steam/apps/251570/ss_cb37f3a4226d16fbb0e4681605ef592acba3077f.600x338.jpg?t=1688057019','https://cdn.cloudflare.steamstatic.com/steam/apps/251570/ss_573fbb7a06c0b269de2c1e562b0129412f42792f.600x338.jpg?t=1688057019','https://cdn.cloudflare.steamstatic.com/steam/apps/251570/ss_66ab2c612cb28b4b61974bcb3380a69274c4c127.600x338.jpg?t=1688057019','7 Days to Die is an open-world game that is a unique combination of first-person shooter, survival horror, tower defense, and role-playing games. Play the definitive zombie survival sandbox RPG that came first. Navezgane awaits!','https://cdn.cloudflare.steamstatic.com/steam/apps/256662781/movie480.webm?t=1460433292')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7 or higher (64-bit)','3.2 Ghz Quad Core CPU or faster','12 GB RAM','4 GB Dedicated Memory','15 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/495420/ss_b57cdaca2669c8bb24db0969c11967317743be5a.600x338.jpg?t=1684947123','https://cdn.cloudflare.steamstatic.com/steam/apps/495420/ss_550d2c81a7905ff88a3a766363a96175a080dec9.600x338.jpg?t=1684947123','https://cdn.cloudflare.steamstatic.com/steam/apps/495420/ss_08879cee09f10d4deb71509e6057fd537d4603fb.116x65.jpg?t=1684947123','https://cdn.cloudflare.steamstatic.com/steam/apps/495420/ss_0279d14c8df9bdd9c9cb1f1d75b3e3a039f3e0f2.600x338.jpg?t=1684947123','The dead have risen and civilization has fallen. Now it is up to you to gather survivors, scavenge for resources and build a community in a post-apocalyptic world – a world where you define what it means to survive in this ultimate zombie survival simulation.','https://cdn.cloudflare.steamstatic.com/steam/apps/256850041/movie480_vp9.webm?t=1652225679')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 64-bit','Intel i5 4570 @ 3.2Ghz / AMD FX-8350','16 GB RAM','NVIDIA GeForce GTX 1650 4GB / AMD Radeon R9 380','30 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/632360/ss_dc777b5c583794c99440b196cd1d26884fb1720b.116x65.jpg?t=1660063598','https://cdn.cloudflare.steamstatic.com/steam/apps/632360/ss_328d6fcb223f848c2a1047bb86702c4175d92317.600x338.jpg?t=1660063598','https://cdn.cloudflare.steamstatic.com/steam/apps/632360/ss_a3f57f281813cb51cb5d919701470acb962ff297.600x338.jpg?t=1660063598','https://cdn.cloudflare.steamstatic.com/steam/apps/632360/ss_2bb49071317f7b241a527cf6e7aabd2cb6af055b.600x338.jpg?t=1660063598','Escape a chaotic alien planet by fighting through hordes of frenzied monsters – with your friends, or on your own. Combine loot in surprising ways and master each character until you become the havoc you feared upon your first crash landing.','https://cdn.cloudflare.steamstatic.com/steam/apps/256827307/movie480_vp9.webm?t=1616688273')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7 or newer, 64-bit','Intel Core i5-4670K / AMD Ryzen 5 1500X','4 GB RAM','GTX 680 / AMD HD 7970','4 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/ss_80bbb5ea187cc422012f7a84e694f20f87a26862.600x338.jpg?t=1684177712','https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/ss_364f3048399fcb95df5e878c708c94e934cd53d4.600x338.jpg?t=1684177712','https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/ss_4a1a39d5559909424ed36414070477a96c91e92c.600x338.jpg?t=1684177712','https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/ss_8d958e566d5315463d099b21eae729d0f462caad.600x338.jpg?t=1684177712','Ride and fight into a deadly, post pandemic America. Play as Deacon St. John, a drifter and bounty hunter who rides the broken road, fighting to survive while searching for a reason to live in this open-world action-adventure game.','https://cdn.cloudflare.steamstatic.com/steam/apps/256835018/movie480_vp9.webm?t=1621341084')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 64-bits','Intel Core i7-4770K@3.5GHz or Ryzen 5 1500X@3.5GHz','16 GB RAM','Nvidia GeForce GTX 1060 (6 GB) or AMD Radeon RX 580 (8 GB)','70 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/412020/ss_23815433fdd4a63064da79222fdefb569eeafaba.600x338.jpg?t=1669390585','https://cdn.cloudflare.steamstatic.com/steam/apps/412020/ss_7ef17676a804b0d646c38583ba0f68f33b3f3d9e.600x338.jpg?t=1669390585','https://cdn.cloudflare.steamstatic.com/steam/apps/412020/ss_bd875dbf865e70cda73a7cd6b132cadacfdb768b.600x338.jpg?t=1669390585','https://cdn.cloudflare.steamstatic.com/steam/apps/412020/ss_f0297eacbfb4266f311a8cb4137e4ef8b7cdd00b.600x338.jpg?t=1669390585','Flee the shattered ruins of the Moscow Metro and embark on an epic, continent-spanning journey across the post-apocalyptic Russian wilderness. Explore vast, non-linear levels, lose yourself in an immersive, sandbox survival experience, and follow a thrilling story-line that spans an entire year in the','https://cdn.cloudflare.steamstatic.com/steam/apps/256833673/movie480_vp9.webm?t=1622105831')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10','Intel Core i7-4770k or equivalent','8 GB RAM','GeForce GTX 1070 / GeForce RTX 2060 / AMD RX VEGA 56','59 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/298110/ss_738eb6ad93238c22b8042074119032fb3d0cb5e0.600x338.jpg?t=1682464310','https://cdn.cloudflare.steamstatic.com/steam/apps/298110/ss_2e7b8e01e12b4932b83b802318d8aae5eb59bacb.600x338.jpg?t=1682464310','https://cdn.cloudflare.steamstatic.com/steam/apps/298110/ss_bc4db88cc60dbbf1b33347ea7a84752f1e256480.600x338.jpg?t=1682464310','https://cdn.cloudflare.steamstatic.com/steam/apps/298110/ss_ba2f250b4986a7b6aa5133bba13b2004c410d68b.600x338.jpg?t=1682464310	','Hidden in the towering Himalayas lies Kyrat, a country steeped in tradition and violence. You are Ajay Ghale. Traveling to Kyrat to fulfill your mother’s dying wish, you find yourself caught up in a civil war to overthrow the oppressive regime of dictator Pagan Min.','')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows® 8 / Windows® 8.1 / (64-bit only)','2.5 GHz Intel® Core™ i5-2400S or 4.0 GHz AMD FX-8350 or better','8 GB RAM','NVIDIA GeForce GTX 680 or AMD Radeon R9 290X or better (2 GB VRAM)','30 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1562430/ss_e964290b6a6a6941e299ba5be00fd3d98aec6d06.600x338.jpg?t=1688649425','https://cdn.cloudflare.steamstatic.com/steam/apps/1562430/ss_9529104cde1af2ffbb715cab42bbb3012fb9b7d8.600x338.jpg?t=1688649425','https://cdn.cloudflare.steamstatic.com/steam/apps/1562430/ss_d4d4b14c5cd071307e27b4e9737f23f28b096248.600x338.jpg?t=1688649425','https://cdn.cloudflare.steamstatic.com/steam/apps/1562430/ss_70f88014423ed93eaa111c0d0daca2c500f76908.600x338.jpg?t=1688649425','DREDGE is a single-player fishing adventure with a sinister undercurrent. Sell your catch, upgrade your boat, and dredge the depths for long-buried secrets. Explore a mysterious archipelago and discover why some things are best left forgotten.','https://cdn.cloudflare.steamstatic.com/steam/apps/256956824/movie480_vp9.webm?t=1688649417')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10','Intel Core i5-2550K | AMD FX-8370','6 GB RAM','Nvidia GTS 450 1GB | Radeon HD 5770 1GB','2 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/108600/ss_eb1862af5109e4658e2538d897cbd16b87ad1818.600x338.jpg?t=1679306018','https://cdn.cloudflare.steamstatic.com/steam/apps/108600/ss_7300ecc70342b6fcbdf39b6f9ff4c408066f8fc2.600x338.jpg?t=1679306018','https://cdn.cloudflare.steamstatic.com/steam/apps/108600/ss_eca8be032b3f5508bf5bea74cfbc823a4df047ce.600x338.jpg?t=1679306018','https://cdn.cloudflare.steamstatic.com/steam/apps/108600/ss_d4a0f78dc94273c7f0eedc186569efc091387066.600x338.jpg?t=1679306018','Project Zomboid is the ultimate in zombie survival. Alone or in MP: you loot, build, craft, fight, farm and fish in a struggle to survive. A hardcore RPG skillset, a vast map, massively customisable sandbox and a cute tutorial raccoon await the unwary. So how will you die? All it takes is a bite..','https://cdn.cloudflare.steamstatic.com/steam/apps/256865885/movie480_vp9.webm?t=1639992657')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10, 64 Bit','Intel 2.77GHz Quad-core','8Gb Ram','','')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/633230/ss_c13b3cadae06f976be610acc749ca9d7870b5d91.600x338.jpg?t=1688156382	','https://cdn.cloudflare.steamstatic.com/steam/apps/633230/ss_8ff5d5db6682e51f5542026f457fa63619e57ab1.600x338.jpg?t=1688156382','https://cdn.cloudflare.steamstatic.com/steam/apps/633230/ss_aee57b82c12b83f5a0e11c774c1ae5bc9fea235f.600x338.jpg?t=1688156382','https://cdn.cloudflare.steamstatic.com/steam/apps/633230/ss_c4db8eb9899c7e9a652e3121b89e4a5d5fb0a3d6.600x338.jpg?t=1688156382','Battle as a team of 4 to compete against other teams online! Graphically, SHINOBI STRIKER is also built from the ground up in a completely new graphic style. Lead your team and fight online to see who the best ninjas are!','https://cdn.cloudflare.steamstatic.com/steam/apps/256827150/movie480_vp9.webm?t=1616549475')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7/8.1/10','Intel Core i5-2500K @ 3.30GHz / AMD FX-6300 Six-Core','6 GB RAM','AMD Radeon R9 270X / R7 265 2 GB / Nvidia GeForce GTX 660 2 GB','40 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1593500/ss_93a3ca63aa2cd8c675bbb6430324ee3f2d44b845.600x338.jpg?t=1650554420','https://cdn.cloudflare.steamstatic.com/steam/apps/1593500/ss_3670ba72c7e3e9c3c3225547ef2c1053504e62b8.600x338.jpg?t=1650554420','https://cdn.cloudflare.steamstatic.com/steam/apps/1593500/ss_f1bff24d3967a21d303d95e11ed892e3d9113057.600x338.jpg?t=1650554420','https://cdn.cloudflare.steamstatic.com/steam/apps/1593500/ss_6eccc970b5de2943546d93d319be1b5c0618f21b.600x338.jpg?t=1650554420','His vengeance against the Gods of Olympus years behind him, Kratos now lives as a man in the realm of Norse Gods and monsters. It is in this harsh, unforgiving world that he must fight to survive… and teach his son to do the same.','https://cdn.cloudflare.steamstatic.com/steam/apps/256864004/movie480_vp9.webm?t=1639001817')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 64-bit','Intel i5-6600k (4 core 3.5 GHz) or AMD Ryzen 5 2400 G (4 core 3.6 GHz)','8 GB RAM','NVIDIA GTX 1060 (6 GB) or AMD RX 570 (4 GB)','70 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1139900/ss_4df66f282c6aed12f941b3f7eb4c6fc3de3a8ea8.600x338.jpg?t=1688460732','https://cdn.cloudflare.steamstatic.com/steam/apps/1139900/ss_8f6b985f8568ccca30ddfe28b9b26fcf4468eaa5.600x338.jpg?t=1688460732','https://cdn.cloudflare.steamstatic.com/steam/apps/1139900/ss_b3685fcab4d6f60c9fd54ffe8757ccaaef803d9e.600x338.jpg?t=1688460732','https://cdn.cloudflare.steamstatic.com/steam/apps/1139900/ss_6f7ea1399cdf74cfafb0ddbf397ccb1f04f2bb04.600x338.jpg?t=1688460732','Ghostrunner offers a unique single-player experience: fast-paced, violent combat, and an original setting that blends science fiction with post-apocalyptic themes. It tells the story of a world that has already ended and its inhabitants who fight to survive.','https://cdn.cloudflare.steamstatic.com/steam/apps/256806956/movie480_vp9.webm?t=1683653346')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7, 8.1, 10 x64','Intel Core i7-6700K (4 * 4000) or AMD Ryzen 5 1500X (4 * 3500) or equivalent','8 GB RAM','GeForce GTX 970 (4096 MB) or Radeon RX 5700 (8192 MB)','22 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('','https://cdn.cloudflare.steamstatic.com/steam/apps/924970/ss_01d625277a7dc76a67f78de3a3ed1e633d205ddd.600x338.jpg?t=1672856194','https://cdn.cloudflare.steamstatic.com/steam/apps/924970/ss_01d625277a7dc76a67f78de3a3ed1e633d205ddd.600x338.jpg?t=1672856194','https://cdn.cloudflare.steamstatic.com/steam/apps/924970/ss_61ba5c1e5ff0992738255a3c6679fdbc2cd659de.116x65.jpg?t=1672856194','Back 4 Blood is a thrilling cooperative first-person shooter from the creators of the critically acclaimed Left 4 Dead franchise. Experience the intense 4 player co-op narrative campaign, competitive multiplayer as human or Ridden, and frenetic gameplay that keeps you in the action.','https://cdn.cloudflare.steamstatic.com/steam/apps/256919551/movie480_vp9.webm?t=1670349696')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('64-bit Windows 10','Intel Core i5-8400 (2.8 GHz) OR AMD Ryzen 7 1800X (3.6 GHz)','12 GB RAM','NVIDIA GeForce GTX 970 OR AMD Radeon RX 590','40 GB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/588650/ss_a099416b9f3e09d47c42f87667e6ad6f394ba652.600x338.jpg?t=1678188017','https://cdn.cloudflare.steamstatic.com/steam/apps/588650/ss_e87e72a247918d8493892e035d5e1b4b84470d2f.600x338.jpg?t=1678188017','https://cdn.cloudflare.steamstatic.com/steam/apps/588650/ss_7bde51ea6c8f6289e85ea1d8c1c941e1f8bfee91.600x338.jpg?t=1678188017','https://cdn.cloudflare.steamstatic.com/steam/apps/588650/ss_ac28000ade40cc2fe5c128f32ac98ba33c008a7a.600x338.jpg?t=1678188017','Dead Cells is a rogue-lite, metroidvania inspired, action-platformer. You will explore a sprawling, ever-changing castle... assuming you’re able to fight your way past its keepers in 2D souls-lite combat. No checkpoints. Kill, die, learn, repeat. Regular free content updates!','https://cdn.cloudflare.steamstatic.com/steam/apps/256755089/movie480.webm?t=1581426951')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 7+','Intel i5+','4 GB RAM','Nvidia GTX 460 / Radeon HD 7800 or better','500 MB available space')

INSERT Infomation ( [imageGame1],[imageGame2] ,[imageGame3] ,[imageGame4],[description],[Video]) 
VALUES ('https://cdn.cloudflare.steamstatic.com/steam/apps/1057090/ss_608e317acbb76258bedcf1a79e6673a61475908f.600x338.jpg?t=1667504225','https://cdn.cloudflare.steamstatic.com/steam/apps/1057090/ss_3ae04b208aaff3869f69617c47449ec1d7a06513.600x338.jpg?t=1667504225','https://cdn.cloudflare.steamstatic.com/steam/apps/1057090/ss_f8ac174b7949e89fe1939a7bd2c471785dee55f0.600x338.jpg?t=1667504225','https://cdn.cloudflare.steamstatic.com/steam/apps/1057090/ss_0cf0ec6681ae5771173790dbc99ddb3bf3b886ad.600x338.jpg?t=1667504225','Play the critically acclaimed masterpiece. Embark on a new journey in a vast, exotic world where you’ll encounter towering enemies and challenging puzzles on your quest to unravel Ori’s destiny.','https://cdn.cloudflare.steamstatic.com/steam/apps/256779902/movie480.webm?t=1585866497')
INSERT [Configuration] ( OS,Processor,Memory,Graphics,Storage) 
VALUES ('Windows 10 Version 18362.0 or higher','AMD Ryzen 3 | Intel i5 Skylake','8 GB RAM','Nvidia GTX 970 | AMD RX 570','20 GB available space')




SET IDENTITY_INSERT Infomation OFF


Create table [Configuration](
	id int IDENTITY(1,1) NOT NULL,
	OS [varchar](1000),
	Processor [varchar](1000),
	Memory [varchar](1000),
	Graphics [varchar](1000),
	Storage nvarchar(1000),
	foreign key (id) references [Game](id)
)

SET IDENTITY_INSERT Infomation ON 



SET IDENTITY_INSERT Infomation OFF