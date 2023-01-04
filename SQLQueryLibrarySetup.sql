USE [DbLibrary]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 4.01.2023 17:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[AdminUserName] [nvarchar](50) NOT NULL,
	[Password] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 4.01.2023 17:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[BookName] [nvarchar](50) NULL,
	[BookAuthor] [nvarchar](100) NULL,
	[BookNumberOfPage] [nvarchar](10) NULL,
	[BookLanguage] [nvarchar](20) NULL,
	[BookPublisher] [nvarchar](100) NULL,
	[BookDescription] [text] NULL,
	[IsLoanedBook] [nchar](25) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4.01.2023 17:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanedBooks]    Script Date: 4.01.2023 17:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanedBooks](
	[LoanedBookId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[BookId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[BookLendingOfDate] [nchar](30) NOT NULL,
	[BookRetrieveOfDate] [nchar](30) NOT NULL,
	[LoanedBookNot] [nvarchar](255) NULL,
	[LoanedBookDelivery] [nvarchar](15) NULL,
 CONSTRAINT [PK_LoanedBook] PRIMARY KEY CLUSTERED 
(
	[LoanedBookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 4.01.2023 17:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[MemberNumber] [nvarchar](50) NOT NULL,
	[MemberPhoneNumber] [nvarchar](11) NOT NULL,
	[MemberAdress] [text] NULL,
 CONSTRAINT [PK_MemberId] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4.01.2023 17:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[ActiveStatus] [nchar](15) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 
GO
INSERT [dbo].[Admins] ([AdminId], [UserId], [AdminUserName], [Password]) VALUES (1, 7, N'Mir123', N'123456    ')
GO
INSERT [dbo].[Admins] ([AdminId], [UserId], [AdminUserName], [Password]) VALUES (5003, 8, N'Gezer', N'gezer123  ')
GO
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 
GO
INSERT [dbo].[Books] ([BookId], [CategoryId], [BookName], [BookAuthor], [BookNumberOfPage], [BookLanguage], [BookPublisher], [BookDescription], [IsLoanedBook]) VALUES (1, 6, N'Iki Sehrin Hikayesi', N'Charles Dickens', N'508', N'Türkçe', N'Can Yayinlari', N'Romandaki olaylar Fransiz Devrimi (1789-1799) öncesi ve sonrasinda Paris ve Londra’da geçer. Romanda, Londra ve Paris’in yasadigi açlik, sefalet ve keder tüm yönleriyle orya konulmustur.', N'Emanet Kitap             ')
GO
INSERT [dbo].[Books] ([BookId], [CategoryId], [BookName], [BookAuthor], [BookNumberOfPage], [BookLanguage], [BookPublisher], [BookDescription], [IsLoanedBook]) VALUES (4, 9, N'Yeraltindan Notlar', N'Fyodor Dostoyevski', N'144', N'Türkçe', N'Türkiye Is Bankasi Kültür Yayinlari', N'Yeraltindan notlar gerçek dünyadan kendini soyutlamis bir kisinin iç çatismalarini ve hezeyanlarini konu alir.', N'Emanet Kitap             ')
GO
INSERT [dbo].[Books] ([BookId], [CategoryId], [BookName], [BookAuthor], [BookNumberOfPage], [BookLanguage], [BookPublisher], [BookDescription], [IsLoanedBook]) VALUES (6, 7, N'Kizil Dosya', N'Arthur Conan Doyle', N'144', N'Türkçe', N'Ithaki Yayinlari', N'Ilk Sherlock Holmes Macerasidir ve Sherlock ile Dr.Watson bu macerada tanismistir.', N'Emanet Kitap             ')
GO
INSERT [dbo].[Books] ([BookId], [CategoryId], [BookName], [BookAuthor], [BookNumberOfPage], [BookLanguage], [BookPublisher], [BookDescription], [IsLoanedBook]) VALUES (1012, 7, N'Kizil Dosya', N'Arthur Conan Doyle', N'144', N'Türkçe', N'Ithaki Yayinlari', N'Ilk Sherlock Holmes macerasidir ve Sherlock Holmes ve Dr.Watson bu macerada tanismistir.', N'Emanet Kitap Degil       ')
GO
INSERT [dbo].[Books] ([BookId], [CategoryId], [BookName], [BookAuthor], [BookNumberOfPage], [BookLanguage], [BookPublisher], [BookDescription], [IsLoanedBook]) VALUES (1017, 11, N'Insan Ne Ile Yasar?', N'Lev Tolstoy', N'101', N'Türkçe', N'Türkiye Is Bankasi Kültür Yayinlari', N'Insanlarin özünde iyilik oldugunu ve durum her ne olursa olsun iyilik yapmasi gerektigini anlatir.', N'Emanet Kitap Degil       ')
GO
INSERT [dbo].[Books] ([BookId], [CategoryId], [BookName], [BookAuthor], [BookNumberOfPage], [BookLanguage], [BookPublisher], [BookDescription], [IsLoanedBook]) VALUES (1018, 11, N'Insan Ne Ile Yasar?', N'Lev Tolstoy', N'101', N'Türlçe', N'Türkiye Is Bankasi Kültür Yayinlari', N'insanlarin özünde iyilik oldugunu ve durum her ne olursa olsun iyilik yapmasi gerektigini anlatir.', N'Emanet Kitap Degil       ')
GO
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Bilim Kurgu ')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Fantastik')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (3, N'Aksiyon ve Macera')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (4, N'Romantik')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (5, N'Karikatürler, Çizgi Romanlar & Mangalar')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (6, N'Tarihi')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (7, N'Suç ve Polisiye')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (8, N'Gençlik')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (9, N'Felsefi Kurgu')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (10, N'Söylev')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (11, N'Kurgu')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (12, N'Spor')
GO
SET IDENTITY_INSERT [dbo].[LoanedBooks] ON 
GO
INSERT [dbo].[LoanedBooks] ([LoanedBookId], [MemberId], [BookId], [CategoryId], [BookLendingOfDate], [BookRetrieveOfDate], [LoanedBookNot], [LoanedBookDelivery]) VALUES (5012, 2, 1018, 11, N' 03/Ocak/2023                 ', N' 03/Ocak/2023                 ', NULL, N'Teslim edilmedi')
GO
INSERT [dbo].[LoanedBooks] ([LoanedBookId], [MemberId], [BookId], [CategoryId], [BookLendingOfDate], [BookRetrieveOfDate], [LoanedBookNot], [LoanedBookDelivery]) VALUES (6012, 1, 4, 9, N' 04/Ocak/2023                 ', N' 04/Ocak/2023                 ', NULL, N'Teslim edilmedi')
GO
INSERT [dbo].[LoanedBooks] ([LoanedBookId], [MemberId], [BookId], [CategoryId], [BookLendingOfDate], [BookRetrieveOfDate], [LoanedBookNot], [LoanedBookDelivery]) VALUES (7011, 1, 1, 6, N' 31/Aralik/2022               ', N' 05/Ocak/2023                 ', NULL, N'Teslim edilmedi')
GO
INSERT [dbo].[LoanedBooks] ([LoanedBookId], [MemberId], [BookId], [CategoryId], [BookLendingOfDate], [BookRetrieveOfDate], [LoanedBookNot], [LoanedBookDelivery]) VALUES (8011, 1, 6, 7, N' 03/Ocak/2023                 ', N' 12/Ocak/2023                 ', NULL, N'Teslim edilmedi')
GO
SET IDENTITY_INSERT [dbo].[LoanedBooks] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 
GO
INSERT [dbo].[Members] ([MemberId], [UserId], [MemberNumber], [MemberPhoneNumber], [MemberAdress]) VALUES (1, 1, N'19080001', N'05345437658', N'Yeni Mah. Çagdas sok. No:3 Daire:3')
GO
INSERT [dbo].[Members] ([MemberId], [UserId], [MemberNumber], [MemberPhoneNumber], [MemberAdress]) VALUES (3004, 1008, N'1008', N'05643217890', N'Gül Mah. Çayir Sok. NO:8 Daire:1')
GO
INSERT [dbo].[Members] ([MemberId], [UserId], [MemberNumber], [MemberPhoneNumber], [MemberAdress]) VALUES (4006, 3008, N'32401', N'05415423456', N'Atatürk Mah. Çagdas Sok. No:1 Daire:1')
GO
INSERT [dbo].[Members] ([MemberId], [UserId], [MemberNumber], [MemberPhoneNumber], [MemberAdress]) VALUES (4007, 5010, N'54678', N'05678906543', N'Atatürk Mah. Çagdas Sok. No:4 Daire:6')
GO
INSERT [dbo].[Members] ([MemberId], [UserId], [MemberNumber], [MemberPhoneNumber], [MemberAdress]) VALUES (5007, 4009, N'123', N'05432135678', N'Üniversite Mah. Kenar Sok. No:3 Daire:1')
GO
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (1, N'Leyla', N'Kaya', N'leyla@gmail.co', N'Aktif          ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (7, N'Miray', N'Tepe', N'tepemiray95@gmail.com', N'Aktif          ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (8, N'Ali', N'Gezer', N'ali@gmail.com', N'Aktif          ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (1008, N'Gizem', N'Tas', N'gizem_tas@gmail.com', N'Aktif          ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (2008, N'Arda', N'Sönmez', N'arda@gmail.com', N'Aktif          ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (3008, N'Çetin', N'Güngör', N'ctn@gmail.com', N'Aktif          ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (4009, N'Kaya', N'Çetin', N'kaya@gmail.com', N'Aktif          ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (4010, N'Can', N'Yildiz', N'Can@gmail.com', N'Aktif Degil    ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (5010, N'Miray', N'Tekin', N'tekin@gmail.com', N'Aktif          ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (6012, N'Arda', N'Sönmez', N'arda9@gmail.com', N'Aktif Degil    ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (9010, N'Esma', N'Simsek', N'simsek@gmail.com', N'Aktif Degil    ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (9011, N'Derya', N'Kirca', N'derya@gmail.com', N'Aktif Degil    ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (9012, N'Deniz', N'Uncu', N'uncu@gmail.com', N'Aktif Degil    ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (9013, N'Eda', N'Balikçi', N'balikçi@gmail.com', N'Aktif Degil    ')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [ActiveStatus]) VALUES (9018, N'Can', N'Yildiz', N'Can1@gmail.com', N'Aktif Degil    ')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [Unq_Admins_UserId]    Script Date: 4.01.2023 17:33:12 ******/
ALTER TABLE [dbo].[Admins] ADD  CONSTRAINT [Unq_Admins_UserId] UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unq_Member_MemberNumber]    Script Date: 4.01.2023 17:33:12 ******/
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [Unq_Member_MemberNumber] UNIQUE NONCLUSTERED 
(
	[MemberNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unq_Member_PhoneNumber]    Script Date: 4.01.2023 17:33:12 ******/
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [Unq_Member_PhoneNumber] UNIQUE NONCLUSTERED 
(
	[MemberPhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Unq_Members_UserId]    Script Date: 4.01.2023 17:33:12 ******/
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [Unq_Members_UserId] UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unq_User_Email]    Script Date: 4.01.2023 17:33:12 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [Unq_User_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ActiveStatus]  DEFAULT (N'Aktif') FOR [ActiveStatus]
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD  CONSTRAINT [FK_Admin_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Admins] CHECK CONSTRAINT [FK_Admin_UserId]
GO
ALTER TABLE [dbo].[Members]  WITH NOCHECK ADD  CONSTRAINT [FK_Member_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Member_UserId]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Farklı üye numarası girin.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Members', @level2type=N'CONSTRAINT',@level2name=N'Unq_Member_MemberNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Farklı telefon numarası girin.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Members', @level2type=N'CONSTRAINT',@level2name=N'Unq_Member_PhoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Aynı kullanıcı sadece bir kez üye olabilir.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Members', @level2type=N'CONSTRAINT',@level2name=N'Unq_Members_UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Farklı email girin.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'CONSTRAINT',@level2name=N'Unq_User_Email'
GO
