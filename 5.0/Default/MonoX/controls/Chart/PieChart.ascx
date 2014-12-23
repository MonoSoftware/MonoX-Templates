<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PieChart.ascx.cs" Inherits="MonoSoftware.MonoX.Controls.PieChart" %>

<% if (ShowLegend) { %>
<div id='<%= this.ChartLegendElementID %>'></div>
<% } %>

<canvas id='<%= this.ChartElementID %>' height="<%= this.Height %>" width="<%= this.Width %>"></canvas>