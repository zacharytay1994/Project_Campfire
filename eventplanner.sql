USE master
IF EXISTS(select * from sys.databases where name='EventPlanner')
DROP DATABASE EventPlanner
GO

Create Database EventPlanner
GO

use EventPlanner
GO

/* Table: dbo.Account */
if exists (select * from sysobjects 
  where id = object_id('dbo.Account') and sysstat & 0xf = 3)
  drop table dbo.Account
GO

/*** Create tables ***/
/* Table: dbo.Account 	*/
CREATE TABLE dbo.Account 
(
  AccountID		int					,
  Name			varchar(100) NOT NULL,
  EmailAddr		varchar(150) NOT NULL,
  Password		varchar(255) NOT NULL,
)
GO

INSERT INTO Account VALUES (1,'blabla','nimama@meiyoumao.com','caonimaxd')