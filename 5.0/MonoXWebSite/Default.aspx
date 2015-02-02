<%@ Page 
    Language="C#" 
    AutoEventWireup="True" 
    MasterPageFile="~/Mono/MasterPages/Default.Master"
    Theme="Mono" 
    Inherits="Mono.Web.Default" 
    Title="Mono Software - Content Management, Social Networking, Custom Development and eCTD Solutions" 
    Codebehind="Default.aspx.cs" %>
    
<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>    


<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.ModuleGallery" TagPrefix="ModuleGallery" %>
<%@ Register Src="~/Mono/WebParts/Blog/NewBlogPosts.ascx" TagPrefix="Mono" TagName="NewBlogPosts" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cp1" runat="server">
    <div class="header" id="header">
        <canvas id="demo-canvas" class="header--canvas"></canvas>
        <div class="header--content">
            <div class="l--row"><hr class="header--line" /></div>
            <div class="l--row">
                <div class="header--hero">
                    <h1 class="header--title">Free ASP.NET Content Management and <br />Social Networking Platform</h1>
                    <p class="header--sub">Build your own community or collaborative workspace using the technology you know.</p>
                    <a href="/Downloads/#MonoX" class="btn--inverse">Download MonoX</a>
                    <a href="http://demo.mono-software.com" class="btn--inverse">Visit Demo</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cp2" runat="server">
    <asp:ScriptManagerProxy id="scriptManagerProxy" runat="server"></asp:ScriptManagerProxy>
    <section class="l--row l--home">
        <article class="article group">

            <div class="l--main__invert home--columns">
                <h2 class="title--main title--fancy__small">Fast. Flexible. Responsive.</h2>
                <p class="article--paragraph-home article--fancy__big"> Inspired by the latest Web technologies and built on top of the Web parts infrastructure, MonoX features an intuitive, user-friendly user interface that supports drag and drop editing, WYSIWYG interface, responsive design layouts, advanced templating engine and personalization. 
                </p>

                <p class="article--paragraph-home">It provides everything you need to build fully-featured social environments, including user profiles, third-party authorization, user relationship modules, a multi-user blog engine with automatic anti-spam protection, photo albums, customizable group architecture, discussion boards, file galleries, support for activity streams, messaging, chat, video sharing, walls and comments.</p>
            </div>


            <div class="l--side__invert home--columns">
                <img alt="site hero" runat="server" src="~/App_Themes/Mono/img/hero2.png"/>
            </div>

            
            

        </article>
        
    </section>

    <section class="l--featured">
        <div class="l--row">
        <h2 class="title--main__center title--fancy__big">MonoX Features</h2>
        <div class="features">
                <div class="features--box">
                    <a href="http://demo.mono-software.com/MonoX/Mobile/Default.aspx" class="icon-mobile">
                        <h3 class="title--sub">MonoX Mobile</h3>
                        <span>You can go for a responsive design, or build a separate mobile version of your site.</span>
                    </a>
                </div>
                <div class="features--box">
                    <a href="http://demo.mono-software.com/MonoX/Pages/News.aspx" class="icon-news">
                        <h3 class="title--sub">News</h3>
                        <span>Quickly and easily present news and updates to your audience.</span>
                    </a>
                </div>
                <div class="features--box">
                    <a href="http://demo.mono-software.com/MonoX/Pages/SocialNetworking/EventCalendar.aspx" class="icon-calendar">
                        <h3 class="title--sub">Calendar</h3>
                        <span>Display and organize all kinds of events using an intuitive interface.</span>
                    </a>
                </div>
                <div class="features--box">
                    <a href="http://demo.mono-software.com/MonoX/Pages/SocialNetworking/Dashboard.aspx" class="icon-dashboard">
                        <h3 class="title--sub">Social Dashboard</h3>
                        <span>Show the most important social networking features in one place.</span>
                    </a>
                </div>
                <div class="features--box">
                    <a href="http://demo.mono-software.com/blog/posts/MonoX/" class="icon-blog">
                        <h3 class="title--sub">Blogs</h3>
                        <span>Install a multi-user blog system with anti-spam protection and support for customization.</span>
                    </a>
                </div>
                <div class="features--box">
                    <a href="http://demo.mono-software.com/MonoX/Pages/SocialNetworking/Discussion.aspx" class="icon-discussion">
                        <h3 class="title--sub">Discussion Boards</h3>
                        <span>Engage in conversation with full support for commenting, voting and moderation.</span>
                    </a>
                </div>
                <div class="features--box">
                    <a href="http://demo.mono-software.com/MonoX/Pages/SocialNetworking/PhotoGallery.aspx" class="icon-img">
                        <h3 class="title--sub">Media galleries</h3>
                        <span>Host and share videos, photos, resumes, or any other kind of binary attachments.</span>
                    </a>
                </div>
                <div class="features--box">
                    <a href="http://demo.mono-software.com/MonoX/Pages/SocialNetworking/Groups.aspx" class="icon-groups">
                        <h3 class="title--sub">Groups</h3>
                        <span>Allow users to interact with each other around common topics.</span>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <section class="l--row  l--home"> 
        <h2 class="title--main__center title--fancy__big">Knowledge is power. We love to share it.</h2>
        <Mono:NewBlogPosts runat="server" ID="ctlNewBlogPosts" />
    </section>
    <asp:Literal id="ltlScript" runat="server"></asp:Literal>
</asp:Content>