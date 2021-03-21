
<?php
    /* Attempt MySQL server connection. Assuming you are running MySQL
    server with default setting (user 'root' with no password) */
     $link = mysqli_connect("localhost", "root", "", "bank");
    // Check connection
    if($link === false){
       die("ERROR: Could not connect. " . mysqli_connect_error());
    }
    // Escape user inputs for security
    function randHash($len=32)
   {
	return substr(md5(openssl_random_pseudo_bytes(20)),-$len);
   }
    $id=randHash(10);
    $sendername=isset($_POST['sendername']) ? $_POST['sendername'] : '';
    $receivername=$_GET['name'];
    $amount=isset($_POST['amount']) ? $_POST['amount'] : '';
    $email=isset($_POST['email']) ? $_POST['email'] : '';
    date_default_timezone_set('Asia/Kolkata');
    $date = date('m/d/Y h:i:s a', time());
    
    $cust="SELECT * from customer where cust_name='$sendername'";
    $cust=mysqli_query($link, $cust);
    $res=mysqli_fetch_assoc($cust);
    $checkn=$res['cust_name'];
    $checke=$res['cust_email'];
    
    if($checkn !=null and $checke==$email and $amount>0)
    {
          $sql="SELECT * from customer where cust_name='$sendername'";
          $result=mysqli_query($link, $sql);
          $bal=$result->fetch_row()[3];
          $total=0.00;
          $total=(double)$bal-(double)$amount;
          if ($total < 0)
          {

            echo 'Insufficient Funds';
            mysqli_close($link);
            
          }
          
          if($total >= 0)
          {
            $sql="UPDATE customer SET curr_bal='$total' where cust_name='$sendername'";
            mysqli_query($link, $sql);

            $total=0.00;

            $sql="SELECT * from customer where cust_name='$receivername'";
            $result=mysqli_query($link, $sql);
            $bal=$result->fetch_row()[3];
            
            $total=(double)$bal+(double)$amount;
            $sql="UPDATE customer SET curr_bal='$total' where cust_name='$receivername'";
            mysqli_query($link, $sql); 

            echo "Transfer Successful!", "<br>";
            echo "Sender Name:$sendername", "<br>";
            echo "Receiver Name: $receivername", "<br>";
            echo "Amount: Rs. $amount", "<br>";
            echo "Time: " .$date,"<br>";
            echo "Transaction ID: ", $id ;
            // attempt insert query execution
            $sql = "INSERT INTO transfers (ID, sender, receiver, amount, dates, email) VALUES ('$id', '$sendername', '$receivername', '$amount','$date','$email')";
            mysqli_query($link, $sql);
          }
    }
    
    else
    {
        if($amount<0)
            {echo 'Please enter valid amount!';}
            else
            { echo 'Invalid email or Sender name! Please recheck your details!';}
    }
?>
