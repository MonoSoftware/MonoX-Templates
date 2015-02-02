
<%@ 
    Control Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="HTML5Upload.ascx.cs" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.HTML5Upload" %>

<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>

<asp:HyperLink runat="server" NavigateUrl="javascript:void(0);" CssClass="jq_uploadAction" ID="lnkUpload" ></asp:HyperLink>

<asp:Panel ID="pnlUpload" runat="server">
    <div class="fileupload-buttonbar">
        <label class="fileinput-button">
            <div tabindex="0" class="uploadbox">
                <span class="upl-title"><i class="icon-upload"></i> <%= MonoSoftware.MonoX.Resources.DefaultResources.HTML5Upload_UploadFilesTitle %></span>
                <span class="upl-text"><%= MonoSoftware.MonoX.Resources.DefaultResources.HTML5Upload_UploadFilesText %></span>
            </div>
            <input type="file" name="files[]" multiple="multiple" />
        </label>
	    <div class="fileupload-progressbar"></div>
    </div>
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
