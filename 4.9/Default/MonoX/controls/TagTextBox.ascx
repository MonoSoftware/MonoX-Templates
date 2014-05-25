<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TagTextBox.ascx.cs"
    Inherits="MonoSoftware.MonoX.Controls.TagTextBox" %>
<asp:PlaceHolder ID="panMain" runat="server">
    <asp:UpdatePanel ID="up" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <div class="tags-holder">
                <asp:Label ID="lblTags"  runat="server" AssociatedControlID="txtTags"></asp:Label>
                <asp:TextBox runat="server" ID="txtTags"></asp:TextBox>
                <div class="small-links">
                    <asp:LinkButton ID="btnYahoo" runat="server" OnClick="btnYahoo_Click" CausesValidation="false"></asp:LinkButton>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:PlaceHolder>
