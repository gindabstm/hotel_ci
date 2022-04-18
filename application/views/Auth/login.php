<?php $this->load->view('Master/nav'); ?>

<!-- // <form method="POST" action="<?= base_url('/Auth/cekusers') ?>">
		<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-51">
						Login
					</span>

					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-t-3 p-b-24">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							<a href="#" class="txt1">
								Forgot?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

				</form>
			</div>
		</div>
	</div> -->

<div id="fh5co-contact">
	<div class="container">
		<div class="row">
			<div class=" col-md-push-1 animate-box">
			</div>
			<div class=" animate-box">
				<h3 style="text-align:center;">Login</h3>
				<form method="POST" action="<?= base_url('/Auth/cekusers') ?>">
					<div class="row form-group">
						<div class="col-md-12">
							<!-- <label for="fname">First Name</label> -->
							<input type="text" name="username" class="form-control" placeholder="Masukan Username">
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-12">
							<!-- <label for="email">Email</label> -->
							<input type="password" name="password" class="form-control" placeholder="Masukan Password">
						</div>
					</div>
					<div class="form-group">
						<input type="submit" value="Login" class="btn btn-primary col-md-12">
					</div>
			</div>

			</form>
		</div>
	</div>

</div>
</div>
<?php $this->load->view('Master/foot'); ?>