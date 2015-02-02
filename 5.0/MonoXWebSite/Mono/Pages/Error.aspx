<%@ Page 
    Language="C#" 
    MasterPageFile="~/Mono/MasterPages/Blank.Master"
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.Pages.Error" 
    Theme="Mono" 
    Codebehind="Error.aspx.cs" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>

<asp:Content ContentPlaceHolderID="cp" Runat="Server">


    <div class="top-bar">
        <div class="l--row top-wrapper">
            <a id="A1" runat="server" href="~/">
                <img id="Img1" runat="server" src="~/App_Themes/Mono/img/logo.svg" alt="Logo" class="logo" />
            </a>
        </div>
    </div>

    <div class="l--row l--home article--post">
        
        <h2><img class="error-image" src="<%= ResolveUrl(MonoSoftware.MonoX.Paths.App_Themes.img.Error_png) %>" alt="Error" /> <%= Title %></h2>
        <p class="l--box"><%= Description %></p>
        <p>
            <%= MonoSoftware.MonoX.Resources.ErrorMessages.ToContinueWorkingWithApplication %>
            <strong><asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="~"></asp:HyperLink></strong>

        </p>
    </div>
</asp:Content>