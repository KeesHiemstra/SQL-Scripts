USE [Boodschappen]
GO

SELECT I.*, B.[BonDate], S.[BoodschapName]
FROM KassaBonItem AS I
	JOIN KassaBon AS B
		ON I.[KassaBonId] = B.Id
	JOIN Boodschap AS S
		ON I.[BoodschapId] = S.[Id]
ORDER BY B.[BonDate], I.[Id]

SELECT *
FROM Boodschap
ORDER BY [BoodschapName]