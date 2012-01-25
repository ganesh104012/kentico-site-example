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
using System.Text.RegularExpressions;

using CMS.GlobalHelper;
using CMS.Forums;
using CMS.CMSHelper;

public partial class CMSModules_Forums_Controls_Layouts_Tree_SearchResults : ForumViewer
{
    private string pathSeparator = "&nbsp;&gt;&nbsp;";

    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet results = GetSearchDataSet();

        // Bind the results to the control displaying it
        if (!DataHelper.DataSourceIsEmpty(results))
        {
            this.uniForumPosts.DataSource = results;
            this.uniForumPosts.DataBind();

            #region "Results info"

            string path = String.Empty;
            string[] splited = null;

            // Search in threads
            if (this.SearchInThreads != String.Empty)
            {
                splited = this.SearchInThreads.Split(new string[1] { ";" }, StringSplitOptions.RemoveEmptyEntries);
                if ((splited != null) && (splited.Length == 1))
                {
                    // Get post info
                    ForumPostInfo fpi = ForumPostInfoProvider.GetForumPostInfo(ValidationHelper.GetInteger(splited[0], 0));
                    if (fpi != null)
                    {
                        // Path is post subject
                        path = HTMLHelper.HTMLEncode(fpi.PostSubject);

                        // Get forum info
                        ForumInfo fi = ForumInfoProvider.GetForumInfo(fpi.PostForumID);
                        if (fi != null)
                        {
                            // Path is forum display name and post subject
                            path = HTMLHelper.HTMLEncode(fi.ForumDisplayName) + pathSeparator + path;

                            // Get forum group info
                            ForumGroupInfo fgi = ForumGroupInfoProvider.GetForumGroupInfo(fi.ForumGroupID);
                            if (fgi != null)
                            {
                                // Path is combination of forum group display name, forum display name and post subject
                                path = HTMLHelper.HTMLEncode(fgi.GroupDisplayName) + pathSeparator + path;
                            }
                        }

                        path = GetString("ForumSearch.InThread") + path;
                    }
                }
            }
            // Search in forums
            else if (this.SearchInForums != String.Empty)
            {
                splited = this.SearchInForums.Split(new string[1] { ";" }, StringSplitOptions.RemoveEmptyEntries);
                if ((splited != null) && (splited.Length == 1))
                {
                    // Get forum info
                    ForumInfo fi = ForumInfoProvider.GetForumInfo(ValidationHelper.GetInteger(splited[0], 0));
                    if (fi != null)
                    {
                        // Path is forum display name
                        path = HTMLHelper.HTMLEncode(fi.ForumDisplayName);

                        // Get forum group info
                        ForumGroupInfo fgi = ForumGroupInfoProvider.GetForumGroupInfo(fi.ForumGroupID);
                        if (fgi != null)
                        {
                            // Path is from group display name and forum group display name
                            path = HTMLHelper.HTMLEncode(fgi.GroupDisplayName) + pathSeparator + path;
                        }

                        path = GetString("ForumSearch.InForum") + path;
                    }
                }
            }
            // Search in forum groups
            else if (this.SearchInGroups != null)
            {
                splited = this.SearchInGroups.Split(new string[1] { ";" }, StringSplitOptions.RemoveEmptyEntries);

                if ((splited != null) && (splited.Length == 1))
                {
                    // Get forum group info
                    ForumGroupInfo fgi = ForumGroupInfoProvider.GetForumGroupInfo(splited[0], this.SiteID, this.CommunityGroupID);
                    if (fgi != null)
                    {
                        // Path is forum group display name
                        path = HTMLHelper.HTMLEncode(fgi.GroupDisplayName);

                        path = GetString("ForumSearch.InForumGroup") + path;
                    }
                }
            }


            // Format results info
            ltlResultsInfo.Text = "<div class=\"ForumSearchResultsInfo\">" + String.Format(GetString("ForumSearch.SearchResultsInfo"), HTMLHelper.HTMLEncode(QueryHelper.GetString("searchtext", "")), path, results.Tables[0].Rows.Count) + "</div>";

            #endregion
        }
        else
        {
            // No results
            lblNoResults.Visible = true;
            plcResults.Visible = false;
            lblNoResults.Text = this.SearchNoResults;
        }
    }


    /// <summary>
    /// Encode text
    /// </summary>
    /// <param name="value">Input value</param>
    public string Encode(object value)
    {
        return HTMLHelper.HTMLEncode(ValidationHelper.GetString(value, ""));
    }
}

