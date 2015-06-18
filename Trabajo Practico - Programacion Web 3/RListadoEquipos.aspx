<%@ Page Title="" Language="C#" MasterPageFile="~/Resumen.master" AutoEventWireup="true" CodeBehind="RListadoEquipos.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.RListadoEquipos" %>
<%@ Register Src="~/ListadoEquipos.ascx" TagName="ListadoEquipos" TagPrefix="le" %>
<asp:Content ID="contenidoHead" ContentPlaceHolderID="head" runat="server">
    <script src="js/obtenerEquipos.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="PageContainer" runat="server">
    <le:ListadoEquipos runat="server" ID="ucListadoEquipos" />
</asp:Content>
