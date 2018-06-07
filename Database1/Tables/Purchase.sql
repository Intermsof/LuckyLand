CREATE TABLE [dbo].[Purchase]
(
	[PurchaseID] INT NOT NULL , 
    [CustomerID] INT NOT NULL, 
    [FactoryID] INT NOT NULL, 
    [ItemID] INT NOT NULL, 
    PRIMARY KEY ([PurchaseID],[CustomerID]), 
	CONSTRAINT [FK_Purchase_Customer] FOREIGN KEY ([CustomerID]) REFERENCES [Customer]([CustomerID])
    
)
