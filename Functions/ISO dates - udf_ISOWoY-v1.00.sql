IF EXISTS (
  SELECT * 
  FROM dbo.sysobjects 
  WHERE ID = OBJECT_ID(N'[dbo].[udf_ISOWoY]') 
    AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION [dbo].[udf_ISOWoY]
GO
/* ISO dates - udf_ISOWoY
 * Kees Hiemstra
 * Version 1.00 (2005-10-29)
 * ----------------------------------------------------------------------------
 * According to the ISO Standards the first week is the week which contains 
 * the first Thursday of the Calendar year.
 * The function DATEPART(WW, <date>) calculates the Week of the Year not
 * according to this ISO Standard, but this function does. The Week of the
 * Year is return as YYYY.WW
 */
CREATE FUNCTION udf_ISOWoY(
  @InputDate AS DATETIME
  ) RETURNS CHAR(7)
AS
BEGIN
  DECLARE @Jan1stDoW AS TINYINT
  DECLARE @WeekNumber AS TINYINT
  DECLARE @Year AS SMALLINT
  
  SET @Year = YEAR(@InputDate)
  SET @Jan1stDoW = dbo.udf_ISODoW(CAST(@Year AS CHAR(4)) + '-01-01')
  SET @WeekNumber = ((@Jan1stDoW + DATEPART(DY, @InputDate) + 5) / 7) - (@Jan1stDoW / 5)

  IF @WeekNumber = 0
  BEGIN
    SET @Year = @Year - 1
    SET @Jan1stDoW = dbo.udf_ISODoW(CAST(@Year AS CHAR(4)) + '-01-01')
    SET @WeekNumber = ((@Jan1stDoW + DATEPART(DY, CAST(@Year AS CHAR(4)) + '-12-31') + 5) / 7) - (@Jan1stDoW / 5)
  END

  RETURN CAST(@Year AS CHAR(4)) + '.' + RIGHT('00' + CAST(@WeekNumber AS VARCHAR), 2)
END