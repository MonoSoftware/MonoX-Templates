<%@ Page 
    Language="C#" 
    MasterPageFile="~/Mono/MasterPages/Default.Master" 
    AutoEventWireup="true"     
    Inherits="MonoSoftware.MonoX.BasePage" 
    Theme="Mono"
    Title="" 
    %>
<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %> 
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>  
<%@ Register TagPrefix="MonoX" TagName="Editor" Src="~/MonoX/ModuleGallery/MonoXHtmlEditor.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="Search" Src="~/Mono/WebParts/MonoXSearchResult.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.SearchEngine" TagPrefix="Search" %>
<%@ Register TagPrefix="MonoX" TagName="LightBox" Src="~/MonoX/controls/LightBox.ascx" %>

<asp:Content ID="cp1" ContentPlaceHolderID="cp1" runat="server">
    <div class="l--cover">
        <div class="l--row">
	        <h1 class="title--primary">Search Results</h1>
        </div>
    </div>
</asp:Content>
<asp:Content ID="cp2" ContentPlaceHolderID="cp2" runat="server">
    <div class="l--row spacer--box">
        <portal:PortalWebPartZoneTableless HeaderText='<%$ Code: PageResources.Zone_RightPartZone %>' ID="rightPartZone" runat="server" Width="100%" ChromeTemplateFile="Standard.htm" ShowChromeForNonAdmins="false">
            <ZoneTemplate>
                <MonoX:Search ID="search1" runat="server" DisplayMode="ShowSearchResults" Title='<%$ Code: PageResources.Title_SearchResults %>'>
                    <SearchProviderItems>
                        <Search:SearchProviderItem Name="PagesSearchProvider" Template="Default"></Search:SearchProviderItem>
                        <Search:SearchProviderItem Name="NewsSearchProvider" Template="Default"></Search:SearchProviderItem>
                        <Search:SearchProviderItem Name="BlogSearchProvider" Template="Default"></Search:SearchProviderItem>
                        <Search:SearchProviderItem Name="DiscussionSearchProvider" Template="Default"></Search:SearchProviderItem>                                
                    </SearchProviderItems>
                </MonoX:Search>
            </ZoneTemplate>
        </portal:PortalWebPartZoneTableless>
    </div>
</asp:Content>