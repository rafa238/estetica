<?php require_once("header.php"); ?>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <br/><br/>
      <h1 class="mt-4 mb-3">Contactame</h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Inicio</a>
        </li>
        <li class="breadcrumb-item active">Contacto</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4">
          <!-- Embedded Google Map -->
          <div id="map-canvas"></div>
        </div>

        <!-- Contact Details Column -->
        <div class="col-lg-4 mb-4">
          <h3>Si deseas que trabajemos en algun proyecto juntos. !!!</h3>
          <p>
            <span class="fa fa-address-card" aria-hidden="true"></span>&nbsp;&nbsp;
            Av. Poniente 128 Col. Nueva Vallejo, Del. Gustavo A. Madero
          </p>
          <p>
            <span class="fa fa-phone" aria-hidden="true"></span>&nbsp;&nbsp;
            (55)5434-0487
          </p>
          <p>
            <span class="fa fa-envelope" aria-hidden="true"></span>&nbsp;&nbsp;
            <a href="mailto:fdxdesarrollos@gmail.com">fdxdesarrollos@gmail.com</a>
          </p>
          <p>
            <span class="fa fa-clock-o" aria-hidden="true"></span>&nbsp;&nbsp;
            Lunes - Viernes: 10:00 AM a 6:00 PM
          </p>
        </div>
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

    <hr>
    <!-- snippets Section -->
    <div class="col-md-12 text-center">
      <ul class="social-network social-circle">
          <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
          <li><a href="https://www.facebook.com/frederick.velasco.739" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
          <li><a href="https://twitter.com/" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
          <li><a href="https://www.google.com.mx/" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
          <li><a href="https://www.linkedin.com/pub/federico-juárez/b6/313/833" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
      </ul>
    </div>
    <!-- end snippets -->
    <hr>

<?php require_once("footer.php"); ?>
