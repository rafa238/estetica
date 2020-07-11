<%@page import="modelo.Usuario"%>
<!DOCTYPE html>
<html lang="es-419">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name = "format-detection" content = "telephone=no" />
        <meta name="auto" content="Xtreme - NewImage" />
        <meta name="title" content="Estetica Xtreme - NewImage" />
        <meta name="author" content="Rafael Juárez Laureano" />
        <meta name="description" content="Estetica Xtreme - NewImage. El lugar ideal para destacar el potencial de tu belleza." />
        <meta name="keywords" content="El lugar ideal para destacar el potencial de tu belleza" />
        <meta name="Generator" content="Estetica Xtreme - NewImage" />
        <meta name="robots" content="index, follow" >	
        <title>Xtreme - NewImage</title>
        <link rel="shortcut icon" href="img/favicon.ico" />
        <script src="js/validaciones.js" type="text/javascript"></script>
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet"> 
        
        <!-- Custom styles for this template -->
        <link href="css/custom-styles.css" rel="stylesheet">
        <link href="css/form-validation.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
    <%
       HttpSession sesion = request.getSession();
    %>
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#"><h1 style="color:#fff;">Xtreme - NewImage</h1></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="portafolio.jsp">Servicios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="carrito.jsp">Agendar Cita</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contacto.jsp">Contacto</a>
                    </li>
                    <%
                        Usuario u = new Usuario();
                        u = (Usuario)sesion.getAttribute("usuario");
                        if( u == null){
                    %>
                    <li class="nav-item">
                        <div class="dropdown">
                            <a style="border: none" class="nav-link dropdown-toggle" href="#" role="text" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Bienvenido
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                              <a class="dropdown-item" href="sesion.jsp">Iniciar Sesion</a>
                              <a class="dropdown-item" href="#">Crear Cuenta</a>
                            </div>
                        </div>
                    </li>
                    <%
                        }else{
                    %>
                    <li class="nav-item">
                        <div class="dropdown">
                            <a style="border: none" class="nav-link dropdown-toggle" href="#" role="text" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Hola <%=u.getNombre()%>
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                              <a class="dropdown-item" href="Loggin">Cerrar Sesion</a>
                            </div>
                        </div>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </div>
    </nav>
    <!-- end Navigation -->