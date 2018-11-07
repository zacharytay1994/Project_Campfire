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

/* Table: dbo.Activities */
if exists (select * from sysobjects 
  where id = object_id('dbo.Activities') and sysstat & 0xf = 3)
  drop table dbo.Activities
GO

/*** Create tables ***/
/* Table: dbo.Account 	*/
CREATE TABLE dbo.Account 
(
  AccountID		int			 NOT NULL,
  Name			varchar(100) NOT NULL,
  EmailAddr		varchar(150) NOT NULL,
  Password		varchar(255) NOT NULL,
)
GO

/*** Create tables ***/
/* Table: dbo.Activities */
CREATE TABLE dbo.Activities
(
  ActivityID	int			 NOT NULL,
  ActivityName	varchar(255) NOT NULL,
  ActivityDesc	varchar(255) NOT NULL,
  Category		varchar(255) NOT NULL,
  ActivityExp	char(255) NOT NULL,
  Link			varchar(255)
)
GO