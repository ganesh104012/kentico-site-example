<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CMSMasterPages/UI/SimplePage.master"
    Title="Membership properties" Inherits="CMSModules_Membership_Pages_Membership_New"
    Theme="Default" CodeFile="New.aspx.cs" %>

<%@ Register Src="~/CMSModules/Membership/Controls/Membership/Edit.ascx" TagName="MembershipEdit"
    TagPrefix="cms" %>
<asp:Content ID="cntBody" runat="server" ContentPlaceHolderID="plcContent">
    <cms:MembershipEdit ID="editElem" runat="server" IsLiveSite="false" />
</asp:Content>
