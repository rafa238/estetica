<%@page import="modelo.Sucursal"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.CConsultas"%>
<%@include file="header.jsp"%>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <br/><br/>
      <h1 class="mt-4 mb-3">Acercate a una de nuestras sucursales mas cercanas</h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.jsp">Inicio</a>
        </li>
        <li class="breadcrumb-item active">Contacto</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
         
        <!-- Contact Details Column -->
        <%
            CConsultas cons = new CConsultas();
            ArrayList<Sucursal> lista = new ArrayList();
            lista = cons.getSucursales();
            for(int i=0;i<lista.size();i++){
        %>
        <div class="col-lg-6 mb-4">
          <h3><%=lista.get(i).getNombre()%></h3>
          <p>
            <span class="fa fa-address-card" aria-hidden="true"></span>&nbsp;&nbsp;
            <%=lista.get(i).getDireccion()%>
          </p>
          <p>
            <span class="fa fa-phone" aria-hidden="true"></span>&nbsp;&nbsp;
            (55)5434-0487
          </p>
          <p>
            <span class="fa fa-clock-o" aria-hidden="true"></span>&nbsp;&nbsp;
            Lunes - Viernes: 9:00 AM a 4:00 PM
          </p>
        </div>
        <%
            }
        %>
      </div>
      <!-- /.row -->

      <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      
      <div class="row">
        <div class="col-lg-8 mb-4">
          <h3>Contacto</h3>
          <form name="sentMessage" id="contactForm" novalidate>
            <div class="control-group form-group">
              <div class="controls">
                <label>Nombre:</label>
                <input type="text" class="form-control" id="name" required data-validation-required-message="Porfavor ingresa tú Nombre.">
                <p class="help-block alert-danger"></p>
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Tel&eacute;fono:</label>
                <input type="tel" class="form-control" id="phone" required data-validation-required-message="Porfavor ingresa tú número teléfonico.">
                <p class="help-block alert-danger"></p>
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Email:</label>
                <input type="email" class="form-control" id="email" required data-validation-required-message="Porfavor ingresa tú dirección de email.">
                <p class="help-block alert-danger"></p>
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Asunto:</label>
                <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Porfavor ingresa tú mensaje" maxlength="999" style="resize:none"></textarea>
                <p class="help-block alert-danger"></p>
              </div>
            </div>
            <div id="success"></div>
            <!-- For success/fail messages -->
            <button type="reset" class="btn btn-primary" id="sendMessageButton">Limpiar</button>
            <button type="submit" class="btn btn-primary" id="sendMessageButton">Enviar Mensaje</button>
          </form>
        </div>

      </div>
      <!-- /.row -->

    </div>

<%@include file="footer.jsp"%>
