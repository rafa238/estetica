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
        <%
            CConsultas cons = new CConsultas();
            ArrayList<Sucursal> lista = new ArrayList();
            lista = cons.getSucursales();
            for(int i=0;i<lista.size();i++){
        %>
        <div class="row featurette">
            <div class="col-md-6 order-md-2">
                <h2 class="featurette-heading"><%=lista.get(i).getNombre()%></span></h2>
                <p class="lead"><span class="fa fa-address-card" aria-hidden="true"></span>&nbsp;&nbsp;<%=lista.get(i).getDireccion()%></p>
                <p><span class="fa fa-phone" aria-hidden="true"></span>&nbsp;&nbsp;(55)5434-0487</p>
                <p>
                    <span class="fa fa-clock-o" aria-hidden="true"></span>&nbsp;&nbsp;Lunes - Viernes: 9:00 AM a 4:00 PM
                </p>
            </div>
            <div class="col-lg-6">
                <img class="img-fluid rounded" src="img/estetica<%=lista.get(i).getId()%>.jpg" alt="Generic placeholder image">
            </div>
        </div>
        <hr class="featurette-divider">
        <%
            }
        %>
      <div class="row">
        <div class="col-lg-8 mb-4">
          <h3>Contacto</h3>
            <form name="sentMessage" id="contactForm" action="Email">
                    <div class="control-group form-group">
                      <div class="controls">
                        <label>Nombre:</label>
                        <input type="text" name="nombre" class="form-control" id="name" required onkeyup="revisar(this)" onblur="revisar(this)">
                        <p class="help-block alert-danger"></p>
                      </div>
                    </div>
                    <div class="control-group form-group">
                      <div class="controls">
                        <label>Tel&eacute;fono:</label>
                        <input type="tel" class="form-control" id="phone" name="telefono" required onkeypress='return validaNumericos(event)' onkeyup="revisaLongitud(this, 10);revisar(this); validaNumericos2(this)" onblur="revisar(this)">
                        <p class="help-block alert-danger"></p>
                      </div>
                    </div>
                    <div class="control-group form-group">
                      <div class="controls">
                        <label>Email:</label>
                        <input type="email" name="correo" class="form-control" id="email" onblur="revisarEmail(this);revisar(this)"  onkeyup="revisarEmail(this);revisar(this)" required>
                        <p class="help-block alert-danger"></p>
                      </div>
                    </div>
                    <div class="control-group form-group">
                      <div class="controls">
                        <label>Asunto:</label>
                        <textarea name="mensaje" rows="10" cols="100" class="form-control" id="message" maxlength="999" style="resize:none" onkeyup="revisar(this)" onblur="revisar(this)" required></textarea>
                        <p class="help-block alert-danger"></p>
                      </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="reset" class="btn btn-primary" id="sendMessageButton">Limpiar</button>
                    <input type="submit" class="btn btn-primary" id="sendMessageButton" value="Enviar">
            </form>
        </div>

      </div>
    </div>

<%@include file="footer.jsp"%>
