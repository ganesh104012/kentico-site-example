<%@ Page Language="C#" AutoEventWireup="true" Inherits="CMSFormControls_LiveSelectors_PublicImageEditor"
    Theme="Default" MasterPageFile="~/CMSMasterPages/LiveSite/Dialogs/ModalDialogPage.master"
    Title="Edit image" CodeFile="PublicImageEditor.aspx.cs" %>

<%@ Register Src="~/CMSAdminControls/ImageEditor/ImageEditor.ascx" TagName="ImageEditor"
    TagPrefix="cms" %>
<asp:Content ID="cntBody" runat="server" ContentPlaceHolderID="plcContent">
    <div class="PageContent">
        <cms:ImageEditor ID="imageEditor" runat="server" IsLiveSite="true" EnableViewState="true" />
    </div>
</asp:Content>
<asp:Content ID="cntFooter" runat="server" ContentPlaceHolderID="plcFooter">
    <cms:CMSUpdatePanel ID="updPanelFooter" runat="server">
        <ContentTemplate>
            <div class="FloatLeft">
                <cms:LocalizedButton ID="btnUndo" runat="server" CssClass="SubmitButton" ResourceString="general.undo"
                    EnableViewState="false" />&nbsp;&nbsp;<cms:LocalizedButton ID="btnRedo" runat="server"
                        CssClass="SubmitButton" ResourceString="general.redo" EnableViewState="false" />
            </div>
            <div class="FloatRight">
                <cms:LocalizedButton ID="btnSave" runat="server" CssClass="LongSubmitButton" ResourceString="img.savechanges"
                    EnableViewState="false" />
                <cms:LocalizedButton ID="btnClose" runat="server" CssClass="SubmitButton" ResourceString="general.close"
                    EnableViewState="false" />
            </div>
        </ContentTemplate>
    </cms:CMSUpdatePanel>
    <asp:Literal ID="ltlScript" runat="server" EnableViewState="false" />
</asp:Content>
