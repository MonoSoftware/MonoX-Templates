<%@ 
    Control Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="HTML5Upload.ascx.cs" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.HTML5Upload" %>

<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>

<asp:HyperLink runat="server" NavigateUrl="javascript:void(0);" CssClass="jq_uploadAction" ID="lnkUpload" ></asp:HyperLink>

<asp:Panel ID="pnlUpload" runat="server">
     <div class="upload">
        <div class="upload-label">Upload</div><!-- ToDo - add this to resources -->
        <input type="file" name="files[]" multiple="multiple" />
        
    </div>
    <div class="fileupload-progressbar"></div>
</asp:Panel>
        
<asp:Button runat="server" ID="btnPostback" CausesValidation="false" />
<asp:UpdatePanel id="up" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
    <ContentTemplate>
        <asp:HiddenField ID="handlerResponse" runat="server"/>
        <MonoX:FileGallery ID="fileGallery" runat="server"></MonoX:FileGallery>
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="btnPostback" EventName="Click" />
    </Triggers>
</asp:UpdatePanel>
