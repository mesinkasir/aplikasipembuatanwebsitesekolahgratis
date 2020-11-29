			<div class="col-12 col-md-12 p-3 p-md-5">
<h1>POST ARTIKEL</h1>
			<div class="text-center">
				<button type="button" class="btn btn-danger btn-lg rounded-pill" id="new_post">Buat Post Baru</button>
				</div>
			<br/>
				<table class="table" id="post-tbl">
					<thead>
						<tr>				
							<th class="text-center">Judul</th>
							<th class="text-center">Kategori</th>
							<th class="text-center">Publish</th>
							<th class="text-center">Settup</th>
						</tr>
					</thead>
					<tbody>						
					</tbody>
				</table>
			</div>
	<script>
		$('#new_post').click(function(){
				location.replace('index.php?page=manage_post')
		})
		window.load_tbl = function(){
			$('#post-tbl').dataTable().fnDestroy();
			$('#post-tbl tbody').html('<tr><td colspan="4" class="text-center">Please Wait...</td></tr>')
			$.ajax({
				url:'ajax.php?action=load_post',
				success:function(resp){
					if(typeof resp != undefined){
						resp = JSON.parse(resp)
						if(Object.keys(resp).length > 0){
							$('#post-tbl tbody').html('')
							var i = 1;
							Object.keys(resp).map(k=>{
								var tr = $('<tr></tr>')
					
								tr.append('<td>'+resp[k].title+'</td>')
								tr.append('<td>'+resp[k].category+'</td>')
								tr.append('<td>'+(resp[k].status == 0 ? 'For Review' : "Published")+'</td>')
								tr.append('<td><center><button class="btn btn-info btn-sm edit_post rounded-pill" data-id = "'+resp[k].id+'">Edit</button><button class="btn btn-warning btn-sm preview_post rounded-pill" data-id = "'+resp[k].id+'">View</button><br/> <button class="btn btn-success rounded-pill btn-sm publish_post" data-id = "'+resp[k].id+'"> Publish</button> <button class="btn btn-danger btn-sm remove_post rounded-pill" data-id = "'+resp[k].id+'"> Delete</button></center></td>')
								$('#post-tbl tbody').append(tr)
							})
						}else{
						$('#post-tbl tbody').html('<tr><td colspan="4" class="text-center">No Data...</td></tr>')
						}
					}
				},
				complete:function(){
					$('#post-tbl').dataTable()
					manage_post();
				}
			})
		}
		function manage_post(){
			$('.edit_post').click(function(){
				location.replace('index.php?page=manage_post&id='+$(this).attr('data-id'))
			})
			$('.preview_post').click(function(){
				location.replace('index.php?page=preview_post&id='+$(this).attr('data-id'))
			})
			$('.remove_post').click(function(){
				// console.log('REMOVE')
				_conf("Are you sure to delete this data?",'remove_post',[$(this).attr('data-id')])
			})
			$('.publish_post').click(function(){
				// console.log('REMOVE')
				_conf("Are you sure to Publish this data?",'publish_post',[$(this).attr('data-id')])
			})
		}
		function remove_post($id){
			start_load()
			$.ajax({
				url:'ajax.php?action=remove_post',
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
		function publish_post($id){
			start_load()
			$.ajax({
				url:'ajax.php?action=publish_post',
				method:'POST',
				data:{id:$id},
				success:function(resp){
					if(resp == 1){
						alert_toast("Data successfully published.",'success');
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
</div>
<style type="text/css">
	td button{
		margin:10px !important;
	}
	td {
		vertical-align: middle !important;
	}
</style>