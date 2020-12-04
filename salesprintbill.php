<?php
if(!isset($_SESSION)) { session_start(); }
include("header.php");
include("dbconnection.php");
?>
  <main id="main">

   
    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container">

        <div class="text-center" data-aos="zoom-in">
		<br>
		<br>
		<br>
          <h3>Bill Receipt</h3>
        </div>

      </div>
    </section><!-- End Cta Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-12" data-aos="fade-up" data-aos-delay="100">
            <div class="info mt-4">
              <div class="logo mr-auto">
          <center><h1 class="text-light"><a href="index.php"><span>AGRIBUZZ</span></a></h1></center>
		  
        </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <div class="info w-100 mt-4">
                  <h4 style="padding: 0 0 0 0px;">Payment Bill:</h4>
 <?php
									$sqlbill = "SELECT * FROM purchase_order_bill where purchase_order_bill_id='$_GET[purchase_order_bill_id]'";
									$qsqlbill = mysqli_query($con,$sqlbill);
									$rsbill = mysqli_fetch_array($qsqlbill);
									
									$sqlpurchase_order = "SELECT * FROM purchase_order WHERE purchase_order_id='$rsbill[purchase_order_id]'";
									$qsqlpurchase_order = mysqli_query($con,$sqlpurchase_order);
									$rspurchase_order = mysqli_fetch_array($qsqlpurchase_order);
							 
								   	$sqlcustomer = "SELECT * FROM customer WHERE customer_id='$rspurchase_order[customer_id]'";
								  	$qsqlcustomer = mysqli_query($con,$sqlcustomer);
								  	$rscustomer = mysqli_fetch_array($qsqlcustomer);
								
								   	$sqlcstcountry = "SELECT * FROM country WHERE country_id='$rscustomer[country_id]'";
								  	$qcstcountry = mysqli_query($con,$sqlcstcountry);
								  	$rscstcountry = mysqli_fetch_array($qcstcountry);
								
								  	$sqlcststate = "SELECT * FROM state WHERE state_id='$rscustomer[state_id]'";
								  	$qcststate  = mysqli_query($con,$sqlcststate);
								  	$rscststate  = mysqli_fetch_array($qcststate);
								 
								  	$sqlcstcity = "SELECT * FROM city WHERE city_id='$rscustomer[city_id]'";
								  	$qsqlcstcity = mysqli_query($con,$sqlcstcity);
								  	$rscstcity = mysqli_fetch_array($qsqlcstcity);
									
									$sqlseller = "SELECT * FROM seller WHERE seller_id='$rspurchase_order[seller_id]'";
								  	$qsqlseller = mysqli_query($con,$sqlseller);
								  	$rsseller = mysqli_fetch_array($qsqlseller);
									
								   	$sqlselcountry = "SELECT * FROM country WHERE country_id='$rsseller[country_id]'";
								  	$qselcountry = mysqli_query($con,$sqlselcountry);
								  	$rsselcountry = mysqli_fetch_array($qselcountry);
								
								  	$sqlselstate = "SELECT * FROM state WHERE state_id='$rsseller[state_id]'";
								  	$qselstate  = mysqli_query($con,$sqlselstate);
								  	$rsselstate  = mysqli_fetch_array($qselstate);
								 
								  	$sqlselcity = "SELECT * FROM city WHERE city_id='$rsseller[city_id]'";
								  	$qsqlselcity = mysqli_query($con,$sqlselcity);
								  	$rsselcity = mysqli_fetch_array($qsqlselcity);
							
								?>				  
				  <p style="padding: 0 0 0 0px;"><b>Order Bill Number:</b> <?php echo $rsbill[purchase_order_bill_id]; ?></p>
				  <p style="padding: 0 0 0 0px;"><b>Paid Date:</b> <?php echo $rsbill[paid_date]; ?></p>
                  <p style="padding: 0 0 0 0px;"><b>Customer Name:</b> <?php echo $rscustomer[customer_name]; ?></p>
                  <p style="padding: 0 0 0 0px;"><b>Seller Name:</b> <?php echo $rscustomer[seller_name]; ?></p>
                </div>
              </div>
              <div class="col-md-4 mt-4">
                <div class="info">
                  <i class="icofont-envelope"></i>
                  <h4>Customer address:</h4>
                  <p><?php echo $rscustomer[address]; ?><br>
					  <?php echo $rscstcity[city]; ?> <br>
					  <?php echo $rscststate[state]; ?> <br>
					  <?php echo $rscstcountry[country]; ?> <br>
					  PIN Code:<?php echo $rscustomer[pincode]; ?><br>
					  Ph. No. <?php echo $rscustomer[contact_no]; ?>
					  </p>
                </div>
              </div>
              <div class="col-md-4 mt-4">
                <div class="info">
                  <i class="icofont-envelope"></i>
                  <h4>Seller Address:</h4>
                  <p><?php echo $rsseller[seller_address]; ?> <br>
                                    <?php echo $rsselcity[city]; ?> <br>
                                    <?php echo $rsselstate[state]; ?> <br>
                                    <?php echo $rsselcountry[country]; ?> <br>
