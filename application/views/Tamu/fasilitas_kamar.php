<?php $this->load->view('Master/nav'); ?>

<div id="fh5co-blog" class="fh5co-bg-section">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center fh5co-heading animate-box">
                <h2>Pilih Tipe Kamar</h2>
                <p>Hotel Hebat menyediakan beberapa kamar yang bisa anda pilih sesuai keinginan</p>
            </div>
        </div>

        <div class="row row-bottom-padded-md">
            <?php foreach ($data as $key => $kamar) : ?>
                <div class="col-md-6"  style="margin-top: 4rem;">
                    <div class="fh5co-blog animate-box">
                        <a href="#"><img class="img-responsive" src="<?= $kamar['Info_kamar']->img_room ?>" alt=""></a>
                        <div class="blog-text">
                            <h3><?= $kamar['Info_kamar']->Nama_room ?></h3>
                            <span class="posted_on">Rp<?= $kamar['Info_kamar']->harga ?></span>
                            <span class="comment"><a href="">Stok Kamar Yang Tersedia <?= $kamar['Info_kamar']->Stok ?> <img src="<?= base_url('/dist/') ?>images/bed.png" alt="" style="width:19px;height:19px;"></a></span>
                            <p class="card-text">
                                Fasilitas :
                            </p>
                            <p>
                                <ul>
                                    <?php if (!empty($kamar['F_kamar'])) : ?>
                                        <?php foreach ($kamar['F_kamar'] as $key2 => $F) : ?>
                                            <li>
                                                <?= $F->nama_fasilitas ?>
                                            </li>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                </ul>
                            </p>
                            <a href="<?= base_url('/Tamu/detailTipe') . '?id=' . $kamar['Info_kamar']->id ?>" class="btn btn-primary">Lihat Detail</a>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
    </div>
</div>
<?php $this->load->view('Master/foot'); ?>