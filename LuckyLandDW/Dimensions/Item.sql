CREATE TABLE [dbo].[Item]
(
	[ItemSK] INT NOT NULL DEFAULT (NEXT VALUE FOR [dbo].[ItemSequence]) PRIMARY KEY, 
    [LuckyLandBK] INT NOT NULL, 
    [Type] NCHAR(50) NOT NULL, 
    [Price] FLOAT NOT NULL, 
    [Size] INT NOT NULL, 
    [Stock] INT NOT NULL
)
