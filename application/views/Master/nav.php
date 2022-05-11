<!DOCTYPE HTML>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Hotel Hebat</title>
	<link rel="shortcut icon" href="<?= base_url('/dist/') ?>favicon.ico" type="image/x-icon">
	<link rel="icon" href="<?= base_url('/dist/') ?>favicon.ico" type="image/x-icon">	
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
	<nav class="fh5co-nav" role="navigation">
		<div class="top">
			<div class="container">
				<div class="row">

					<div class="col-xs-12 text-right">
						<?php
						if (!empty($_SESSION['user'])) {
							echo $_SESSION['user']->level;
						}
						?>
					</div>

				</div>
			</div>
		</div>
		<div class="top-menu">
			<div class="container">
				<div class="row">
						<div class="col-xs-2">
							<div id="fh5co-logo"><a href="#">Hotel.Hebat</a></div>
						</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li><a href="<?= base_url('/') ?>?req=Selamat Datang Di Hotel Kami">Fasilitas Hotel</a></li>
							<?php if (!empty($_SESSION['user'])) : ?>
								<?php if ($_SESSION['user']->level == "tamu") : ?>
									<li class="<?= base_url('/Tamu/TipeKamar') ?>"><a href="<?= base_url('/Tamu/TipeKamar') ?>?req=Tipe Kamar Pilihanmu">Tipe Kamar</a></li>
									<li><a href="<?= base_url('/Tamu/ref') ?>?req=Book">Pesananku</a></li>
									<li><a href="<?= base_url('/Tamu/kontak') ?>">Kontak</a></li>
									<li><a href="<?= base_url('/Auth/Logout?out=true') ?>">Keluar</a></li>
									
								<?php endif; ?>
								<?php if ($_SESSION['user']->level == "resepsionis") : ?>
									<li><a href="<?= base_url('resepsionis/cari_data') ?>?req= Cari Data">Cari Data</a></li>
									<li><a href="<?= base_url('Resepsionis/call') ?>?req=Filter Pencarian Data&t=pemesanan&v=filter">Filter Data</a></li>
									<li><a href="<?= base_url('/Auth/Logout?out=true') ?>">Keluar</a></li>
								<?php endif; ?>
								<?php if ($_SESSION['user']->level == "admin") : ?>
									<!-- <li><a href="<?= base_url('Admin/add?v=allcounter&t=users') ?>&req=Data Traking">Data User</a></li> -->
									<li><a href="<?= base_url('admin/add?v=allcounter&t=F_kamar') ?>&req=Data Traking">Data Fasilitas Kamar</a></li>
									<li><a href="<?= base_url('admin/add?v=allcounter&t=F_Hotel') ?>&req=Data Traking">Data Fasilitas Hotel</a></li>
									<li><a href="<?= base_url('admin/add?v=allcounter&t=Tipe_room') ?>&req=Data Traking">Data Tipe Kamar</a></li>
									<li><a href="<?= base_url('/Auth/Logout?out=true') ?>">Keluar</a></li>
								<?php endif; ?>
							<?php else : ?>
								<li><a href="<?= base_url('/Auth/Login') ?>">Login</a></li>
								<li><a href="<?= base_url('/Auth/Register') ?>">Register</a></li>

							<?php endif; ?>

						</ul>

					</div>
				</div>

			</div>
		</div>
	</nav>

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
	<script src="<?= base_url('/dist/') ?>s/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="<?= base_url('/dist/') ?>js/jquery.magnific-popup.min.js"></script>
	<script src="<?= base_url('/dist/') ?>js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="<?= base_url('/dist/') ?>js/main.js"></script>



</body>

</html>