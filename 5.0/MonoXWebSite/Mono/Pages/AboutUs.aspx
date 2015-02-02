<%@ Page
    Language="C#"
    AutoEventWireup="true"
    MasterPageFile="~/Mono/MasterPages/Default.Master"
    Theme="Mono"
    Title="About Mono Software"
    CodeBehind="AboutUs.aspx.cs"
    Inherits="Mono.Web.Pages.AboutUs" %>

<%@ Register TagPrefix="Mono" TagName="ContactDetails" Src="~/Mono/Webparts/ContactDetails.ascx" %>    
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="Editor" Src="~/MonoX/ModuleGallery/MonoXHtmlEditor.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Repositories" TagPrefix="MonoRepositories" %>


<asp:Content ID="cp1" ContentPlaceHolderID="cp1" runat="server">
    <div class="l--cover">
        <div class="l--row">
	        <h1 class="title--primary">About Mono</h1>
            <p>Who we are and what we do.</p>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cp2" ContentPlaceHolderID="cp2" runat="server">
    <div class="l--row spacer--box article--post">
        <portal:PortalWebPartZoneTableless HeaderText="Left zone" ID="leftPartZone" runat="server" Width="100%" ChromeTemplateFile="LeftColumn.htm">
            <ZoneTemplate>
                <MonoX:Editor runat="server" ID="editor2" Title="Features" ShowRating="false">
                    <DefaultContent>
                        <div class="top-section">
                            <h3>Mono Ltd.</h3>
                            <p>
                                Based in Osijek, Croatia, creates and distributes content management systems, social networking frameworks, medical, pharmaceutical, e-government, ecommerce, banking systems and various custom software solutions.
                            </p>
                        </div>
                        <p>
                        <h3>Our <span>products</span> include:</h3>
                        <ul class="list">
                            <li>MonoX, a free ASP.NET content management system and a social networking platform used in hundreds of client’s projects around the world</li>
                            <li>eCTD Office, a comprehensive publishing system for eCTD / NeeS/ VNeeS electronic submissions in the pharmaceutical industry, used in companies such as Novartis, Pfizer, Sanofi Aventis, Astra Zeneca, Zambon, Daiichi Sankyo, Mithra, Adacap, Centrafarm, Octagon, Lilly, Tilman…</li>
                            <li>Web Application Optimizer, an ASP.NET tool suite designed to boost the performance of dynamic web sites</li>
                            <li>Digital pen and paper solutions for digitizing and processing paper-based forms and recognizing hand-written data</li>
                        </ul>
                        </p>
                        <p>
                            Mono offers a variety of software development services to meet user’s needs. We have worked with clients of all sizes, privately-held or public, commercial or government, from more than 70 countries around the world.<br />
                            We develops all kinds of custom web, desktop, cloud, mobile and embedded software. We have multiple pre-existing frameworks in place, and are able to spend more time tailoring everything to fit client's needs, instead of solving basic infrastructural issues. This approach allows for shorter development cycles, enabling clients to get their product or new features launched as quickly as possible.<br />
                            Our development team has experience with a wide array of development tools and environments, including Microsoft WinForms, ASP.NET WebForms and MVC stack, Embarcadero Delphi, Xamarin Mono Touch and Mono for Android, Apache Cordova, etc. 
                        </p>
                        <p>
                            Mono has been awarded by the Croatian Chamber of Economy as the best regional small enterprise in 2011. 
                        </p>
                        <p>
                            We would be happy to talk about your next project, listen to your comments or just exchange some ideas - you can <a href="~/contact/">contact us</a> anytime.
                        </p>
                    </DefaultContent>
                </MonoX:Editor>
            </ZoneTemplate>
        </portal:PortalWebPartZoneTableless>
    </div>
</asp:Content>