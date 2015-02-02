<%@ Page Language="C#" 
    MasterPageFile="~/Mono/MasterPages/Default.master"
    AutoEventWireup="true" 
    Inherits="Mono.Web.Blog" 
    Title="MonoX Blog"
    Theme="Mono"
    Codebehind="Blog.aspx.cs" 
    MaintainScrollPositionOnPostback="true"         
    %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>   
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register TagPrefix="MonoX" TagName="Editor" Src="~/MonoX/ModuleGallery/MonoXHtmlEditor.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="BlogContainer" Src="~/Mono/WebParts/Blog/BlogContainer.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="BlogCategories" Src="~/Mono/WebParts/Blog/BlogCategories.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="TagCloud" Src="~/MonoX/ModuleGallery/Blog/TagCloud.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="BlogInfo" Src="~/MonoX/ModuleGallery/Blog/BlogInfo.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="BlogList" Src="~/MonoX/ModuleGallery/Blog/BlogList.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>

<asp:Content ID="Cp1" ContentPlaceHolderID="Cp1" runat="server">
    <div class="l--cover">
        <div class="l--row">
            <h1 class="title--primary"><span>Knowledge</span> is power. We love to <span>share</span> it.</h1>
            <p>News related to MonoX and <span>latest developments</span> in our community.</p>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Cp2" ContentPlaceHolderID="Cp2" runat="server">
    <div class="l--row">
            <div class="l--main__invert">
            <portal:PortalWebPartZoneTableless HeaderText='<%$ Code: PageResources.Zone_LeftPartZone %>' ID="leftPartZone" runat="server" Width="100%" ChromeTemplateFile="LeftColumn.htm">
                <ZoneTemplate>
                    <MonoX:BlogContainer ID="blogContainer" runat="server" UsePrettyPhoto="true" GravatarRenderType="Gravatar" />
                </ZoneTemplate>
            </portal:PortalWebPartZoneTableless>    

            <portal:PortalWebPartZoneTableless HeaderText='<%$ Code: PageResources.Zone_RightPartZone %>' ID="PortalWebPartZone1" runat="server" Width="100%" ChromeTemplateFile="RightColumn.htm" ShowChromeForNonAdmins="true" Visible="false">
                <ZoneTemplate>                    
                </ZoneTemplate>
            </portal:PortalWebPartZoneTableless>
            </div>
        <div class="l--side__invert spacer--box">
	        
            <MonoX:BlogCategories ID="blogCategories" CacheDuration="600" HideIfEmpty="true" runat="server" Visible="true" CssClass="blog--side-box"/>
            <div class="blog--side-box">
                <h3 class="title--secondary">Tag Cloud</h3>
                <MonoX:TagCloud ID="tagCloud" CacheDuration="600" HideIfEmpty="true" FontSizes="xx-small,x-small,small,medium,large,x-large,xx-large" runat="server" Visible="true"/>
            </div>
            <MonoX:BlogList ID="blogList" CacheDuration="600" HideIfEmpty="true" runat="server" PageSize="5" Template="BlogListShort"  Visible="false"/>
            <MonoX:BlogInfo ID="blogInfo" CacheDuration="600" HideIfEmpty="true" runat="server" Visible="false" CssClass="blog--side-box"  />
            
            </div>
    </div>
</asp:Content>