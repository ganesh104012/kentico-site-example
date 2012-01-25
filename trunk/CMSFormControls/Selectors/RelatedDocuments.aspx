<%@ Page Title="Relationship - Select document" Language="C#" MasterPageFile="~/CMSMasterPages/UI/Dialogs/ModalDialogPage.master"
    AutoEventWireup="true" CodeFile="RelatedDocuments.aspx.cs" Inherits="CMSFormControls_Selectors_RelatedDocuments"
    Theme="Default" %>

<%@ Register Src="~/CMSModules/Content/Controls/Relationships/AddRelatedDocument.ascx"
    TagName="AddRelatedDocument" TagPrefix="cms" %>
<asp:Content ID="cntContent" ContentPlaceHolderID="plcContent" runat="server">
    <div class="PageContent">
        <asp:Label ID="lblInfo" runat="server" CssClass="InfoLabel" EnableViewState="false" />
        <cms:AddRelatedDocument ID="addRelatedDocument" runat="server" IsLiveSite="false" />
    </div>
</asp:Content>
<asp:Content ID="cntFooter" ContentPlaceHolderID="plcFooter" runat="server">
    <div class="FloatRight">
        <cms:LocalizedButton ID="btnSave" runat="server" CssClass="SubmitButton" ResourceString="general.save"
            EnableViewState="false" />
        <cms:LocalizedButton ID="btnClose" runat="server" CssClass="SubmitButton" ResourceString="general.close"
            EnableViewState="false" />
    </div>
    <asp:Literal ID="ltlScript" runat="server" EnableViewState="false" />
</asp:Content>
