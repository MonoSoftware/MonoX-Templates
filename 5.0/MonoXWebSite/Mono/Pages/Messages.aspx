<%@ Page
    Language="C#"
    AutoEventWireup="true"
    MasterPageFile="~/Mono/MasterPages/Default.Master"
    Theme="Mono"
    Title="Messaging center"
    CodeBehind="Messages.aspx.cs"
    Inherits="Mono.Web.Pages.Messages" %>

<%@ Register TagPrefix="MonoX" TagName="Editor" Src="~/MonoX/ModuleGallery/MonoXHtmlEditor.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>
<%@ Register TagPrefix="MonoX" TagName="MessageCenter" Src="~/Mono/WebParts/Messages/MessageCenter.ascx" %>

<asp:Content ID="Cp1" ContentPlaceHolderID="Cp1" runat="server">
    <div class="l--cover__small">
        <div class="l--row  ">
        <h1 class="title--regular">My messages</h1>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Cp2" ContentPlaceHolderID="Cp2" runat="server">    
    <div class="container">
        <div class="l--row spacer--box">
            <portal:PortalWebPartZoneTableless HeaderText='Content' ID="contentPartZone" runat="server" Width="100%" ChromeTemplateFile="LeftColumn.htm">
                <ZoneTemplate>
                    <MonoX:MessageCenter runat="server" ID="messageList" UsePrettyPhoto="true" />
                </ZoneTemplate>
            </portal:PortalWebPartZoneTableless>
        </div>
    </div>
</asp:Content>