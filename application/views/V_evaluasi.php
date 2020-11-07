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
          <li class="active"><a href="<?php echo base_url(); ?>index.php/C_siswa/tampil_evaluasi">Evaluasi</a></li>
          <li><a href="<?php echo base_url(); ?>index.php/C_profil">Profil</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

    <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container">

        <div class="section-title">
          <br>
          <h2>Evaluasi</h2>
        </div>

        <br>
        <div class="row" data-aos="fade-up" data-aos-delay="300">
          <p><b>Perhatikan contoh kasus di bawah ini!</b></p>
        </div>
        <div class="col-lg-20 col-md-50">
          <div class="box" data-aos="zoom-in-right" data-aos-delay="200" style="text-align: justify;">
            <p>Pada suatu hari Budi dan keluarganya akan pergi menonton sebuah film di Bioskop. Pada saat sampai di dalam bioskop, Ibu Budi bersama dengan Adik Budi mengantri untuk membeli tiket. Selagi mengantri, Ibu Budi dan Adik Budi melihat jadwal penayangan film yang tersedia di layar. Film yang akan ditonton oleh Budi dan keluarga dapat ditayangkan di beberapa studio. Setiap film memiliki kategori umur yang berbeda-beda. Ibu Budi memilih kategori film yang sesuai dengan umur Budi dan adiknya. Setelah memilih film, jadwal penayangan, dan tempat duduk, Ibu Budi membayar sejumlah uang kepada petugas loket sesuai dengan faktur yang tersedia di layar komputer. Setelah membayar sejumlah uang, Ibu Budi mendapatkan tiket bioskop untuk film yang akan ditonton. Di dalam tiket yang sudah tercetak terdapat studio penayangan, judul film yang akan ditonton, hari dan tanggal, jam penayangan, baris dan nomor kursi yang akan diduduki, serta harga per-satu tiket. Jika seseorang hendak membuat sistem di dalam bioskop maka desain ERD seperti apakah yang dibutuhkan?</p>
          </div>
        </div>
        <div class="row" data-aos="fade-up" data-aos-delay="300">
          <p><b>Kira-kira, entitas, atribut, relasi, dan kardinalitas apa saja yang dibutuhkan? </b></p>
        </div>
        
        <table class="table">
          <form action="<?php echo site_url('C_siswa/insertjawabaneval'); ?>" method="POST">
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
          </table>
          <br>
          <center>
            <input type="submit" class="btn btn-danger" value="Submit">
          </form>


        <div data-aos="zoom-in">
          <br>
          <button type="submit" value="submit" id="btn-submit-custom" class="btn btn-primary m-1" style="width: 80px; height: 40px; border: none; border-radius: 8px;  display:none;">Submit</a></button>   
          <button type="submit" style="width: 80px; height: 40px; background-color: #f6f6f6; border: none; border-radius: 8px; margin-left: 0px;"><a href="<?php echo base_url(); ?>index.php/C_siswa"><b>Kembali</b></a></button> 
          </form>  
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
  <script src="<?php echo base_url(); ?>assets/js/apsdnd.js"></script>

</body>

</html>