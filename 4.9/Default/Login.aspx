<%@ Page 
    Language="C#" 
    MasterPageFile="~/MonoX/MasterPages/Empty.master" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.Pages.Login" 
    Codebehind="Login.aspx.cs" %>
  
<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>
<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>    
<%@ Register TagPrefix="MonoX" TagName="Login" Src="~/MonoX/ModuleGallery/LoginModule.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="LoginSocial" Src="~/MonoX/ModuleGallery/LoginSocial.ascx" %>

<asp:Content ContentPlaceHolderID="cp" Runat="Server">
    <div class="content-wrapper" id="login-page">
            <div class="error-message">
                <asp:PlaceHolder ID="plhAuthorizationMessage" runat="server" Visible="false">
                    <div class="error validation-summary">
                        <img src="<%= ResolveUrl(MonoSoftware.MonoX.Paths.App_Themes.img.Error_png) %>" alt="Error" />
                        <%= ErrorMessages.Authorization_Login %>
                    </div>
                </asp:PlaceHolder>
            </div>

            <div class="login-title">
                <a href='<%= MonoSoftware.Web.UrlFormatter.ResolveServerUrl(MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink("~/")) %>' class="logo">
                    <img id="Img1" runat="server" src="<%$ Code: MonoSoftware.MonoX.Paths.App_Themes.img.logo_png %>" alt="MonoX" />
                </a>
            </div>

            <div class="page-login">
                <MonoX:Login runat="server" ID="ctlLogin" Width="100%" />
            </div>
            <div id="rowRPX" runat="server" class="social-login-holder" Visible="<% $Code: MonoSoftware.MonoX.ApplicationSettings.EnableUserRegistration %>">
                <MonoX:LoginSocial runat="server" ID="ctlLoginSocial" /> 
                <div class="italic-style">
                    <p><asp:Literal ID="Literal1" runat="server" Visible="<% $Code: MonoSoftware.MonoX.ApplicationSettings.EnableUserRegistration %>" Text="<% $Code: PageResources.Login_RpxWarning %>">
                    </asp:Literal></p>
                </div>
            </div>

        <div id="footer-spacer"></div>
    </div>

    <footer id="sticky-footer">
        <div class="copyright">
            Copyright &#169;2012
            <a href="http://www.mono-software.com">Mono Ltd.</a>
            <a id="A1" runat="server" href="http://monox.mono-software.com" title="Powered by MonoX">Powered by MonoX</a>
        </div>
    </footer>
</asp:Content>