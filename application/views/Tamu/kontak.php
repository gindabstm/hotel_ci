<!DOCTYPE HTML>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
    <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
    <meta name="author" content="freehtml5.co" />

    <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FreeHTML5.co
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="<?= base_url('/dist/') ?>css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="<?= base_url('/dist/') ?>css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="<?= base_url('/dist/') ?>css/bootstrap.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<?= base_url('/dist/') ?>css/magnific-popup.css">

    <!-- Owl Carousel  -->
    <link rel="stylesheet" href="<?= base_url('/dist/') ?>css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?= base_url('/dist/') ?>css/owl.theme.default.min.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="<?= base_url('/dist/') ?>css/style.css">

    <!-- Modernizr JS -->
    <script src="<?= base_url('/dist/') ?>js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>

<body>
    <?php $this->load->view('Master/nav'); ?>
    <div id="fh5co-contact">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-md-push-1 animate-box">

                    <div class="fh5co-contact-info">
                        <h3>Kontak Kami</h3>
                        <ul>
                            <li class="address">Jl. Raya Tajur, Kp. Buntar RT.02/RW.08, <br> Kel. Muara sari, Kec. Bogor Selatan, <br> RT.03/RW.08, Muarasari, Kec. Bogor Selatan, <br> Kota Bogor, Jawa Barat 16137</li>
                            <li class="phone"><a href="https://wa.me/628158183974" target="_blank">+62 815 8183 974</a></li>
                            <li class="email"><a href="https://mailto:ginda1519@gmail.com" target="_blank">hotelhebat@gmail.com</a></li>
                            <li class="url"><a href="https://www.instagram.com/gindabstm" target="_blank">Hotel_Hebat</a></li>
                        </ul>
                    </div>

                </div>
                <div class="col-md-6 animate-box">
                    <h3>Temukan Kami Di</h3>
                    <div class="row form-group">
                        <div class="col-xs-6 col-md-3">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3963.046997661764!2d106.82287461477135!3d-6.641086295197872!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69c8b16ee07ef5%3A0x14ab253dd267de49!2sSMK%20Negeri%204%20Kota%20Bogor%20(SMK%20NEBRAZKA)!5e0!3m2!1sid!2sid!4v1645678059796!5m2!1sid!2sid" width="600" height="450" style=";"></iframe>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
    </div>

    <!-- jQuery -->
    <script src="<?= base_url('/dist/') ?>js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="<?= base_url('/dist/') ?>js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="<?= base_url('/dist/') ?>js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="<?= base_url('/dist/') ?>js/jquery.waypoints.min.js"></script>
    <!-- Stellar Parallax -->
    <script src="<?= base_url('/dist/') ?>js/jquery.stellar.min.js"></script>
    <!-- Carousel -->
    <script src="<?= base_url('/dist/') ?>js/owl.carousel.min.js"></script>
    <!-- countTo -->
    <script src="<?= base_url('/dist/') ?>js/jquery.countTo.js"></script>
    <!-- Magnific Popup -->
    <script src="<?= base_url('/dist/') ?>js/jquery.magnific-popup.min.js"></script>
    <script src="<?= base_url('/dist/') ?>js/magnific-popup-options.js"></script>
    <!-- Google Map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
    <script src="<?= base_url('/dist/') ?>js/google_map.js"></script>
    <!-- Main -->
    <script src="<?= base_url('/dist/') ?>js/main.js"></script>

    <?php $this->load->view('Master/foot'); ?>