IF EXISTS (
  SELECT * 
  FROM dbo.sysobjects 
  WHERE ID = OBJECT_ID(N'[dbo].[udf_ISODoW]') 
    AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION [dbo].[udf_ISODoW]
GO
/* ISO dates - udf_ISODoW
 * Kees Hiemstra
 * Version 1.00 (2005-10-29)
 * ----------------------------------------------------------------------------
 * According to the ISO Standards the week starts with Monday. The start of
 * the week in SQL Server is depending of SET DATEFIRST, but this command
 * can't be used inside a function.
 * This function calculates the Day of the Week according to the ISO Standard,
 * and is independend of DATEFIRST setting.
 * Monday = 1, Sunday = 7.
 */
CREATE FUNCTION udf_ISODoW(
  @InputDate AS DATETIME
  ) RETURNS TINYINT
AS
BEGIN
  RETURN ((@@DateFirst + DATEPART(DW, @InputDate) - 2) % 7) + 1
END