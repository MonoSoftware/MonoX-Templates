<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.Controls.CustomRadEditor"
    Codebehind="CustomRadEditor.ascx.cs" %>
    
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="~/MonoX/controls/SyntaxHighlighter/SyntaxHighlighter.ascx" TagPrefix="mono" TagName="SyntaxHighlighter" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>
<mono:SyntaxHighlighter ID="syntaxHighlighter" runat="server" />


    <telerik:RadEditor ContentAreaMode="Div"
        ID="radCustomEditor"
        Runat="server"
        Width="100%"
        Height="100%"
        Skin="Metro"
        EnableViewState="true"
            CanvasMode="No">
    </telerik:RadEditor>
    <asp:RequiredFieldValidator ID="valCustomEditor" runat="server" ControlToValidate="radCustomEditor"  SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
