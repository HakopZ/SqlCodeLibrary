USE [HakopLibraryDB]
GO
/****** Object:  Table [dbo].[UserBookCountTable]    Script Date: 3/28/2021 3:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBookCountTable](
	[UserID] [int] NOT NULL,
	[AssignmentAmount] [int] NOT NULL,
 CONSTRAINT [PK_UserBookCountTable] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserBookCountTable]  WITH CHECK ADD  CONSTRAINT [FK_UserBookCountTable_UserTable] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[UserBookCountTable] CHECK CONSTRAINT [FK_UserBookCountTable_UserTable]
GO
