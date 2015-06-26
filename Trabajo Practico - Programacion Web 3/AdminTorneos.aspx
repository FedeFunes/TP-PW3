﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.master" AutoEventWireup="true" CodeBehind="AdminTorneos.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.AdminTorneos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/AdminTorneos.js"></script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContainer" runat="server">
<!-- Page Content -->
<div class="container">
    <div class="contenido">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                
                <div class="form-group">
                    <label for="txtIdTorneo">Ingrese ID del torneo y elija que desea hacer</label>
                    <asp:TextBox ID="txtIdTorneo" runat="server" placeholder="ID del torneo" CssClass="form-control"></asp:TextBox>                    
                    <span class="errorForm text-danger" id="errorIdTorneo">Error: Campo vacio o inválido (deben ser solo numeros y hasta 5 caracteres max).</span>
                    <asp:RequiredFieldValidator ID="RFVtxtIdTorneo" runat="server" ErrorMessage="No puede estar vacío." Text="(*)" ControlToValidate="txtIdTorneo" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REVtxtIdTorneo" runat="server" ErrorMessage="Campo inválido (deben ser solo numeros y hasta 5 caracteres max)." Text="(*)" ValidationExpression="\d{1,5}" ControlToValidate="txtIdTorneo" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>   
                </div>

                <asp:ValidationSummary ID="VSAdminTorneos" runat="server" HeaderText="Errores en formulario:" />

                 <div class="form-group">
                    <asp:Label ID="lblExitoso" runat="server" Text="Cambios realizados con éxito" class="success text-success" Visible="false" EnableViewState="false"></asp:Label>
                </div>

                <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn btn-default" OnClick="btnEditar_Click" />

                <button id="btnEliminarModal" type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">Eliminar</button>
                   
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
					            <h3>¿Esta seguro que desea eliminar este torneo?</h3>
				            </div>
				            <div class="modal-footer">
                                <asp:Button ID="Button1" runat="server" Text="Eliminar" CssClass="btn btn-default" OnClick="btnEliminar_Click" />
					            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
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
