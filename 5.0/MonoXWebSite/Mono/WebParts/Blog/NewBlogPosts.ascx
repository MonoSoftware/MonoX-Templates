<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewBlogPosts.ascx.cs" Inherits="Mono.Web.Parts.Blog.NewBlogPosts" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>
<%@ Register TagPrefix="MonoX" TagName="Search" Src="~/MonoX/ModuleGallery/MonoXSearchBox.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="BlogPostList" Src="~/Mono/WebParts/Blog/BlogPostListHomePage.ascx" %>

<MonoX:BlogPostList ID="ctlBlogPostList" runat="server" RewritePageTitle="false" RetainBreaksInDescription="false" RssEnabled="true" IsHeaderVisible="false" MaxDescriptionChars="550" PageSize="3" MaxTitleChars="50" PagingEnabled="false" DateFormatString="MM/dd/yyyy" /> 
