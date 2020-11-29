    <div class="container">
<div class="row">
<div class="col-12 col-md-12 p-3">
      <h1>Welcome to <?php echo isset($meta['blog_name']) ? $meta['blog_name'] : '' ?></h1>
      </div>
    </div>
	<div class="container">
	<div class="row">
		<?php
	    	$qry = $qry = $conn->query("SELECT p.*,c.name as category from posts p inner join category c on c.id = p.category_id where p.status = 1 order by date(p.date_published) desc limit 5");
	    	while($row=$qry->fetch_assoc()){
	    ?>
	    <div class="row list-items" data-id="<?php echo $row['id'] ?>">

	    		<div class="col-12 col-md-12">
				<div class="p-3 p-md-5">
	    			<center><img width="100%" src="assets/img/<?php echo $row['img_path'] ?>" alt="" class='img-fluid'></center>
	    		<div class="p-3 p-md-5 bg-light">
	    			<h3><b><?php echo $row['title'] ?></b></h3>
	    			<p class="text-truncate">
	    				<?php echo html_entity_decode($row['post']) ?>
	    			</p>
					</div>
					<br/>
				</div>
	    	</div>
	    </div>
		<?php } ?>
		</div>
	</div>
  <style type="text/css">
  	.list-items p{
  		text-align: left !important;
  	}
  	.list-items{
  		cursor: pointer;
  	}
  	.truncate{
  		max-height: 10vw;
  		overflow: hidden;
  	}
  </style>
  <script>
  	$(document).ready(function(){
  		$('.list-items').click(function(){
  			location.replace('index.php?page=preview_post&id='+$(this).attr('data-id'))
  		})
  	})
  </script>
   