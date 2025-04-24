#Verify if chart imported successfully
SELECT * FROM WFH_Covid_19_impact;

SELECT 
	CASE
		WHEN Increased_Work_Hours = 0 THEN 'Decreased'
        WHEN Increased_Work_Hours = 1 THEN 'Increased'
        ELSE 'NULL'
	END AS Increased_Work_Hours,
    CASE
		WHEN Work_From_Home = 0 THEN 'No'
        WHEN Work_From_Home = 1 THEN 'Yes'
        ELSE 'NULL'
	END AS Work_From_Home,
#Round HoursWorkedPerDay and MeetingsPerDay columns into whole numbers
    FORMAT(Hours_Worked_Per_Day, 0) AS Hours_Worked_Per_Day,
    FORMAT(Meetings_Per_Day, 0) AS Meetings_Per_Day,
    CASE
		WHEN Productivity_Change = 0 THEN 'No Productivity'
        WHEN Productivity_Change = 1 THEN 'Improved Productivity'
        ELSE 'NULL'
	END AS Productivity_Change,
    Stress_Level,
    CASE
		WHEN Health_Issue = 0 THEN 'No'
        WHEN Health_Issue = 1 THEN 'Yes'
        ELSE 'NULL'
	END AS Health_Issue,
    CASE
		WHEN Job_Security = 0 THEN 'Not Secure'
        WHEN Job_Security = 1 THEN 'Secure'
        ELSE 'NULL'
	END AS Job_Security,
    CASE
		WHEN Childcare_Responsibilities = 0 THEN 'Not Resposible'
        WHEN Childcare_Responsibilities = 1 THEN 'Responsible'
        ELSE 'NULL'
    END AS Childcare_Responsibilities,
    CASE
		WHEN Commuting_Changes = 0 THEN 'No Changes'
        WHEN Commuting_Changes = 1 THEN 'Changed'
        ELSE 'NULL'
    END AS Commuting_Changes,
    CASE
		WHEN Technology_Adaptation = 0 THEN 'No'
        WHEN Technology_Adaptation = 1 THEN 'Yes'
        ELSE 'NULL'
    END AS Technology_Adaptation,
    CASE
		WHEN Salary_Changes = 0 THEN 'No Changes'
        WHEN Salary_Changes = 1 THEN 'Changed'
    END AS Salary_Changes,
    CASE
		WHEN Team_Collaboration_Challenges = 0 THEN 'No'
        WHEN Team_Collaboration_Challenges = 1 THEN 'Yes'
    END AS Team_Collaboration_Challenges,
    Sector,
    CASE
		WHEN Affected_by_Covid = 0 THEN 'Not Affected'
        WHEN Affected_by_Covid = 1 THEN 'Affected'
    END AS Affected_by_Covid
FROM wfh_covid_19_impact;


