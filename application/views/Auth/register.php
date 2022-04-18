<?php $this->load->view('Master/nav'); ?>
<!-- <form method="POST" action="<?= base_url('/Auth/addusers') ?>">
        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-51">
						Register
					</span>

					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 validate-input m-b-16" data-validate = "Nama is required">
						<input class="input100" type="text" name="Nama" placeholder="Masukan Nama Lengkap">
						<span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 validate-input m-b-16">
                                <select class="input100" name="Jenis_Kelamin">
                                    <option>Laki-Laki</option>
									<option>Perempuan</option>
								</select>
                            <span class="focus-input100"></span>
                    </div>
                
                    <div class="wrap-input100 validate-input m-b-16" data-validate = "tgl_lahir is required">
						<input class="input100" type="date" name="tgl_lahir" placeholder="Masukan tgl_lahir">
						<span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 validate-input m-b-16" data-validate = "no_hp is required">
						<input class="input100" type="text" name="no_hp" placeholder="Masukan Nomor Hp">
						<span class="focus-input100"></span>
                    </div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
                        Register
						</button>
					</div>

				</form>
			</div>
		</div>
	</div> -->

<div id="fh5co-contact">
	<div class="container">
		<div class="row">
			<div class="col-md-push-1 animate-box">
			</div>
			<div class=" animate-box">
				<h3 style="text-align:center;">Register</h3>
				<form method="POST" action="<?= base_url('/Auth/addusers') ?>">
					<div class="row form-group">
						<div class="col-md-12">
							<!-- <label for="fname">First Name</label> -->
							<input type="text" name="username" class="form-control" placeholder="Masukan Username">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<!-- <label for="email">Email</label> -->
							<input type="text" name="Nama" class="form-control" placeholder="Masukan Nama Lengkap	">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<!-- <label for="email">Email</label> -->
							<select class="form-control" name="Jenis_Kelamin">
								<option>Laki-Laki</option>
								<option>Perempuan</option>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<!-- <label for="email">Email</label> -->
							<input type="date" name="tgl_lahir" class="form-control" placeholder="Masukan Tanggal Lahir">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<!-- <label for="email">Email</label> -->
							<input type="text" name="no_hp" class="form-control" placeholder="08xxxxxxxx">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<!-- <label for="email">Email</label> -->
							<input type="password" name="password" class="form-control" placeholder="Masukan Password">
						</div>
					</div>
					<div class="form-group">
						<input type="submit" value="Register" class="btn btn-primary col-md-12">
					</div>
			</div>

			</form>
		</div>
	</div>

</div>
</div>
<?php $this->load->view('Master/foot'); ?>