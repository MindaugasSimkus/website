<!DOCTYPE html>
<html>
<head>
	<title>Website page - <?= $page->title; ?></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h1><?= $page->title; ?></h1>
		</div>
		<div class="row">
			<?php 
				foreach ($menu as $link) {
					echo '<a class="btn btn-small btn-warning" href="?page='.$link->id.'">'.$link->title.'</a> &nbsp';
				}

			?>
		</div>		
		<div class="row">
			<div class="col-md-8">
				<p><?= $page->body; ?></p>
			</div>
			<div class="col-md-4">
				<?php 
					for ($i=0; $i < count($banners); $i++) { 
						 echo "<a href=".$banners[$i]->banner_link." target='_blank'>
							<img src=".$banners[$i]->banner_pic." alt='Your add could be here' style='width:100%;height:400px;border:0;'>
						</a>";
					}
				?> 
			</div>			
		</div>
	</div>
</body>
</html>