CREATE TABLE dbo.TASKUS_DATA1 (
    RecordID INT IDENTITY(1,1) PRIMARY KEY,
    EntryDate DATE,
    EmailAddress VARCHAR(255),
    WithoutErrors INT,
    NumberOfErrors INT,
    Total INT,
    ErrorRate DECIMAL(9,6),
    GoodSurveys INT,
    TotalCSATSurveyCount INT,
    CSAT DECIMAL(9,6),
    TeamLead VARCHAR(100),
    Age INT,
    Tenure INT,
    Shift VARCHAR(20)
);
SELECT *
FROM sys.tables;