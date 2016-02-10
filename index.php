<?php
// Ovaj file je baza svih stranica na web sjedistu. Prilikom kreiranja nove strane samo otovorimo ovu stranu i spremimu ju kao novu stranu koju želimo napraviti
	include("dbconnect.php");
?>
<html>
<head>
<title>Restoran Dva Labuda</title>

<link href="styles.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="container">
	<?php
		include("header.php");
	// provjera dali korisnik posjecuje neku drugu stranu koja nije home page.
	if(!isset($_GET['page'])) {
		?><div class="banner"><img src="images/banner.jpg" alt="Dva labuda" height="400px" width="100%" /></div>
		<?php
	}
	
	?>
	
    <div class="maincontent">
		<?php 
			if(!isset($_GET['page'])) {
				include("home.php");
			} else {
				$page=$_GET['page'];
				include("$page.php");
			}
		?>
  </div>
    <?php
		include("seccontent.php");
	?>

	<div class="footer"></div>
</div><!-- Container zavrsava ovdje -->
</body>
</html>
