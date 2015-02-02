<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TagTextBox.ascx.cs"
    Inherits="MonoSoftware.MonoX.Controls.TagTextBox" %>
<asp:PlaceHolder ID="panMain" runat="server">
    <asp:UpdatePanel ID="up" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <asp:Label ID="lblTags" runat="server" AssociatedControlID="txtTags" CssClass="form--label"></asp:Label>
            <asp:TextBox runat="server" ID="txtTags"></asp:TextBox>
            <asp:LinkButton ID="btnYahoo" runat="server" OnClick="btnYahoo_Click" CausesValidation="false" CssClass="btn--small"></asp:LinkButton>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:PlaceHolder>
