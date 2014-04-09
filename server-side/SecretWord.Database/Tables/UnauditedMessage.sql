CREATE TABLE [dbo].[UnauditedMessage]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OpenId] NCHAR(16) NOT NULL, 
    [Content] NVARCHAR(150) NOT NULL, 
    [PostTime] DATETIME NOT NULL, 
    [Rank] INT NOT NULL, 
    [IsPrepared] BIT NOT NULL DEFAULT 0, 
    [IsInvalid] BIT NOT NULL DEFAULT 0, 
    [UpdateTime] DATETIME NOT NULL DEFAULT getdate(), 
    [CreateTime] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [AK_UnauditedMessage_OpenId] UNIQUE ([OpenId])
)

GO

CREATE INDEX [IX_UnauditedMessage_Rank] ON [dbo].[UnauditedMessage] ([Rank])

GO

CREATE INDEX [IX_UnauditedMessage_OpenId] ON [dbo].[UnauditedMessage] ([OpenId])
