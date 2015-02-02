<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="RelatedContent.ascx.cs" 
    Inherits="Mono.Web.Parts.Discussion.RelatedContent" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>

<asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server"></asp:ScriptManagerProxy>
<asp:Panel ID="pnlContainer" runat="server"> 
    <div class="discussion--item l--side">
        <asp:PlaceHolder ID="plhTitle" runat="server">
            <h3 class="title--secondary">
                <asp:Label ID="labTitle" runat="server"></asp:Label>
            </h3>    
        </asp:PlaceHolder>
        <asp:ListView ID="lvItems" runat="server">
            <LayoutTemplate>
                <ul>
                    <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                </ul>
            </LayoutTemplate>
            <ItemTemplate></ItemTemplate>
        </asp:ListView>
        <mono:Pager runat="server" ID="pager" PageSize="5" NumericButtonCount="5" AllowCustomPaging="true" AutoPaging="false">
            <PagerTemplate></PagerTemplate>
        </mono:Pager>
    </div>
</asp:Panel>