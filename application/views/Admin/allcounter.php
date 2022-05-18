<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
		<div class="container-fluid">
			<div class="text-center">
				<a href="<?= base_url('/Admin/add?v=add&t=' . $_GET['t']); ?>" class="btn btn-primary">Tambah Data</a>
			</div>
			<div class="card table">
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
										<button type="sub" onclick="return confirm('Yakin ubah data ini?')" class="btn btn-primary">Ubah</button>
										<!-- <a href="#modalUpdate" data-toggle="modal" onclick="$('#modalUpdate #formUpdate').attr('action', '<?= base_url('/Admin/update?link=' . $key2 . '&val=' . $value2 . '&t=' . $_GET['t']) ?>')" class="btn btn-primary">Ubah</a> -->
										<!-- <a href="<?= base_url('/Admin/remove?id=' . $lqw1 . '&t=' . $_GET['t'] . '&f=' . $lqw2); ?>" onclick="return confirm('Yakin hapus data ini?')" class="btn btn-danger">Hapus</a> -->
										<a href="#modalDelete" data-toggle="modal" onclick="$('#modalDelete #formDelete').attr('action', '<?= base_url('/Admin/remove?id=' . $lqw1 . '&t=' . $_GET['t'] . '&f=' . $lqw2); ?>')" class="btn btn-danger">Hapus</a>
									</th>
								</tr>
							</form>
						<?php endforeach; ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="modalDelete">
	<div class="modal-dialog">
		<div class="modal-content" >
			<div class="modal-header">
			<h4 class="modal-title">Yakin akan menghapus data ini?</h4>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-footer">
				<form id="formDelete" action="" method="post">
					<button class="btn btn-danger" data-dismiss="submit">Hapus</button>
					<button class="btn btn-default" data-dismiss="modal">Tidak</button>
				</form>
			</div>
		</div>
	</div>
</div>

<?php $this->load->view('Master/foot'); ?>