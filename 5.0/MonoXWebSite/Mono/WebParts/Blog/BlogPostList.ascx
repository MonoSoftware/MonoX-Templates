<%@ Control Language="C#" AutoEventWireup="True" Inherits="Mono.Web.Parts.Blog.BlogPostList"
    CodeBehind="BlogPostList.ascx.cs"%>
<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register TagPrefix="MonoX" TagName="LightBox" Src="~/MonoX/controls/LightBox.ascx" %>
<%@ Register Src="~/MonoX/controls/SyntaxHighlighter/SyntaxHighlighter.ascx" TagPrefix="mono"
    TagName="SyntaxHighlighter" %>

<mono:SyntaxHighlighter ID="syntaxHighlighter" runat="server" />

<asp:Panel ID="pnlContainer" runat="server">

        <asp:Literal runat="server" ID="ltlH1Open"></asp:Literal>            
        <h1 runat="server" id="headerTitle"  Visible="false"><asp:Literal ID="ltlBlogName" runat="server" Visible="false"></asp:Literal></h1>
        <asp:Literal runat="server" ID="ltlH1Close"></asp:Literal>
        <asp:Literal ID="ltlBlogDescription" runat="server" Visible="false"></asp:Literal>

            <div class="settings">
                <ul class="discussion--options" id="panFilter" runat="server">
                    <li title="<%= MonoSoftware.MonoX.Resources.BlogResources.BlogPostList_Filter_Title %>">
                        <asp:HyperLink ID="lnkCurrent" runat="server" CssClass="btn--small" ></asp:HyperLink>
                        <ul class="blog--dropdown">
                            <li><asp:HyperLink ID="lnkFirst" CssClass="btn--action" runat="server" ></asp:HyperLink></li>
                            <li><asp:HyperLink ID="lnkSecond" CssClass="btn--action" runat="server" ></asp:HyperLink></li>
                        </ul>
                    </li>
                </ul>
                <asp:HyperLink runat="server" ID="lnkComments" CssClass="btn--small"></asp:HyperLink>
                <asp:HyperLink runat="server" ID="lnkSettings" CssClass="btn--small"></asp:HyperLink>
                <asp:HyperLink runat="server" ID="lnkAddNew" CssClass="btn--small"></asp:HyperLink>
            </div>


    <asp:Literal runat="server" ID="ltlHeaderSpace"></asp:Literal>  
    <asp:ListView ID="lvItems" runat="server">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
        </LayoutTemplate>
        <ItemTemplate>
        </ItemTemplate>
    </asp:ListView>
    <asp:Label runat="server" ID="lblNoData"></asp:Label>
    <mono:Pager runat="server" ID="pager" 
        PageSize="10" 
        NumericButtonCount="5" 
        AllowCustomPaging="true"
        AutoPaging="false">
        <PagerTemplate>
        </PagerTemplate>
    </mono:Pager>
</asp:Panel>
