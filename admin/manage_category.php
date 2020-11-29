<?php 
include '../db_connect.php';
if(isset($_GET['id'])){
	$qry = $conn->query("SELECT * FROM category where id=".$_GET['id']);
	foreach ($qry->fetch_array() as $key => $value) {
		$meta[$key] = $value;
	}
}
?>
<div class="container-fluid">
	<form action="" id="manage-category">
		<input type="hidden" name="id" value="<?php echo isset($_GET['id']) ? $_GET['id'] : '' ?>">
		<div class="form-group">
			<label for="name" class="control-label">Nama</label>
			<input type="text" id="name" name="name" class="form-control" value="<?php echo isset($meta['name']) ? $meta['name'] : '' ?>" required>
		</div>
		<div class="form-group">
			<label for="description" class="control-label">Penjelasan</label>
			<textarea type="text" id="description" name="description" class="form-control" required><?php echo isset($meta['description']) ? $meta['description'] : '' ?></textarea>
		</div>
	</form>
</div>
<script>
	$('#manage-category').submit(function(e){
		e.preventDefault();

		start_load()
		$.ajax({
			url:'ajax.php?action=save_category',
			method:'POST',
			data:$(this).serialize(),
			error:err=>{
				console.log(err)
			},
			success:function(resp){
				if(resp){
					$('.modal').modal('hide')
					end_load()
					alert_toast('Data berhasil disimpan','success');
					load_tbl()

				}
			}
		})

	})
</script>