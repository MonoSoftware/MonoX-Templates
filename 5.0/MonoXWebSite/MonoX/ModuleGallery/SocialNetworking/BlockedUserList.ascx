<%@ Control Language="C#" 
    AutoEventWireup="true"     
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.BlockedUserList" 
    CodeBehind="BlockedUserList.ascx.cs" 
%>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="MonoX" %>

<div class="block-user">
    <asp:Panel ID="pnlSearch" runat="server" CssClass="PeopleSearch" DefaultButton="btnFilter">
        <div class="block-user-list">
            <div class="search-textbox">
                <asp:TextBox ID="tbUsersFilter" runat="server" />
            </div>
            <MonoX:StyledButton runat="server" ID="btnFilter" CausesValidation="false" OnClick="btnFilterUsers_Click" cssClass="secondary" />
            <MonoX:StyledButton runat="server" ID="btnClear" CausesValidation="false" OnClick="btnClearFilterUsers_Click" cssClass="secondary" />
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlContainer" runat="server">
        <asp:ListView ID="lvItems" runat="server">
            <LayoutTemplate>
                <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
            </LayoutTemplate>
            <ItemTemplate></ItemTemplate>
        </asp:ListView>
    </asp:Panel>
    <asp:Label runat="server" ID="lblMessage" CssClass="empty-message"></asp:Label>
    <div style="clear:both">
        <MonoX:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true" AutoPaging="false">
            <PagerTemplate></PagerTemplate>
        </MonoX:Pager>
    </div>
</div>

