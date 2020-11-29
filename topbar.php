<?php 
include 'db_connect.php';
?>
  <div id="topbar" class="align-items-center fixed-top shadow">
    <nav class="navbar navbar-primary bg-primary text-white justify-content-center">
    <button class="navbar-toggler justify-content-center btn btn-outline-light border border-light rounded-circle" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
     <img width="40" src="https://mesinkasironline.web.app/img/createwebsiteusingangular.png"/>
    </button>
  </nav>
  <div class="collapse text-center" id="navbarToggleExternalContent">
    <div class="bg-light p-4 p-md-5">
      <h1 class="text-center"><strong><a href="index.php"><?php echo isset($meta['blog_name']) ? $meta['blog_name'] : '' ?></a></strong></h1>
  <nav aria-label="breadcrumb">
  <ol class="breadcrumb justify-content-center bg-primary text-white">
		<li class="breadcrumb-item" aria-current="page">
    <a class="text-white" href="index.php?page=about">About</a>
	</li>	 
              <?php
              $qry = $conn->query("SELECT * from category where status = 1"); 
            while($row=$qry->fetch_assoc()){
               ?>
			   <li class="breadcrumb-item" aria-current="page">
        <a class="text-white" href="index.php?page=category&id=<?php echo $row['id'] ?>"><?php echo $row['name'] ?></a>
              <?php } ?>
        </li>
		   <!--<li class="breadcrumb-item" aria-current="page">
  <a class="text-white" href="index.php?page=home">Update</a>
       </li>-->
	</ol>
	</nav>
		  	<small>
 <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-envelope" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383l-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
</svg> 	<a href="mailto:<?php echo isset($meta['email']) ? $meta['email'] : '' ?>"><?php echo isset($meta['email']) ? $meta['email'] : '' ?>
		  </a> /
	<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-phone-vibrate" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M10 3H6a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zM6 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H6z"/>
  <path fill-rule="evenodd" d="M8 12a1 1 0 1 0 0-2 1 1 0 0 0 0 2zM1.599 4.058a.5.5 0 0 1 .208.676A6.967 6.967 0 0 0 1 8c0 1.18.292 2.292.807 3.266a.5.5 0 0 1-.884.468A7.968 7.968 0 0 1 0 8c0-1.347.334-2.619.923-3.734a.5.5 0 0 1 .676-.208zm12.802 0a.5.5 0 0 1 .676.208A7.967 7.967 0 0 1 16 8a7.967 7.967 0 0 1-.923 3.734.5.5 0 0 1-.884-.468A6.967 6.967 0 0 0 15 8c0-1.18-.292-2.292-.807-3.266a.5.5 0 0 1 .208-.676zM3.057 5.534a.5.5 0 0 1 .284.648A4.986 4.986 0 0 0 3 8c0 .642.12 1.255.34 1.818a.5.5 0 1 1-.93.364A5.986 5.986 0 0 1 2 8c0-.769.145-1.505.41-2.182a.5.5 0 0 1 .647-.284zm9.886 0a.5.5 0 0 1 .648.284C13.855 6.495 14 7.231 14 8c0 .769-.145 1.505-.41 2.182a.5.5 0 0 1-.93-.364C12.88 9.255 13 8.642 13 8c0-.642-.12-1.255-.34-1.818a.5.5 0 0 1 .283-.648z"/>
</svg>
 <?php echo isset($meta['contact']) ? $meta['contact'] : '' ?></small>
</div>
  </div>
  </div>
  <script>
  	$('.nav-<?php echo !isset($_GET['page']) ? 'home': $_GET['page'] ?>').addClass('active');
  </script>