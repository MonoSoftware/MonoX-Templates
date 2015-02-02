<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogCommentsList.ascx.cs" Inherits="Mono.Web.Parts.Blog.BlogCommentsList" %>
<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="MonoXControls" %>

<asp:Panel ID="pnlContainer" runat="server">
    <asp:Panel ID="pnlButtons" runat="server">
        <div class="comments">
            <h3 class="title--secondary" id="comments">Comments</h3>
            <asp:LinkButton runat="server" ID="btnDeleteSpam" CssClass="btn--small"></asp:LinkButton>
            <asp:Literal runat="server" ID="ltlSeparator"></asp:Literal>
            <asp:LinkButton runat="server" ID="btnDeleteUnapproved" CssClass="btn--small"></asp:LinkButton>
        </div>    
    </asp:Panel>
    <asp:ListView ID="lvItems" runat="server">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
        </LayoutTemplate>
        <ItemTemplate></ItemTemplate>
    </asp:ListView>
    <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true" AutoPaging="false">
        <PagerTemplate></PagerTemplate>
    </mono:Pager>
</asp:Panel>
