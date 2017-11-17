﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReporteClases.aspx.cs" Inherits="ReporteClases" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="description" content="." />
    <meta name="keywords" content="HTML, CSS, JS, JavaScript, framework, metro, front-end, frontend, web development" />
    <meta name="author" content="Victor Coronado,Juan Morán" />
    <title>Supervisor</title>
    <link rel="shortcut icon" href="images/IconoMiFamilia.png"/>
    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/estilocliente.css" rel="stylesheet" type="text/css"/>
    <link href="css/coro.css" rel="stylesheet" type="text/css"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

        <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

    <script type="text/javascript">
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
        function PaginaMostrar(numero) {
            var url = "";
            if (numero == 'dos') {
                url = "BuscarPack.aspx";

                location.href = url;
            }
            if (numero == 'tres') {
                url = "CrearCliente.aspx";

                location.href = url;
            }
            if (numero == 'uno') {
                url = "InicioSupervisor.aspx";

                location.href = url;
            }
            if (numero == 'cuatro') {
                url = "OpcionesProfesor.aspx";

                location.href = url;
            }
            if (numero == 'cinco') {
                url = "ReporteClases.aspx";

                location.href = url;
            }
            if (numero == 'seis') {
                url = "planillaProfesores.aspx";

                location.href = url;
            }
            if (numero == 'siete') {
                url = "ListarProfesores.aspx";

                location.href = url;
            }
            if (numero == 'ocho') {
                url = "reportepagoprofesores.aspx";

                location.href = url;
            }
            if (numero == 'nueve') {
                alert('No disponible por el momento');
                //url = "ListarProfesores.aspx";

                //location.href = url;
            }
            if (numero == 'diez') {
                alert('No disponible por el momento');
                //url = "ListarProfesores.aspx";

                //location.href = url;
            }
            if (numero == 'once') {
                alert('No disponible por el momento');
                //url = "ListarProfesores.aspx";

                //location.href = url;
            }
            if (numero == 'doce') {
                alert('No disponible por el momento');
                //url = "ListarProfesores.aspx";

                //location.href = url;
            }
        }
        function ActualizarPagina() {
            var urlActual = location.href;
            location.href = urlActual;
        }
        function CerrarClase(nombreCliente, id) {
            var url = "cerrarclase.aspx?NOMBRE_CLIENTE=" + nombreCliente + "&ID=" + id;
            popupCerrarClase.SetContentUrl(url);
            popupCerrarClase.Show();
        }
        function CancelarClase(nombreCliente, id) {

            //alert('cancelar ' + id);
            var retVal = confirm("¿Esta seguro de cancelar esta clase con " + nombreCliente + "?");
            if (retVal == true) {
                var url = "CancelarClase.aspx?NOMBRE_CLIENTE=" + nombreCliente + "&ID=" + id;
                popupCerrarClase.SetContentUrl(url);
                popupCerrarClase.Show();
                return true;
            }
            else {
                //document.write("User does not want to continue!");
                return false;
            }

        }

    </script>
</head>

