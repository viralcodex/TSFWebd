<!DOCTYPE html>
<html lang="en">
<?php 

// Username is root 
$user = 'id16401102_webd'; 
$password = '30I9ZvCm8TO_/~6I'; 

// Database name is gfg 
$database = 'id16401102_bank'; 

// Server is localhost with 
$servername='localhost'; 
$mysqli = new mysqli($servername, $user, 
				$password, $database); 

// Checking for connections 
if ($mysqli->connect_error) { 
	die('Connect Error (' . 
	$mysqli->connect_errno . ') '. 
	$mysqli->connect_error); 
} 

// SQL query to select data from database 
$sql = "SELECT * FROM customer "; 
$result = $mysqli->query($sql); 
$mysqli->close(); 
?> 
<head>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<link rel="stylesheet" type="text/css" href="css/flattable.css">
<!--===============================================================================================-->
</head>

<!--table-->
<table class="flat-table">
  <tbody>
    <tr>
      <th>Customer ID</th>
      <th>Customer Name</th>
      <th>Full Details</th>
</tr>
	<?php // LOOP TILL END OF DATA 
				while($rows=$result->fetch_assoc()) 
				{ 
			?> 
			<tr> 
				<!--FETCHING DATA FROM EACH 
					ROW OF EVERY COLUMN--> 
				<td><?php echo $rows['cust_id'];?></td> 
				<td><?php echo $rows['cust_name'];?></td>
                <td>
				<?php 
                $name=$rows['cust_name'];
				echo "<a href=\"details.php?name=".$name."\">Details </a>";
                ?>
                </td>
			</tr> 
			<?php 
				} 
			?> 
  </tbody>
	</table>
</html>