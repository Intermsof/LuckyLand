CREATE TABLE [dbo].[Factory]
(
	[FactorySK] INT NOT NULL DEFAULT (NEXT VALUE FOR [dbo].[FactorySequence]) PRIMARY KEY, 
    [LuckyLandSK] NCHAR(50) NOT NULL, 
    [ShipAddress] NCHAR(100) NOT NULL, 
    [CityName] NCHAR(50) NOT NULL, 
    [StateProvinceName] NCHAR(50) NOT NULL, 
    [CountryName] NCHAR(50) NOT NULL, 
    [FactoryName] NCHAR(200) NOT NULL
)
