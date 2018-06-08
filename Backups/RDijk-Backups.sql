/*
	Backup and shrink Joost

	Joost: 64 / 8
*/

-- Make the backup files with date/time stamp
DECLARE @Date varchar(20) = (SELECT REPLACE(CONVERT(varchar(19), GETDATE(), 21), ':', ''))
DECLARE @Joost varchar(128) = 'C:\Users\admin\OneDrive\Environment\SQL Backup\Joost ' + @Date + '.bak'

-- Backup files
BACKUP DATABASE [Joost] TO DISK = @Joost WITH DIFFERENTIAL,
	NOFORMAT,
	NOINIT,
	NAME = N'Joost-Full Database Backup',
	SKIP,
	NOREWIND,
	NOUNLOAD,
	STATS = 10

BACKUP LOG [Joost] TO DISK = @Joost WITH NOFORMAT,
	NOINIT,
	NAME = N'Joost-Full Database Backup',
	SKIP,
	NOREWIND,
	NOUNLOAD,
	STATS = 10

-- Shrink the files
USE [Joost]
GO
DBCC SHRINKFILE (N'Log', 0, TRUNCATEONLY)
GO
DBCC SHRINKFILE (N'Log_log', 0)
GO
DBCC SHRINKFILE (N'Log_log' , 0, TRUNCATEONLY)
GO
