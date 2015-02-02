<%@ Control
    Language="C#"
    AutoEventWireup="true"
    Inherits="MonoSoftware.MonoX.ModuleGallery.UserProfileHeader"
    CodeBehind="UserProfileHeader.ascx.cs" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.HelperClasses" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.PrivacyManager" TagPrefix="MonoXPrivacyManager" %> 
<%@ Register Src="~/MonoX/ModuleGallery/ProfileModule/UserAvatar.ascx" TagPrefix="monox"
    TagName="UserAvatar" %>
<%@ Import Namespace="MonoSoftware.MonoX" %>

<asp:ScriptManagerProxy ID="proxySM" runat="server">
    <Scripts>
    </Scripts>
</asp:ScriptManagerProxy>

    <asp:Panel ID="rowAdmin" runat="server" class="form profile--choose" Visible="false">
        <asp:Label ID="lblUser" runat="server"></asp:Label>
        <telerik:RadComboBox ID="ddlUsers" runat="server" AllowCustomText="false" EnableLoadOnDemand="True"
            MarkFirstMatch="false" ShowDropDownOnTextboxClick="false" ShowToggleImage="true"
            ShowWhileLoading="true" AutoPostBack="true" Height="150px" Width="100%" CausesValidation="false">
        </telerik:RadComboBox>
    </asp:Panel>


    <asp:UpdatePanel ID="up" runat="server" >
        <ContentTemplate>
            <div class="profile--header">
                <asp:Panel CssClass="profile--avatar" ID="rowSideBar" runat="server">
                    <monox:UserAvatar ID="userAvatar" runat="server" />
                </asp:Panel>
                <h3 class="title--secondary profile--name"><asp:Literal ID="labName" runat="server"></asp:Literal></h3>
                <asp:Panel ID="rowStatus" runat="server" CssClass="status clearfix">
                    <div class="profile-status-top">                            
                        <p class="status-text"><asp:Literal ID="labMyStatus" runat="server"></asp:Literal></p>
                    </div>
                    <div id="panStatusEdit" runat="server" class="profile-status-bottom">
                        <div class="float-right">
                            <MonoXPrivacyManager:PrivacyEditor ID="privacyEditor" runat="server" CssClass="privacy float-left"></MonoXPrivacyManager:PrivacyEditor>
                            <asp:LinkButton ID="btnSetMyStatus" runat="server" CssClass="styled-button float-left"></asp:LinkButton>
                        </div>
                        <div class="status-composer">
                            <asp:TextBox runat="server" ID="txtMyStatus" CssClass="jq_swap_value"></asp:TextBox>
                            <asp:LinkButton ID="lnkRemoveStatus" runat="server" CausesValidation="false" CssClass="remove-status"></asp:LinkButton>
                        </div>
                    </div>
                    <div id="panStatusView" runat="server"></div>
                </asp:Panel>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    

    <asp:PlaceHolder ID="plhNav" runat="server" Visible="false"> 
        <div class="user-profile-tabs clearfix">
            <ul>
                <asp:PlaceHolder ID="plhWall" runat="server">
                    <li <%= GetSelectedCssClass(AppendUserNameQueryParam(Paths.MonoX.Pages.UserProfile.MyWall_aspx)) %>>
                        <a href='<%= MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(GetProfileUrl(UserName)) %>'>
                        <%= MonoSoftware.MonoX.Resources.UserProfileResources.UserProfileHeader_MyWall%></a>
                    </li>
                </asp:PlaceHolder>            
                <li <%= GetSelectedCssClass(AppendUserNameQueryParam(Paths.MonoX.Pages.UserProfile.AboutMe_aspx)) %>>
                    <a href='<%= MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(GetProfileAboutUrl(UserName)) %>'>
                    <%= MonoSoftware.MonoX.Resources.UserProfileResources.UserProfileHeader_About%></a>
                </li>
                <li <%= GetSelectedCssClass(AppendUserNameQueryParam(Paths.MonoX.Pages.UserProfile.MyFriends_aspx)) %>>
                    <a href='<%= MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(GetProfileFriendsUrl(UserName)) %>'>
                    <%= MonoSoftware.MonoX.Resources.UserProfileResources.UserProfileHeader_Friends%></a>
                </li>
                <li <%= GetSelectedCssClass(AppendUserNameQueryParam(Paths.MonoX.Pages.UserProfile.MyPhotos_aspx)) %>>
                    <a href='<%= MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(GetProfilePhotosUrl(UserName)) %>'>
                    <%= MonoSoftware.MonoX.Resources.UserProfileResources.UserProfileHeader_Photos%></a>
                </li>            
            </ul>
        </div>
    </asp:PlaceHolder>
