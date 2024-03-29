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

using CMS.GlobalHelper;
using CMS.UIControls;

public partial class CMSAdminControls_Wizard_Header : CMSUserControl
{
    /// <summary>
    /// Header title text.
    /// </summary>
    public string Title
    {
        get
        {
            return lblTitle.Text;
        }
        set
        {
            lblTitle.Text = value;
        }
    }


    /// <summary>
    /// Header description text.
    /// </summary>
    public string Description
    {
        get
        {
            return lblDescription.Text;
        }
        set
        {
            lblDescription.Text = value;
        }
    }


    /// <summary>
    /// Header header text.
    /// </summary>
    public string Header
    {
        get
        {
            return lblHeader.Text;
        }
        set
        {
            lblHeader.Text = value;
        }
    }


    /// <summary>
    /// Header description visible.
    /// </summary>
    public bool DescriptionVisible
    {
        get
        {
            return plcDescription.Visible;
        }
        set
        {
            plcDescription.Visible = value;
        }
    }


    /// <summary>
    /// Header title visible.
    /// </summary>
    public bool TitleVisible
    {
        get
        {
            return plcTitle.Visible;
        }
        set
        {
            plcTitle.Visible = value;
        }
    }


    /// <summary>
    /// Header header visible.
    /// </summary>
    public bool HeaderVisible
    {
        get
        {
            return lblHeader.Visible;
        }
        set
        {
            lblHeader.Visible = value;
        }
    }
}
