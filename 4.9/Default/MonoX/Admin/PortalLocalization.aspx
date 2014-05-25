<%@ Assembly Name="MonoSoftware.MonoX.DAL" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.EntityClasses" %>

<%@ Page Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master" AutoEventWireup="true"
    Inherits="MonoSoftware.MonoX.Admin.PortalLocalization" EnableTheming="true" Theme="DefaultAdmin"
    Title="Portal localization management" CodeBehind="PortalLocalization.aspx.cs" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>
<%@ Register Src="~/MonoX/controls/AjaxConfirmDialog.ascx" TagPrefix="mono" TagName="AjaxConfirmDialog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="Server">
    <asp:UpdatePanel ID="up" runat="server" ChildrenAsTriggers="true">
        <ContentTemplate>
        <div class="AdminContainer localization ">
            <dl id="tblContent" runat="server">
                <dd class="import-button">
                    <asp:ListBox ID="lstResourceKeys" runat="server" Width="100%" Rows="10" AutoPostBack="true" SelectionMode="Single" OnSelectedIndexChanged="lstResourceKeys_SelectedIndexChanged"> </asp:ListBox>
                    <asp:Button ID="btnExportAll" runat="server" Text="Export all from DB to Resx" OnClick="btnExportAll_Click" CssClass="AdminLargeButton" Visible="false" />
                    <mono:AjaxConfirmDialog ID="ajaxConfirmDialogExportAll" runat="server"></mono:AjaxConfirmDialog>
                    <asp:Button ID="btnImportAll" runat="server" Text="Import all from Resx to DB" OnClick="btnImportAll_Click" CssClass="AdminLargeButton" />
                    <mono:AjaxConfirmDialog ID="ajaxConfirmDialogImportAll" runat="server"></mono:AjaxConfirmDialog>
                </dd>
                <dd class="localization-buttons">
                    <asp:Button ID="btnExport" runat="server" Text="Export from DB to Resx" OnClick="btnExport_Click" CssClass="AdminLargeButton"  Visible="false"/>
                    <asp:Button ID="btnImport" runat="server" Text="Import from Resx to DB" OnClick="btnImport_Click" CssClass="AdminLargeButton" />
                    <span style="display: none;">
                        <asp:Button ID="btnBackup" runat="server" Text="Backup" ToolTip="Backup resource database" CssClass="AdminButton" />
                    </span>
                    <asp:Button ID="btnRefresh" runat="server" Text="Refresh Page" CssClass="AdminButton" />
                    <asp:Button ID="btnReload" runat="server" Text="Reload resources" OnClick="btnReload_Click" CssClass="AdminLargeButton" />
                    <asp:Button ID="btnDeleteAllLangResSets" runat="server" Text="Delete all language resource sets" OnClick="btnDeleteAllLangResSets_Click" CssClass="AdminLargeButton" />
                    <mono:AjaxConfirmDialog ID="ajaxConfirmDialogDeleteAllLangResSets" runat="server"></mono:AjaxConfirmDialog>
                </dd>
                <dd>
                    <asp:DropDownList ID="ddlReourceSet" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlReourceSet_SelectedIndexChanged"></asp:DropDownList>
                </dd>
                <dd>
                    <span>Resource key: </span>
                    <asp:TextBox ID="txtResourceKey" runat="server"></asp:TextBox>
                </dd>
                <dd>
                    <asp:Button ID="btnDeleteResource" runat="server" Text="(D)elete resource set" OnClick="btnDeleteResource_Click" AccessKey="D" CssClass="AdminLargeButton" />
                    <mono:AjaxConfirmDialog ID="ajaxConfirmDialog" runat="server"></mono:AjaxConfirmDialog>
                </dd>
                <dd>
                    <span>Value: </span>
                    <asp:TextBox ID="txtResourceValue" runat="server" Rows="5" TextMode="MultiLine" ></asp:TextBox>
                </dd>
                <dd>
                    <asp:Button ID="btnAddNew" runat="server" Text="(A)dd new" OnClick="btnAddNew_Click" AccessKey="A" CssClass="AdminButton" />
                    <asp:Button ID="btnSave" runat="server" Text="(S)ave" AccessKey="S" OnClick="btnSave_Click" CssClass="AdminButton" />
                    <asp:Button ID="btnDeleteResourceKey" runat="server" Text="De(l)ete" ToolTip="Delete resource key" OnClick="btnDeleteResourceKey_Click" AccessKey="L" CssClass="AdminButton" />
                    <mono:AjaxConfirmDialog ID="ajaxConfirmDialogDeleteResourceKey" runat="server"></mono:AjaxConfirmDialog>
                    <asp:Button ID="btnRename" runat="server" Text="(R)ename" OnClick="btnRename_Click" AccessKey="R" CssClass="AdminButton" />
                </dd>
                <dd class="check-box">
                    <asp:CheckBox ID="chkUserTranslation" runat="server" Checked="true" AutoPostBack="true" Text="Use translations ?" OnCheckedChanged="chkUserTranslation_CheckedChanged" />
                </dd>
                <dd>
                    <span>Possible translations:</span>
                </dd>
                <dd>
                    <asp:ListBox ID="lstTranslations" runat="server" SelectionMode="Single" Width="100%">
                        </asp:ListBox>
                </dd>
                <dd>
                    <asp:Button ID="btnTranslate" runat="server" OnClick="btnTranslate_Click" Text="Use (t)ranslation" ToolTip="Use selected translation" AccessKey="T" CssClass="AdminButton" />
                </dd>
                <dd>
                    <asp:GridView ID="grdTranslationPreview" runat="server">
                        </asp:GridView>
                </dd>
            </dl>
            <dl id="panMessage" runat="server" class="message-box">
                <dd>
                    <img runat="server" src="<%$ Code: MonoSoftware.MonoX.Paths.App_Themes.All.DefaultAdmin.img.warning_png %>" alt="Warning icon" />
                    <span><asp:Literal ID="labMessage" runat="server"></asp:Literal></span>
                </dd>
            </dl>
        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress AssociatedUpdatePanelID="up" ID="updateProgressMain" DisplayAfter="0" runat="server">
        <ProgressTemplate>
            <div class="ajaxOverlay"></div>
            <div class="ajaxLoader"><img id="Img1" alt="Loading" runat="server" src="<%$ Code: MonoSoftware.MonoX.Paths.App_Themes.All.Common.img.ajaxLoader_gif %>" /></div>
        </ProgressTemplate>
    </asp:UpdateProgress>
</asp:Content>
