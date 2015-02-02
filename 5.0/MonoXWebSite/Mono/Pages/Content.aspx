<%@ Page
    Language="C#"
    AutoEventWireup="true"
    MasterPageFile="~/Mono/MasterPages/Default.Master"
    Theme="Mono"
    CodeBehind="Content.aspx.cs"
    Inherits="Mono.Web.Pages.Content" %>

<%@ Register TagPrefix="MonoX" TagName="Editor" Src="~/MonoX/ModuleGallery/MonoXHtmlEditor.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>

<asp:Content ID="Cp1" ContentPlaceHolderID="Cp1" runat="server">
    <div class="l--cover">
        <div class="l--row">
	        <h1 class="title--primary"><asp:Literal runat="server" ID="ltlTitle"></asp:Literal></h1>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Cp2" ContentPlaceHolderID="Cp2" runat="server">

    <div class="l--row spacer--box article--post">
        <portal:PortalWebPartZoneTableless HeaderText='Content' ID="contentPartZone" runat="server" Width="100%" ChromeTemplateFile="LeftColumn.htm">
            <ZoneTemplate>
                <MonoX:Editor ID="ctlEditor" runat="server" Title='Content' ShowRating="false"></MonoX:Editor>
            </ZoneTemplate>
        </portal:PortalWebPartZoneTableless>
    </div>

</asp:Content>