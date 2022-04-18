<?php $this->load->view('Master/nav'); ?>
<div id="fh5co-trainer">
	<div class="row animate-box">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Filter Data</h2>
				</div>
			</div>
			<div class="col-md-12">
				<div class="text-center card">
					<div class="row">
						<form action="" method="POST">
							<div class="col-md-6 mt-3">
								<p class="mt-3">Cari Berdasarkan Nama Tamu</p>
								<div scope="col-6">
									<div class="mb-5" style="margin-bottom : 1rem;">
										<input type="text" name="nama_tamu" class="form-control col-9" placeholder="Masukan Nama Tamu">
									</div>
									<div class="mb-5" style="margin-bottom : 1rem;">
										<button type="submit" class="btn btn-primary col-9">Cari</button>
									</div>
								</div>
							</div>
						</form>
						<form action="" method="POST">
							<div class="col-md-6 mt-3">
								<p class="mt-3">Cari Berdasarkan Tanggal Cekin</p>
								<div scope="col-6">
									<div class="mb-5" style="margin-bottom : 1rem;">
										<input type="date" name="tgl_cekin" class="form-control col-9" placeholder="Tanggal Cekin">
									</div>
									<div class="mb-5" style="margin-bottom : 1rem;">
										<button type="submit" class="btn btn-primary col-9 mt-3">Cari</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="container-fluid">
			<div class="row animate-box">
				<div class="card table-responsive">
					<?php if (empty($data)) : ?>
						<h2 class="rounded text-center col-12 alert-warning">
							Data Tidak Di Temukan
						</h2>
					<?php else : ?>
						<table class="table table-bordered table-hover ">
							<thead>
								<tr>
									<?php foreach ($data[0] as $key => $value) : ?>
										<th scope="col"><?= $key ?></th>
									<?php endforeach; ?>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($data as $key => $value) : ?>
									<?php $i = 0; ?>
									<tr>
										<?php foreach ($value as $key2 => $value2) : ?>
											<th scope="col">
												<?= $value2 ?>
											</th>
										<?php endforeach; ?>
									</tr>
									</form>
								<?php endforeach; ?>
							</tbody>
						</table>
					<?php endif ?>
				</div>
			</div>

		</div>

	</div>

</div>

<?php $this->load->view('Master/foot'); ?>