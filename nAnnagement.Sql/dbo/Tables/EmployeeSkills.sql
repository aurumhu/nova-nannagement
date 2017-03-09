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
-- Creating primary key on [Employee_Id], [Skill_Id] in table 'EmployeeSkills'
ALTER TABLE [dbo].[EmployeeSkills]
ADD CONSTRAINT [PK_EmployeeSkills]
    PRIMARY KEY CLUSTERED ([Employee_Id], [Skill_Id] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_Skill_EmployeeSkills'
CREATE INDEX [IX_FK_Skill_EmployeeSkills]
ON [dbo].[EmployeeSkills]
    ([Skill_Id]);