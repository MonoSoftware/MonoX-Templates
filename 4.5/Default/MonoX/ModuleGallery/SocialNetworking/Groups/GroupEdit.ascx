<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GroupEdit.ascx.cs" Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.GroupEdit" %>
<%@ Register TagPrefix="MonoX" TagName="Upload" Src="~/MonoX/ModuleGallery/UploadModule.ascx" %>
<%@ Register Src="~/MonoX/controls/UserPicker.ascx" TagPrefix="MonoX" TagName="UserSearch" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>
<asp:Panel runat="server" ID="pnlContainer">
    <div class="input-form">
        <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ValidationGroup="Modification"
            ShowSummary="true" EnableClientScript="true" />
        <dl>
            <dd>
                <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName"></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredName" runat="server" CssClass="ValidatorAdapter"
                    ValidationGroup="Modification" ControlToValidate="txtName" SetFocusOnError="true"
                    Display="Dynamic" Text="!"></asp:RequiredFieldValidator>
            </dd>
            <dd>
                <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription"></asp:Label>
                <asp:TextBox Rows="5" TextMode="MultiLine" runat="server" ID="txtDescription"></asp:TextBox>
            </dd>
            <dd>
                <asp:Label ID="lblCategories" AssociatedControlID="ddlCategories" runat="server"></asp:Label>
                <asp:DropDownList ID="ddlCategories" runat="server">
                </asp:DropDownList>
                <asp:Label ID="lblCategoryNote" runat="server" AssociatedControlID="ddlCategories"></asp:Label>
            </dd>
            <dd>
                <asp:Label ID="lblPicture" AssociatedControlID="ctlUpload" runat="server"></asp:Label><br />
                <asp:Image runat="server" ID="imgGroupLogo" CssClass="img" />
                <MonoX:Upload ControlObjectsVisibility="None" runat="server" ID="ctlUpload" />
            </dd>
            <dd>
                <asp:Label ID="lblPrivacy" AssociatedControlID="chkPrivacy" runat="server"></asp:Label>
                <asp:CheckBox BorderStyle="None" BorderWidth="0px" ID="chkPrivacy" Checked="true"
                    runat="server" TextAlign="Right"></asp:CheckBox>
            </dd>
            <dd>
                <asp:Literal ID="lblPrivacyLegend" runat="server"></asp:Literal>
            </dd>
            <dd>
                <asp:Panel ID="pnlAdmins" runat="server">
                    <asp:Label ID="labUserAdmins" runat="server" AssociatedControlID="userAdmins"></asp:Label>
                    <MonoX:UserSearch id="userAdmins" runat="server" Width="98%">
                    </MonoX:UserSearch>
                </asp:Panel>
            </dd>
        </dl>
    </div>
</asp:Panel>
<div class="input-form">
    <div class="button-holder">
        <asp:PlaceHolder ID="plhActions" runat="server">
            <MonoX:StyledButton id="btnSave" runat="server" CausesValidation="true" ValidationGroup="Modification"
                OnClick="btnSave_Click" />
            <MonoX:StyledButton id="btnCancel" runat="server" CausesValidation="false" ValidationGroup="Modification"
                OnClick="btnCancel_Click" />
        </asp:PlaceHolder>
        <b style="color: Red;">
            <asp:Literal ID="ltlMessage" runat="server"></asp:Literal></b>
    </div>
</div>
