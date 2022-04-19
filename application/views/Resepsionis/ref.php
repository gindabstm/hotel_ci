<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<?php $this->load->view('Master/nav'); ?>
<div id="fh5co-trainer">
	<div class="container">
		<div class="row animate-box">
			<div class="col-md-12"></div>
			<p>
			<div class="row">
				<?php $data['book'] = array_reverse($data['book']);
				foreach ($data['book'] as $key => $item) : ?>
					<div class="col-md-12">
						<div class="">
							<img src="<?= $item->img_room ?>" class="card-img-top" alt="<?= $item->img_room ?>">
							<div class="col-md-12 mt-5">
								<strong>
									<h3 class=""><?= $item->Nama_room ?> x <?= $item->jml_kamar ?> Kamar </h3>
								</strong>
								<p>Nama Tamu = <?= $item->nama_tamu ?></p>
								<p>Tanggal Cekin = <?= $item->tgl_cekin ?></p>
								<p>Tanggal Cekout = <?= $item->tgl_cekout ?></p>
								<p>Total Harga = Rp<?= $item->Harga ?></p>
								<p>Sistem pembayaran = <?= $item->PayBay ?></p>
								<p>Pembayaran =
									<?php if ($item->PayEnd == 0) {
										$pesan = 'belum di Bayar';
									} else {
										$pesan = 'sudah di bayar';
									}
									echo $pesan;
									?>
								</p>
								<p>
									<strong>
										CODEBooking = <?= $item->RefPB; ?>
									</strong>
								</p>
								<?php if ($item->PayEnd == 0) : ?>
									<a href="<?= base_url('/Resepsionis/payed?id=') . $item->id_pesanan . '&f=PayEnd&v=1' ?>" class="btn btn-warning">Bayar</a>
								<?php else : ?>
									<?php if (date('Y-m-d') >= $item->tgl_cekin && date('Y-m-d') <= $item->tgl_cekout) : ?>
										<?php if ($item->Status_Kamar == "Cekin") : ?>
											<p class="text-primary">Telah Melakukan CekIn Cekout Pada <?= $item->tgl_cekout ?>
											</p>
										<?php else : ?>
											<a href="<?= base_url('/Resepsionis/payed?id=') . $item->id_pesanan . '&f=Status_Kamar&v=Cekin' ?>" class="btn btn-warning">Cek In</a>
										<?php endif ?>
									<?php elseif (date('Y-m-d') == $item->tgl_cekout) : ?>
									<?php elseif (date('Y-m-d') > $item->tgl_cekout) : ?>
										<p class="text-danger">Tidak / Terlambak Cek Out</p>
									<?php endif; ?>
								<?php endif; ?>
							</div>
						</div>
					</div>
				<?php endforeach; ?>

			</div>
			</p>
			<hr>
			<p class="mt-3 " style="text-align:center;">
				Masukan Code Booking :
			<form action="<?= base_url('/Resepsionis/cari_data') ?>" method="get">
				<input type="text" name="ref" class="form-control">
				<button type="submit" class="btn btn-primary col-md-12 mt-3">Cari</button>
			</form>
			</p>
		</div>
	</div>
</div>
</div>
</div>

<?php $this->load->view('Master/foot'); ?>