CREATE TABLE [dbo].[address]
(
<<<<<<< HEAD
	[address_id] INT CONSTRAINT PK_ADDRESS PRIMARY KEY,
	[street_number] varchar(10),
	[street_name] varchar(200),
	[city] varchar(100),
	[country_id] int CONSTRAINT FK_ADDRESS_COUNTRY 
		FOREIGN KEY(country_id) REFERENCES dbo.country(country_id),
	[rowversion] rowversion
)
=======
	[address_id] INT COnstraint PK_ADDRESS PRIMARY KEY,
	[street_number] varchar(50),
	[street_name] varchar(50),
	[city] varchar(50),
	[country_id] int Constraint FK_COUNTRY FOreign Key(country_id) references dbo.country(country_id),
	[rowversion] rowversion
)
>>>>>>> 46e57f6e161cb65ccc49e25e234b5d61b0591a89
