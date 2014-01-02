<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="Events.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.Events" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<asp:UpdatePanel ID="up" runat="server" UpdateMode="Always">
    <ContentTemplate>
        <asp:Panel ID="pnlContainer" runat="server">
            <asp:ListView ID="lvItems" runat="server">
                <LayoutTemplate>
                    <div class="wall">
                        <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                    </div>
                </LayoutTemplate>
                <ItemTemplate>
                </ItemTemplate>
            </asp:ListView>
            <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true"
                AutoPaging="false">
                <PagerTemplate>
                </PagerTemplate>
            </mono:Pager>
        </asp:Panel>
    </ContentTemplate>
</asp:UpdatePanel>
