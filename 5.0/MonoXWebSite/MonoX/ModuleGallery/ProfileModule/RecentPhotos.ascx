<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="RecentPhotos.ascx.cs" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.RecentPhotos" %>

<%@ Register TagPrefix="MonoX" TagName="SlideShow" Src="~/MonoX/ModuleGallery/SlideShow.ascx"  %>

<asp:Panel runat="server" ID="pnlContainer">
    <div>
        <a class="regular-button" href="<%= GetMyPhotosUrl() %>"><%= MonoSoftware.MonoX.Resources.DefaultResources.RecentPhotos_ViewAllAlbums %></a>
    </div>
    <MonoX:SlideShow runat="server" ID="slides" EnableTextualNavigation="false"></MonoX:SlideShow>
</asp:Panel> 