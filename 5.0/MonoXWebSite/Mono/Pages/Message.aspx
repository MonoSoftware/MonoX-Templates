<%@ Page 
    Language="C#" 
    MasterPageFile="~/Mono/MasterPages/Blank.Master"
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.Message" 
    Theme="Mono" 
    Codebehind="Message.aspx.cs" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>

<asp:Content ContentPlaceHolderID="cp" Runat="Server">
    <div class="top-bar">
        <div class="l--row top-wrapper">
            <a id="A2" runat="server" href="~/">
                <img id="Img1" runat="server" src="~/App_Themes/Mono/img/logo.svg" alt="Logo" class="logo" />
            </a>
        </div>
    </div>
    <div class="l--row l--home article--post">
            <h3><%= Title %></h3>
            <p><%= Description %></p>
            <a id="A1" runat="server" href="~/">Go to home page</a>
    </div>
</asp:Content>
