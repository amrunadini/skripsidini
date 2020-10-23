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
          <h2>Latihan Soal</h2>
          <!-- <p>Dari contoh gambar di bawah ini, pilih dan tariklah mana yang menurutmu merupakan sebuah Kardinalitas!</p> -->
        </div>

        <div class="row">

          <div class="col-lg-15 col-md-20">
            <div class="box" data-aos="zoom-in-right" data-aos-delay="200">
              <form action="<?php echo site_url('C_siswa/insertJawabanLat')?>" method='POST'>
                <table id="example1" class="table table-bordered table-hover" border="0px">
                  <input type="text" value="<?php echo $id_materi; ?>" name="id_materi" hidden>
                    <ol type="a">
                      <?php
                          foreach ( $datauser as $isisoal => $value) {
                      ?>

                      <tr>
                        <th><?php echo $value['soal']; ?></th>
                      </tr>

                      <tr>
                        <th><input type="radio" name="<?php echo $value['id_soal']; ?>" value="<?php echo $value['pil1']; ?>" required><?php echo "A. ",$value['pil1']; ?></th>
                        <th><input type="radio" name="<?php echo $value['id_soal']; ?>" value="<?php echo $value['pil2']; ?>" required><?php echo "B. ",$value['pil2']; ?></th>
                        <th><input type="radio" name="<?php echo $value['id_soal']; ?>" value="<?php echo $value['pil3']; ?>" required><?php echo "C. ",$value['pil3']; ?></th>
                        <th><input type="radio" name="<?php echo $value['id_soal']; ?>" value="<?php echo $value['pil4']; ?>" required><?php echo "D. ",$value['pil4']; ?></th>
                        <th><input type="radio" name="<?php echo $value['id_soal']; ?>" value="<?php echo $value['pil5']; ?>" required><?php echo "E. ",$value['pil5']; ?></th>
                      </tr>
                      <?php
                          }
                      ?>
                    </ol>
                </table>
                <center>
                  <input type="submit" class="btn btn-danger" value="Input">
              </form>
                  <input type="reset" class="btn btn-danger"><br><br>
            </div>
          </div>
        </div>

        <div data-aos="zoom-in">
          <br>
          <a href="<?php echo base_url(); ?>index.php/C_siswa/latihan">Kembali</a>
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

</body>

</html>