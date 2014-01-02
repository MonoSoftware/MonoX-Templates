<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="AlbumList.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.AlbumList" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>

<asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server">
    <Scripts>
        <asp:ScriptReference Path="~/App_Themes/Modern/Javascripts/masonry.pkgd.min.js" />
        <asp:ScriptReference Path="~/App_Themes/Modern/Javascripts/imagesloaded.pkgd.min.js" />
    </Scripts>
</asp:ScriptManagerProxy>

<asp:Panel ID="pnlContainer" runat="server">
    <asp:UpdatePanel ID="up" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <div class="photo-album-list">
                <div class="title-holder">
                    <h2><asp:Label ID="labTitle" runat="server"></asp:Label></h2>
                </div>
                <div class="photo-content-holder">
            </div>
            <asp:PlaceHolder ID="plhNavigation" runat="server">
                <div class="main-options">
                    <div class="button-wrapper">			            
                        <asp:LinkButton ID="lnkCreateAlbum" runat="server" CssClass="add-new-album"></asp:LinkButton>
                    </div>
                    <div class="button-wrapper">	
                        <asp:HyperLink ID="lnkAlbums" runat="server" CssClass="photo-button"></asp:HyperLink>
                    </div>
                    <div class="button-wrapper">	
                        <asp:HyperLink ID="lnkMyAlbums" runat="server" CssClass="photo-button"></asp:HyperLink>
                    </div>						

                </div>
            </asp:PlaceHolder>
                <div class="album-list">
                    <div id="rowGallery" runat="server">
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
                </div>
            </div>
            <div class="span12">
                <mono:Pager runat="server" ID="pager" PageSize="7" NumericButtonCount="5" AllowCustomPaging="true" AutoPaging="false">
                    <PagerTemplate></PagerTemplate>
                </mono:Pager>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Panel>
<script type="text/javascript">
    var container = document.querySelector('#album-list');
    var msnry = new Masonry(container, {
        itemSelector: '.item'
    });
    imagesLoaded(container, function () {
        msnry = new Masonry(container);
    });
</script>
