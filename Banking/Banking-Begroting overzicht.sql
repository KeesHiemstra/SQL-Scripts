/*
	Overview Banking totals
*/

USE [Banking]
GO

SELECT [Month], [TallyDescription], SUM([Amount]) AS [Amount]
FROM (
	SELECT [Month],
		CASE [Origin] WHEN 'Inkomen gezamenlijk' THEN 'Bij gezamenlijk'
			WHEN 'Salaris' THEN 'Bij Kees'

			ELSE ISNULL([Origin], 'Variabel')
		END AS [Origin],
		[TallyDescription],
		[Amount]
	FROM Bank
	) AS B
GROUP BY [Month], [TallyDescription]
ORDER BY [Month], [TallyDescription] 
