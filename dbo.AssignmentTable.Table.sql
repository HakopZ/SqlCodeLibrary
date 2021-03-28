USE [HakopLibraryDB]
GO
/****** Object:  Table [dbo].[AssignmentTable]    Script Date: 3/28/2021 3:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignmentTable](
	[UserID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[AcquiredDate] [date] NOT NULL,
	[ReturnDate] [date] NOT NULL,
	[PaymentAmount] [money] NOT NULL,
	[Location] [geography] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AssignmentTable]  WITH CHECK ADD  CONSTRAINT [FK_AssignmentTable_BookWithInfoTable] FOREIGN KEY([BookID])
REFERENCES [dbo].[BookWithInfoTable] ([BookID])
GO
ALTER TABLE [dbo].[AssignmentTable] CHECK CONSTRAINT [FK_AssignmentTable_BookWithInfoTable]
GO
ALTER TABLE [dbo].[AssignmentTable]  WITH CHECK ADD  CONSTRAINT [FK_AssignmentTable_UserTable] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[AssignmentTable] CHECK CONSTRAINT [FK_AssignmentTable_UserTable]
GO
