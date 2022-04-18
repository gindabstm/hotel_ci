<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<?php $this->load->view('Master/nav'); ?>

<div id="fh5co-trainer">
    <div class="container">
        <div class="row animate-box">
            <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                <h2>Cari Data</h2>
            </div>
        </div>
        <div class="">
            <div class="row animate-box">
                <img src="https://images.unsplash.com/photo-1615460549969-36fa19521a4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80" alt="Logo" class="card-img-top" alt="" style="max-height: 500px;object-fit: cover;">
                <div class="card-body">
                    <p class="card-text mt-3 " style="text-align:center;"> Masukan Code Booking :
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