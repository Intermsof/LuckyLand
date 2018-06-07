CREATE TABLE [dbo].[Address]
(
	[AddressID] INT NOT NULL PRIMARY KEY, 
    [Address] NVARCHAR(100) NULL, 
    [City] INT NULL, 
    [StateProvince] INT NULL, 
    [Country] INT NULL, 
    CONSTRAINT [FK_Address_City] FOREIGN KEY ([City]) REFERENCES [City]([CityID]), 
    CONSTRAINT [FK_Address_State] FOREIGN KEY ([StateProvince]) REFERENCES [StateProvince]([StateID]), 
    CONSTRAINT [FK_Address_Country] FOREIGN KEY ([Country]) REFERENCES [Country]([CountryID])
)