<body style="padding-bottom:60px; padding-top:50px;">
    <form id="form1" runat="server">
    <div class="container" style="padding-left:0; padding-right:0;">
        <!-- este es el menu inferior con las opciones del profesor -->
        <nav class="navbar navbar-principal-supervisor navbar-fixed-bottom">
            <div class="col-xs-12 container-footer">
                <div id="iconoHome" data-toggle="tooltip" data-placement="top" data-original-title="Búsqueda de Cliente" class="col-xs-2 col-md-1  font-nav-bar fa fa-user-plus height-50 text-center cursor-pointer" aria-hidden="true" onclick="PaginaMostrar('uno')">
                </div>
                <div id="iconoCitas" data-toggle="tooltip" data-placement="top" data-original-title="Búsqueda de Pack" class="col-xs-2 col-md-1 glyphicon glyphicon-search  font-nav-bar height-50 text-center cursor-pointer" aria-hidden="true" onclick="PaginaMostrar('dos')">
                </div>
                <div id="iconoMedicamentos" data-toggle="tooltip" data-placement="top" data-original-title="Crear Cliente" class="col-xs-2 col-md-1 glyphicon glyphicon-new-window font-nav-bar height-50 text-center cursor-pointer" aria-hidden="true" onclick="PaginaMostrar('tres')">
                </div>
                <div id="iconoCancelarClases" data-toggle="tooltip" data-placement="top" data-original-title="Cancelar Clases" class="col-xs-2 col-md-1 fa fa-trash-o font-nav-bar height-50 text-center cursor-pointer" aria-hidden="true"  onclick="PaginaMostrar('cuatro')">
                </div>
                <div id="iconoAlertas" data-toggle="tooltip" data-placement="top" data-original-title="Reporte de Profesores" class="col-xs-2 col-md-1 fa fa-database font-nav-bar active-navbar height-50 text-center cursor-pointer" aria-hidden="true">
                </div>
                <div id="iconoPlanillas" data-toggle="tooltip" data-placement="top" data-original-title="Disponibilidad de Profesores" class="col-xs-2 col-md-1 glyphicon glyphicon-equalizer font-nav-bar height-50  text-center cursor-pointer" aria-hidden="true" onclick="PaginaMostrar('seis')" >
                </div>
                <!-- nuevos items -->
                <!-- falta crear profesor -->
                <div id="iconoListarProfesor" data-toggle="tooltip" data-placement="top" data-original-title="Editar Profesores"  class="col-xs-2 col-md-1 fa fa-group font-nav-bar height-50  text-center cursor-pointer" aria-hidden="true" onclick="PaginaMostrar('siete')">
                </div>
                <div id="iconoOcho" data-toggle="tooltip" data-placement="top" data-original-title="Reporte Clases Profesores"  class="col-xs-2 col-md-1 fa fa-suitcase font-nav-bar height-50  text-center cursor-pointer" aria-hidden="true" onclick="PaginaMostrar('ocho')">
                </div>
                <div id="iconoNueve" data-toggle="tooltip" data-placement="top" data-original-title="No disponible"  class="col-xs-2 col-md-1 fa fa-ban font-nav-bar height-50  text-center cursor-pointer" aria-hidden="true" onclick="PaginaMostrar('nueve')">
                </div>
                <div id="iconoDiez" data-toggle="tooltip" data-placement="top" data-original-title="No disponible"  class="col-xs-2 col-md-1 fa fa-ban font-nav-bar height-50  text-center cursor-pointer" aria-hidden="true" onclick="PaginaMostrar('diez')">
                </div>
                <div id="iconoOnce" data-toggle="tooltip" data-placement="top" data-original-title="No disponible"  class="col-xs-2 col-md-1 fa fa-ban font-nav-bar height-50  text-center cursor-pointer" aria-hidden="true" onclick="PaginaMostrar('once')">
                </div>
                <div id="iconoDoce" data-toggle="tooltip" data-placement="top" data-original-title="No disponible"  class="col-xs-2 col-md-1 fa fa-ban font-nav-bar height-50  text-center cursor-pointer" aria-hidden="true" onclick="PaginaMostrar('doce')">
                </div>
            </div>
        </nav>

        <section id="uno">
            <header class="titulo-header">
                <nav class="navbar navbar-default-supervisor navbar-fixed-top bg-rosa">
                    <div class="container">
                        <div class="col-xs-2 fa fa-database font-nav-bar height-50 text-center cursor-pointer" aria-hidden="true" data-toggle="modal" data-target="#myLargeModalLabel" onclick="onModal()">
                        </div>
                        <div class="col-xs-10 titulo-header">
                            <h3>Reporte Profesores</h3>
                            <%--<h5>Profesor</h5>--%>
                            <h5>
                                <asp:Literal ID="litNombreUsuario" runat="server"></asp:Literal></h5>
                        </div>
                    </div>
                </nav>

            </header>

            <!-- contenido del reporte -->
            <asp:Literal ID="litContenido" runat="server"></asp:Literal>

        </section>
        
    
    </div>
    </form>
</body>
</html>
