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
-- Creating primary key on [Id] in table 'Achievements'
ALTER TABLE [dbo].[Achievements]
ADD CONSTRAINT [PK_Achievements]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeAchievements'
CREATE INDEX [IX_FK_EmployeeAchievements]
ON [dbo].[Achievements]
    ([Employee_Id]);