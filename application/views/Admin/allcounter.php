<?php $i = 0;
foreach ($data[0] as $key => $value) {
	if ($i == 0) {
		$primary = $key;
	}
	$i++;
} ?>
<?php $this->load->view('Master/nav'); ?>
<div id="fh5co-contact">
	<div class=" animate-box">
		<div class="text-center">
			<a href="<?= base_url('/Admin/add?v=add&t=' . $_GET['t']); ?>" class="btn btn-primary">Tambah Data</a>
		</div>
		<div class="card table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<?php $i = 0;
						foreach ($data[0] as $key => $value) {
							if ($i == 0) {
								$primary = $key;
							}
							$i++;
						} ?>
						<?php foreach ($data[0] as $key => $value) : ?>
							<th scope="col"><?= $key ?></th>
						<?php endforeach ?>
						<th scope="col">aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($data as $key => $value) : ?>
						<?php $i = 0; ?>
						<tr>

							<?php foreach ($value as $key2 => $value2) : ?>
								<?php if ($i == 0) : ?>
									<?php $lqw1 = $value2;
									$lqw2 = $key2;
									?>
									<form method="POST" action="<?= base_url('/Admin/update?link=' . $key2 . '&val=' . $value2 . '&t=' . $_GET['t']) ?>">
									<?php $i++;
								endif; ?>
									<th scope="col">
										<input type="text" name="<?= $key2 ?>" class="form-control" value="<?= $value2 ?>">
									</th>
								<?php endforeach; ?>
								<th scope="col">
									<button type="sub" class="btn btn-primary">update</button>

									<a href="<?= base_url('/Admin/remove?id=' . $lqw1 . '&t=' . $_GET['t'] . '&f=' . $lqw2); ?>" class="btn btn-danger">hapus</a>
								</th>
						</tr>
						</form>
					<?php endforeach; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>

<?php $this->load->view('Master/foot'); ?>