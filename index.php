<!doctype html>
<html lang="id">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
   	<link href='https://mesinkasironline.web.app/img/createwebsiteusingangular.png' rel='icon' type='image/x-icon'/>
	<?php ?>
	<?php include 'header.php' ?>
	<?php
	include 'db_connect.php';
	$qry = $conn->query("SELECT * from site_settings limit 1");
	if($qry->num_rows > 0){
		foreach($qry->fetch_array() as $k => $val){
			$meta[$k] = $val;
		}
	}
	 ?>
</head>
<body>
 <?php include 'topbar.php' ?>
  <main id="main">
   <?php 
            $page = isset($_GET['page']) ? $_GET['page'] : 'axcora';
            include $page.'.php';

            ?>
  </main>
  <div id="preloader"></div>
  <a href="#" class="back-to-top"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-arrow-up-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  <path fill-rule="evenodd" d="M8 12a.5.5 0 0 0 .5-.5V5.707l2.146 2.147a.5.5 0 0 0 .708-.708l-3-3a.5.5 0 0 0-.708 0l-3 3a.5.5 0 1 0 .708.708L7.5 5.707V11.5a.5.5 0 0 0 .5.5z"/>
</svg></a>
<div class="col-12 col-12 p-3 p-md-5 text-center">
<small>copyrights <a href="https://axcora.com/sekolah.html">axcora technology</a></small>
</div>
  <script src="assets/vendor/php-email-form/validate.js"></script><script src='https://cdn.jsdelivr.net/npm/vue/dist/vue.js'></script>  <script src="assets/vendor/venobox/venobox.min.js"></script><script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script><script src='https://mesinkasir.github.io/larapos/pos/gallerya.js'></script><script src="assets/vendor/counterup/counterup.min.js"></script><script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script><script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>  <script src="assets/js/main.js"></script>
</body>
</html>
