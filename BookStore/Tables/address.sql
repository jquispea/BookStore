CREATE TABLE [dbo].[address]
(
	[address_id] INT COnstraint PK_ADDRESS PRIMARY KEY,
	[street_number] varchar(50),
	[street_name] varchar(50),
	[city] varchar(50),
	[country_id] int Constraint FK_COUNTRY FOreign Key(country_id) references dbo.country(country_id),
	[rowversion] rowversion
)
