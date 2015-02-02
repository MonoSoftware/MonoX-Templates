<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="GroupEdit.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.GroupEdit" %>

<%@ Register TagPrefix="MonoX" TagName="Upload" Src="~/MonoX/ModuleGallery/UploadModule.ascx" %>
<%@ Register Src="~/MonoX/controls/UserPicker.ascx" TagPrefix="MonoX" TagName="UserSearch" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<asp:Panel runat="server" ID="pnlContainer">
    <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>
    <div class="group-form">
        
        <dl>
            <dd class="validation-wrapper">
                <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ValidationGroup="Modification" CssClass="validation-summary" ShowSummary="true" EnableClientScript="true" />
            </dd>
            <dd class="jq_FieldValidatorWrapper">
                <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName"></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredName" runat="server" CssClass="validator" ValidationGroup="Modification" ControlToValidate="txtName" SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </dd>
            <dd>
                <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription"></asp:Label>
                <asp:TextBox Rows="5" TextMode="MultiLine" runat="server" ID="txtDescription"></asp:TextBox>
            </dd>
            <dd>
                <asp:Label ID="lblCategories" AssociatedControlID="ddlCategories" runat="server"></asp:Label>
                <asp:DropDownList ID="ddlCategories" runat="server">
                </asp:DropDownList>
                <i><asp:Label ID="lblCategoryNote" runat="server" AssociatedControlID="ddlCategories"></asp:Label></i>
            </dd>
            <dd class="group-image">
                <asp:Label ID="lblPicture" AssociatedControlID="ctlUpload" runat="server"></asp:Label>
                <asp:Image runat="server" ID="imgGroupLogo" CssClass="img" />
                <MonoX:Upload ControlObjectsVisibility="None" runat="server" ID="ctlUpload" />
            </dd>
            <dd class="chk-box">
                <asp:CheckBox BorderStyle="None" BorderWidth="0px" ID="chkPrivacy" Checked="true" runat="server" TextAlign="Right"></asp:CheckBox>
                <asp:Label ID="lblPrivacy" AssociatedControlID="chkPrivacy" runat="server"></asp:Label>
            </dd>
            <dd>
                <hr />
                <asp:Label ID="lblPrivacyLegend" runat="server" CssClass="legend"></asp:Label>
                <hr />
                <div class="AdminAutoCompleteBox">
                    <asp:Panel ID="pnlAdmins" runat="server">
                        <asp:Label ID="labUserAdmins" runat="server" AssociatedControlID="userAdmins"></asp:Label>
                        <MonoX:UserSearch id="userAdmins" runat="server" Width="98%"></MonoX:UserSearch>
                    </asp:Panel>
                </div>
            </dd>
        </dl>
    </div>
</asp:Panel>
<div class="group-button-holder button-holder">
    <asp:PlaceHolder ID="plhActions" runat="server">
        <MonoX:StyledButton id="btnSave" runat="server" CausesValidation="true" ValidationGroup="Modification" OnClick="btnSave_Click" />
        <MonoX:StyledButton id="btnCancel" runat="server" CausesValidation="false" ValidationGroup="Modification" OnClick="btnCancel_Click" />
    </asp:PlaceHolder>
    <div style="color: Red"><asp:Literal ID="ltlMessage" runat="server"></asp:Literal></div>
</div>