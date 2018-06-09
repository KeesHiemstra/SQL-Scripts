IF EXISTS (
  SELECT * 
  FROM dbo.sysobjects 
  WHERE ID = OBJECT_ID(N'[dbo].[udf_sdtStripTime]') 
    AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION dbo.udf_sdtStripTime
GO
/* Strip the time from a date field and output it as a smalldatefield.
 *
 * Version 1.00 (2007-04-02, Kees Hiemstra)
 * -Inital version.
 * ----------------------------------------------------------------------------
 */
CREATE FUNCTION dbo.udf_sdtStripTime(
  @DTInput AS datetime
  ) RETURNS smalldatetime
AS
BEGIN
  RETURN CAST(CAST(DATEPART(YEAR, @DTInput) AS varchar) + '-' + CAST(DATEPART(MONTH, @DTInput) AS varchar) + '-' + CAST(DATEPART(DAY, @DTInput) AS varchar) AS smalldatetime)
END