USE [DB_1]

DROP FUNCTION IF EXISTS [dbo].[GetDate_l19] 

/****** Object:  UserDefinedFunction [dbo].[GetDate_l19]    Script Date: 2022/05/07 12:37:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		yunoki
-- Create date: 2022/05/07
-- Description:	ï‘ÇËílÅ®yyyymmdd hh:mm:ss å^Å®nvarchar
-- =============================================
CREATE FUNCTION [dbo].[GetDate_l19]
(
)
RETURNS nvarchar(19)
AS
BEGIN
	RETURN cast(cast(GETDATE() as date) as nvarchar) + ' ' + substring(cast(cast(GETDATE() as time) as nvarchar),1,8)
END
GO


