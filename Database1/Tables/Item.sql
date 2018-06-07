CREATE TABLE [dbo].[Item]
(
	[ItemID] INT NOT NULL PRIMARY KEY, 
    [TypeID] INT NOT NULL, 
    [Price] FLOAT NOT NULL, 
    [Size] INT NOT NULL, 
    [Stock] INT NOT NULL
)
