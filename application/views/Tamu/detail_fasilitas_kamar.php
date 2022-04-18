<?php $this->load->view('Master/nav'); ?>
<div id="fh5co-blog" class="fh5co-bg-section">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center fh5co-heading animate-box">
                <h2>Detail Tipe Kamar</h2>
            </div>
        </div>
        <?php foreach ($data as $key => $kamar) : ?>
            <div class="row row-bottom-padded-md">
                <div class="col-lg-12 col-md-12">
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
                                <div class="row">
                                    <?php if (!empty($kamar['F_kamar'])) : ?>
                                        <?php foreach ($kamar['F_kamar'] as $key2 => $F) : ?>
                                            <div class="col-lg-4">
                                                <div class="fh5co-blog animate-box">
                                                    <img src="<?= $F->img ?>" class="col-md-9" alt="...">
                                                    <div class="card-body">
                                                        <h5 class="blog-text"><?= $F->nama_fasilitas ?> </h5>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                </div>
                            </p>
                            <a href="<?= base_url('/Tamu/booking') . '?id=' . $kamar['Info_kamar']->id ?> " class="btn btn-primary">Booking Sekarang</a>
                        </div>
                    </div>
                </div>

            </div>
        <?php endforeach ?>
    </div>
</div>
<?php $this->load->view('Master/foot'); ?>