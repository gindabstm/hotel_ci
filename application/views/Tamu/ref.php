<?php $this->load->view('Master/nav'); ?>
<div id="fh5co-pricing">
    <div class="container">
        <div class="row animate-box">

            <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                <h2>Daftar Pemesanan</h2>
                <p>Daftar Pemesanan   Anda :</p>
            </div>
        </div>
        <div class="row">

            <div class="pricing">
                <?php foreach ($data['book'] as $key => $item) : ?>
                    <div class="col-md-6 animate-box">
                        <div class="price-box">

                            <div class="card">
                                <img src="<?= $item->img_room ?>" class="price-box" alt="<?= $item->img_room ?>">
                                <div class="card-body" style="text-align: left">
                                    <h5 class="card-title"><?= $item->Nama_room ?> x <?= $item->jml_kamar ?> Kamar</h5>
                                    <p>Nama Tamu = <?= $item->nama_tamu ?></p>
                                    <p>Tanggal Cekin = <?= $item->tgl_cekin ?></p>
                                    <p>Tanggal Cekout = <?= $item->tgl_cekout ?></p>
                                    <p>Pembayaran = <?= $item->PayBay ?></p>
                                    <p>Pembayaran =
									<?php if ($item->PayEnd == 0) {
										$pesan = 'Belum di Bayar';
									} else {
										$pesan = 'Sudah di bayar';
									}
									echo $pesan;
									?>
								</p>
                                    <p>
                                        <strong>
                                            Code Booking = <?= $item->RefPB ?>
                                        </strong>
                                    </p>
                                    <p>
                                        <a href="<?= base_url('/Tamu/print?id=' . $item->id_pesanan) ?>" class="btn btn-primary md-6  mt-3"  target="_blank">Cetak Pesanan</a>
                                        <a href="<?= base_url('Tamu/batal') . '?id=' . $item->id_pesanan; ?>" class="btn btn-danger md-6 mt-3">Batalkan Pesanan</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>

        </div>
    </div>
</div>
</div>
<?php $this->load->view('Master/foot'); ?>