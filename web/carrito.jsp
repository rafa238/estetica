    <%@include file="header.jsp"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="modelo.Servicio"%>

    <div class="container" style="margin-bottom: 30px">
      <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="img/logo.jpg" alt="" width="72" height="72">
        <h2>Mis Servicios</h2>
      </div>

      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Carrito</span>
            
            <%
            
            ArrayList<Servicio> lista = new ArrayList();
            lista = (ArrayList)sesion.getAttribute("cesta");
            if(lista == null){
                lista = new ArrayList();
            }
            %>
            <span class="badge badge-secondary badge-pill"><%=lista.size()%></span>
          </h4>
            <%
            float total = 0;
            for(int i=0; i<lista.size(); i++){
                total += lista.get(i).getPrecio();
            %>
          <ul class="list-group mb-3">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0"><%=lista.get(i).getDetalle()%></h6>
                <small class="text-muted">Duracion <%=lista.get(i).getDuracion()%> minutos</small>
              </div>
              <span class="text-muted">$<%=lista.get(i).getPrecio()%></span>
            </li>
            <%
            }
            %>
            <li class="list-group-item d-flex justify-content-between">
              <span>Total (MX)</span>
              <strong>$<%=total%></strong>
            </li>
          </ul>

        </div>
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3">Datos de la Cita</h4>
          <form class="needs-validation" novalidate>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">Nombre</label>
                <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Requerimos tu nombre
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Apellidos</label>
                <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Requerimos tu apellido.
                </div>
              </div>
            </div>

            <div class="mb-3">
              <label for="email">Correo Electronico <span class="text-muted"></span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="mb-3">
              <label for="address">Direccion</label>
              <input type="text" class="form-control" id="address" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="mb-3">
              <label for="address2">Telefono<span class="text-muted"></span></label>
              <input type="text" class="form-control" id="address2">
            </div>

            <div class="row">
              <div class="col-md-5 mb-3">
                <label for="country">Country</label>
                <select class="custom-select d-block w-100" id="country" required>
                  <option value="">Choose...</option>
                  <option>United States</option>
                </select>
                <div class="invalid-feedback">
                  Please select a valid country.
                </div>
              </div>
              <div class="col-md-4 mb-3">
                <label for="state">State</label>
                <select class="custom-select d-block w-100" id="state" required>
                  <option value="">Choose...</option>
                  <option>California</option>
                </select>
                <div class="invalid-feedback">
                  Please provide a valid state.
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="zip">Zip</label>
                <input type="text" class="form-control" id="zip" placeholder="" required>
                <div class="invalid-feedback">
                  Zip code required.
                </div>
              </div>
            </div>
            <hr class="mb-4">

            <h4 class="mb-3">Metodo de Pago</h4>

            <div class="d-block my-3">
              <div class="custom-control custom-radio">
                <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                <label class="custom-control-label" for="credit">Tarjeta de Credito</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                <label class="custom-control-label" for="debit">Tarjeta de Debito</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                <label class="custom-control-label" for="paypal">Paypal</label>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="cc-name">Name on card</label>
                <input type="text" class="form-control" id="cc-name" placeholder="" required>
                <small class="text-muted">Full name as displayed on card</small>
                <div class="invalid-feedback">
                  Nombre Requerido
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="cc-number">Credit card number</label>
                <input type="text" class="form-control" id="cc-number" placeholder="" required>
                <div class="invalid-feedback">
                    Debes Ingresar tu numero de tarjeta 
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-3 mb-3">
                <label for="cc-expiration">Expiration</label>
                <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                <div class="invalid-feedback">
                    Debes Ingresar la expiracion de tu tarjeta
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="cc-expiration">CVV</label>
                <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                <div class="invalid-feedback">
                    Debes ingresar tu codigo de seguridad
                </div>
              </div>
            </div>
            <hr class="mb-4">
                <%
                    if(sesion.getAttribute("usuario") == null){
                %>
                <button class="btn btn-primary btn-lg btn-block" type="button" onclick="redireccionar()">Iniciar Sesion</button>
                <%
                    }else{
                %>
                <button class="btn btn-primary btn-lg btn-block" type="submit">Continuar con la compra</button>
                <%
                    }
                %>
            
          </form>
        </div>
      </div>
    </div>

    <script>
        function redireccionar(){
            location.href="sesion.jsp";
        }
      
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
<%@include file="footer.jsp"%>
