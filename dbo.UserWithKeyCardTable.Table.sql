USE [HakopLibraryDB]
GO
/****** Object:  Table [dbo].[UserWithKeyCardTable]    Script Date: 3/14/2021 8:49:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserWithKeyCardTable](
	[KeyCardID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_UserWithKeyCardTable] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserWithKeyCardTable]  WITH CHECK ADD  CONSTRAINT [FK_UserWithKeyCardTable_KeyCardTable] FOREIGN KEY([KeyCardID])
REFERENCES [dbo].[KeyCardTable] ([KeyCardID])
GO
ALTER TABLE [dbo].[UserWithKeyCardTable] CHECK CONSTRAINT [FK_UserWithKeyCardTable_KeyCardTable]
GO
ALTER TABLE [dbo].[UserWithKeyCardTable]  WITH CHECK ADD  CONSTRAINT [FK_UserWithKeyCardTable_UserTable] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[UserWithKeyCardTable] CHECK CONSTRAINT [FK_UserWithKeyCardTable_UserTable]
GO
