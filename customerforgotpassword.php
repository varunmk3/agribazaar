<?php
if(!isset($_SESSION)) { session_start(); }
include("header.php");
include("dbconnection.php");
if($_SESSION[randnumber]  == $_POST[randnumber])
{
if(isset($_SESSION[customerid]))
{
	echo "<script>window.location='Location: customerpanel.php'</script>";
}
if(isset($_POST[submit]))
{
	$sql = "SELECT * FROM customer WHERE email_id='$_POST[emailid]' ";
	$qsql = mysqli_query($con,$sql);
	if(mysqli_num_rows($qsql) == 1)
	{
		$rslogin = mysqli_fetch_array($qsql);
$to = "$rslogin[email_id]";
$subject = "Login credentials";
$message = "Hello $rslogin[customer_name], \n your password is : $rslogin[password]";
$from = "contact@agribuzzpro.com";
$headers = "From: $from";
	mail($to,$subject,$message,$headers);
		echo "<script>alert('Check Your E-Mail For Your Password...');</script>";	

	}
	else
	{
		echo "<script>alert('Email ID does not exist..');</script>";	
	}
}
}
$randnumber = rand();
$_SESSION[randnumber] = $randnumber;
?>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Recover Password</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="portfolio-description">
          <h2>Recover Password</h2>
          <p>
<form method="post" action="" name="frmrrecoverpasswrd" onSubmit="return validaterecoverpasswrd()">
<input type="hidden" name="randnumber" value="<?php echo $randnumber; ?>" >
<div class="row">
	<div class="col-md-6 form-group">
	Enter Email ID <font color="#FF0000">*</font>
	  <input name="emailid" type="text" id="emailid" size="40" autofocus class="form-control" >
	</div>
	<div class="col-md-6 form-group"><br>
	<input type="submit" name="submit" id="submit" value="Recover Password" class="btn btn-info">
	</div>	
</div>
</form>
          </p>
        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->

<?php
include("footer.php");
?>
<script type="application/javascript">
	function validaterecoverpasswrd()
	{
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/; //Variable to validate Email ID


	    if(document.frmrecoverpasswrd.emailid.value == "")
		{
			alert("E-Mail ID should not be left blank..");
			document.frmrecoverpasswrd.emailid.focus();
			return false;
		}		
		else if(!document.frmrecoverpasswrd.emailid.value.match(emailExp))
	{
		alert("Kindly enter Valid Email ID.");
		document.frmrecoverpasswrd.emailid.focus();
		return false;
	}	
		else 
		{
			return true;
		}	
		}
</script>