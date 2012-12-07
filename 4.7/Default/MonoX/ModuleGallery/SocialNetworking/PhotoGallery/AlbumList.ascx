<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="AlbumList.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.AlbumList" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>

<asp:Panel ID="pnlContainer" runat="server">
    <asp:UpdatePanel ID="up" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <div class="clearfix">
                <div class="span12">
                    <h2><asp:Label ID="labTitle" runat="server"></asp:Label></h2>
                </div>
            </div>
            <div class="album-list">
                <asp:PlaceHolder ID="plhNavigation" runat="server">
                <div class="main-options">
                    <div class="inner">			            
                        <asp:LinkButton ID="lnkCreateAlbum" runat="server" CssClass="create"></asp:LinkButton>
                        <asp:HyperLink ID="lnkAlbums" runat="server" CssClass="albums"></asp:HyperLink>
                        <asp:HyperLink ID="lnkMyAlbums" runat="server" CssClass="my-albums"></asp:HyperLink>						
                    </div>
                </div>
                </asp:PlaceHolder>
                <div id="rowGallery" runat="server">
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
            <div class="span12">
                <mono:Pager runat="server" ID="pager" PageSize="7" NumericButtonCount="5" AllowCustomPaging="true" AutoPaging="false">
                    <PagerTemplate></PagerTemplate>
                </mono:Pager>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Panel>