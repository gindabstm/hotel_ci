<?php $this->load->view('Master/nav'); ?>

<div class="container">
    <div class="col-md-12">
        <div class="card mb-3 text-center">
        </div>
    </div>
    <form method="POST" action="<?= base_url('/Welcome/prosesBooking') ?>">
        <div class="row">
            <div class="col-md-12 mt-5">
                <h4>Form Pemesanan</h4>
                <div class="row">
                    <div class="col-md-4">
                        <p class="mt-3">Tanggal Cekin</p>
                        <input class="form-control" type="date" name="tgl_cekin" placeholder="tgl_cekin">
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
                <input class="form-control" type="text" name="nama_pemesan" placeholder="Masukan Nama Pemesan">
                <p class="mt-3">Email</p>
                <input class="form-control" type="email" name="email" placeholder="Masukan Email">
                <p class="mt-3">No Hp</p>
                <input class="form-control" type="number" name="no_hp" placeholder="Masukan Nomor Hp">
                <p class="mt-3">Pilih Tipe Kamar</p>
                <select class="form-select col-md-12 " name="id_kamar">
                    <option value="<?= $data['kamar'][0]['Info_kamar']->id ?>"><?= $data['kamar'][0]['Info_kamar']->Nama_room ?></option>
                    <?php foreach ($data['alltipe'] as $key => $item) : ?>
                        <option value="<?= $item->id ?>"><?= $item->Nama_room ?></option>
                    <?php endforeach; ?>
                </select>
                <p class="mt-3">Pembayaran</p>
                <select class="form-select" name="PayBay">
                    <option>Transfer Bank</option>
                    <option>Virtual Account</option>
                    <option>E-wallet(Dana-ovo)</option>
                    <option>Bayar ditempat</option>
                </select>
            </div>
        </div>
        <div class="row">
            <p class="mt-3">
                <<button type="submit" class="btn btn-primary">Kirim</button>/p>
        </div>


    </form>
</div>
<?php $this->load->view('Master/foot'); ?>