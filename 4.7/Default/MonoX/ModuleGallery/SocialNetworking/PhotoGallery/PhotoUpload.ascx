<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="PhotoUpload.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.PhotoUpload" %>

<%@ Register TagPrefix="MonoX" TagName="SilverlightUpload" Src="~/MonoX/ModuleGallery/SilverlightUploadModule.ascx" %>

<div class="photo-upload">
    <div class="photo-nav">
        <asp:LinkButton ID="lnkBack" runat="server" CssClass="styled-button"></asp:LinkButton>
    </div>
    <div class="photo-gallery">
        <h3><asp:Literal ID="labAlbumName" runat="server"></asp:Literal></h3>
        <MonoX:SilverlightUpload runat="server" ID="ctlUpload" UploadVisibleOnInit="true" />
    </div>
</div>
