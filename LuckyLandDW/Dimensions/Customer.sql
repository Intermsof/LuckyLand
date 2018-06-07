CREATE TABLE [dbo].[Customer]
(
	[CustomerSK] INT NOT NULL DEFAULT (NEXT VALUE FOR [dbo].[CustomerSequence]) PRIMARY KEY, 
    [LuckyLandBK] INT NOT NULL, 
    [CustomerName] NCHAR(50) NOT NULL, 
    [ShipAddress] NCHAR(100) NOT NULL, 
    [CityName] NCHAR(50) NOT NULL, 
    [StateProvinceName] NCHAR(50) NOT NULL, 
    [CountryName] NCHAR(50) NOT NULL, 
    [FromDate] DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL, 
    [ThruDate] DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL, 
	PERIOD FOR SYSTEM_TIME ([FromDate], [ThruDate])
)
