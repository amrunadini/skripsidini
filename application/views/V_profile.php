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

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="index.html"><span>Belajar ERD</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="<?php echo base_url(); ?>index.php/C_siswa">Beranda</a></li>
          <!-- <li><a href="<?php echo base_url(); ?>index.php/C_siswa/home">Beranda</a></li> -->
          <li><a href="<?php echo base_url(); ?>index.php/C_siswa/materi">Materi</a></li>
          <li><a href="<?php echo base_url(); ?>index.php/C_siswa/latihan">Latihan</a></li>
          <li><a href="<?php echo base_url(); ?>index.php/C_siswa/tampil_tugas">Tugas</a></li>
          <li><a href="<?php echo base_url(); ?>index.php/C_siswa/tampil_evaluasi">Evaluasi</a></li>
          <li class="active"><a href="<?php echo base_url(); ?>index.php/C_profil">Profil</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container">

        <div class="section-title">
          <h2>Profil Siswa</h2>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="box" data-aos="zoom-in-right" data-aos-delay="200">
              <img src="/skripsidini/assets/img/user.png" alt="" class="img-fluid" style="width: 200px; height: 200px; margin: 70px;">
              <h2><?php echo $nama; ?></h2>
              <ul><?php echo $username; ?></ul>
              <ul><?php echo $kelas; ?></ul>
              <ul>Kelompok <?php echo $kelompok; ?></ul>
            </div>
          </div>

          <div class="col-lg-8 col-md-6 mt-4 mt-md-0">
            <div class="box" data-aos="zoom-in" data-aos-delay="100">
              <table id="example1" class="table table-bordered table-hover" border="1px">
                <thead class="danger">
                  <tr>
                  <th style="text-align: center;">Materi</th>
                  <th style="text-align: center;">Nilai</th>
                  <th style="text-align: center;">Histori Nilai</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                    foreach ($materi as $key) { 
                      $nilai = 0;
                      foreach ($nilai_materi as $kiy) {
                        if($kiy->id_materi == $key->id_materi){
                          $nilai = $kiy->nilai;
                        }
                      }
                    ?>
                    <tr>
                      <th style="text-align: center;"><?php echo $key->materi; ?></th>
                      <th style="text-align: center;"><?php echo $nilai ?></th>
                      <th style="text-align: center;">
                        <a href="<?php echo site_url('C_profil/histori_nilai/'.($key->id_materi)); ?>">LIHAT NILAI</a>
                      </th>
                    </tr>
                    <?php
                    }
                    // print_r($nilai_materi);
                    ?>
                </tbody>
              </table>
              <table id="example1" class="table table-bordered table-hover" border="1px">
                <thead class="danger">
                  <tr>
                    <th style="text-align: center;">Tugas</th>
                    <th style="text-align: center;">Nilai</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                    foreach ($tugas as $kay) { 
                      $nilai = 0;
                      foreach ($nilai_tugas as $kuy) {
                        if($kuy->id_tugas == $kay->id_tugas){
                          $nilai = $kuy->nilai;
                        }
                      }
                    ?>
                    <tr>
                     <th style="text-align: center;"><?php echo $kay->nama_tugas; ?></th>
                      <th style="text-align: center;"><?php echo $nilai ?></th>
                    </tr>
                    <?php
                    }
                    // print_r($nilai_materi);
                    ?>
                </tbody>
              </table>
              <table id="example1" class="table table-bordered table-hover" border="1px">
                <thead class="danger">
                  <tr>
                    <th style="text-align: center;">Nilai Evaluasi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                    foreach ($nilai_eval as $test) { 
                  ?>
                  <tr>
                    <th style="text-align: center;"><?php echo $test->nilai; ?></th>
                  </tr>
                  <?php
                    }
                  ?>
                </tbody>
              </table>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Pricing Section -->

  <main id="main">
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