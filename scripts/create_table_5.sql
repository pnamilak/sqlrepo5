USE [TennisDBDS]
GO

/****** Object:  Table [dbo].[MatchGames]    Script Date: 18-06-2025 17:23:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MatchGames](
	[GameID] [int] IDENTITY(1,1) NOT NULL,
	[MatchID] [int] NULL,
	[SetNumber] [int] NULL,
	[GameNumber] [int] NULL,
	[Player1GamesWon] [int] NULL,
	[Player2GamesWon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MatchGames]  WITH CHECK ADD FOREIGN KEY([MatchID])
REFERENCES [dbo].[Matches] ([MatchID])
GO