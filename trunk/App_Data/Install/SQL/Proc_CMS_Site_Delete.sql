CREATE PROCEDURE [Proc_CMS_Site_Delete]
	@SiteID int
AS
BEGIN
  DELETE FROM CMS_Site WHERE SiteID = @SiteID
END
