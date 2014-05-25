<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="PhotoListView.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.PhotoListView" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register Src="~/MonoX/ModuleGallery/SocialNetworking/Comments.ascx" TagPrefix="MonoX" TagName="Comments" %>

<asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server">
    <Scripts>
        <asp:ScriptReference Path="~/App_Themes/Default/javascripts/masonry.pkgd.min.js" />
        <asp:ScriptReference Path="~/App_Themes/Default/javascripts/imagesloaded.pkgd.min.js" />
    </Scripts>
</asp:ScriptManagerProxy>

<asp:Panel ID="pnlContainer" runat="server">
<div class="photo-album-list">
    <div class="title-holder">
        <div class="title">
            <h2><asp:Literal ID="labAlbumName" runat="server"></asp:Literal></h2>
            <% if (!IsPhotoPreview)
               { %>
            <span><%= (AlbumEntity != null ? AlbumEntity.Description : String.Empty)%></span>
            <% } %>
        </div>
    </div>
</div>
    <div class="album-list photo-list">
        <div class="main-options">
            <div class="button-wrapper">
                <asp:LinkButton ID="lnkAddMore" runat="server" CssClass="add-new-album"></asp:LinkButton>
            </div>
            <div class="button-wrapper">
                <asp:HyperLink ID="lnkBack" runat="server" NavigateUrl="javascript:void(0);" CssClass="photo-button"></asp:HyperLink>
            </div>
            <div class="share-button-wrapper">
                <span id="panOrganize" runat="server" visible="false"><asp:LinkButton ID="lnkOrganize" runat="server" CssClass="styled-button"></asp:LinkButton></span>
                <asp:Panel ID="panTellAFriend" runat="server"></asp:Panel>
            </div>
        </div>
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
        <asp:Label runat="server" ID="lblNoData" class="empty-message main-album-empty-message"></asp:Label>
        <mono:pager runat="server" id="pager" pagesize="8" numericbuttoncount="5" allowcustompaging="true" autopaging="false">
            <PagerTemplate>
            </PagerTemplate>
        </mono:pager>
        <div class="photo-comments">
            <h3 id="labComments" runat="server"><%= MonoSoftware.MonoX.Resources.SocialNetworkingResources.PhotoGallery_PhotoListView_Comments%></h3>
            <MonoX:Comments ID="comments" runat="server" PagingEnabled="true" CommentTextBoxVisibleOnInit="true"></MonoX:Comments>
        </div>

</asp:Panel>

<script type="text/javascript">
    $(document).ready(function () {
        initMasonry();
    });
    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function () {
        initMasonry();
    });
    function initMasonry() {
        if ($('#album-list .item')) {
            $('#album-list').imagesLoaded(function () {
                $('#album-list').masonry({ itemSelector: '.item' });
            });
        }
    }
</script>
