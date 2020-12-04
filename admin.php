<?php 
include("header.php");
include("dbconnection.php");
if(!isset($_SESSION[adminid]))
{
	echo "<script>window.location='adminloginpanel.php'; </script>";
}
if($_SESSION[randnumber]  == $_POST[randnumber])
{
	if(isset($_POST[submit]))
	{
		if(isset($_GET[editid]))
		{
			$sql ="UPDATE admin SET  `admin_name`='$_POST[adminname]', `login_id`='$_POST[loginid]', `password`='$_POST[password]', `status`='$_POST[status]' where admin_id='$_GET[editid]'";
			if(!mysqli_query($con,$sql))
			{
				echo "Error in mysqli query";
			}
			else
			{
				echo "<script>alert('Admin record updated successfully...');</script>";
			}
		}
		else
		{
	$sql="INSERT INTO `admin`(`admin_name`, `login_id`,`password`,`status`) VALUES ('$_POST[adminname]','$_POST[loginid]','$_POST[password]','$_POST[status]')";
	if(!mysqli_query($con,$sql))
		{
			echo "Error in mysqli query". mysqli_error($con);
		}
		else
		{
			echo "<script>alert(' Admin record inserted successfully...');</script>";
		}	
	}
	}
}
$randnumber = rand();
$_SESSION[randnumber] = $randnumber;
if(isset($_GET[editid]))
{
	$sql = "SELECT * FROM admin WHERE admin_id='$_GET[editid]'";
	$qsql = mysqli_query($con,$sql);
	$rsedit = mysqli_fetch_array($qsql);
}
?>
  <main id="main">


    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container">

        <div class="text-center" data-aos="zoom-in">
		<br><br>
          <h3>Admin</h3>
        </div>

      </div>
    </section><!-- End Cta Section -->


    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">
        <div class="row">
		

          <div class="col-lg-12" data-aos="fade-up" data-aos-delay="100">
            <div class="info mt-4 ">
			
		<center><h4>Enter Admin Detail...</h4></center><hr>

<form method="POST" action="" name="frmadminreg" onSubmit="return validateadminreg()">
<input type="hidden" name="randnumber" value="<?php echo $randnumber; ?>" >
				  
<div class="form-row">
	<div class="col-md-12 form-group">
	Admin Name <font color="#FF0000">*</font>
	  <input type="text" name="adminname" id="adminname" value="<?php echo $rsedit[admin_name]; ?>" autofocus class="form-control" >
	</div>	
	
		<div class="col-md-12 form-group">
	Login ID <font color="#FF0000">*</font>
	  <input type="text" name="loginid" id="loginid" value="<?php echo $rsedit[login_id]; ?>" class="form-control" >
	</div>	
	
	<div class="col-md-12 form-group">
		Password <font color="#FF0000">*</font>
	  <input type="Password" name="password" id="password" value="<?php echo $rsedit[password]; ?>" class="form-control" >
	  <font color="#FF0000"> (Password must be of Minimum 8 Characters and Maximum 16 Characters in length)</font>
	</div>	
	
	<div class="col-md-12 form-group">
		Confirm Password <font color="#FF0000">*</font>
	  <input type="Password" name="cpassword" id="cpassword" value="<?php echo $rsedit[password]; ?>" class="form-control" >
	</div>	
	
	<div class="col-md-12 form-group">
	Status <font color="#FF0000">*</font>
	  <select name="status" id="status" class="form-control">
			<option value="">Select Status</option>
		  <?php
		  $arr= array("Active","Inactive");
		  foreach($arr as $val)
		  {
			  if($rsedit['status'] == $val)
			  {
			  echo "<option value='$val' selected >$val</option>";
			  }
			  else
			  {
			  echo "<option value='$val'>$val</option>";
			  }
		  }
		  ?>
	  </select>
	</div>	
	
</div>

<hr>
<button type="submit" name="submit" id="submit" class="btn btn-info btn-lg btn-block" >Submit</button>

</form>
            </div>
		  </div>
		  
        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
  
<?php
include("footer.php");
?>
	<script type="application/javascript">
	function validateadminreg()
	{
		
var alphaExp = /^[a-zA-Z]+$/; //Variable to validate only alphabets
var alphaspaceExp = /^[a-zA-Z\s]+$/; //Variable to validate only alphabets and space
var numericExpression = /^[0-9]+$/; //Variable to validate only numbers
var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/; //Variable to validate Email ID

		if(document.frmadminreg.adminname.value == "")
	{
		alert("Admin name should not be empty..");
		document.frmadminreg.adminname.focus();
		return false;
	}
	else if(!document.frmadminreg.adminname.value.match(alphaspaceExp))
	{
		alert("Please enter only letters for Admin name..");
		document.frmadminreg.adminname.focus();
		return false;
	}
	else if(document.frmadminreg.loginid.value == "")
	{
		alert("Login ID should not be empty..");
		document.frmadminreg.loginid.focus();
		return false;
	}
	else if(!document.frmadminreg.loginid.value.match(alphaExp))
	{
		alert("Kindly enter Valid Login ID.");
		document.frmadminreg.loginid.focus();
		return false;
	}
	else if(document.frmadminreg.password.value == "")
	{
		alert("Password should not be empty..");
		document.frmadminreg.password.focus();
		return false;
	}
	else if(document.frmadminreg.password.value.length < 8)
	{
		alert("Password length should be more than 8 characters...");
		document.frmadminreg.password.focus();
		return false;
	}
	else if(document.frmadminreg.password.value.length > 16)
	{
		alert("Password length should be less than 16 characters...");
		document.frmadminreg.password.focus();
		return false;
	}
	else if(document.frmadminreg.cpassword.value == "")
	{
		alert("Confirm password should not be empty..");
		document.frmadminreg.cpassword.focus();
		return false;
	}
	else if(document.frmadminreg.password.value != document.frmadminreg.cpassword.value)
	{
		alert("Password and confirm password not matching...");
		document.frmadminreg.password.focus();
		return false;
	}
	else
	{
	
	return true;
	}
	}
	</script>