<%@ Control Language="C#" AutoEventWireup="True" Inherits="Mono.Web.Parts.Blog.BlogPostListHomePage"
    CodeBehind="BlogPostListHomePage.ascx.cs" %>
<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register TagPrefix="MonoX" TagName="LightBox" Src="~/MonoX/controls/LightBox.ascx" %>
<%@ Register Src="~/MonoX/controls/SyntaxHighlighter/SyntaxHighlighter.ascx" TagPrefix="mono"
    TagName="SyntaxHighlighter" %>

<mono:SyntaxHighlighter ID="syntaxHighlighter" runat="server" />

    <asp:Panel ID="pnlContainer" runat="server">
        <div runat="server" ID="lbHeader">
        <MonoX:LightBox runat="server" ID="lbHeaderLB">
            <ContentTemplate>

                <asp:Literal runat="server" ID="ltlH1Open"><h1></asp:Literal><asp:Literal ID="ltlBlogName" runat="server"></asp:Literal><asp:Literal runat="server" ID="ltlH1Close"></h1></asp:Literal>
                <asp:Literal ID="ltlBlogDescription" runat="server"></asp:Literal>

                    <ul class="first" id="panFilter" runat="server">
                        <li title="<%= MonoSoftware.MonoX.Resources.BlogResources.BlogPostList_Filter_Title %>">
                            <asp:HyperLink ID="lnkCurrent" runat="server"></asp:HyperLink>
                            <ul class="level0">
                                <li>
                                    <asp:HyperLink ID="lnkFirst" runat="server"></asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="lnkSecond" runat="server"></asp:HyperLink></li>
                            </ul>
                        </li>
                    </ul>
                    <asp:HyperLink runat="server" ID="lnkComments"></asp:HyperLink>
                    <asp:HyperLink runat="server" ID="lnkSettings"></asp:HyperLink>
                    <asp:HyperLink runat="server" ID="lnkAddNew"></asp:HyperLink>


        </ContentTemplate>
        </MonoX:LightBox>  
        </div>    
    <asp:Literal runat="server" ID="ltlHeaderSpace"><br /></asp:Literal>  
    <asp:ListView ID="lvItems" runat="server" GroupItemCount="1">
        <LayoutTemplate>
            <div class="clearfix">
                <asp:PlaceHolder runat="server" ID="groupPlaceholder"></asp:PlaceHolder>
            </div>
        </LayoutTemplate>
        <GroupTemplate>
            <div class="blog--home-post">
                <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
            </div>
        </GroupTemplate>
        <ItemTemplate>
        </ItemTemplate>
    </asp:ListView>
    <asp:Label runat="server" ID="lblNoData"></asp:Label>
    <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true"
        AutoPaging="false">
        <PagerTemplate>
        </PagerTemplate>
    </mono:Pager>
</asp:Panel>

<%--<asp:Panel ID="pnlContainer" runat="server">        
    <div class="blog-top">
        <asp:Literal runat="server" ID="ltlH1Open"></asp:Literal>
        <div class="blog-action-container">
            <asp:HyperLink runat="server" ID="lnkComments" CssClass="BlogComments MarginBottom"></asp:HyperLink>
            <asp:HyperLink runat="server" ID="lnkSettings" CssClass="BlogSettings MarginBottom"></asp:HyperLink>
            <asp:HyperLink runat="server" ID="lnkAddNew" CssClass="AddBlogPost MarginBottom"></asp:HyperLink>
        </div>
        <h1><asp:Literal ID="ltlBlogName" runat="server"></asp:Literal></h1>
        <asp:Literal runat="server" ID="ltlH1Close"></asp:Literal>
        <span><asp:Literal ID="ltlBlogDescription" runat="server"></asp:Literal></span>        
    </div>            
    <asp:Literal runat="server" ID="ltlHeaderSpace"><br /></asp:Literal>  
    <asp:ListView ID="lvItems" runat="server" GroupItemCount="2">        
        <LayoutTemplate>
            <table cellpadding="0" cellspacing="0">
                <asp:PlaceHolder runat="server" ID="groupPlaceholder"></asp:PlaceHolder>
            </table>
        </LayoutTemplate>
        <GroupTemplate>
            <tr>
                <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
        </ItemTemplate>
    </asp:ListView>
    <asp:Literal runat="server" ID="ltlNoData"></asp:Literal>
    <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true"
        AutoPaging="false">
        <PagerTemplate>
        </PagerTemplate>
    </mono:Pager>
</asp:Panel>--%>
