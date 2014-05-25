<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="BlogCommentsList.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogCommentsList" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="MonoXControls" %>
<%@ Register TagPrefix="MonoX" TagName="LightBox" Src="~/MonoX/controls/LightBox.ascx" %>

<asp:Panel ID="pnlContainer" runat="server">
    <div class="comment-holder">
        <h2 class="comment-title"><%= MonoSoftware.MonoX.Resources.BlogResources.Comments_Comments %></h2>
        <asp:Panel ID="pnlButtons" runat="server">
            <div class="comment-top" runat="server" ID="lbHeader">            

                    <asp:LinkButton runat="server" ID="btnDeleteSpam" CssClass="styled-button"></asp:LinkButton>
                    <asp:Literal runat="server" ID="ltlSeparator"></asp:Literal>
                    <asp:LinkButton runat="server" ID="btnDeleteUnapproved" CssClass="styled-button"></asp:LinkButton>

            </div>
        </asp:Panel>
    </div>
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