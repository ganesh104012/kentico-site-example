<%@ Page Language="C#" AutoEventWireup="true" Inherits="CMSModules_Membership_Pages_Roles_Role_New"
    MasterPageFile="~/CMSMasterPages/UI/SimplePage.master" Title="Roles - New Role" Theme="Default" CodeFile="Role_New.aspx.cs" %>

<%@ Register Src="~/CMSModules/Membership/Controls/Roles/RoleEdit.ascx" TagName="RoleEdit" TagPrefix="cms" %>

<asp:Content ContentPlaceHolderID="plcContent" ID="content" runat="server">
    <cms:RoleEdit Id="roleEditElem" runat="server" />
</asp:Content>