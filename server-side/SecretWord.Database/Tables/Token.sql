CREATE TABLE [dbo].[Token]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PhoneGUID] NCHAR(20) NOT NULL, 
    [Token] NCHAR(10) NOT NULL, 
    [HadExpired] BIT NOT NULL DEFAULT 0, 
    [UpdateTime] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [AK_Token_Token] UNIQUE ([Token])
)

GO


CREATE INDEX [IX_Token_Token] ON [dbo].[Token] ([Token])

GO
