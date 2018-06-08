/*
	Import the data from Import table to Bank table.

	Step 1
*/

USE [Banking]
GO

INSERT INTO Bank(I.[Account], I.[Date], I.[Mutation], I.[Amount], I.[Name], I.[CounterAccount], I.[Text], I.[RawText])
SELECT I.[Account], I.[Date], I.[Mutation], I.[Amount], I.[Name], I.[CounterAccount], I.[Text], I.[RawText]
FROM Import AS I
	LEFT JOIN Bank AS B
		ON I.[Account] = B.[Account]
			AND I.[Date] = B.[Date]
			AND I.[Amount] = B.[Amount]
			AND I.[RawText] = B.[RawText]
WHERE B.[Id] IS NULL
ORDER BY I.[Date], I.[Account]