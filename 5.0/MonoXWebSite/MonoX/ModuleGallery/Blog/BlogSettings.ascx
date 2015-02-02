<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogSettings.ascx.cs" Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogSettings" %>
<%@ Register TagPrefix="MonoX" TagName="UserEntry" Src="~/MonoX/controls/UserPicker.ascx" %>
<%@ Register Src="~/MonoX/ModuleGallery/Blog/BlogManageCategories.ascx" TagPrefix="MonoX" TagName="BlogManageCategories" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>



<asp:Panel runat="server" ID="pnlContainer">

<monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>
    <div class="blog-edit-settings">
    <dl>
        <dd class="validation-wrapper">
            <asp:ValidationSummary ID="summary" CssClass="validation-summary" runat="server" DisplayMode="List" ShowSummary="true" />
        </dd>

            <dd class="categories jq_FieldValidatorWrapper">
                <div class="edit-title">  
                    <asp:Label ID="lblTitle" runat="server" AssociatedControlID="txtTitle"></asp:Label>
                </div>
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredTitle" runat="server" CssClass="validator validator-absolute" ControlToValidate="txtTitle" SetFocusOnError="true" Display="Dynamic">
                </asp:RequiredFieldValidator>
            </dd>        
            <dd class="categories">
                <div class="edit-title">  
                    <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription"></asp:Label>
                </div>
                <asp:TextBox Rows="5" TextMode="MultiLine" runat="server" ID="txtDescription"></asp:TextBox>    
            </dd>
            <dd class="AdminAutoCompleteBox categories">
                <div class="edit-title">  
                    <asp:Label ID="lblEditors" runat="server" AssociatedControlID="ddlEditors"></asp:Label>
                </div>
                <div><MonoX:UserEntry runat="server" ID="ddlEditors" UserFilterMode="ShowAllUsers" IsRequired="false" /></div>
            </dd>
            <dd class="categories categories-title">
                <MonoX:BlogManageCategories id="blogManageCategories" runat="server"></MonoX:BlogManageCategories>
            </dd>
        </dl>
    </div>
</asp:Panel>

<dl>
    <dd class="button-holder boxed-content">
        <asp:PlaceHolder id="plhActions" Runat="server">            
            <MonoX:StyledButton id="btnSave" runat="server" CausesValidation="true" OnClick="btnSave_Click"  />
            <MonoX:StyledButton id="btnCancel" runat="server" CausesValidation="false" OnClick="btnCancel_Click" />
        </asp:PlaceHolder>
        <b style="color:Red;"><asp:Literal ID="labMessage" runat="server"></asp:Literal></b>
    </dd>
</dl>
