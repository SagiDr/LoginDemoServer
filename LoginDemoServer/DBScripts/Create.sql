﻿Create Database LoginDemoDB
Go

USE LoginDemoDB
Go

Create Table Users (
	[Email] nvarchar(100) PRIMARY KEY,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NULL,
	BirthDate DATETIME NULL,
	[Status] int NULL,
	[Name] nvarchar(50) NOT NULL
)
Go

INSERT INTO dbo.Users VALUES ('ofer@ofer.com', '1234', '+972526344450','15-nov-1972',1,'Ofer Zadikario')
Go

Create Table Grades(
	[Subject] nvarchar(100) NOT NULL,
	Score int  NOT NULL,
	[Date] DATETIME NOT NULL,
	[Email] nvarchar(100)FOREIGN KEY REFERENCES Users(Email)
)
Go

INSERT INTO dbo.Grades VALUES ('Math', 100, '17-nov-2023','ofer@ofer.com')
Go

INSERT INTO dbo.Grades VALUES ('History', 98, '13-dec-2022','ofer@ofer.com')
Go

INSERT INTO dbo.Grades VALUES ('Computers', 92, '17-feb-1998','ofer@ofer.com')
Go

SELECT * FROM Users

SELECT * FROM Grades
--scaffold-DbContext "Server = (localdb)\MSSQLLocalDB;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force