<%@ Page 
    Title=""
    Language="C#"
    MasterPageFile="~/Mono/MasterPages/Default.Master"
    AutoEventWireup="true"
    CodeBehind="UserProfile.aspx.cs"
    Inherits="Mono.Web.Pages.UserProfile"
    Theme="Mono" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>   
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register TagPrefix="MonoX" TagName="EditProfile" Src="~/MonoX/ModuleGallery/ProfileModule/UserProfileModule.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>
<%@ Register TagPrefix="MonoX" TagName="ProfileHeader" Src="~/Mono/WebParts/ProfileModule/UserProfileHeader.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="GoogleMaps" Src="~/MonoX/ModuleGallery/GoogleMaps.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="DiscussionMessages" Src="~/Mono/WebParts/Discussion/DiscussionMessages.ascx" %>

<asp:Content ID="cp1" ContentPlaceHolderID="cp1" runat="server">

             <MonoX:GoogleMaps id="googleMaps" runat="server" WidthSizeUnitType="Percentage" Width="100"></MonoX:GoogleMaps>

</asp:Content>

<asp:Content ID="Cp2" ContentPlaceHolderID="cp2" runat="server"> 
    <div class="l--user-header">
        <div class="l--row">
            <MonoX:ProfileHeader id="profileHeader" runat="server" ShowMyStatus="false"></MonoX:ProfileHeader>
        </div>
    </div>
        <div class="l--row spacer--box">

        <div class="l--first">
            
            
            <MonoX:EditProfile id="ctlProfile" runat="server" AutoDetectUser="false" HiddenFieldsString="FirstName,LastName" GravatarRenderType="NotSet" 
            ShowMyStatus="false" ShowUserAvatar="false" ShowSideBarContent="false" >
                <EditTemplate>                                
                </EditTemplate>
                <PreviewTemplate>
                </PreviewTemplate>
            </MonoX:EditProfile>   
        </div>
        <div class="l--last">
            <h3 class="title--secondary">Latest Discussion</h3>
            <MonoX:DiscussionMessages ID="discussionTopicMessages" runat="server" ShowActionButtons="false" ShowMessagePost="false" CurrentMode="None" IsPublic="true" EnablePrettyPhoto="true" MaxPostLength="100" Template="UserProfileDiscussionMessage" EnableSyntaxHighlighter="false" ShowHeader="false" ShowPager="true" PageSize="10"></MonoX:DiscussionMessages>
        </div>
    </div>
</asp:Content>