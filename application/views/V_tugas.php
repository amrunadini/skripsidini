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
          <h2>Tugas</h2>
          <!-- <p>Magnam dolores commodi suscipit eius consequatur ex aliquid fug</p> -->
        </div>

        <br>
        <table id="example1" class="table table-bordered table-hover" border="1px">
          <form action="<?php echo site_url('C_siswa/insertjawabantug')?>" enctype="multipart/form-data" method="POST">
            <div class="row" data-aos="fade-up" data-aos-delay="300">
              <p>Masukkan hasil observasi dalam bentuk deskriptif</p>
            </div>
            <div class="col-lg-20 col-md-30" data-aos="fade-up" data-aos-delay="300">
                <div class="form-group">
                    <textarea class="form-control" name="jawaban" rows="5" data-rule="required" data-msg="Anda belum memasukkan hasil observasi" placeholder="Masukkan hasil observasi"></textarea>
                  <div class="validate"></div>
                </div>
            </div>
            <!-- <div class="row" data-aos="fade-up" data-aos-delay="300">
              <p>Masukkan hasil observasi sesuai kategori</p>
            </div>
            <div class="container" data-aos="fade-up" data-aos-delay="300">
              <div class="row">
                <label class="control-label" for="ourField">Entitas</label>
              </div>
            </div>
            <div class="container" data-aos="fade-up" data-aos-delay="300">
              <form role="form">
                  <div id="myRepeatingFields">
                    <div class="entry input-group col-lg-3">
                      <input class="form-control" name="fields[]" type="text" placeholder="Masukkan disini" />
                      <span class="input-group-btn">
                        <button type="button" class="btn btn-success btn-lg btn-add">
                          <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                        </button>
                      </span>
                    </div>
                  </div> 
                </form>
                <br>
                <small>Tekan <span class="glyphicon glyphicon-plus gs"></span> untuk menambah form</small>
            </div>
            <script>
              $(function()
              {
                $(document).on('click', '.btn-add', function(e)
                {
                  e.preventDefault();
                  var controlForm = $('#myRepeatingFields:first'),
                  currentEntry = $(this).parents('.entry:first'),
                  newEntry = $(currentEntry.clone()).appendTo(controlForm);
                  newEntry.find('input').val('');
                  controlForm.find('.entry:not(:last) .btn-add')
                  .removeClass('btn-add').addClass('btn-remove')
                  .removeClass('btn-success').addClass('btn-danger')
                  .html('<span class="glyphicon glyphicon-minus"></span>');
                }).on('click', '.btn-remove', function(e)
                {
                  e.preventDefault();
                  $(this).parents('.entry:first').remove();
                  return false;
                });
              });
            </script> -->
            <!-- <div class="row" data-aos="fade-up" data-aos-delay="300">
              <p>Unggah hasil observasi</p>
            </div>
            <div class="content" data-aos="fade-up" data-aos-delay="300">
              <div class="col-md-10">
                <div class="content table-responsive table-full-width"> -->
                  <!-- <?php echo form_open_multipart('C_siswa/tugas');?> -->
                  <!-- <input type="file" id="files" name="userfile" multiple="multiple" />&nbsp;
                </div>
              </div>
            </div> -->
            <!-- <div class="mb-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Tugas berhasil dikumpulkan.</div>
            </div> -->
            <div data-aos="zoom-in">
              <br>
              <button type="submit" style="width: 80px; height: 40px; background-color: #f6f6f6; border: none; border-radius: 8px;">Upload</button>     
            </div>
            <!-- <div class="text-center" data-aos-delay="300">
              <button type="submit">Upload</button>
            </div> -->
          </div>

          </form>
          
        </table>
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