<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="GroupList.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.GroupList" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>

<asp:Panel ID="pnlContainer" runat="server">
    <div class="top-section">
        <h1><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></h1>
        <div class="main-options">
            <div class="button-wrapper">
                <asp:HyperLink CssClass="blog-button" runat="server" ID="lnkMyGroups"></asp:HyperLink>
            </div>
            <div class="button-wrapper">
                <asp:HyperLink CssClass="blog-button" runat="server" ID="lnkAllGroups"></asp:HyperLink>
            </div>
            <div class="button-wrapper">
                <asp:HyperLink CssClass="add-new-post" runat="server" ID="lnkAddNew"></asp:HyperLink>
            </div>
        </div>
    </div>
    <div class="group-list">
        <asp:ListView ID="lvItems" runat="server">
            <LayoutTemplate>
                <div class="clearfix">
                    <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                </div>
            </LayoutTemplate>
            <ItemTemplate></ItemTemplate>
        </asp:ListView>
    </div>
    <asp:Label runat="server" ID="lblNoData" class="empty-message"></asp:Label>
    <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true" AutoPaging="false">
        <PagerTemplate></PagerTemplate>
    </mono:Pager>
</asp:Panel>