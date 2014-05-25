<%@ Page Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.Admin.PageManagerSetUrl" EnableTheming="true" Theme="DefaultAdmin" Codebehind="PageManagerSetUrl.aspx.cs" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Set URL</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="popup-box">            
            <asp:ScriptManager ID="scriptManager" runat="server"></asp:ScriptManager>
            <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="Url"></monox:ValidationHandler>
            <dl>

            <asp:Panel runat="server" ID="pnlContainer">
                <dd class="jq_FieldValidatorWrapper">
                    <asp:Label ID="lblPageUrl" AssociatedControlID="txtPageUrl" runat="server" Text='<%$ Code: AdminResources.PageManagerSetUrl_lblPageUrl %>'></asp:Label>
                    <asp:TextBox id="txtPageUrl" Runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" Runat="server" CssClass="validator" Display="Dynamic" ValidationGroup="Url" Text="!" ControlToValidate="txtPageUrl" ErrorMessage='<%$ Code: AdminResources.PageManagerSetUrl_rfvPageUrl %>'></asp:RequiredFieldValidator>
                </dd>
                <dd>
                    <asp:Label ID="lblInjectScript" Runat="server"></asp:Label>  
                    <asp:Button ID="btnSave" runat="server" AccessKey="S" OnClick="btnSave_Click" CssClass="AdminButton" ValidationGroup="Url" Text='<%$ Code: AdminResources.Button_Save %>' /> <asp:button id="btnClose" OnClientClick="CloseWindow()" Text='<%$ Code: AdminResources.Button_Close %>' CssClass="AdminButton" runat="server"></asp:button>
                </dd>
            </asp:Panel>
            </dl>
        </div>
    </form>
</body>
</html>
