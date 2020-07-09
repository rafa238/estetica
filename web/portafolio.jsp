<%@page import="modelo.Servicio"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.CConsultas"%>
<%@include file="header.jsp"%>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <br/><br/>
      <h1 class="mt-4 mb-3">Servicios</h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.jsp">Inicio</a>
        </li>
        <li class="breadcrumb-item active">Servicios</li>
      </ol>

      <div class="row">
        <%
            CConsultas cons = new CConsultas();
            ArrayList<Servicio> lista = new ArrayList();
            lista = cons.getServicios();
            for(int i=0;i<lista.size();i++){
        %>  
        <div class="col-lg-3 portfolio-item">
          <div class="card h-100">
            <!--<a href="http://201.122.211.80:8083/pre-registro/"><img class="card-img-top" src="img/portafolio/preregistro.png" height="" alt=""></a>-->
            <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=lista.get(i).getDetalle()%></a>
                </h4>
                <p class="card-text">
                      <p>Desde $<%=lista.get(i).getPrecio()%></p>
                </p>
                <form method="post" action="Cesta">
                    <input type="hidden" value="<%=lista.get(i).getId()%>" name="idservicio">
                    <input type="submit" class="btn btn-primary" value="Agregar">
                </form>
            </div>
          </div>
        </div>
        <% } %>
<!-- 
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="http://201.122.211.80:8083/promocion/"><img class="card-img-top" src="img/portafolio/promocion.png" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">PROMOCI&Oacute;N DE ASCENSOS</a>
              </h4>
              <p class="card-text">
                    <p>Aplicación Web 2.0 para el registro del personal operativo de la Policía Bancaria e Industrial aspirante,  
                    a la promoción anual de ascensos.</p>
                    
                    <p>Desarrollada con el framework de PHP CodeIgniter 4.0, MySQL, Bootstrap 4, jQuery y HTML5.</p>  
              </p>
            </div>
          </div>
        </div>          
          
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="img/portafolio/regper1.jpg" height="" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">REGISTRO DEL PERSONAL (JAVA)</a>
              </h4>
              <p class="card-text">
                <p>Aplicaci&oacute;n que ejemplifica el desarrollo de aplicaciones desktop con java haciendo uso de jFrame.
                    A manera de ejemplo se realiza el registro de personal, mediante la conexi&oacute;n a una base de datos MySQL desde java.</p>

                <p>Tambi&eacute;n se ejemplifica la generaci&oacute;n de reportes con java mediante el pluggin jasperReport de iReport. 
                    De tal manera que es posible generar un reporte de la informaci&oacute;n registrada en la base de datos en formato pdf, csv, html, xml, etc.</p>
              </p>
            </div>
          </div>
        </div>
        
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="img/portafolio/regper2.jpg" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">REGISTRO DEL PERSONAL (PHP)</a>
              </h4>
              <p class="card-text">
                <p>Aplicaci&oacute;n que ejemplifica el desarrollo de aplicaciones web 2.0 con HTML, CSS Y jQuery del lado del cliente asi como PHP y MySQL del lado del servidor. A manera de ejemplo se realiza el registro de personal, mediante la conexi&oacute;n a una base de datos MySQL desde PHP.</p>

                <p>Tambi&eacute;n se ejemplifica la generaci&oacute;n de reportes en formato PDF con PHP mediante el uso de la libreria FPDF. 
                    De tal manera que es posible generar un reporte listo para imprimir de la informaci&oacute;n registrada en la base de datos.</p>
              </p>
            </div>
          </div>
        </div>
        
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="img/portafolio/spacewar4.jpg" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">SPACE WAR (The battle for gliese 581g)</a>
              </h4>
              <p class="card-text">
                <p>Emocionante Videojuego de scroll vertical desarrollado con C/C++ y la poderosa libreria SDL escrita en C para el manejo de graficos 2D.</p>
                <p>Con una ambientacion espacial. Ayuda a la raza humana a ganar la batalla por el recientemente descubierto planeta Gliese 581g. Pues otros alienigenas tambi&eacute;n pretenden apoderarse de este nuevo mundo.</p>
              </p>
            </div>
          </div>
        </div>
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="img/portafolio/skybattle2.jpg" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">SKY BATTLE</a>
              </h4>
              <p class="card-text">
                <p>Emocionante videojuego de scroll vertical, en honor al legendario 1946 ambientado en la segunda guerra mundial.</p>

                <p>Muestra como desarrollar un videojuego con C/C++ y la poderosa libreria SDL para el manejo de gr&aacute;ficos 2D.</p>
              </p>
            </div>
          </div>
        </div>
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="img/portafolio/genresp3.jpg" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Generador de respaldos</a>
              </h4>
              <p class="card-text">
                <p>Aplicaci&oacute;n que ejemplifica el desarrollo de aplicaciones desktop con java haciendo uso de jFrame.
                    Especificamente muestra la gestion de archivos y directorios con java.</p>

                <p>Tambi&eacute;n se ejemplifica el uso de algunos componentes graficos como la ProgressBar, el jCalendar, etc.</p>
              </p>
            </div>
          </div>
        </div>        
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="img/portafolio/agendatel1.jpg" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Agenda Telefonica</a>
              </h4>
              <p class="card-text">
                <p>Aplicaci&oacute;n que ejemplifica el desarrollo de aplicaciones desktop con java haciendo uso de la consola.
                    A manera de ejemplo se realiza el registro de contactos telefonicos, en una base de datos MySQL desde java.</p>
              </p>
            </div>
          </div>
        </div>-->
      </div>
      <!-- /.row -->
    </div>
<%@include file="footer.jsp"%>