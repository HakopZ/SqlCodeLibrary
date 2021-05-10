USE [HakopLibraryDB]
GO
/****** Object:  Table [dbo].[BookGenreLinks]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookGenreLinks](
	[GenreID] [int] NOT NULL,
	[BookID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookGenreLinks]  WITH CHECK ADD  CONSTRAINT [FK_BookGenreLinks_Books] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[BookGenreLinks] CHECK CONSTRAINT [FK_BookGenreLinks_Books]
GO
ALTER TABLE [dbo].[BookGenreLinks]  WITH CHECK ADD  CONSTRAINT [FK_BookGenreLinks_Genres] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genres] ([GenreID])
GO
ALTER TABLE [dbo].[BookGenreLinks] CHECK CONSTRAINT [FK_BookGenreLinks_Genres]
GO
