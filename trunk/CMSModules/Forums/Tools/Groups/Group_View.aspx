<%@ Page Language="C#" AutoEventWireup="true" Inherits="CMSModules_Forums_Tools_Groups_Group_View"
    MasterPageFile="~/CMSMasterPages/UI/SimplePage.master" Theme="Default" ValidateRequest="false" CodeFile="Group_View.aspx.cs" %>

<%@ Register Src="~/CMSModules/Forums/Controls/ForumDivider.ascx" TagName="Forum"
    TagPrefix="cms" %>
<asp:Content ContentPlaceHolderID="plcContent" ID="content" runat="server">
    <ajaxToolkit:ToolkitScriptManager runat="server" ID="manScript" />
    <cms:Forum ID="Forum1" runat="server" UseFlatView="true" RedirectToUserProfile="false" />
</asp:Content>
