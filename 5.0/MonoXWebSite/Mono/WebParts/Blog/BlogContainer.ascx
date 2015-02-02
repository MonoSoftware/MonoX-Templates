<%@ Control Language="C#" AutoEventWireup="True" Inherits="Mono.Web.Parts.Blog.BlogContainer" Codebehind="BlogContainer.ascx.cs" %>
<%@ Register TagPrefix="MonoX" TagName="BlogPostList" Src="~/Mono/WebParts/Blog/BlogPostList.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="BlogPostEdit" Src="~/Mono/WebParts/Blog/BlogPostEdit.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="BlogPostView" Src="~/Mono/WebParts/Blog/BlogPostView.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="BlogSettings" Src="~/Mono/WebParts/Blog/BlogSettings.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="BlogComments" Src="~/Mono/WebParts/Blog/BlogCommentsList.ascx" %>

<div class="blog spacer--box">
    <MonoX:BlogPostList ID="blogPostList" runat="server" DateFormatString="MM/dd/yyyy" RssEnabled="true" TagSeparatorString="" />
    <MonoX:BlogPostEdit ID="blogPostEdit" runat="server" />
    <MonoX:BlogPostView ID="blogPostView" runat="server" DateFormatString="MM/dd/yyyy" TagSeparatorString="" />
    <MonoX:BlogSettings ID="blogSettings" runat="server" />
    <MonoX:BlogComments ID="blogComments" runat="server" />
</div>