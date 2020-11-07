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

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <script
  src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
  integrity="sha256-/SIrNqv8h6QGKDuNoLGA4iret+kyesCkHGzVUUV0shc="
  crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <style>
    .entry:not(:first-of-type)
    {
      margin-top: 10px;
    }
    .glyphicon
    {
      font-size: 12px;
    }
  </style>

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
          <li class="active"><a href="<?php echo base_url(); ?>index.php/C_siswa/tugas">Tugas</a></li>
          <li><a href="<?php echo base_url(); ?>index.php/C_siswa/evaluasi">Evaluasi</a></li>
          <li><a href="<?php echo base_url(); ?>index.php/C_profil">Profil</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <br>
          <?php foreach ($datatugas as $key) {
            $id = $key->id_tugas;
            ?>
            <h2><?php echo $key->nama_tugas ?></h2>
            <h3>Deskripsi Tugas</h3>
            <p><?php echo $key->des_tugas ?></p>
          <?php 
            }
          ?>
        </div>
        <br>
        <div class="row" data-aos="fade-up" data-aos-delay="300">
          <p>Tema Kelompok: </p>
        </div>

        <table id="example1" class="table table-bordered table-hover" border="1px">
          <form action="<?php echo site_url('C_siswa/insertjawabantugas')?>" enctype="multipart/form-data" method="POST">
            <div class="row" data-aos="fade-up" data-aos-delay="300">
              <p>Masukkan hasil observasi sesuai dengan kategori</p>
            </div>
            <div class="col-lg-20 col-md-30" data-aos="fade-up" data-aos-delay="300">
              <tr>
                <th> Entitas (contoh: Guru, Siswa)</th>
                <td>
                  <textarea class="form-control" name="entitas" rows="5" data-rule="required" placeholder="Masukkan entitas"></textarea>
                  <div class="validate"></div>
                </td>
              </tr>
              <tr>
                <th> Atribut (contoh: id_siswa, nama)</th>
                <td>
                  <textarea class="form-control" name="atribut" rows="5" data-rule="required" placeholder="Masukkan atribut"></textarea>
                    <div class="validate"></div>
                </td>
              </tr>
              <tr>
                <th> Relasi (contoh: Guru mengajar Siswa) </th>
                <td>
                 <textarea class="form-control" name="relasi" rows="5" data-rule="required" placeholder="Masukkan relasi"></textarea>
                    <div class="validate"></div>
                </td>
              </tr>
              <tr>
                <th> Kardinalitas (Banyak Guru mengajar Banyak Siswa) </th>
                <td>
                  <textarea class="form-control" name="kardinalitas" rows="5" data-rule="required" placeholder="Masukkan kardinalitas"></textarea>
                    <div class="validate"></div>
                </td>
              </tr>
            </div>
        </table>

        <table id="example1" class="table table-bordered table-hover" border="1px">  
          <div class="row" data-aos="fade-up" data-aos-delay="300">
            <p>Unggah hasil observasi</p>
          </div>
          <div class="content" data-aos="fade-up" data-aos-delay="300">
            <div class="col-md-10">
              <div class="content table-responsive table-full-width">
                <input type="file" id="files" name="userfile" multiple="multiple" />&nbsp;
                <input type="hidden" id="files" name="idtugas" value="<?php echo $id ?>" />&nbsp;
                <br>
                <input type="submit" value="Upload" style="width: 80px; height: 40px; background-color: #f6f6f6; border: none; border-radius: 8px;">
              </div>
            </div>
          </div>
        </div>
          </form>
        </table>
        <div data-aos="zoom-in">
          <br>
          <button type="submit" style="width: 80px; height: 40px; background-color: #f6f6f6; border: none; border-radius: 8px;">Upload</button>
        </div>
    </section><!-- End Services Section -->

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