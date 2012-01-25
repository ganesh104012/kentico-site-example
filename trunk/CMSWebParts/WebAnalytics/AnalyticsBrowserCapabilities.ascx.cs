using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CMS.PortalControls;
using CMS.GlobalHelper;
using CMS.CMSHelper;
using CMS.WebAnalytics;
using CMS.PortalEngine;

public partial class CMSWebParts_WebAnalytics_AnalyticsBrowserCapabilities : CMSAbstractWebPart
{
    #region "Properties"

    /// <summary>
    /// Indicates whether log resolution.
    /// </summary>
    public bool LogResolution
    {
        get
        {
            return ValidationHelper.GetBoolean(GetValue("LogResolution"), false);
        }
        set
        {
            SetValue("LogResolution", value);
        }
    }


    /// <summary>
    /// Indicates whether log color depth.
    /// </summary>
    public bool LogColorDepth
    {
        get
        {
            return ValidationHelper.GetBoolean(GetValue("LogColorDepth"), false);
        }
        set
        {
            SetValue("LogColorDepth", value);
        }
    }


    /// <summary>
    /// Indicates whether log resolution.
    /// </summary>
    public bool LogOperatingSystem
    {
        get
        {
            return ValidationHelper.GetBoolean(GetValue("LogOperatingSystem"), false);
        }
        set
        {
            SetValue("LogOperatingSystem", value);
        }
    }


    /// <summary>
    /// Indicates whether log flash.
    /// </summary>
    public bool LogFlash
    {
        get
        {
            return ValidationHelper.GetBoolean(GetValue("LogFlash"), false);
        }
        set
        {
            SetValue("LogFlash", value);
        }
    }


    /// <summary>
    /// Indicates whether log silverlight.
    /// </summary>
    public bool LogSilverlight
    {
        get
        {
            return ValidationHelper.GetBoolean(GetValue("LogSilverlight"), false);
        }
        set
        {
            SetValue("LogSilverlight", value);
        }
    }


    /// <summary>
    /// Indicates whether log java.
    /// </summary>
    public bool LogJava
    {
        get
        {
            return ValidationHelper.GetBoolean(GetValue("LogJava"), false);
        }
        set
        {
            SetValue("LogJava", value);
        }
    }

    #endregion


    #region "Methods"

    /// </summary>
    /// Content loaded event handler
    /// </summary>
    public override void OnContentLoaded()
    {
        base.OnContentLoaded();
        SetupControl();
    }


    /// <summary>
    /// Initializes the control properties.
    /// </summary>
    protected void SetupControl()
    {
        if (!StopProcessing && AnalyticsHelper.IsLoggingEnabled(CMSContext.CurrentSiteName, CMSContext.CurrentAliasPath))
        {
            // If already in session or livesite .. do not register info calling
            if ((SessionHelper.GetValue("BrowserCapatibilities") == null) && (ViewMode == ViewModeEnum.LiveSite))
            {
                Guid checkGuid = Guid.NewGuid();
                String parameters = String.Format("{0},{1},{2},{3},{4},{5},'{6}','{7}'", LogResolution.ToString().ToLower(), LogColorDepth.ToString().ToLower(),
                    LogOperatingSystem.ToString().ToLower(), LogSilverlight.ToString().ToLower(), LogJava.ToString().ToLower(), LogFlash.ToString().ToLower()
                    , ResolveUrl("~/CMSModules/WebAnalytics/Pages/Content/AnalyticsLog.aspx"), checkGuid.ToString());

                ScriptHelper.RegisterStartupScript(this, typeof(string), "BrowserCapatibilitiesInit", ScriptHelper.GetScript("collectBrowserData(" + parameters + ")"));
                ScriptHelper.RegisterScriptFile(Page, "~/CMSScripts/BrowserCapabilities.js");

                SessionHelper.SetValue("BrowserCapatibilities", checkGuid.ToString());
            }
        }
    }


    /// <summary>
    /// Reload control's data.
    /// </summary>
    public override void ReloadData()
    {
        base.ReloadData();
        SetupControl();
    }

    #endregion
}
