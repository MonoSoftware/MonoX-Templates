<%@ Control
    Language="C#"
    AutoEventWireup="true"
    Inherits="MonoSoftware.MonoX.ModuleGallery.UserProfileModule"
    CodeBehind="UserProfileModule.ascx.cs" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="~/Mono/WebParts/UserAvatar.ascx" TagPrefix="monox" TagName="UserAvatar" %>
<%@ Register Src="~/MonoX/ModuleGallery/ProfileModule/UserProfile.ascx" TagPrefix="monox" TagName="UserProfile" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.PrivacyManager" TagPrefix="MonoXPrivacyManager" %> 
    
<asp:PlaceHolder ID="mainHolder" runat="server">
    <asp:UpdatePanel ID="up" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <div class="user-profile">
                <%--User Profile Start --%>
                <asp:Panel id="rowAdmin" runat="server" class="choose-a-user">
                    <asp:Label ID="lblUser" runat="server" CssClass="user-label"></asp:Label>
                    <telerik:RadComboBox ID="ddlUsers" runat="server" AllowCustomText="false" EnableLoadOnDemand="True"
                        MarkFirstMatch="false" ShowDropDownOnTextboxClick="false" ShowToggleImage="true" 
                        ShowWhileLoading="true" AutoPostBack="true" Height="150px" CausesValidation="false">
                    </telerik:RadComboBox>
                </asp:Panel>
                
                <asp:Panel  CssClass="avatar-holder" id="rowSideBar" runat="server">
                    <monox:UserAvatar ID="userAvatar" runat="server" />
                    <asp:PlaceHolder ID="plhSideBar" runat="server"></asp:PlaceHolder>
                    <div class="avatar-shadow"></div>
                </asp:Panel>

                <div class="content">
                    <asp:Panel id="rowStatus" runat="server" CssClass="profile-status">
                        <div class="buttons">
                            <ul class="button" id="rowSwitch" runat="server">
                                <li class="<%= InEditMode ? String.Empty : "current" %>">
                                    <asp:LinkButton ID="lnkViewProfile" runat="server" CausesValidation="false">
                                        <span id="labViewProfile" runat="server"></span></asp:LinkButton></li>
                                <li class="<%= InEditMode ? "current" : String.Empty %>">
                                    <asp:LinkButton ID="lnkEditProfile" runat="server" CausesValidation="false">
                                        <span id="labEditProfile" runat="server"></span></asp:LinkButton></li>
                            </ul>
                        </div>
                        <h2><asp:Literal ID="labName" runat="server"></asp:Literal></h2>
                        <p><asp:Literal ID="labMyStatus" runat="server"></asp:Literal></p>
                        <div id="panStatusEdit" runat="server" class="input-form my-status">
                            <dl>
                                <dd>
                                    <asp:TextBox runat="server" ID="txtMyStatus" CssClass="jq_swap_value"></asp:TextBox>
                                    <span class="delete-icon reset-status"><asp:LinkButton ID="lnkRemoveStatus" runat="server" CausesValidation="false"></asp:LinkButton></span>
                                    <asp:LinkButton ID="btnSetMyStatus" runat="server" CssClass="styled-button"></asp:LinkButton>
                                    <MonoXPrivacyManager:PrivacyEditor id="privacyEditor" runat="server" CssClass="privacy-content"></MonoXPrivacyManager:PrivacyEditor>
                                </dd>
                            </dl>
                        </div>
                        <div id="panStatusView" runat="server">
                        </div>
                    </asp:Panel>
                
                    <asp:Panel id="rowMainContent" runat="server">
                        <span id="lblTitle" runat="server" style="display: none;"></span>
                        <div style="overflow: hidden; overflow: hidden; position: absolute; top: 0px; right: 0px;">
                            <asp:UpdateProgress ID="upTop" runat="server" AssociatedUpdatePanelID="up" DisplayAfter="0" DynamicLayout="true">
                                <ProgressTemplate>
                                    <img src='<%= BaseSiteFullUrl %>/App_Themes/<%= Page.Theme %>/img/loading.gif' alt="Progress ..." width="20px" class="progress" />
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </div>
                        <monox:UserProfile ID="userProfile" runat="server" />
                        <asp:PlaceHolder ID="plhMain" runat="server"></asp:PlaceHolder>
                    </asp:Panel>
                </div>
            </div>
            <%--User Profile End --%>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div id="rowFooter" runat="server">
        <asp:PlaceHolder ID="plhFooter" runat="server"></asp:PlaceHolder>
    </div>
</asp:PlaceHolder>
