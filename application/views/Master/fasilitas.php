<div id="fh5co-services" class="fh5co-bg-section">
    <div class="row">
        <div class="container" style="margin-top: -20rem;">
            <?php foreach ($fas as $key => $fasi) : ?>
                <div class="col-md-4 text-center animate-box">
                    <div class="services">
                        <h5><?= $fasi->nama_fasilitas ?></h5>
                        <p><?= $fasi->deks ?>.</p>
                        <img src="<?= $fasi->img ?>" class="img-responsive" alt="">
                    </div>

                </div>
            <?php endforeach; ?>
        </div>

    </div>

</div>
<!-- <div id="fh5co-services" class="fh5co-bg-section">
        <div class="row">
        <?php foreach ($fas as $key => $fasi) : ?>
            <div class="container">
                <div class="col-md-12 text-center animate-box">
                    <div class="services">
                        <h5><?= $fasi->nama_fasilitas ?></h5>
                        <p><?= $fasi->deks ?>.</p>
                        <img src="<?= $fasi->img ?>" class="img-responsive" alt="">
                    </div>
                </div>
            </div>
		<?php endforeach; ?>
        </div> -->

</div>