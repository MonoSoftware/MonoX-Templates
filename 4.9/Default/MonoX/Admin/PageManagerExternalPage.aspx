<%@ Page Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.Admin.PageManagerExternalPage" EnableTheming="true" Theme="DefaultAdmin" Codebehind="PageManagerExternalPage.aspx.cs" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>External page</title>
    <script type="text/javascript">
        function CloseAndSave()   
        {   
            var arg = new Object();
            arg.Id = "ExternalPage";
            arg.PageUrl = document.getElementById("txtPageUrl").value;
            arg.PageTitle = document.getElementById("txtPageTitle").value;
            GetRadWindow().Argument = arg;
            GetRadWindow().Close();   
        }   
        
        </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="popup-box">    
    <asp:ScriptManager ID="scriptManager" runat="server"></asp:ScriptManager>
    <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="Modification"></monox:ValidationHandler>
    <dl>

        <asp:Panel runat="server" ID="pnlContainer">
            <dd class="jq_FieldValidatorWrapper">
                <asp:Label ID="lblPageTitle" AssociatedControlID="txtPageTitle" runat="server" Text='<%$ Code: AdminResources.PageManagerExternalPage_lblPageTitle %>'></asp:Label>
                <asp:TextBox id="txtPageTitle" Runat="server" ValidationGroup="Modification"></asp:TextBox>
                <asp:RequiredFieldValidator id="rfvPageTitle" Runat="server" ValidationGroup="Modification" CssClass="validator" Display="Dynamic" Text="!"  ControlToValidate="txtPageTitle" ErrorMessage='<%$ Code: AdminResources.PageManagerExternalPage_rfvPageTitle %>'></asp:RequiredFieldValidator>
            </dd>
            <dd class="jq_FieldValidatorWrapper">
                <asp:Label ID="lblPageUrl" AssociatedControlID="txtPageUrl" runat="server" Text='<%$ Code: AdminResources.PageManagerExternalPage_lblPageUrl %>'></asp:Label>
                <asp:TextBox id="txtPageUrl" Runat="server" ValidationGroup="Modification"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" Runat="server" ValidationGroup="Modification" CssClass="validator" Display="Dynamic" Text="!" ControlToValidate="txtPageUrl" ErrorMessage='<%$ Code: AdminResources.PageManagerExternalPage_rfvPageUrl %>'></asp:RequiredFieldValidator>
            </dd>
            <dd>
                <asp:Label ID="lblInjectScript" Runat="server"></asp:Label>  
                <asp:Button ID="btnSave" runat="server" AccessKey="S" OnClick="btnSave_Click" ValidationGroup="Modification" CssClass="AdminButton" Text='<%$ Code: AdminResources.Button_Save %>' /> <asp:button id="btnClose" CausesValidation="false" OnClientClick="CloseWindow()" Text='<%$ Code: AdminResources.Button_Close %>' CssClass="AdminButton" runat="server"></asp:button>
            </dd>
    </asp:Panel>
        </dl>
    </div>
    </form>
</body>
</html>
