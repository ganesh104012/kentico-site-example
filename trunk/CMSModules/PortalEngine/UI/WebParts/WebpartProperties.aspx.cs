using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using CMS.ExtendedControls;
using CMS.GlobalHelper;
using CMS.UIControls;

public partial class CMSModules_PortalEngine_UI_WebParts_WebpartProperties : CMSWebPartPropertiesPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterModalPageScripts();

        //this.frameHeader.Attributes.Add("src", "webpartproperties_header.aspx" + URLHelper.Url.Query);
        rowsFrameset.Attributes["rows"] = "72, *";
    }
}
