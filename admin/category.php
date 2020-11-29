<div class="container-fluid">
	<div class="card col-md-12">
			<div class="col-md-12 text-center p-3 p-md-5">
	<h1>KATEGORI GRUP</h1>
				<button type="button" class="btn btn-danger rounded-pill btn-lg" id="new_category"> Buat Kategori Baru</button>
			</div>
			<br>
			<div class="col-md-12">
				<table class="table" id="category-tbl">
					<thead>
						<tr>
							<th class="text-center">Kategori</th>
							<th class="text-center">Penjelasan</th>
							<th class="text-center">Settup</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>			
		</div>
	</div>
	<script>
		$('#new_category').click(function(){
			uni_modal('New Category','manage_category.php');
		})
		window.load_tbl = function(){
			$('#category-tbl').dataTable().fnDestroy();
			$('#category-tbl tbody').html('<tr><td colspan="4" class="text-center">Please Wait...</td></tr>')
			$.ajax({
				url:'ajax.php?action=load_category',
				success:function(resp){
					if(typeof resp != undefined){
						resp = JSON.parse(resp)
						if(Object.keys(resp).length > 0){
							$('#category-tbl tbody').html('')
							var i = 1;
							Object.keys(resp).map(k=>{
								var tr = $('<tr></tr>')
								tr.append('<td>'+resp[k].name+'</td>')
								tr.append('<td>'+resp[k].description+'</td>')
								tr.append('<td><center><button class="btn btn-info btn-sm edit_category" data-id = "'+resp[k].id+'">Edit</button><button class="btn btn-danger btn-sm remove_category" data-id = "'+resp[k].id+'">Delete</button></center></td>')
								$('#category-tbl tbody').append(tr)
							})
						}else{
						$('#category-tbl tbody').html('<tr><td colspan="4" class="text-center">No Data...</td></tr>')
						}
					}
				},
				complete:function(){
					$('#category-tbl').dataTable()
					manage_category();
				}
			})
		}
		function manage_category(){
			$('.edit_category').click(function(){
				uni_modal("Edit Category",'manage_category.php?id='+$(this).attr('data-id'))
			})
			$('.remove_category').click(function(){
				// console.log('REMOVE')
				_conf("Are you sure to delete this data?",'remove_category',[$(this).attr('data-id')])
			})
		}
		function remove_category($id){
			start_load()
			$.ajax({
				url:'ajax.php?action=remove_category',
				method:'POST',
				data:{id:$id},
				success:function(resp){
					if(resp == 1){
						alert_toast("Data successfully deleted.",'success');
						$('.modal').modal('hide')
						load_tbl()
						end_load();
					}
				}
			})
		}
		$(document).ready(function(){
			load_tbl()
		})
	</script>
	<style>
		img.img-field {
		    max-height: 30vh;
		    max-width: 27vw;
		}
	</style>
</div>