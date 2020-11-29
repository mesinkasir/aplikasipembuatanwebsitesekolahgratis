<?php
include '../db_connect.php';
$qry = $conn->query("SELECT * from site_settings limit 1");
if($qry->num_rows > 0){
	foreach($qry->fetch_array() as $k => $val){
		$meta[$k] = $val;
	}
}
 ?>
 <div class="container-fluid">
	<div class="card col-12 col-md-12 p-3 p-md-5">
	<h1>SETTING KONFIGURASI</h1>
		<div class="card-body">
			<form action="" id="manage-settings">
				<div class="form-group">
					<label for="name" class="control-label">Nama Sekolah</label>
					<input type="text" class="form-control" id="name" name="name" value="<?php echo isset($meta['blog_name']) ? $meta['blog_name'] : '' ?>" required>
				</div>
				<div class="form-group">
					<label for="email" class="control-label">E-Mail</label>
					<input type="email" class="form-control" id="email" name="email" value="<?php echo isset($meta['email']) ? $meta['email'] : '' ?>" required>
				</div>
				<div class="form-group">
					<label for="contact" class="control-label">Contact</label>
					<input type="text" class="form-control" id="contact" name="contact" value="<?php echo isset($meta['contact']) ? $meta['contact'] : '' ?>" required>
				</div>
				<div class="form-group">
					<label for="about" class="control-label">Penjelasan About Sekolah</label>
					<textarea name="about" class="text-jqte"><?php echo isset($meta['about']) ? $meta['about'] : '' ?></textarea>

				</div>
				<center>
					<button class="btn btn-info btn-danger float-right btn-lg ">Simpan</button>
				</center>
			</form>
		</div>
	</div>

<script>
	$('.text-jqte').jqte();

	$('#manage-settings').submit(function(e){
		e.preventDefault()
		start_load()
		$.ajax({
			url:'ajax.php?action=save_settings',
			method:'POST',
			data:$(this).serialize(),
			error:err=>{
				console.log(err)
			},
			success:function(resp){
				if(resp == 1){
					alert_toast('Data successfully saved.','success')
					end_load()
				}
			}
		})

	})
</script>
<style>
	
</style>
</div>