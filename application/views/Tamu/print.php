<!DOCTYPE html>
<html>

<head>
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Kartu Booking anda</title>
</head>

<body>
	<div class="container">
		<div class="card mb-3">
			<center>
				<h1>
					Kartu Boking Hotel Hebat
				</h1>
			</center>
			<hr>
			<div class="card-body">
				<h5 class="card-title">Kartu Booking Anda</h5>
				<p class="card-text">
					Kode Booking Anda :
				</p>
				<p>
				<div class="row">
					<?php $data['book'] = array_reverse($data['book']);
					foreach ($data['book'] as $key => $item) : ?>
						<div class="col-md-6 mb-2">
							<div class="card">
								<img src="<?= $item->img_room ?>" style="width: 150px;" class="card-img-top" alt="<?= $item->img_room ?>">
								<div class="card-body">
									<h5 class="card-title"><?= $item->Nama_room ?> x <?= $item->jml_kamar ?> Kamar </h5>
									<p>Nama tamu = <?= $item->nama_tamu ?></p>
									<p>Tanggal cekin = <?= $item->tgl_cekin ?></p>
									<p>Tanggal cekout = <?= $item->tgl_cekout ?></p>
									<p>Sistem pembayaran = <?= $item->PayBay ?></p>
									<p>
										<strong>
											CODEBooking = <?= $item->RefPB ?>
										</strong>
									</p>
								</div>
							</div>
						</div>
					<?php endforeach; ?>

				</div>
				</p>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		window.print();
	</script>
</body>

</html>