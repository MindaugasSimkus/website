<!DOCTYPE html>
<html>
<head>
	<title><?= $config->site_name;?> <?= $page->title; ?></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container" style="background-color: lightgrey; padding: 50px;">
		<div class="row">
			<div class="col-md-6"><h1><?= $config->site_name; ?></h1></div>
			<div class="col-md-6 text-right"><?=  $user->username; ?></div>
			
		</div>	
		<div class="row">
			<?php 
				foreach ($menu as $link) {
					echo '<a class="btn btn-small btn-warning" href="?page='.$link->id.'">'.$link->title.'</a> &nbsp';
				}
			?>
		</div>		
		<div class="row">
			<div class="col-md-9">
				<h2><?= $page->title; ?></h2>
				<p><?= $page->body; ?></p>
			<pre>
			

			</pre>
			</div>
			<div class="col-md-3">
			<?php 
			if ($user->level == "Guest") {
				echo '<h2>Login</h2>
				<form method="POST" action="">
					<input class="form-control" type="text" name="username" required><br/>
					<input class="form-control" type="password" name="password" required><br/>
					<button class="btn btn-default" type="submit" action="">Login</button><br/>
					<br/>
				</form>'; 
			} else {
				echo '<h2>Logout</h2>
				<form method="POST" action="">
					<button class="btn btn-default" action="" type="submit" name="logout" value="logout">Logout</button><br/>
					<br/>
				</form>';
			}
				if ($user->error != null) {
					echo '<div class="alert alert-danger" role="alert"><strong>'.$user->error.'</div>';
				}
				?>
				<h2>Banners</h2>
				<?php 
					for ($i=0; $i < count($banners); $i++) { 
						 echo "<a href=".$banners[$i]->banner_link." target='_blank'>
							<img src=".$banners[$i]->banner_pic." alt='Your add could be here' style='width:100%;height:300px;border:0;'>
						</a>";
					}

				?>
			</div>			
		</div>
	</div>
</body>
</html>