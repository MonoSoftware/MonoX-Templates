<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Comments.ascx.cs" Inherits="MonoSoftware.MonoX.ModuleGallery.Mobile.Comments" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register TagPrefix="MonoX" TagName="LightBox" Src="~/MonoX/controls/LightBox.ascx" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server"></asp:ScriptManagerProxy>
<monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>

<asp:Panel ID="pnlContainer" runat="server">
    <asp:Panel runat="server" ID="pnlCommentBox" CssClass="jq_wallCommentBox">
    <asp:TextBox runat="server" ID="txtInput" CssClass="jq_expandingTextBoxSmall" TextMode="MultiLine" ></asp:TextBox> 
    <asp:RequiredFieldValidator ID="reqInput" runat="server" ControlToValidate="txtInput" SetFocusOnError="true" CssClass="validator" Display="Dynamic"  Text="*"></asp:RequiredFieldValidator>
    <MonoX:StyledButton ID="btnSave" runat="server" CssClass="CommentButton" OnClick="btnSave_Click" EnableNativeButtonMode="true" />
    </asp:Panel>
    <asp:ListView ID="lvItems" runat="server">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
        </LayoutTemplate>
        <ItemTemplate></ItemTemplate>
    </asp:ListView>
    <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true" AutoPaging="false">
        <PagerTemplate></PagerTemplate>
    </mono:Pager>
</asp:Panel>