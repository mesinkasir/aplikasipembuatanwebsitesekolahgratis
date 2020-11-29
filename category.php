  <section class="d-flex align-items-center">
	<div class="container">
	    <?php
	    	$qry = $qry = $conn->query("SELECT p.*,c.name as category from posts p inner join category c on c.id = p.category_id where p.status = 1 and p.category_id = '".$_GET['id']."'  order by date(p.date_published) desc");
	    	if($qry->num_rows > 0):
	    	while($row=$qry->fetch_assoc()){
	    ?>
	    <div class="col-12 col-md-12 list-items" data-id="<?php echo $row['id'] ?>">
	    	
	    			<center><img src="assets/img/<?php echo $row['img_path'] ?>" alt="" class='img-fluid'></center>
	    		</div>
	    		
	    			<h3><b><?php echo $row['title'] ?></b></h3>
	    			<p class="text-truncate">
	    				<?php echo html_entity_decode($row['post']) ?>
	    			</p>
	    		
	
		<?php } ?>
		<?php else: ?>
			<h2>Maaf belum ada artikel tersedia pada menu ini.</h2>
		<?php endif; ?>

		</div>
  </section>
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
  </style>]
  <script>
  	$(document).ready(function(){
  		$('.list-items').click(function(){
  			location.replace('index.php?page=preview_post&id='+$(this).attr('data-id'))
  		})
  	})
  </script>
   