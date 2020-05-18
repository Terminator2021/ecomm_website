<div class="row">
	<div class="box box-solid">
	  	<div class="box-header with-border">
	    	<h3 class="box-title"><b>Most Viewed Today</b></h3>
	  	</div>
	  	<div class="box-body">
	  		<ul id="trending">
	  		<?php
	  			$now = date('Y-m-d');
	  			$conn = $pdo->open();

	  			$stmt = $conn->prepare("SELECT * FROM products WHERE date_view=:now ORDER BY counter DESC LIMIT 10");
	  			$stmt->execute(['now'=>$now]);
	  			foreach($stmt as $row){
	  				echo "<li><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></li>";
	  			}

	  			$pdo->close();
	  		?>
	    	<ul>
	  	</div>
	</div>
</div>


<div class="row">
	<div class='box box-solid'>
	  	<div class='box-header with-border'>
	    	<h3 class='box-title'><b>Follow us on Social Media</b></h3>
	  	</div>
	  	<div class='box-body'>
	    	<a href="https://www.facebook.com/jatin.2021" class="btn btn-social-icon btn-facebook"><i class="fa fa-facebook"></i></a>
	    	<a href="https://www.twitter.com/jatin2021" class="btn btn-social-icon btn-twitter"><i class="fa fa-twitter"></i></a>
	    	<a href="https://www.instagram.com/jatin.2021" class="btn btn-social-icon btn-instagram"><i class="fa fa-instagram"></i></a>
	    	<a href="https://www.linkedin.com/in/jatin-saini-300008181" class="btn btn-social-icon btn-linkedin"><i class="fa fa-linkedin"></i></a>
	  	</div>
	</div>
