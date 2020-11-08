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
<script>
let status = 0;
let statuseval = 0;
</script>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="index.html"><span>Belajar ERD</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

    </div>
  </header><!-- End Header -->
           <!-- <?php
           echo $statustugas;
          $latihan1 = 0;
          $latihan2 = 0;
          $latihan3 = 0;
          $latihan4 = 0;
                foreach( $jawabaneval as $key){
                if($key->id_materi == 1){
                 $latihan1++;
                }elseif($key->id_materi == 2){
                  $latihan2++;
                }elseif($key->id_materi == 3){
                  $latihan3++;
                }elseif($key->id_materi == 4){
                  $latihan4++;
                }
              }
            ?>
            <div id="dom-target" style="display: none;"><?php echo $latihan1;?></div>
            <div id="dom-target" style="display: none;"><?php echo $latihan2;?></div>
            <div id="dom-target" style="display: none;"><?php echo $latihan3;?></div>
            <div id="dom-target" style="display: none;"><?php echo $latihan4;?></div> -->
  <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container">

        <div class="section-title">
          <h2>LIST EVALUASi</h2>
        </div>

              <table id="example1" class="table table-bordered table-hover" border="1px">
                <thead class="danger">
                  <tr class="danger">
                    <th style="text-align: center;">NO</th>
                    <th style="text-align: center;">EVALUASI</th>
                    <th style="text-align: center;">KETERANGAN</th>
                  </tr>
                </thead>
                <tbody style="text-align: center;">
                  <?php
                  $no = 1;
                  foreach ($datauser as $key) {
                  // $idpass = $key->id_tugas;
                    $info = 'Belum Mengerjakan';

                    foreach ($datatugas as $kiy ) {
                      if($key->id_eval == $kiy->id_eval && $kiy->id_siswa == $id){
                        $info ='Sudah Mengerjakan';
                      }
                    }
                  ?>
                  <tr>
                    <th><?php echo $no; $no++;?></th>
                    <th><a data-toggle="modal" data-target="#exampleModal" id="custom-link-tugas" href="<?php echo site_url('index.php/C_siswa/evaluasi/'.($key->id_eval)); ?>" ><?php echo $key->nama_eval; ?></a></th>
                    <th><?php echo $info ?></th>
                  </tr>
            
                  <?php
                      
                    }
                  ?>
                </tbody>
              </table>
              <div data-aos="zoom-in" >
                <br>
                <button type="submit" style="width: 80px; height: 40px; background-color: #f6f6f6; border: none; border-radius: 8px; margin-left: 0px;"><a href="<?php echo base_url(); ?>index.php/C_siswa"><b>Kembali</b></a></button>
              </div> 
      </div>
      <?php if($statustugas == 'sudah'){
      ?>
      <script>
      status = 1;
      </script>
      <?php

      }  ?>
      
      <?php if($statuseval == 'sudah'){
      ?>
      <script>
      statuseval = 1;
      </script>
      <?php

      }  ?>
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


  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Warning</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Mohon kerjakan materi yang bersangkutan terlebih dahulu
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Warning</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Anda sudah mengerjakan Evaluasi
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script >
  const targetmateeri = document.querySelectorAll('#dom-target')
  const targethref = document.querySelector('#custom-link-tugas')
  let keterangan = 0
  
  if(status === 1){
    targethref.setAttribute("data-toggle","none");
  }
  if(statuseval === 1){
    targethref.setAttribute("data-toggle","modal");targethref.setAttribute("data-target","#exampleModal2" );
  }
  console.log(status)
  
  </script>
</body>

</html>