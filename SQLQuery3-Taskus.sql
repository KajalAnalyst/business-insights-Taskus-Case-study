USE TeamLead_1;

SELECT
  TeamLead,
  SUM(Without_Errors) AS WithoutErrors,
  SUM(Total_CSAT_Survey_Count) AS TotalCSATSurveyCount,
  FORMAT(SUM(Number_of_Errors)*1.0 / NULLIF(SUM(Total),0), 'P2') AS ErrorRatePercent,
  SUM(Number_of_Errors) AS CountOfNumberOfErrors,
  FORMAT(AVG(CAST(REPLACE(Error_Rate,'%','') AS float))/100.0, 'P2') AS AverageErrorRatePercent
FROM dbo.[TASKUS.DATA1]
GROUP BY TeamLead
ORDER BY TeamLead;

