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
        </div>
    </div>
<%@include file="footer.jsp"%>