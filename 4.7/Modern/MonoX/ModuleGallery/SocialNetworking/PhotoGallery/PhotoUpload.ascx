<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="PhotoUpload.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.PhotoUpload" %>

<%@ Register TagPrefix="MonoX" TagName="SilverlightUpload" Src="~/MonoX/ModuleGallery/SilverlightUploadModule.ascx" %>

<div class="main-options">
    <div class="button-wrapper">
        <asp:LinkButton ID="lnkBack" runat="server" CssClass="photo-button"></asp:LinkButton>
    </div>
</div>
<div class="photo-gallery">
    <h3><asp:Literal ID="labAlbumName" runat="server"></asp:Literal></h3>
    <MonoX:SilverlightUpload runat="server" ID="ctlUpload" UploadVisibleOnInit="true" />
</div>

