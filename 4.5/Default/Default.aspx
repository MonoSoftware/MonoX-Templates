<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    MasterPageFile="~/MonoX/MasterPages/Default.master"
    Theme="Default"
    Inherits="MonoSoftware.MonoX.Pages.Default" 
    Title="MonoX - Portal Framework for ASP.NET" 
    Codebehind="Default.aspx.cs" %>
    
<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>   
 
<%@ Register TagPrefix="MonoX" TagName="Editor" Src="~/MonoX/ModuleGallery/MonoXHtmlEditor.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="Rss" Src="~/MonoX/ModuleGallery/RssReader.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.ModuleGallery" TagPrefix="ModuleGallery" %>
<%@ Register TagPrefix="MonoX" TagName="AdModule" Src="~/MonoX/ModuleGallery/AdModule.ascx"  %>
<%@ Register TagPrefix="MonoX" TagName="SlideShow" Src="~/MonoX/ModuleGallery/SlideShow.ascx"  %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="server">

<div class="main"> 
    <table cellpadding="0" cellspacing="0" class="two-columns">
	    <tr>
    	    <td class="left-column">    	         	         	        	        
    	        <portal:PortalWebPartZoneTableless ID="leftWebPartZone" runat="server" Width="100%" ChromeTemplateFile="Standard.htm" HeaderText='<%$ Code: PageResources.Zone_LeftPartZone %>'>
                    <ZoneTemplate>
                        <MonoX:Editor runat="server" ID="editor1" Title='<%$ Code: PageResources.Title_LeftSection %>' DefaultDocumentTitle='<%$ Code: PageResources.Title_LeftSection %>' >
                        <DefaultContent>
        	                <h2>Content Management</h2>
        	                <img src="~/App_Themes/Default/img/content-management-icon.png" alt="Content management" />
        	                <div>
        	                Inspired by the latest Web technologies and built on top of the Web parts infrastructure, 
        	                MonoX allows you to design and develop next generation ASP.NET Web 
        	                portals and applications. It features an intuitive, user-friendly user interface that supports Web parts framework, 
        	                drag and drop, WYSIWYG interface, content versioning, advanced security model, cross-browser support, 
        	                advanced templating engine and multi-level personalization.                     
                            <ul>
                                <li><a href="~/MonoX/Pages/Features.aspx">&gt;&gt; Features</a> </li>
                                <li><a href="~/MonoX/Pages/AdditionalResources.aspx">&gt;&gt; Related resources</a> </li>
                                <li><a href="~/MonoX/Pages/News.aspx">&gt;&gt; News</a> </li>
                                <li><a href="~/MonoX/Pages/SocialNetworking/EventCalendar.aspx">&gt;&gt; Calendar</a> </li>
                                <li><a href="~/ContentPage/ChangeLog/">&gt;&gt; Change log</a> </li>                                                            
			                </ul>
                            </div>
                        </DefaultContent>    
                        </MonoX:Editor>                
                    </ZoneTemplate>
                </portal:PortalWebPartZoneTableless>                             
            </td>
            <td class="right-column">
                <portal:PortalWebPartZoneTableless ID="rightPartZone" runat="server" Width="100%" ChromeTemplateFile="Standard.htm" HeaderText='<%$ Code: PageResources.Zone_RightPartZone %>'>
                <ZoneTemplate>
                    <MonoX:Editor runat="server" ID="editor2" Title='<%$ Code: PageResources.Title_RightSection %>' DefaultDocumentTitle='<%$ Code: PageResources.Title_RightSection %>'>
                    <DefaultContent>
        	            <h2>Social Networking</h2>
        	            <img src="~/App_Themes/Default/img/social-networking-icon.png" alt="Social networking" />
        	            <div>
        	            MonoX comes with everything you need to build fully-featured social environments, including:  user profiles, OpenID support, friendship modules, 
        	            scalable multi-user blog engine with automatic anti-spam protection, photo albums, customizable group architecture with support for public and private groups,
        	            discussion boards, file galleries, support for activity streams (event logs), messaging, video conversion and sharing, wall and comments.
			            <ul>
			                    <li><a href="~/MonoX/Pages/SocialNetworking/Dashboard.aspx">&gt;&gt; Social networking dashboard</a> </li>
                                <li><a href="~/blog/posts/MonoX/">&gt;&gt; Blogs</a> </li>
                                <li><a href="~/MonoX/Pages/SocialNetworking/Discussion.aspx">&gt;&gt; Discussion boards</a> </li>
                                <li><a href="~/MonoX/Pages/SocialNetworking/PhotoGallery.aspx">&gt;&gt; Photo albums</a> </li>
                                <li><a href="~/MonoX/Pages/SocialNetworking/Groups.aspx">&gt;&gt; Groups</a> </li>
			            </ul>
                        </div>
                    </DefaultContent>
                    </MonoX:Editor>
                </ZoneTemplate>
                </portal:PortalWebPartZoneTableless>                        
            </td>
	    </tr>
    </table>
