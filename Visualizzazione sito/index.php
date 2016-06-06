<html>
<head>
	<title></title>

</head>

	<body>
		<?php
			@include("connessioneDB.php");
			$query =" SELECT * FROM brani ";
	
			$risultato = mysqli_query($connessione,$query);
		
			echo ("$risultato");
		
		?>
	</body>
</html>