﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CMS.UIControls;
using CMS.GlobalHelper;
using CMS.ExtendedControls;
using CMS.CMSHelper;
using CMS.SettingsProvider;

public partial class CMSFormControls_Selectors_QuicklyInsertImage_Default : CMSDeskPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Validate query string
        if (!QueryHelper.ValidateHash("hash", "containerid"))
        {
            fileUploaderElem.StopProcessing = true;
        }
        else
        {
            // Ensure additional styles
            CurrentMaster.HeadElements.Visible = true;
            CurrentMaster.HeadElements.Text += CSSHelper.GetStyle("*{direction:ltr !important;}body{background:transparent !important;}input,input:focus,input:hover,input:active{border:none;border-color:transparent;outline:none;}");

            // Initialize uploader control properties by query string values
            fileUploaderElem.ImageWidth = 16;
            fileUploaderElem.ImageHeight = 18;
            fileUploaderElem.ImageUrl = "~/CMSAdminControls/CKeditor/plugins/CMSPlugins/images/QuicklyInsertImage.gif";
            fileUploaderElem.InnerDivHtml = HTMLHelper.RemoveScripts(QueryHelper.GetString("innerdivhtml", String.Empty));
            fileUploaderElem.InnerDivClass = QueryHelper.GetText("innerdivclass", String.Empty);
            fileUploaderElem.AdditionalStyle = QueryHelper.GetText("additionalstyle", String.Empty);
            fileUploaderElem.LoadingImageUrl = GetImageUrl("Design/Preloaders/preload16.gif");

            fileUploaderElem.FormGUID = QueryHelper.GetGuid("formguid", Guid.Empty);
            fileUploaderElem.NodeParentNodeID = QueryHelper.GetInteger("parentid", 0);
            fileUploaderElem.DocumentID = QueryHelper.GetInteger("documentid", 0);

            fileUploaderElem.SourceType = MediaSourceEnum.DocumentAttachments;

            string siteName = CMSContext.CurrentSiteName;
            string allowed = QueryHelper.GetString("allowedextensions", "");
            if (allowed == "")
            {
                allowed = SettingsKeyProvider.GetStringValue(siteName + ".CMSUploadExtensions");
            }
            fileUploaderElem.AllowedExtensions = allowed;

            fileUploaderElem.ResizeToWidth = QueryHelper.GetInteger("autoresize_width", 0);
            fileUploaderElem.ResizeToHeight = QueryHelper.GetInteger("autoresize_height", 0);
            fileUploaderElem.ResizeToMaxSideSize = QueryHelper.GetInteger("autoresize_maxsidesize", 0);

            fileUploaderElem.AfterSaveJavascript = "InsertImageOrMedia";
            fileUploaderElem.InsertMode = true;
            fileUploaderElem.IsLiveSite = false;
        }
    }
}
