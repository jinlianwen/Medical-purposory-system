
<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mysite";



$mysqli = new mysqli($servername, $username,
				$password, $dbname);

// Checking for connections
if ($mysqli->connect_error) {
	die('Connect Error (' .
	$mysqli->connect_errno . ') '.
	$mysqli->connect_error);
}

// SQL query to select data from database
$sql = "SELECT * FROM search";
$result = $mysqli->query($sql);
$mysqli->close();
?>

<!DOCTYPE html>
<html lang="en">


<head>
	<meta charset="UTF-8">
    <style>
         body{
   background: url('https://images7.alphacoders.com/513/thumb-1920-513904.jpg');
   background-repeat: no-repeat;
   background-size: cover;
      
    }
    #titles{
        color:yellow;
    }
    th{
        color:pink;
    }
    </style>
	<title>Data display</title>
	<!-- CSS FOR STYLING THE PAGE -->
	<style>
		table {
			margin: 0 auto;
			font-size: large;
			border: 1px solid black;
		}

		h1 {
			text-align: center;
			color: #006600;
			font-size: xx-large;
			font-family: 'Gill Sans', 'Gill Sans MT',
			' Calibri', 'Trebuchet MS', 'sans-serif';
		}

		td {
			background-color: #E4F5D4;
			border: 1px solid black;
		}

		th,
		td {
			font-weight: bold;
			border: 1px solid black;
			padding: 10px;
			text-align: center;
		}

		td {
			font-weight: lighter;
		}
	</style>
</head>

<body>
	<section>
		<h1 id="titles">MEDICINE DETAILS</h1>
		<button class=p1><a href="invoice-system-php/ware_consumer.php">Buyer Details</a></button>

		<!-- TABLE CONSTRUCTION-->
		<table>
			<tr>
                <th>Id</th>
                <th>Medicine name</th>
				<th>quantity</th>
                <th>Manufacture Date</th>
                <th>Expire Date</th>
                <th>Shop Name</th>
                
			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows=$result->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td><?php echo $rows['id'];?></td>
				<td><?php echo $rows['name'];?></td>
				<td> <?php echo $rows['quantity'];?></td>
				<td><?php echo $rows['manu_date'];?></td>
				<td><?php echo $rows['ex_date'];?></td>
                <td><?php echo $rows['shop_name'];?></td>
                
			</tr>
			<?php
				}
			?>
		</table>
	</section>
</body>

</html>