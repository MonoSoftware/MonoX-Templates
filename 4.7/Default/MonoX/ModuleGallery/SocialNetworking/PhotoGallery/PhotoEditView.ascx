﻿<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="PhotoEditView.ascx.cs" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.PhotoEditView" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<div class="row-fluid">
    <div class="span12">
        <h2><%= MonoSoftware.MonoX.Resources.SocialNetworkingResources.PhotoGallery_PhotoEditView_EditPhoto%></h2>
        <div class="input-form">
            <dl>
                <dd>
                    <asp:Label ID="lblName" AssociatedControlID="txtName" runat="server" ></asp:Label>        
                    <asp:TextBox runat="server" ID="txtName" CssClass="TextBox" />
                </dd>
                <dd>
                    <asp:Label ID="lblDescription" AssociatedControlID="txtDescription" runat="server" ></asp:Label>
                    <asp:TextBox runat="server" ID="txtDescription" CssClass="TextBox" TextMode="MultiLine" Rows="10" />
                </dd>
                <dd>
                    <asp:Label ID="lblPrivacy" AssociatedControlID="ddlPrivacy" runat="server" ></asp:Label>
                    <asp:DropDownList runat="server" ID="ddlPrivacy" CssClass="TextBox" />
                </dd>
                <asp:UpdatePanel ID="up" runat="server">
                    <ContentTemplate>
                    <dd>
                        <asp:CheckBox runat="server" ID="chkAlbumCover" />
                        <asp:Label ID="labAlbumCover" AssociatedControlID="chkAlbumCover" runat="server" ></asp:Label>
                    </dd>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <dd class="button-holder">
                    <MonoX:StyledButton ID="btnSave" CausesValidation="false" runat="server" /> 
                    <MonoX:StyledButton ID="btnCancel" CausesValidation="false" runat="server" />
                </dd>
            </dl>
        </div>
    </div>
</div>