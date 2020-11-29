<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Login Axcora School</title>
 	<?php include('./header.php'); ?>
<?php 
session_start();
if(isset($_SESSION['login_id']))
header("location:index.php?page=home");
?>
</head>
<body>
<div class="row">
  			<div class="col-12 col-md-4"></div>
 		
  			<div id="login" class="col-12 col-md-4 p-3 p-md-5 text-center">
			<div class="shadow p-3 p-md-5 rounded">
				 <img class="img-fluid" alt="website sekolah gratis"
src="https://mesinkasironline.web.app/img/createwebsiteusingangular.png" width="120"/><br/>
  			<img src="../img/axcora.gif"/>
  					<form id="login-form" class="text-left" >
  					Username<br/>
  							<input type="text" id="username" name="username" class="form-control">
  						Password<br/>
  							<input type="password" id="password" name="password" class="form-control">
  						<br/>
  						<center><button class="btn btn-block btn-danger rounded">Login</button></center>
  					</form>
  				  		</div>
						</div>
     			<div class="col-12 col-md-4"></div>
</div>

  <div id="preloader"></div>
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>


</body>
<script>
	$('#login-form').submit(function(e){
		e.preventDefault()
		$('#login-form button[type="button"]').attr('disabled',true).html('Logging in...');
		if($(this).find('.alert-danger').length > 0 )
			$(this).find('.alert-danger').remove();
		$.ajax({
			url:'ajax.php?action=login',
			method:'POST',
			data:$(this).serialize(),
			error:err=>{
				console.log(err)
		$('#login-form button[type="button"]').removeAttr('disabled').html('Login');

			},
			success:function(resp){
				if(resp == 1){
					location.reload('index.php?page=home');
				}else{
					$('#login-form').prepend('<div class="alert alert-danger">Mohon maaf password dan username tidak sesuai.</div>')
					$('#login-form button[type="button"]').removeAttr('disabled').html('Login');
				}
			}
		})
	})
</script>	
</html>