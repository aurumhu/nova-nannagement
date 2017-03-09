
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/09/2017 13:53:13
-- Generated from EDMX file: C:\Users\cblake\Documents\Projects\Nova.nAnnagement\nAnnagement.Model\nAnnagement.Schema.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

USE [nAnnagement];
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
-- Script has ended
-- --------------------------------------------------

GO
