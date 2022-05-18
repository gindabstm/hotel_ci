<?php $this->load->view('Master/nav'); ?>


<div id="fh5co-contact">
    <div class="container">
        <form method="POST" action="<?= base_url('/Tamu/prosesBooking') ?>">

            <div class="row">
                <h1>Form Pemesanan</h1>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <p class="mt-3">Tanggal Cekin</p>
                            <input class="form-control" type="date" name="tgl_cekin" placeholder="Tanggal Cekin">
                        </div>
                        <div class="col-md-4">
                            <p class="mt-3">Tanggal Cekout</p>
                            <input class="form-control" type="date" name="tgl_cekout" placeholder="tgl_cekout">
                        </div>
                        <div class="col-md-4">
                            <p class="mt-3">Jumlah Kamar</p>
                            <input class="form-control" type="number" name="jml_kamar" placeholder="Masukan Jumlah Kamar">
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <p class="mt-3">Nama Pemesan</p>
                    <input class="form-control" type="text" name="nama_pemesan" placeholder="nama_pemesan" value="<?= $data['user']->Nama; ?>" readonly>
                    <p class="mt-3">Email</p>
                    <input class="form-control" type="email" name="email" placeholder="Masukan Email">
                    <p class="mt-3">No Hp</p>
                    <input class="form-control" type="number" name="no_hp" placeholder="Masukan Nomor Hp" value="<?= $data['user']->no_hp; ?>">
                    <p class="mt-3">Nama Tamu</p>
                    <input class="form-control" type="text" name="nama_tamu" placeholder="Masukan Nama Tamu">
                    <p class="mt-3">Pilih Tipe Kamar</p>
                    <select class="form-control" name="id_kamar">
                        <option value="<?= $data['kamar'][0]['Info_kamar']->id ?>"><?= $data['kamar'][0]['Info_kamar']->Nama_room ?></option>
                        <?php foreach ($data['alltipe'] as $key => $item) : ?>
                            <option value="<?= $item->id ?>"><?= $item->Nama_room ?></option>
                        <?php endforeach; ?>
                    </select class="form-control">
                    <p class="mt-3 ">Pembayaran</p>
                    <select class="form-control" name="PayBay">
                        <!-- <option>Transfer</option> -->
                        <option>Bayar ditempat</option>
                    </select class="form-control mt-3">
                </div>
            </div>
            <div class="mt-3">
                <p class="mt-3"><button type="submit" class="btn btn-primary col-md-12">Kirim</button></p>
            </div>
        </form>
    </div>
</div>

<?php $this->load->view('Master/foot'); ?>