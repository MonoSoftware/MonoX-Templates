<%@ Page
    Language="C#"
    AutoEventWireup="true"
    MasterPageFile="~/Mono/MasterPages/Default.Master"
    Theme="Mono"
    Title="MonoX - ASP.NET CMS and Social Networking Platform"
    CodeBehind="MonoX.aspx.cs"
    Inherits="Mono.Web.Pages.MonoX" %>
    
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="Editor" Src="~/MonoX/ModuleGallery/MonoXHtmlEditor.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Repositories" TagPrefix="MonoRepositories" %>


<asp:Content ID="cp1" ContentPlaceHolderID="cp1" runat="server">
    </asp:Content>
<asp:Content ID="cp2" ContentPlaceHolderID="cp2" runat="server">
    <section class="l--row l--home">
        
        <aside class="l--side__ordered">
            <a id="A1" runat="server" title="Download MonoX" href="~/Downloads/#MonoX" class="icon-download btn--special">
                <span class="b-exp">
                    <span class="b-text">Download MonoX</span>
                    <span>Runs on ASP.NET 4/5</span>
                </span>
            </a>
        </aside>
        <article class="article l--main__ordered">
            <h1 class="title--main">MonoX Features</h1>
            <p class="article--fancy__big">
                MonoX is totally free for both commercial and non-commercial usage scenarios. You pay only if you need framework's <a href="~/purchase/MonoX/" runat="server">source code or a dedicated priority support contract</a>. More details can be found at our <a href="http://monox.mono-software.com/ContentPage/Licensing/" title="licensing page">licensing page</a>.
            </p>
        </article>
    </section>
    
    <script type="text/javascript">

        function initTab() {
            $('#tabs div.tabs--content').hide();
            if ($(location).attr('hash')) {
                $('#tabs .tabs--item').removeClass('active');
                $('.tabs').find("[href='" + $(location).attr('hash') + "']").addClass('active');
                var currentTab = $(location).attr('hash');
                $(currentTab).show();
            }
            else
                $('#tabs div.tabs--content:first').show();

            $('#tabs .tabs--item').click(function () {
                $('#tabs .tabs--item').removeClass('active');
                $(this).addClass('active');
                var currentTab = $(this).attr('href');
                $('#tabs .tabs--content').hide();
                $(currentTab).show();
                return false;
            });
        }

        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_endRequest(initTab);
        $(document).ready(initTab);
    </script>
