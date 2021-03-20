<!DOCTYPE html>
<html lang="en">
<?php 

// Username is root 
$user = 'root'; 
$password = ''; 

// Database name is gfg 
$database = 'bank'; 

// Server is localhost
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
    </head>

<!--table-->
    <table class="flat-table">
    <tbody>
        <tr>
         <th>Customer ID</th>
         <th>Customer Name</th>
         <th>Customer Email</th>
         <th>Account Balance</th>
         <th>Account Date</th>
	     <th>Transfer</th>
        </tr>
	        <?php // LOOP TILL END OF DATA 
				while($rows=$result->fetch_assoc()) 
				{ 
	        ?> 
            <tr>
				<td><?php echo $rows['cust_id'];?></td> 
				<td><?php echo $rows['cust_name'];?></td>
				<td><?php echo $rows['cust_email'];?></td>
				<td><?php echo "Rs. ",$rows['curr_bal'];?></td>
				<td><?php echo $rows['acc_date'];?></td>
				<td>
				<?php 
                $name=$rows['cust_name'];
				echo "<a href=\"trans2.php?name=".$name."\">Transfer Funds </a>";
                ?>
                </td>
		   	</tr> 
			<?php 
				} 
			?> 
        </tbody>
	</table>
</html>
