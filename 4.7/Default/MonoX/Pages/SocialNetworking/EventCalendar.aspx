﻿<%@ Page
    Language="C#"  
    AutoEventWireup="true"
    CodeBehind="EventCalendar.aspx.cs"
    Inherits="MonoSoftware.MonoX.Pages.SocialNetworking.EventCalendar"
    MasterPageFile="~/MonoX/MasterPages/DefaultSmallHeader.master" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register TagPrefix="MonoX" TagName="EventModule" Src="~/MonoX/ModuleGallery/EventModule/EventModule.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="Server">
    <div class="row-fluid">
        <div class="span12">
            <portal:PortalWebPartZoneTableless HeaderText='<%$ Code: PageResources.Zone_LeftPartZone %>' ID="leftPartZone" runat="server" Width="100%" ChromeTemplateFile="Standard.htm">
                <ZoneTemplate>
                    <MonoX:EventModule ID="eventModule" runat="server" Mode="Advanced" CalendarName="MonoXCalendar" AdvancedModeDefaultView="MonthView">
                    </MonoX:EventModule>
                </ZoneTemplate>
            </portal:PortalWebPartZoneTableless>
        </div>
    </div>
</asp:Content>
