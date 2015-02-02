<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="MonoXSearchBox.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.MonoXSearchBox" %>

<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %> 

<asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server"></asp:ScriptManagerProxy>
<asp:panel ID="pnlContainer" runat="server" DefaultButton="btnSearch">
    <asp:TextBox runat="server" ID="txtSearch"></asp:TextBox>
    <ajaxToolkit:TextBoxWatermarkExtender ID="tbweSearch" runat="server" TargetControlID="txtSearch" WatermarkCssClass="focus" WatermarkText="Search..." />
    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" />
    <MonoX:StyledButton runat="server" ID="lnkSearch" OnClick="btnSearch_Click" CssClass="search-styled-button"></MonoX:StyledButton>
</asp:panel>