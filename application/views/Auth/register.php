<?php $this->load->view('Master/nav'); ?>
<?php $this->load->view('Master/alert');?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login Template</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="../assets/css/login.css">
</head>
<body>
<div id="fh5co-contact">
  <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">

    <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="../assets/images/baner.jpg" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
            
						<div id="fh5co-logo"><h4><b>HOTEL.HEBAT</b></h4></div>
				
              </div>
              <p class="login-card-description">Daftar</p>
              <form method="POST" action="<?= base_url('/Auth/addusers') ?>">
                    <!-- <label for="text" class="sr-only">Username</label> -->
					<input type="text" name="username" class="form-control" placeholder="Masukan Username">
                  <div class="form-group mb-4">
                    <!-- <label for="password" class="sr-only">Password</label> -->
					<input type="text" name="Nama" class="form-control" placeholder="Masukan Nama Lengkap	">
					<div class="form-group mb-4">
                    <!-- <label for="password" class="sr-only">Password</label> -->
                    <select class="form-control" name="Jenis_Kelamin">
								<option>Laki-Laki</option>
								<option>Perempuan</option>
							</select>
					<div class="form-group mb-4">
                    <!-- <label for="password" class="sr-only">Password</label> -->
                    <input type="date" name="tgl_lahir" class="form-control" placeholder="Masukan Tanggal Lahir">
					<div class="form-group mb-4">
                    <!-- <label for="password" class="sr-only">Password</label> -->
                    <input type="text" name="no_hp" class="form-control" placeholder="08xxxxxxxx">
					<div class="form-group mb-4">
                    <!-- <label for="password" class="sr-only">Password</label> -->
                    <input type="password" name="password" class="form-control" placeholder="Masukan Password">
                  <input  class="btn btn-block login-btn mb-4" type="submit" value="Daftar">
                </form>
                <p class="login-card-footer-text">Sudah punya akun? <a href="<?=base_url('/Auth/login')?>" class="text-reset">Masuk</a></p>
                <!-- <nav class="login-card-footer-nav">
                  <a href="#!">Terms of use.</a>
                  <a href="#!">Privacy policy</a>
                </nav> -->
            </div>
          </div>
        </div>
      </div>
    </div>
	
  </main>
  </div>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>

<?php $this->load->view('Master/foot'); ?>