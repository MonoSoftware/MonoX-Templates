<%@ Control
    Language="C#"
    AutoEventWireup="True"
    CodeBehind="BlockUser.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.BlockUser" %>

<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="MonoX" TagName="InvitationList" Src="~/MonoX/ModuleGallery/SocialNetworking/InvitationList.ascx" %>
<%@ Register Src="~/MonoX/controls/UserPicker.ascx" TagPrefix="MonoX" TagName="UserSearch" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server">
</asp:ScriptManagerProxy>

<div class="people-search block-user">
    <asp:Literal ID="ltlInfoText" runat="server" ></asp:Literal> 
    <asp:Panel ID="pnlSearch" runat="server" CssClass="PeopleSearch">
    <div class="search-textbox">
        <MonoX:UserSearch ID="userSearch" runat="server" UserFilterMode="ShowAllUsers" AutoCompleteSeparator="">
        </MonoX:UserSearch>
    </div>
    </asp:Panel>
    <asp:Panel ID="pnlActionPanel" runat="server" CssClass="jq_monoxPeopleSearchCommand">
        <MonoX:StyledButton runat="server" ID="btnBlock" CausesValidation="true" OnClick="btnBlock_Click" cssClass="secondary" />
        <MonoX:StyledButton runat="server" ID="btnViewProfile" CausesValidation="false" OnClick="btnViewProfile_Click" cssClass="secondary" />
    <div style="clear: both">
        <asp:Label runat="server" ID="lblMessage" class="empty-message"></asp:Label>
    </div>
    </asp:Panel>
</div>