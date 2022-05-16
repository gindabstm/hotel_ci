
<?php $this->load->view('Master/nav'); ?>
<div id="fh5co-contact">
  <div class=" animate-box">
    <div class="container">
      <h1 style="text-align:center;">Masukan Data</h1>
      <?php $i = 0;
      foreach ($data[0] as $key => $value) : ?>
        <?php if ($i == 0) : ?>
          <form method="POST" action="<?= base_url('Admin/add') ?>?link=<?= $key ?>&val=<?= $value ?>&t=<?= $_GET['t'] ?>&v=<?= $_GET['v'] ?>" class="row">
          <?php else : ?>
            <div scope="col-6">
              <div class="mb-5" style="margin-bottom : 1rem;">
                <input type="text" name="<?= $key ?>" placeholder="Masukan <?= $key ?>" class="form-control" required>
              </div>
            </div>
          <?php endif ?>
        <?php $i++;
      endforeach ?>
        <div scope="col-12">
          <button type="submit" class="btn btn-primary">Kirim</button>
        </div>
          </form>
    </div>
  </div>
</div>

<?php $this->load->view('Master/foot'); ?>