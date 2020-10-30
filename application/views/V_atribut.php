<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>BASIS DATA E-LEARNING</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/img/favicon.png" rel="icon">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Vesperr - v2.2.0
  * Template URL: https://bootstrapmade.com/vesperr-free-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body><!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container">

        <div class="section-title">
          <h2>Atribut</h2>
          <p>Dari contoh gambar di bawah ini, pilih dan tariklah Atribut yang memungkinkan dari contoh gambar tersebut!</p>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="box" data-aos="zoom-in-right" data-aos-delay="200">
              <img src="/skripsidini/assets/img/siswa.png" class="img-fluid" alt="" data-aos="zoom-in">
              <p style="font-size: 11px;"><a href='https://pngtree.com/so/student'>student png from pngtree.com</a></p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mt-4 mt-md-0" >
            <form action="<?php echo base_url();?>index.php/C_siswa/entitas1" method="post">
              <div class="box" data-aos="zoom-in" data-aos-delay="100"style = "height: 100%">
              <h3>Drop Here</h3>
                <div id="target-container" class="box list m-2" style = "background-color: #ccc; height: 5rem">

                </div>
                <div id="target-container" class="box list m-2" style = "background-color: #ccc; height: 5rem">

                </div>
                <div id="target-container" class="box list m-2" style = "background-color: #ccc; height: 5rem">

                </div>
                <div id="target-container" class="box list m-2" style = "background-color: #ccc; height: 5rem">

                </div>
                <div id="target-container" class="box list m-2" style = "background-color: #ccc; height: 5rem">

                </div>
              </div>
          </div>
          
          <div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
            <div class="box" data-aos="zoom-in-left" data-aos-delay="200">
              <h3>Drag from Here</h3>
              <div id="source-container" class="list">
                <div class="list-item m-1" draggable="true"><img src="<?php echo base_url();?>assets/img/atribut/a1.png"> <input id="jawaban" type="hidden" value="atribut1"></div>
                <div class="list-item m-1" draggable="true"><img src="<?php echo base_url();?>assets/img/atribut/a2.png"> <input id="jawaban" type="hidden" value="atribut2"></div>
                <div class="list-item m-1" draggable="true"><img src="<?php echo base_url();?>assets/img/atribut/a3.png"> <input id="jawaban" type="hidden" value="atribut3"></div>
                <div class="list-item m-1" draggable="true"><img src="<?php echo base_url();?>assets/img/atribut/a4.png"> <input id="jawaban" type="hidden" value="atribut4"></div>
                <div class="list-item m-1" draggable="true"><img src="<?php echo base_url();?>assets/img/atribut/a5.png"> <input id="jawaban" type="hidden" value="atribut5"></div>
                <div class="list-item m-1" draggable="true"><img src="<?php echo base_url();?>assets/img/atribut/a6.png"> <input id="jawaban" type="hidden" value="bukanatribut"></div>
                <div class="list-item m-1" draggable="true"><img src="<?php echo base_url();?>assets/img/atribut/a7.png"> <input id="jawaban" type="hidden" value="bukanatribut"></div>
                <div class="list-item m-1" draggable="true"><img src="<?php echo base_url();?>assets/img/atribut/a8.png"> <input id="jawaban" type="hidden" value="bukanatribut"></div>
                <div class="list-item m-1" draggable="true"><img src="<?php echo base_url();?>assets/img/atribut/a9.png"> <input id="jawaban" type="hidden" value="bukanatribut"></div>
                <div class="list-item m-1" draggable="true"><img src="<?php echo base_url();?>assets/img/atribut/a10.png"> <input id="jawaban" type="hidden" value="bukanatribut"></div>
              </div>
            </div>
          </div>

        </div>

        <div data-aos="zoom-in">
          <br>
          <button type="back" class="btn btn-secondary" style="width: 80px; height: 40px; background-color: #f6f6f6; border: none; border-radius: 8px;"><a href="<?php echo base_url(); ?>index.php/C_siswa/materi">Kembali</a></button> 
          <button type="submit" value="submit" id="btn-submit-custom" class="btn btn-primary m-1" style="width: 80px; height: 40px; border: none; border-radius: 8px;  display:none;">Submit</a></button>   
          </form>  
        </div>

      </div>
    </section><!-- End Pricing Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="row d-flex align-items-center">
        <div class="col-lg-6 text-lg-left text-center">
          <div class="copyright">
            &copy; Copyright <strong>Vesperr</strong>. All Rights Reserved
          </div>
          <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/vesperr-free-bootstrap-template/ -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
          </div>
        </div>
        <div class="col-lg-6">
          <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
            <!-- <a href="#intro" class="scrollto">Home</a>
            <a href="#about" class="scrollto">About</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Terms of Use</a> -->
          </nav>
        </div>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="<?php echo base_url(); ?>assets/vendor/jquery/jquery.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/vendor/php-email-form/validate.js"></script>
  <script src="<?php echo base_url(); ?>assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/vendor/counterup/counterup.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/vendor/venobox/venobox.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="<?php echo base_url(); ?>assets/js/main.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/apsdnd.js"></script>

</body>

</html>