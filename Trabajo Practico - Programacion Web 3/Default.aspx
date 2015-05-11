<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.Default" %>

<asp:Content ID="ContenidoPagina" ContentPlaceHolderID="PageContainer" runat="server">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                </button>
                <a class="navbar-brand" href="Default.aspx">Inicio</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="ATorneos.aspx">Administraci&oacute;n</a>
                    </li>
                    <li>
                        <a href="RListadoEquipos.aspx">Res&uacute;men de equipos</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Page Content -->
    <div class="container">
        <div class="contenido">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <a type="button" class="btn btn-primary btn-lg btn-block" href="ATorneos.aspx">Administraci&oacute;n</a>
                            <a type="button" class="btn btn-primary btn-lg btn-block" href="RListadoEquipos.aspx">Res&uacute;men de equipos</a>
                        </div>  
                    </div>      
                </div>
            </div>
        <!-- /.row -->
        </div>
    </div>
    <!-- /.container -->
</asp:Content>
