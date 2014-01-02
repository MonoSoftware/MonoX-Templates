<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="AlbumEditView.ascx.cs" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.AlbumEditView" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<div class="photos-edit">
    <h2><%= AlbumId.Equals(Guid.Empty) ? MonoSoftware.MonoX.Resources.SocialNetworkingResources.PhotoGallery_AlbumEditView_CreateAlbum : MonoSoftware.MonoX.Resources.SocialNetworkingResources.PhotoGallery_AlbumEditView_EditAlbum%></h2>
    <div class="message-form">
        <dl>
            <dd>
                <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ValidationGroup="Modification" CssClass="validation-summary" ShowSummary="true" EnableClientScript="true" />
                <div class="edit-title ">
                    <asp:Label ID="lblName" AssociatedControlID="txtName" runat="server" ></asp:Label>    
                </div>    
                <asp:TextBox runat="server" ID="txtName" CssClass="TextBox" />
                <asp:RequiredFieldValidator ID="requiredName" runat="server" CssClass="validator ValidatorAdapter" ValidationGroup="Modification" ControlToValidate="txtName" SetFocusOnError="true" Display="Dynamic" Text="!"></asp:RequiredFieldValidator>
            </dd>
            <dd>
                <div class="edit-title ">
                    <asp:Label ID="lblDescription" AssociatedControlID="txtDescription" runat="server" ></asp:Label>
                </div>
                <asp:TextBox runat="server" ID="txtDescription" CssClass="TextBox" TextMode="MultiLine" Rows="10" />
            </dd>
            <dd id="rowPrivacy" runat="server">
                <div class="edit-title ">
                    <asp:Label ID="lblPrivacy" AssociatedControlID="ddlPrivacy" runat="server" ></asp:Label>
                </div>
                <asp:DropDownList runat="server" ID="ddlPrivacy" CssClass="TextBox" />
            </dd>
            <dd class="button-holder">
                <MonoX:StyledButton ID="btnSave" CausesValidation="true" runat="server" /> 
                <MonoX:StyledButton ID="btnCancel" CausesValidation="false" runat="server" />
            </dd>
        </dl>
    </div>
</div>