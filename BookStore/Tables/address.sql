CREATE TABLE [dbo].[address]
(
	[address_id] INT CONSTRAINT PK_ADDRESS PRIMARY KEY,
	[street_number] varchar(10),
	[street_name] varchar(200),
	[city] varchar(100),
	[country_id] int CONSTRAINT FK_ADDRESS_COUNTRY 
		FOREIGN KEY(country_id) REFERENCES dbo.country(country_id),
	[rowversion] rowversion
)