CREATE TABLE [dbo].[Customer]
(
	[CustomerID] INT NOT NULL PRIMARY KEY, 
    [CustomerName] NCHAR(50) NOT NULL, 
    [ShipAddress] INT NOT NULL, 
    [FromDate] DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL, 
    [ThruDate] DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL, 
    CONSTRAINT [FK_Customers_ToTable] FOREIGN KEY ([ShipAddress]) REFERENCES [Address]([AddressID]),
	PERIOD FOR SYSTEM_TIME ([FromDate], [ThruDate])
)
