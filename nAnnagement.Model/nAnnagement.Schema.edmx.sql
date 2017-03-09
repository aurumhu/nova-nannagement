
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/09/2017 15:06:31
-- Generated from EDMX file: C:\Users\cblake\Documents\Projects\Nova.nAnnagement\nAnnagement.Model\nAnnagement.Schema.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [nannagement-db];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_EmployeeAchievements]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Achievements] DROP CONSTRAINT [FK_EmployeeAchievements];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_EmployeeSkills]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmployeeSkills] DROP CONSTRAINT [FK_Employee_EmployeeSkills];
GO
IF OBJECT_ID(N'[dbo].[FK_Skill_EmployeeSkills]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmployeeSkills] DROP CONSTRAINT [FK_Skill_EmployeeSkills];
GO
IF OBJECT_ID(N'[dbo].[FK_CategorySkill]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Skill] DROP CONSTRAINT [FK_CategorySkill];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientProject]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projects] DROP CONSTRAINT [FK_ClientProject];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeEmployeeProjects]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmployeeProjects] DROP CONSTRAINT [FK_EmployeeEmployeeProjects];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectEmployeeProjects]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmployeeProjects] DROP CONSTRAINT [FK_ProjectEmployeeProjects];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees];
GO
IF OBJECT_ID(N'[dbo].[Achievements]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Achievements];
GO
IF OBJECT_ID(N'[dbo].[Skill]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Skill];
GO
IF OBJECT_ID(N'[dbo].[EmployeeSkills]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmployeeSkills];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[Projects]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Projects];
GO
IF OBJECT_ID(N'[dbo].[Clients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clients];
GO
IF OBJECT_ID(N'[dbo].[EmployeeProjects]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmployeeProjects];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Photo] nvarchar(max)  NULL,
    [DOB] datetime  NULL,
    [Description] nvarchar(max)  NULL,
    [DateJoined] datetime  NULL,
    [Manager] nvarchar(max)  NOT NULL,
    [PasswordHash] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'Achievements'
CREATE TABLE [dbo].[Achievements] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Parent_Id] nvarchar(max)  NOT NULL,
    [Project_Id] nvarchar(max)  NOT NULL,
    [Details] nvarchar(max)  NOT NULL,
    [Cost] nvarchar(max)  NOT NULL,
    [Start] datetime  NOT NULL,
    [End] datetime  NOT NULL,
    [URL] nvarchar(max)  NULL,
    [Employee_Id] int  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL,
    [Deleted] datetime  NULL
);
GO

-- Creating table 'Skill'
CREATE TABLE [dbo].[Skill] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Category_Id] int  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL,
    [Deleted] datetime  NOT NULL
);
GO

-- Creating table 'EmployeeSkills'
CREATE TABLE [dbo].[EmployeeSkills] (
    [Employee_Id] int  NOT NULL,
    [Skill_Id] int  NOT NULL,
    [Level] int IDENTITY(1,1) NOT NULL,
    [Improve] real  NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL,
    [Deleted] datetime  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL,
    [Deleted] datetime  NOT NULL
);
GO

-- Creating table 'Projects'
CREATE TABLE [dbo].[Projects] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Client_Id] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Start] nvarchar(max)  NOT NULL,
    [End] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL,
    [Deleted] datetime  NOT NULL
);
GO

-- Creating table 'Clients'
CREATE TABLE [dbo].[Clients] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL,
    [Deleted] datetime  NOT NULL
);
GO

-- Creating table 'EmployeeProjects'
CREATE TABLE [dbo].[EmployeeProjects] (
    [Employee_Id] int  NOT NULL,
    [Project_Id] int  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(max)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL,
    [Deleted] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Achievements'
ALTER TABLE [dbo].[Achievements]
ADD CONSTRAINT [PK_Achievements]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Skill'
ALTER TABLE [dbo].[Skill]
ADD CONSTRAINT [PK_Skill]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Employee_Id], [Skill_Id] in table 'EmployeeSkills'
ALTER TABLE [dbo].[EmployeeSkills]
ADD CONSTRAINT [PK_EmployeeSkills]
    PRIMARY KEY CLUSTERED ([Employee_Id], [Skill_Id] ASC);
GO

-- Creating primary key on [Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [PK_Projects]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [PK_Clients]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Employee_Id], [Project_Id] in table 'EmployeeProjects'
ALTER TABLE [dbo].[EmployeeProjects]
ADD CONSTRAINT [PK_EmployeeProjects]
    PRIMARY KEY CLUSTERED ([Employee_Id], [Project_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Employee_Id] in table 'Achievements'
ALTER TABLE [dbo].[Achievements]
ADD CONSTRAINT [FK_EmployeeAchievements]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[Employees]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeAchievements'
CREATE INDEX [IX_FK_EmployeeAchievements]
ON [dbo].[Achievements]
    ([Employee_Id]);
GO

-- Creating foreign key on [Employee_Id] in table 'EmployeeSkills'
ALTER TABLE [dbo].[EmployeeSkills]
ADD CONSTRAINT [FK_Employee_EmployeeSkills]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[Employees]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Skill_Id] in table 'EmployeeSkills'
ALTER TABLE [dbo].[EmployeeSkills]
ADD CONSTRAINT [FK_Skill_EmployeeSkills]
    FOREIGN KEY ([Skill_Id])
    REFERENCES [dbo].[Skill]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Skill_EmployeeSkills'
CREATE INDEX [IX_FK_Skill_EmployeeSkills]
ON [dbo].[EmployeeSkills]
    ([Skill_Id]);
GO

-- Creating foreign key on [Category_Id] in table 'Skill'
ALTER TABLE [dbo].[Skill]
ADD CONSTRAINT [FK_CategorySkill]
    FOREIGN KEY ([Category_Id])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategorySkill'
CREATE INDEX [IX_FK_CategorySkill]
ON [dbo].[Skill]
    ([Category_Id]);
GO

-- Creating foreign key on [Client_Id] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [FK_ClientProject]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientProject'
CREATE INDEX [IX_FK_ClientProject]
ON [dbo].[Projects]
    ([Client_Id]);
GO

-- Creating foreign key on [Employee_Id] in table 'EmployeeProjects'
ALTER TABLE [dbo].[EmployeeProjects]
ADD CONSTRAINT [FK_EmployeeEmployeeProjects]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[Employees]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Project_Id] in table 'EmployeeProjects'
ALTER TABLE [dbo].[EmployeeProjects]
ADD CONSTRAINT [FK_ProjectEmployeeProjects]
    FOREIGN KEY ([Project_Id])
    REFERENCES [dbo].[Projects]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectEmployeeProjects'
CREATE INDEX [IX_FK_ProjectEmployeeProjects]
ON [dbo].[EmployeeProjects]
    ([Project_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------