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
-- Creating primary key on [Employee_Id], [Project_Id] in table 'EmployeeProjects'
ALTER TABLE [dbo].[EmployeeProjects]
ADD CONSTRAINT [PK_EmployeeProjects]
    PRIMARY KEY CLUSTERED ([Employee_Id], [Project_Id] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectEmployeeProjects'
CREATE INDEX [IX_FK_ProjectEmployeeProjects]
ON [dbo].[EmployeeProjects]
    ([Project_Id]);