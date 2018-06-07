CREATE TABLE [dbo].[Purchase]
(
	[FactPurchaseSK] BIGINT IDENTITY (1,1) NOT NULL PRIMARY KEY, 
    [CustomerSK] INT NULL, 
    [FactorySK] INT NULL, 
    [ItemSK] INT NULL, 
    CONSTRAINT [FK_Purchase_Customer] FOREIGN KEY ([CustomerSK]) REFERENCES [Customer]([CustomerSK]),
	CONSTRAINT [FK_Purchase_Factory] FOREIGN KEY ([FactorySK]) REFERENCES [Factory]([FactorySK]),
	CONSTRAINT [FK_Purchase_Item] FOREIGN KEY ([ItemSK]) REFERENCES [Item]([ItemSK])
)
