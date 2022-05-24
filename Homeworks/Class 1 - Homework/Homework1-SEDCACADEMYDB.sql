CREATE DATABASE SEDCACADEMYDB;

USE SEDCACADEMYDB;

DROP TABLE IF EXISTS [Students];

CREATE TABLE [Students](
[ID] int identity(1,1) not null,
[FirstName] nvarchar(100) not null,
[LastName] nvarchar(100) not null,
[DateOfBirth] date not null,
[EnrolledDate] date not null,
[Gender] nchar(1) null,
[NationalIdNumber] nvarchar(20) null,
[StudentCardNumber] nvarchar(20) null
);

CREATE TABLE [Teachers](
[ID] int identity(1,1) not null,
[FirstName] nvarchar(100) not null,
[LastName] nvarchar(100) not null,
[DateOfBirth] date not null,
[AcademicRank] nvarchar(100) not null,
[HireDate] date not null
);

CREATE TABLE [Grades](
[ID] int identity(1,1) not null,
[StudentID] int not null,
[CourseID] int not null,
[TeacherID] int not null,
[Grade] tinyint not null,
[Comment] nvarchar(MAX) null,
[CreatedDate] datetime not null
);

CREATE TABLE [Courses](
[ID] int identity(1,1) not null,
[Name] nvarchar(100) not null,
[Credit] tinyint not null,
[AcademicYear] date not null
);

CREATE TABLE [AchievementTypes](
[ID] int identity(1,1) not null,
[Name] nvarchar(30) not null,
[Description] nvarchar(MAX) null,
[ParticipationRate] smallint null
);

CREATE TABLE [GradeDetails](
[ID] int identity(1,1) not null,
[GradeID] int not null,
[AchievementTypeID] int not null,
[AchievementPoints] smallint null,
[AchievementMaxPoints] smallint null,
[AchievementDate] date null
);

--SELECT * FROM Students
