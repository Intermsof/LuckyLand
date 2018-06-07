/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
INSERT INTO City (CityID, CityName)
VALUES (0, 'Los Angeles'),
(1, 'San Francisco'),
(2, 'San Diego'),
(3, 'Santa Barbara'),
(4, 'New York'),
(5, 'Toronto');

INSERT INTO Country (CountryID, CountryName)
VALUES (0, 'United States'),
(1, 'Canada');

INSERT INTO StateProvince (StateID, StateName)
VALUES (0, 'California'),
(1, 'New York'),
(2, 'Ontario');