</div> 
<div class="light-blue-wrapper">
	<div class="light-blue-bg">
    	<table cellpadding="0" cellspacing="0" class="featured-project">
        	<tr>            	
                <td class="project-container">
                    <MonoX:SlideShow runat="server" ID="ctlSlideShow">
                        <SlideShowItems>
                            <ModuleGallery:SlideShowItem runat="server" ImageUrl="~/App_Themes/Default/img/Projects/project-jobs-market.jpg" Url="http://www.jobsmarket.ie" Title="Jobs Market"></ModuleGallery:SlideShowItem>
                            <ModuleGallery:SlideShowItem runat="server" ImageUrl="~/App_Themes/Default/img/Projects/project-promo-zebra.jpg" Url="http://www.promozebra.com" Title="Promo Zebra"></ModuleGallery:SlideShowItem>                            
                            <ModuleGallery:SlideShowItem runat="server" ImageUrl="~/App_Themes/Default/img/Projects/project-cpl.jpg" Url="http://www.cpl.ie" Title="CPL"></ModuleGallery:SlideShowItem>
                            <ModuleGallery:SlideShowItem runat="server" ImageUrl="~/App_Themes/Default/img/Projects/project-drzavni-inspektorat.jpg" Url="http://www.inspektorat.hr/" Title="Croatian State Inspectorate"></ModuleGallery:SlideShowItem>
                            <ModuleGallery:SlideShowItem runat="server" ImageUrl="~/App_Themes/Default/img/Projects/project-employ-ireland.jpg" Url="http://www.employireland.ie/" Title="Employ Ireland"></ModuleGallery:SlideShowItem>
                            <ModuleGallery:SlideShowItem runat="server" ImageUrl="~/App_Themes/Default/img/Projects/project-anesthesia-scheduler.jpg" Url="http://v2.anesthesiascheduler.com/" Title="Anesthesia Scheduler"></ModuleGallery:SlideShowItem>
                            <ModuleGallery:SlideShowItem runat="server" ImageUrl="~/App_Themes/Default/img/Projects/project-ectd-office.jpg" Url="http://www.ectdoffice.com/" Title="eCTD Office"></ModuleGallery:SlideShowItem>
                        </SlideShowItems>
                    </MonoX:SlideShow>
				</td>                
                <td class="project-description">
                    <portal:PortalWebPartZoneTableless ID="featuredProjectPartZone" runat="server" Width="100%" ChromeTemplateFile="Standard.htm" HeaderText='<%$ Code: PageResources.Zone_FeaturedProjectsZone %>'>
                    <ZoneTemplate>
                        <MonoX:Editor runat="server" ID="editor3" Title='<%$ Code: PageResources.Title_FeaturedProjects %>' DefaultDocumentTitle='<%$ Code: PageResources.Title_FeaturedProjects %>'>
                        <DefaultContent>
                	        <h2>Featured Projects</h2>
                            <div>MonoX is used in a variety of projects of all sizes, from small-scale content management systems to large scale community sites.</div><br />
					        <div>Visit some of the more recent projects built on top of MonoX framework and get a glimpse of its capabilities.
                            <ul>
                                <li><a href="~/MonoX/Pages/Contact.aspx">>> Contact us for more details...</a></li>
                            </ul>
                            </div>
                        </DefaultContent>
                        </MonoX:Editor>
                    </ZoneTemplate>
                    </portal:PortalWebPartZoneTableless>
                </td>
			</tr>
		</table>                                    
    </div>
</div>        
</asp:Content>