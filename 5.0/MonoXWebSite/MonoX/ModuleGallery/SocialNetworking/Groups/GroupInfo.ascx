<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="GroupInfo.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.GroupInfo" %>

<div class="group-info">
    <div class="group-image">
        <asp:Image runat="server" ID="imgLogo" CssClass="scale-with-grid" />
    </div>
    <asp:Panel runat="server" ID="pnlContainer">
    <div class="input-form">
        <dl>
            <dd>
                <strong><asp:Literal ID="lblName" runat="server"></asp:Literal></strong>
                <asp:Literal ID="ltlName" runat="server"></asp:Literal>
            </dd> 
            <dd>
                <strong><asp:Label ID="lblDescription" runat="server"></asp:Label></strong>
                <asp:Literal ID="ltlDescription" runat="server"></asp:Literal>
            </dd>
            <dd>
                <strong><asp:Label ID="lblCategory" runat="server"></asp:Label></strong>
                <asp:Hyperlink ID="lnkCategory" runat="server"></asp:Hyperlink>
            </dd>
            <dd>
                <strong><asp:Label ID="lblPrivacy" runat="server"></asp:Label></strong>
                <asp:Literal ID="ltlPrivacy" runat="server"></asp:Literal>
            </dd>
            <dd class="button-holder">
                <asp:Panel CssClass="options" ID="pnlLeave" runat="server">
                    <asp:LinkButton ID="lnkLeave" runat="server" CssClass="styled-button"></asp:LinkButton>
                </asp:Panel>
                <asp:Panel ID="pnlAdmin" runat="server">
                    <asp:HyperLink ID="lnkEdit" runat="server" CssClass="styled-button"></asp:HyperLink>
                    <asp:LinkButton ID="lnkDelete" runat="server" CssClass="styled-button"></asp:LinkButton>
                </asp:Panel>
                <asp:Literal runat="server" ID="ltlRequestWaiting"></asp:Literal>
            </dd>
        </dl>
    </div>
    </asp:Panel>
</div>