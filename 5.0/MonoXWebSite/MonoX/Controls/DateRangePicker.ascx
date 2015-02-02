<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="DateRangePicker.ascx.cs" 
    Inherits="MonoSoftware.MonoX.Controls.DateRangePicker" %>

<div class="daterangepicker">
    <asp:DropDownList runat="server" ID="ddlRange" CssClass="daterangepicker-select" AutoPostBack="true"></asp:DropDownList>
    <asp:LinkButton runat="server" ID="lnkPrev" Text="&lt;" CssClass="btn-secondary btn-med"></asp:LinkButton>
    <asp:Label runat="server" ID="lblRange" CssClass="daterangepicker-label"></asp:Label>
    <asp:HiddenField runat="server" ID="hfRange" />
    <asp:LinkButton runat="server" ID="lnkNext" Text="&gt;" CssClass="btn-secondary btn-med"></asp:LinkButton>
    <asp:LinkButton runat="server" ID="lnkReset" Text="X" CssClass="btn-primary btn-med"></asp:LinkButton>
</div>