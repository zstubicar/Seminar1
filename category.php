<?php
	// Ako categoryID nije postavljen, redirektamo korisnika na index page.
	if(!isset($_GET['categoryID'])) {
		header("Location:index.php");
	}
	// Selektiranje svih itema u stocku koji pripadaju oderedenom categoryID-u.
	$stock_sql="SELECT stock.stockID, stock.name, stock.price, category.name AS catname FROM stock JOIN category ON stock.categoryID=category.categoryID WHERE stock.categoryID=".$_GET['categoryID'];
	if($stock_query=mysqli_query($dbconnect, $stock_sql)) {
		$stock_rs=mysqli_fetch_assoc($stock_query);
	}
	if(mysqli_num_rows($stock_query)==0) {
		echo "Oprostite, Trenutno nemamo itema u ponudi.";
	} else {
		?>
		<h1><?php echo $stock_rs['catname']; ?></h1>
		<?php do {
			?>
			<div class="item">
			<a href="index.php?page=item&stockID=<?php echo $stock_rs ['stockID']; ?>"<p><?php echo $stock_rs['name']; ?></p>
			<p><?php echo $stock_rs['price']; ?> kn</p></a>
			</div>
		<?php
		} while ($stock_rs=mysqli_fetch_assoc($stock_query));
		?>
	<?php
	}
	?>