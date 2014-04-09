CREATE TABLE [dbo].[PreparedMessage]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
	[OpenId] NCHAR(16) NOT NULL, 
	[Content] NVARCHAR(150) NOT NULL, 
	[PostTime] DATETIME NOT NULL, 
	[CreateTime] DATETIME NOT NULL DEFAULT getdate(), 
	CONSTRAINT [AK_PreparedMessage_OpenId] UNIQUE ([OpenId])
)

GO

CREATE INDEX [IX_PreparedMessage_OpenId] ON [dbo].[PreparedMessage] ([OpenId])

GO

CREATE INDEX [IX_PreparedMessage_PostTime] ON [dbo].[PreparedMessage] ([PostTime])
