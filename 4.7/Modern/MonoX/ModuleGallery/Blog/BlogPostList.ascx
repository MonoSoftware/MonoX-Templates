<%@ Control
    Language="C#"
    AutoEventWireup="true"
    Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogPostList"
    CodeBehind="BlogPostList.ascx.cs" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register Src="~/MonoX/controls/SyntaxHighlighter/SyntaxHighlighter.ascx" TagPrefix="mono" TagName="SyntaxHighlighter" %>

<mono:SyntaxHighlighter ID="syntaxHighlighter" runat="server" />
<asp:Panel ID="pnlContainer" runat="server">
    <div class="blog-top-section" runat="server" id="lbHeader">
        
        

        <div class="blog-info">
            <asp:Literal runat="server" ID="ltlH1Open"><h1></asp:Literal><asp:Literal ID="ltlBlogName" runat="server"></asp:Literal><asp:Literal runat="server" ID="ltlH1Close"></h1></asp:Literal>
            <p><asp:Literal ID="ltlBlogDescription" runat="server"></asp:Literal></p>
        </div>
        <div class="main-options">
            <div class="button-wrapper">
                <ul class="first" id="panFilter" runat="server">
                    <li title="<%= MonoSoftware.MonoX.Resources.BlogResources.BlogPostList_Filter_Title %>"> 
                        <asp:HyperLink CssClass="blog-button" ID="lnkCurrent" runat="server" ></asp:HyperLink>
                        <ul class="level0">
                            <li><asp:HyperLink CssClass="blog-button" ID="lnkFirst" runat="server" ></asp:HyperLink></li>
                            <li><asp:HyperLink CssClass="blog-button" ID="lnkSecond" runat="server" ></asp:HyperLink></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="button-wrapper">
                <asp:HyperLink CssClass="blog-button"  runat="server" ID="lnkComments"></asp:HyperLink>
            </div>
            <div class="button-wrapper">
                <asp:HyperLink CssClass="blog-button"  runat="server" ID="lnkSettings"></asp:HyperLink>
            </div>
            <div class="button-wrapper">
                <asp:HyperLink runat="server" ID="lnkAddNew" CssClass="add-new-post"></asp:HyperLink>
            </div>
        </div>
    </div>  
    <asp:Literal runat="server" ID="ltlHeaderSpace"></asp:Literal> 
    <asp:ListView ID="lvItems" runat="server">
        <LayoutTemplate>
        <div class="blog-list-post-holder">
            <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
        </div>
        </LayoutTemplate>
        <ItemTemplate>
        </ItemTemplate>
    </asp:ListView>
    <asp:Label runat="server" ID="lblNoData" CssClass="empty-list"></asp:Label>
    <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true"
        AutoPaging="false">
        <PagerTemplate>
        </PagerTemplate>
    </mono:Pager>
</asp:Panel>