<section class="l--featured">
    <div class="l--row">
        <aside class="l--side__ordered links">
            <div class="links--box">
                <a id="aBuy" runat="server" title="Buy" href="~/purchase/MonoX/" class="icon-credit btn--special " runat="server">
                    <span class="b-exp">
                        <span class="b-text">BUY</span>
                        <span>Licenses and services</span>
                    </span>
                </a>
                
            </div>

            <div class="links--box">
                <a id="A2" runat="server" title="User manual" href="~/Downloads/#MonoX" class="icon-pdf btn--special">
                    <span class="b-exp">
                        <span class="b-text">PDF</span>
                        <span>User manual</span>
                    </span>
                </a>
                
            </div>

            <div class="links--box">
                <a id="A3" runat="server" title="API reference guide"  href="~/Downloads/#MonoX" class="icon-download btn--special">
                    <span class="b-exp">
                        <span class="b-text">Download</span>
                        <span>API reference guide</span>
                    </span>
                </a>
            </div>

            <div class="links--box">
	            <a id="A4" runat="server" title="API reference guide"  href="~/MonoXAPI/" Target="_blank" class="icon-connect btn--special">
                    <span class="b-exp">
                        <span class="b-text">Online</span>
                        <span>API reference guide</span>
                    </span>
                </a>
            </div>

            <div class="links--box">
                <a href="http://demo.mono-software.com/" class="icon-site btn--special" Target="_blank" >
                    <span class="b-exp">
                        <span class="b-text">Site</span>
                        <span>Demo portal</span>
                    </span>
                </a>
                
            </div>
        </aside>
        <article class="article l--main__ordered">
            <div id="tabs" class="group">
            <div class="tabs">
                <span class="tabs--table">
                    <a class="tabs--item active" href="#TechnicalFeatures">Technical Features</a>
                    <a class="tabs--item" href="#CMSFeatures">CMS Features</a>
                    <a class="tabs--item" href="#SocialFeatures">Social Features</a>
                </span>
                <span class="tabs--table last">
                    <a class="tabs--item" href="#BuiltInWebParts">Built-in Web Parts</a>
                    <a class="tabs--item" href="#PerformanceFeatures">Performance</a>
                    <a class="tabs--item" href="#InteroperabilityFeatures">Interoperability</a>
                </span>
            </div>
            
                <div id="TechnicalFeatures" class="tabs--content">
                    <h3 class="article--title">Full support for the <a href="http://msdn.microsoft.com/en-us/library/e0s9t4ck.aspx" target="_blank">ASP.NET Web Parts Framework</a></h3>
                    <p class="article--paragraph">Web Parts Framework includes a set of controls and services that specifically target the growing demand for Web portal creation, including support for personalization, membership, communication and other infrastructural tasks. MonoX is built on top of the standard Web Part API.</p>
                

                    <h3 class="article--title">Commitment to standards</h3>
                    <p class="article--paragraph">MonoX renders XHTML compliant code and enables users to develop fully standards-compliant portals that will work reliably on different platforms.</p>
                

                    <h3 class="article--title">Unlimited design flexibility</h3>
                    <p class="article--paragraph">Developers can create user interface templates without any limitations, using their favorite approach (tables, DIVs, CSS, ...). ASP.NET master pages, themes and templates are fully supported.</p>
                

                    <h3 class="article--title">Open API</h3>
                    <p class="article--paragraph">MonoX allows developers to access all of its back-end functionality through a comprehensive set of fully documented methods and events.</p>
                

                    <h3 class="article--title"><a href="http://msdn.microsoft.com/en-us/library/aa479030.aspx" target="_blank">Provider-based</a> architecture</h3>
                    <p class="article--paragraph">An ASP.NET provider is a software module that provides a uniform interface between a service and a data source. Providers abstract physical storage media, in much the same way that device drivers abstract physical hardware devices. MonoX uses the provider model extensively, making it easy to add new functionality and interface with other ASP.NET applications.</p>
                

                    <h3 class="article--title">Support for localization</h3>
                    <p class="article--paragraph">All content and user interface elements can be localized at run time using only browser-based administrative tools. In addition to the standard .NET localization infrastructure, MonoX can store all localization resources in a portal database.</p>
                

                    <h3 class="article--title">Advanced module communication</h3>
                    <p class="article--paragraph">Developers can design sophisticated and elaborate Web part communication scenarios using the module communication support.</p>
                

                    <h3 class="article--title">Development flexibility</h3>
                    <p class="article--paragraph">All MonoX Web parts are in essence standard ASP.NET user controls. This allows developers to leverage their experience without the need to learn about new APIs and development environments. Controls are registered with the portal just by placing them in the module gallery folder. Additionally, there is an actual underlying file for each page, making it easy to customize the behavior of each portal page just like it is an ordinary ASPX page.</p>
                

                    <h3 class="article--title">Multi-portal environments</h3>
                    <p class="article--paragraph">Unlimited number of portals can be served from a single portal database.</p>
                

                    <h3 class="article--title">Advanced personalization infrastructure</h3>
                    <p class="article--paragraph">MonoX builds upon the personalization system that is integrated into ASP.NET 2.0, enabling users to personalize their working environment on both user and shared levels. Learn more or download MonoX.</p>
                </div>
                <div id="CMSFeatures" class="tabs--content">

                    <h3 class="article--title">Browser-based administration</h3>
                    <p class="article--paragraph">All aspects of a portal can be managed through an online, browser-based interface.</p>
                

                    <h3 class="article--title">User friendly Web 2.0 interface</h3>
                    <p class="article--paragraph">MonoX provides modern and uncluttered Ajax-based user interface with intuitive look and feel. Web parts can be moved and edited using a convenient drag and drop interface.</p>
                

                    <h3 class="article--title">WYSIWYG approach</h3>
                    <p class="article--paragraph">A unique editor interface allows administrators to enter and update content "in-place" and to immediately see the results of their actions. </p>
                

                    <h3 class="article--title">Windows Live Writer support</h3>
                    <p class="article--paragraph">Microsoft Windows Live Writer is a free desktop application that makes it easier to compose compelling blog posts using numerous blog services. It features true offline WYSIWYG blog authoring and photo/map publishing. MonoX fully supports Windows Live Writer and other similar editing tools that recognize standard MetaWeblog API, not only for the blog publishing tasks, but also for more general portal editing and configuration actions.</p>
                

                    <h3 class="article--title">Content versioning</h3>
                    <p class="article--paragraph">All changes made on a portal page can be saved for later approval and publishing.</p>
                

                    <h3 class="article--title">RSS feed providers</h3>
                    <p class="article--paragraph">All content-based modules (HTML editor, news system) can automatically provide RSS feeds.</p>
                

                    <h3 class="article--title">Search Engine Optimization (SEO)</h3>
                    <p class="article--paragraph">MonoX includes powerful Search Engine Optimization (SEO) techniques that can help users place their portals very high on all major search engines: ViewState optimization, URL rewriting, HTTP compression, SiteMap generation, automatic META keywords generation, integration with Google Analytics, compact and standards-compliant output...</p>
                

                    <h3 class="article--title">Search infrastructure</h3>
                    <p class="article--paragraph">MonoX comes with numerous search providers that give you a total control over the portal search engine behavior and performance. Included are providers that search pages, news, blog posts, groups, user profiles and file system.</p>
                

                    <h3 class="article--title">Cloud data providers</h3>
                    <p class="article--paragraph">MonoX now includes a data provider that hooks into <a href="http://aws.amazon.com/s3/" target="_blank">Amazon S3</a>, allowing users to store their data in the cloud and not on a local database or file servers.</p>
                </div>
                <div id="SocialFeatures" class="tabs--content">

                    <h3 class="article--title">User profiles</h3>
                    <p class="article--paragraph">Profiles are often used as a point of contact between users, and MonoX provides flexible architecture and modules to publish information about its users in a convenient way, respecting their privacy settings. You can choose between <a href="http://www.gravatar.com/" target="_blank">Gravatar</a> service and local avatar repository to attach personal photos to profiles.</p>
                

                    <h3 class="article--title">Support for OpenSocial and SocialAuth</h3>
                    <p class="article--paragraph"><a href="http://www.w3.org/Social/WG" target="_blank">OpenSocial</a> and SocialAuth allows you to log-in to MonoX-based portals and applications without performing the time consuming registration process and remembering your credentials. <a href="https://code.google.com/p/socialauth-net/" target="_blank">SocialAuth</a> goes even further by integrating major online services, so you will be able to log in by using your credentials from Google, Facebook, LinkedIn, MySpace and other major social networking systems.</p>
                

                    <h3 class="article--title">Friendship modules</h3>
                    <p class="article--paragraph">Different terms describe the "friendship" or "connection" concept for different community types, but in all cases it is the fundamental feature of all social networks. MonoX provides a flexible set of modules for displaying and managing user friend lists.</p>
                

                    <h3 class="article--title">Blog engine</h3>
                    <p class="article--paragraph">MonoX now includes a fully featured multi-user blog engine with support for comments, ratings, tagging and automatic anti-spam protection. Each user can have unlimited number of blogs, blog posts, tags and categories.</p>
                

                    <h3 class="article--title">Photo albums</h3>
                    <p class="article--paragraph">Each portal user can upload and organize photos using the album infrastructure. Thumbnails for common image file types are generated on the fly and stored on the server.</p>
                

                    <h3 class="article--title">Groups</h3>
                    <p class="article--paragraph">Groups allow users of your community to interact with each other around a common topic. Modules such as walls, forums, albums, file galleries can all be utilized in the group context.</p>
                

                    <h3 class="article--title">Discussion boards</h3>
                    <p class="article--paragraph">MonoX discussion boards allow users to easily post messages and comments to the community in a way that all the responses will be viewable no matter how much time passes between each post. MonoX discussion parts include advanced features such as moderation, ratings, e-mail alerts, anti-spam protection, tagging, closing topics and accepting answers.</p>
                

                    <h3 class="article--title">Media galleries</h3>
                    <p class="article--paragraph">Many social networking sites are very dependent upon media galleries, as they could draw the large percentage of visitors back to the site. MonoX support a generic architecture that allows you to host videos, photos, resumes, or any other kind of physical files.</p>
                

                    <h3 class="article--title">Activity streams</h3>
                    <p class="article--paragraph">Users can track the activity of their friends and be instantly notified when somebody publishes an interesting blog post, uploads a photo, joins the community...</p>
                

                    <h3 class="article--title">Messaging</h3>
                    <p class="article--paragraph">Messaging is essential to all community sites as it allows users to communicate with each another (or a whole group) directly, resembling the look and feel of traditional mail clients.</p>
                

                    <h3 class="article--title">Video conversion and sharing</h3>
                    <p class="article--paragraph">In addition to standard media gallery functionality, MonoX supports third-party plug-ins for video conversion that allow users to upload any kind of video material and have it coverted to standard Flash formats.</p>
                

                    <h3 class="article--title">Walls</h3>
                    <p class="article--paragraph">Wall is a kind of virtual space on every user's profile or group page that allows friends to post messages for other users to see. In essence, this is usually the central gathering point for all users of a community.</p>
                

                    <h3 class="article--title">Comments</h3>
                    <p class="article--paragraph">Comment modules allow your users to interact with the content and other members of your social network. Our flexible infrastructure enables administrators to attach comments to virtually any kind of content: wall notes, blog posts, images, etc.</p>
                

                    <h3 class="article--title">Ratings</h3>
                    <p class="article--paragraph">Ratings can be a very important part of any community-based content site. They allow the whole community to be in charge of what content takes precedence on the site.</p>
                

                    <h3 class="article--title">Tags</h3>
                    <p class="article--paragraph">Similar to comments and ratings, tags can be attached to different types of content, allowing users to build an independent form of navigation and/or categorization.</p>
                </div>
                <div id="BuiltInWebParts" class="tabs--content">

                    <h3 class="article--title">Advertisements</h3>
                    <p class="article--paragraph">Allows users to set up and serve unlimited number of ad campaigns.</p>
                

                    <h3 class="article--title">News system</h3>
                    <p class="article--paragraph">MonoX includes several pre-built news-related Web parts. All of these modules are integrated with the news management back end section of the portal.</p>
 
                    <h3 class="article--title">File upload</h3>
                    <p class="article--paragraph">File upload Web part provides functionality for uploading unlimited number of files to the Web server. End user is available to select files to upload one by one, and than upload them all in a single step. An alternative Silverlight-based upload part provides even better user experience and interactivity.</p>
                

                    <h3 class="article--title">HTML editor</h3>
                    <p class="article--paragraph">HTML editor is one of the most-often used Web parts. It allow users to interactively edit the contents of the portal, and to immediately see the results in the WYSIWYG fashion.</p>
                

                    <h3 class="article--title">Login</h3>
                    <p class="article--paragraph">Login Web part allows administrators to quickly set up the login screen of their applications.</p>
                

                    <h3 class="article--title">Menu</h3>
                    <p class="article--paragraph">Menu Web part allows administrators to easily produce navigation menus on their portals. The navigation structure of a portal can be defined in the page management section.</p>
                

                    <h3 class="article--title">Poll</h3>
                    <p class="article--paragraph">Allows users to set up an unlimited number of polls and simple surveys.</p>
                

                    <h3 class="article--title">RSS reader</h3>
                    <p class="article--paragraph">RSS is an acronym that stands for Really Simple Syndication and it has become a popular means of distributing and reading information from around the Web. RSS reader Web part allows users to easily consume information from unlimited number of RSS sources.</p>


                    <h3 class="article--title">Search</h3>
                    <p class="article--paragraph">Search Web part offers a very powerful and flexible functionality for creating local search engine for the various types of content. It also supports templating techniques, allowing administrators to tightly integrate this part wherever it is needed, while achieving the desired appearance and behavior.</p>
                

                    <h3 class="article--title">List</h3>
                    <p class="article--paragraph">Allows administrators to manage all list-based information: FAQs, link lists, user testimonials, and similar.</p>
                

                    <h3 class="article--title">Newsletter</h3>
                    <p class="article--paragraph">Enables administrators to create and send newsletters to target subscriber groups.</p>
                </div>
                <div id="PerformanceFeatures" class="tabs--content">

                    <h3 class="article--title">Advanced caching</h3>
                    <p class="article--paragraph">MonoX administrators can fine-tune the caching system on both page and Web part-level to reduce the access time and increase application responsiveness.</p>
                

                    <h3 class="article--title">ViewState optimization</h3>
                    <p class="article--paragraph">MonoX can completely remove the contents of the ViewState hidden form field. It practically means that your page will be much "lighter" in terms of size and load times, as ViewState hidden field can hold tens of kilobytes of data even in moderately complex applications. All this is possible without loosing any of the ViewState-related functionality.</p>
                

                    <h3 class="article--title">HTTP compression</h3>
                    <p class="article--paragraph">Each portal page or related resource can be compressed on the fly, reducing the impact on the bandwidth and page load times.</p>
                

                    <h3 class="article--title">High-performance, flexible data layer</h3>
                    <p class="article--paragraph">MonoX utilizes <a href="http://www.llblgen.com" target="_blank">LLBLGen</a>, a powerful object-relational engine that generates highly optimized, robust and scalable database-related code.</p>
                </div>
                <div id="InteroperabilityFeatures" class="tabs--content">

                    <h3 class="article--title">Integration with third-party modules and applications</h3>
                    <p class="article--paragraph">An additional benefit of the provider model used in MonoX is that all ASP.NET applications that use it can be easily integrated with MonoX. Integrating excellent third-party applications like <a href="http://www.dotnetblogengine.net/" target="_blank">BlogEngine.Net</a> and <a href="http://www.yetanotherforum.net/" target="_blank"> YetAnotherForum.NET</a> is only a matter of few configuration changes in the Web.config files of these applications (full examples can be downloaded from the support site).</p>


                    <h3 class="article--title">RSS</h3>
                    <p class="article--paragraph">Administrators without technical experience can easily set up both RSS providers and consumers in MonoX and enable it to exchange information with external applications.</p>
                </div>
            </div>
        </article>
        
        </div>
</section>
</asp:Content>