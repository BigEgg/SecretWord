CREATE TABLE [dbo].[SentMessage]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OpenId] NCHAR(16) NOT NULL, 
    [Content] NVARCHAR(150) NOT NULL, 
    [PostTime] DATETIME NOT NULL, 
    [SendTime] DATETIME NOT NULL DEFAULT getdate(), 
    [Rank] INT NOT NULL, 
    [UpdateTime] DATETIME NOT NULL DEFAULT getdate(), 
    [CreateTime] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [AK_SentMessage_OpenId] UNIQUE ([OpenId])
)

GO

CREATE INDEX [IX_SentMessage_OpenId] ON [dbo].[SentMessage] ([OpenId])

GO

CREATE INDEX [IX_SentMessage_Rank] ON [dbo].[SentMessage] ([Rank])