PIN Code: <?php echo $rsseller[pincode]; ?><br>
					  Ph. No. <?php echo $rsseller[mobile_no]; ?></p>
                </div>
              </div>
            </div>

            <form action="forms/contact.php" method="post" role="form" class="php-email-form mt-4">
              <div class="form-row">
                <div class="col-md-12 form-group">
<h2>Product Details</h2>
<table width="755" border="0" class="table table-bordered">
  <tbody>
    <tr>
      <th><strong>Image</strong></th>
      <th><strong>Product Name</strong></th>
      <th><strong>Quantity</strong></th>
      <th><strong>Total</strong></th>
    </tr>
      <?php
	  		$i=1;
			$tot=0;
			
			$sqlproduct = "SELECT * FROM product WHERE product_id='$rspurchase_order[product_id]'";
			$qsqlproduct = mysqli_query($con,$sqlproduct);
			$rsproduct = mysqli_fetch_array($qsqlproduct);
			
			  echo "
					<tr>
					<td>&nbsp;<img src='imgproduct/$rsproduct[img_1]' width='25' height='25'></td>
					  <td>&nbsp;$rsproduct[title]</td>
					  <td>&nbsp;$rupeesymbol $rspurchase_order[quantity]&nbsp;$rsproduct[quantity_type]</td>
					  <td>&nbsp;<span id='calccost$i'>$rupeesymbol " . $rspurchase_order[purchase_amt] ."</span></td>					  
					</tr>";
	  ?>
    <tr>
      <th height="33" scope="row">&nbsp;</th>
      <th>&nbsp;</th>
      <th><strong>Grand total</strong></th>
      <th>&nbsp; <?php echo $rupeesymbol; ?> <?php echo $rspurchase_order[purchase_amt]; ?></th>

    </tr>
  </tbody>
</table>
<hr>
<table width="755" border="0" class="table table-bordered">
				            <tbody>
				              <tr>
				                <th width="231" height="31" scope="row" align="right"><strong>Payment type:</strong></th>
				                <th width="514" height="31" scope="row" align="left">&nbsp;<?php echo $rsbill[payment_type]; ?></th>
			                  </tr>
				              
				              <tr>
				                <th height="33" scope="row" align="right">&nbsp;<strong>Paid Date:</strong></th>
				                <th align="left">&nbsp; <?php echo $rsbill[paid_date]; ?></th>
			                  </tr>
                              
                              
				              <tr>
				                <th height="33" scope="row" align="right">&nbsp;<strong>Seller Bank Account detail:</strong></th>
				                <th align="left">
								<?php
                                echo "<strong> &nbsp;Bank Name: </strong> ". $rsseller[bank_name] . "<br>";
                                echo "<strong> &nbsp;Bank Account number: </strong> " .$rsseller[bank_acno] . "<br>";
                                echo "<strong> &nbsp;Branch: </strong> ".$rsseller[bank_branch] . "<br>";
                                echo "<strong> &nbsp;IFSC Code: </strong> ". $rsseller[bank_IFSC] . "<br>";																							
								?>
                                </th>
			                  </tr>
			                </tbody>
			              </table>
<hr>
<center><button onclick="myFunction()" autofocus class="btn btn-primary">Print Bill</button></center>
                </div>
              </div>
            </form>
          </div>
        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
  
<?php
include("footer.php");
?>
<script>
function myFunction() {
    window.print();
}
</script>