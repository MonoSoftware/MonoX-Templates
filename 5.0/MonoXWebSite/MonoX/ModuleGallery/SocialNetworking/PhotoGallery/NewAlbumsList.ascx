<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="NewAlbumsList.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.NewAlbumsList" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>

<asp:Panel ID="pnlContainer" runat="server">
    <div class="photo-album-list">
        <div class="title-holder">
        <h2><%= MonoSoftware.MonoX.Resources.SocialNetworkingResources.PhotoGallery_AlbumView_NewAlbums %></h2>
        </div>
    </div>
    <div class="album-list">
        <div id="album-list">
            <asp:ListView ID="lvItems" runat="server" GroupItemCount="4">
                <LayoutTemplate>
                    <asp:PlaceHolder runat="server" ID="groupPlaceholder"></asp:PlaceHolder>
                </LayoutTemplate>
                <GroupTemplate>
                    <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                </GroupTemplate>
                <ItemTemplate>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>

</asp:Panel>
<asp:Label runat="server" ID="lblNoData" class="empty-message"></asp:Label>
<div class="pager-holder">
    <mono:Pager runat="server" ID="pager" PageSize="8" NumericButtonCount="5" AllowCustomPaging="true" AutoPaging="false">
        <PagerTemplate></PagerTemplate>
    </mono:Pager>
</div>