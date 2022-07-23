<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Universitas PGRI Ronggolawe Tuban</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="template/assets/img/favicon.png" rel="icon">
    <link href="template/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="template/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="template/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="template/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="template/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="template/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="template/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="template/assets/css/style.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: BizLand - v3.8.0
  * Template URL: https://bootstrapmade.com/bizland-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

    <!-- ======= Top Bar ======= -->
    <section id="topbar" class="d-flex align-items-center">
        <div class="container d-flex justify-content-center justify-content-md-between">
            <div class="contact-info d-flex align-items-center">
                <i class="bi bi-envelope d-flex align-items-center"><a
                        href="mailto:prospective@unirow.ac.id">prospective@unirow.ac.id</a></i>
                <i class="bi bi-phone d-flex align-items-center ms-4"><span>(0356)322233</span></i>
            </div>
            <div class="contact-info d-flex align-items-center">
                <i class="bi bi-person d-flex align-items-center"> &nbsp; {{auth()->user()->mahasiswa->nama}}
                    ({{auth()->user()->mahasiswa->jurusan->nama_jurusan}})</i>
            </div>
        </div>
    </section>

    <!-- ======= Header ======= -->
    <header id="header" class="d-flex align-items-center">
        <div class="container d-flex align-items-center justify-content-between">

            <h1 class="logo"><a href="index.html"><img src="logo.png" alt=""></a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo"><img src="template/assets/img/logo.png" alt=""></a>-->

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="#hero">Beranda</a></li>
                    <li><a class="nav-link scrollto" href="#about">Jurusan</a></li>
                    <li><a class="nav-link scrollto" href="#services">Mahasiswa</a></li>
                    <li><a class="nav-link scrollto " href="#portfolio">Tentang</a></li>
                    <li><a class="nav-link scrollto" href="#team">Kontak</a></li>

                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
    </header><!-- End Header -->

    @yield('container')

    <!-- ======= Footer ======= -->
    <footer id="footer">

        <div class="footer-newsletter">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h4>Join Berita</h4>
                        <p>Masukan Email Untuk Mendapatkan Berita</p>
                        <form action="" method="post">
                            <input type="email" name="email"><input type="submit" value="Subscribe">
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-top">
            <div class="container">
                <div class="row justify-content-between">

                    <div class="col-lg-5 col-md-5 footer-contact">
                        <h3>Alamat Universitas<span>.</span></h3>
                        <p>
                            Jl. Manunggal No. 61 Tuban, 62381
                            Telp.(0356)322233, Fax.(0356)331578
                        </p>
                    </div>

                    <div class="col-lg-5 col-md-5 footer-links">
                        <h4>Laman Terkait</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">ristekdikti.go.id</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">lldikti7.ristekdikti.go.id</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">sinta2.ristekdikti.go.id</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">banpt.or.id</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">pddikti.ristekdikti.go.id</a></li>
                        </ul>


                    </div>

                </div>
            </div>
        </div>

        <div class="container py-4">
            <div class="copyright">
                &copy; Copyright <strong><span>BizLand</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/bizland-bootstrap-business-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
    </footer><!-- End Footer -->

    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="template/assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="template/assets/vendor/aos/aos.js"></script>
    <script src="template/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="template/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="template/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="template/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="template/assets/vendor/waypoints/noframework.waypoints.js"></script>
    <script src="template/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="template/assets/js/main.js"></script>

</body>

</html>
