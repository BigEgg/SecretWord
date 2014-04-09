CREATE TABLE [dbo].[InvalidMessage]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OpenId] NCHAR(16) NOT NULL, 
    [Content] NVARCHAR(150) NOT NULL, 
    [PostTime] DATETIME NOT NULL, 
    [CreateTime] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [AK_InvalidMessage_OpenId] UNIQUE ([OpenId])
)

GO

CREATE INDEX [IX_InvalidMessage_OpenId] ON [dbo].[InvalidMessage] ([OpenId])
