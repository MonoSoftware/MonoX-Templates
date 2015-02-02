<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogCategories.ascx.cs" Inherits="Mono.Web.Parts.Blog.BlogCategories" %>
<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>

<asp:Panel ID="pnlContainer" runat="server">
    <h3 class="title--secondary">Blog Categories</h3>
<asp:ListView ID="lvItems" runat="server">
    <LayoutTemplate>
        <ul class="blog--category-list">
            <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
        </ul>
    </LayoutTemplate>
    <ItemTemplate></ItemTemplate>
</asp:ListView>
<asp:Literal runat="server" ID="ltlNoData"></asp:Literal>
<mono:Pager runat="server" ID="pager" PageSize="20" NumericButtonCount="5" AllowCustomPaging="true" AutoPaging="false">
    <PagerTemplate></PagerTemplate>
</mono:Pager>

</asp:Panel>
