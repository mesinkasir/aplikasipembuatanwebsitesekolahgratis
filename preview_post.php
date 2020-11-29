<?php 
	include('db_connect.php');
	$qry = $conn->query("SELECT p.*,c.name as cname FROM posts p inner join category c on c.id = p.category_id where p.id =".$_GET['id']);
	foreach($qry->fetch_array() as $key => $value) {
		$meta[$key] = $value;
	}
?>
<div class="container">
	<div class="col-md-12">
		<h3><?php echo isset($meta['title']) ? $meta['title'] : ''; ?></h3>
		<small><?php echo isset($meta['cname']) ? $meta['cname'] : ''; ?></small>
	</div>
	<div class="col-md-12">
		<center>
			<img src="assets/img/<?php echo isset($meta['img_path']) ? $meta['img_path'] : ''; ?>" alt="" class='col-md-5'>
		</center>
	</div>
	<div class="col-md-12 p-3 p-md-5">
		<?php echo isset($meta['post']) ? html_entity_decode($meta['post']) : ''; ?>
	</div>
</div>