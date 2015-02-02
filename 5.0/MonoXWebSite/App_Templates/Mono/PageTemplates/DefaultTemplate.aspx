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
    <div class="content-page-top">
        <div class="sixteen columns">
            <h1><asp:Literal runat="server" ID="ltlTitle"></asp:Literal></h1>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Cp2" ContentPlaceHolderID="Cp2" runat="server">
    <div class="container">
        <div class="sixteen columns">
            <div class="content-page">
                <portal:PortalWebPartZoneTableless HeaderText='Content' ID="contentPartZone" runat="server" Width="100%" ChromeTemplateFile="LeftColumn.htm">
                    <ZoneTemplate>
                        <MonoX:Editor ID="ctlEditor" runat="server" Title='Content' ShowRating="false"></MonoX:Editor>
                    </ZoneTemplate>
                </portal:PortalWebPartZoneTableless>
            </div>
        </div>
    </div>
</asp:Content>