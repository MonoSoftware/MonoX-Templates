<%@ Page 
    Language="C#"
    MasterPageFile="~/Mono/MasterPages/Blank.Master"
    AutoEventWireup="true"
    Inherits="Mono.Web.Login"
    Theme="Mono"
    Codebehind="Login.aspx.cs" %>
  
<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>
<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>    
<%@ Register TagPrefix="MonoX" TagName="Login" Src="~/Mono/controls/LoginModule.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="LoginSocial" Src="~/Mono/WebParts/LoginSocial.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/controls/StyledButton.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="MonoXControls" %>
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="MonoXControls" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<asp:Content ContentPlaceHolderID="cp" Runat="Server">
    <div class="top-bar">
        <div class="l--row top-wrapper">
            <a id="A1" runat="server" href="~/">
                <img id="Img1" runat="server" src="~/App_Themes/Mono/img/logo.svg" alt="Logo" class="logo" />
            </a>
        </div>
    </div>
    <div class="l--row l--home">
        <asp:PlaceHolder ID="plhAuthorizationMessage" runat="server" Visible="false">
            <img src="<%= ResolveUrl(MonoSoftware.MonoX.Paths.App_Themes.img.Error_png) %>" alt="Error" />
            <h2 class="title--main__center"><%= ErrorMessages.Authorization_Login %></h2>
        </asp:PlaceHolder>
    
        <MonoX:Login runat="server" ID="ctlLogin" Width="100%" ShowOpenIdLogin="false" />
        <asp:Literal runat="server" Visible="false" Text=""></asp:Literal>

        <MonoX:LoginSocial runat="server" ID="ctlLoginSocial" Width="100%" />
    </div>
</asp:Content>