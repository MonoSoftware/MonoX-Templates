﻿<%@ Page Language="C#"  
    AutoEventWireup="true"
    CodeBehind="MyWall.aspx.cs"
    Inherits="MonoSoftware.MonoX.Pages.Profile.MyWall"
    MasterPageFile="~/MonoX/MasterPages/DefaultSmallHeader.master" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>   
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register TagPrefix="MonoX" TagName="PeopleSearch" Src="~/MonoX/ModuleGallery/SocialNetworking/PeopleSearch.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="Wall" Src="~/MonoX/ModuleGallery/SocialNetworking/WallNotes.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>
<%@ Register TagPrefix="MonoX" TagName="FriendList" Src="~/MonoX/ModuleGallery/SocialNetworking/FriendList.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="ProfileHeader" Src="~/MonoX/ModuleGallery/ProfileModule/UserProfileHeader.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="MyPhotos" Src="~/MonoX/ModuleGallery/SocialNetworking/PhotoGallery/MyPhotos.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="GoogleMaps" Src="~/MonoX/ModuleGallery/GoogleMaps.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="DiscussionMessages" Src="~/MonoX/ModuleGallery/SocialNetworking/Discussion/DiscussionMessages.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cp" Runat="Server">
    <div class="row-fluid">
        <div class="user-profile">
            <div class="span12">
                <MonoX:ProfileHeader id="profileHeader" runat="server"></MonoX:ProfileHeader>
            </div>
            <div class="row-fluid">
                <div class="span7">
                    <portal:PortalWebPartZoneTableless HeaderText='<%$ Code: PageResources.Zone_LeftPartZone %>' ID="leftPartZone" runat="server" Width="100%" ChromeTemplateFile="Standard.htm">
                        <ZoneTemplate>
                            <MonoX:Wall runat="server" ID="snWallNotes" UsePrettyPhoto="true" ShowRating="false" GravatarRenderType="NotSet" />
                        </ZoneTemplate>
                    </portal:PortalWebPartZoneTableless>
		        </div>
                <div class="span5">
                    <portal:PortalWebPartZoneTableless HeaderText='<%$ Code: PageResources.Zone_RightPartZone %>' ID="rightWebPartZone" runat="server" Width="100%" ChromeTemplateFile="RightColumnSimple.htm" ShowChromeForNonAdmins="true">
                        <ZoneTemplate>
                            <MonoX:PeopleSearch runat="server" CacheDuration="600" ConfirmationRequired="true" ID="snPeopleSearch" />
                            <MonoX:GoogleMaps id="googleMaps" runat="server" WidthSizeUnitType="Percentage" Width="100"></MonoX:GoogleMaps>
                            <MonoX:FriendList runat="server" PageSize="12" ID="snFriendList" Template="MyFriendList" EnablePaging="false"></MonoX:FriendList>
                            <MonoX:MyPhotos ID="myPhotos" runat="server" PageSize="6" GroupItemCount="2" EnablePaging="false" ></MonoX:MyPhotos>
                            <MonoX:DiscussionMessages ID="discussionTopicMessages" runat="server" HideIfEmpty="true" ShowActionButtons="false" ShowMessagePost="false" CurrentMode="None" IsPublic="true" EnablePrettyPhoto="true" MaxPostLength="40" Template="UserProfileDiscussionMessage" EnableSyntaxHighlighter="false" ShowHeader="false" ShowPager="false" PageSize="10"></MonoX:DiscussionMessages>
                        </ZoneTemplate>
                    </portal:PortalWebPartZoneTableless>
                </div>
            </div>
        </div>
    </div>
</asp:Content>