<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.master" AutoEventWireup="true" CodeBehind="AdminJugadores.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.AdminJugadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContainer" runat="server">
<!-- Page Content -->
<div class="container">
    <div class="contenido">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="form-group">
                    <asp:TextBox ID="txtIdJugador" runat="server" placeholder="Ingrese ID del Jugador" CssClass="form-control"></asp:TextBox>
                    <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn btn-default" />
                    
                    <!-- No intentes convertir el botón del modal a asp porque no funca
                    <asp:Button ID="btnModalEliminar" runat="server" Text="Eliminar" CssClass="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" />
                    -->
                    
                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">Eliminar</button>
	                
                    <!-- Ejemplo ayuda: http://www.w3schools.com/bootstrap/bootstrap_modal.asp -->
                    <!-- Modal -->
	                <div class="modal fade" id="myModal" role="dialog">
		                <div class="modal-dialog">
		
			                <!-- Modal content-->
			                <div class="modal-content">
				                <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal">&times;</button>
					                <h4 class="modal-title">¡Precaución!</h4>
				                </div>
				                <div class="modal-body">
					                <h3>¿Esta seguro que desea eliminar este jugador?</h3>
				                </div>
				                <div class="modal-footer">

					                <!-- BOTONES ELIMINAR Y ACTUALIZAR -->
                                    <asp:Button ID="Button1" runat="server" Text="Eliminar" CssClass="btn btn-default" OnClick="btnEliminar_Click" />
					                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
				                </div>
			                </div>
			
		                </div>
	                </div>

                </div>
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>
<!-- /.container -->
</asp:Content>
