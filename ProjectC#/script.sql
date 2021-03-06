USE [StudentC#]
GO
/****** Object:  User [se]    Script Date: 7/21/2021 9:40:49 PM ******/
CREATE USER [se] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ss]    Script Date: 7/21/2021 9:40:49 PM ******/
CREATE USER [ss] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[ss]
GO
/****** Object:  Schema [ss]    Script Date: 7/21/2021 9:40:49 PM ******/
CREATE SCHEMA [ss]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 7/21/2021 9:40:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[StudentID] [varchar](8) NOT NULL,
	[Mark] [float] NULL,
	[Note] [nvarchar](100) NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/21/2021 9:40:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [varchar](8) NOT NULL,
	[StudentName] [varchar](50) NOT NULL,
	[ClassName] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140001', N'Nguyen Van A', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140002', N'Hoang Thi B', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140003', N'A', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140004', N'C', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140005', N'D', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140006', N'E', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140007', N'F', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140008', N'Van D', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140009', N'Gia', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140010', N'Peter', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140011', N'Canato', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140012', N'Obi', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140013', N'Khanh', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140014', N'Nguyen Quoc Khanh', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140015', N'Nguyen Quoc', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140016', N'Ha Ha', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140017', N'Hu Hu', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140018', N'Ha', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140019', N'Tha', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140020', N'H', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140021', N'Hihi', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140022', N'Hic Hic', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140023', N'V', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140024', N'Ngo Diec Pham', N'SE1437')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140025', N'Ri', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140026', N'Bri', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140027', N'Kaka', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140028', N'Cris', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140029', N'Messi', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140030', N'SSS', N'SE1438')
INSERT [dbo].[Student] ([StudentID], [StudentName], [ClassName]) VALUES (N'HE140031', N'Aria', N'SE1438')
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_Student]
GO
