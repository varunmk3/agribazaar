<?php
include("header.php");
$sql = "SELECT * FROM product_purchase_bill where product_purchase_bill_id='$_GET[billid]'";
$qsql = mysqli_query($con,$sql);
$rs = mysqli_fetch_array($qsql);

$sql1 = "SELECT * FROM country WHERE country_id='$rs[country_id]'";
$qsql1 = mysqli_query($con,$sql1);
$rs1 = mysqli_fetch_array($qsql1);

$sql2 = "SELECT * FROM state WHERE state_id='$rs[state_id]'";
$qsql2 = mysqli_query($con,$sql2);
$rs2 = mysqli_fetch_array($qsql2);

$sql3 = "SELECT * FROM city WHERE city_id='$rs[city_id]'";
$qsql3 = mysqli_query($con,$sql3);
$rs3 = mysqli_fetch_array($qsql3);
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
              <div class="col-lg-6">
                <div class="info w-100 mt-4">
                  <i class="icofont-phone"></i>
                  <h4>Billing detail:</h4>
				  <p><b>Bill Number :</b> <?php echo $rs[product_purchase_bill_id]; ?></p>
				  <p><b>Date of Bill :</b> <?php echo $rs[purchase_date]; ?></p>
                  <p><b>Name :</b> <?php echo $rs[customer_name]; ?></p>
                  <p><b>Ph. No.</b> <?php echo $rs[customer_contact_number]; ?></p>
                </div>
              </div>
              <div class="col-lg-6 mt-4">
                <div class="info">
                  <i class="icofont-envelope"></i>
                  <h4>Delivery address:</h4>
                  <p><?php echo $rs[customer_address]; ?> <br><?php echo $rs3[city]; ?> <br><?php echo $rs2[state]; ?> <br><?php echo $rs1[country]; ?> <br>PIN <?php echo $rs[pincode]; ?></p>
                </div>
              </div>
            </div>

            <form action="forms/contact.php" method="post" role="form" class="php-email-form mt-4">
              <div class="form-row">
                <div class="col-md-12 form-group">
<h2>Order Details</h2>
<table width="755" border="0" class="table table-bordered">
  <tbody>
    <tr>
      <th><strong>&nbsp;Image</strong></th>
      <th><strong>&nbsp;Product detail</strong></th>
      <th><strong>&nbsp;Product Cost</strong></th>
      <th><strong>&nbsp;Quantity</strong></th>
      <th><strong>&nbsp;Total</strong></th>
    </tr>
      <?php
	  		$i=1;
			$tot=0;
			  $sql = "SELECT * FROM product_purchase_record where product_purchase_bill_id='$_GET[billid]'";
			  $qsql = mysqli_query($con,$sql);
			  while($rs = mysqli_fetch_array($qsql))
			  {
			   	$sql1 = "SELECT * FROM selling_product WHERE selling_prod_id='$rs[selling_prod_id]'";
				  $qsql1 = mysqli_query($con,$sql1);
				  $rs1 = mysqli_fetch_array($qsql1);
			  echo "
					<tr>
					<td>&nbsp;<img src='imgsellingproduct/$rs1[product_img1]' width='75' height='50'></td>
					  <td>&nbsp;$rs1[product_name]</td>
					  <td>&nbsp;$rupeesymbol $rs[cost]</td>
					  <td>&nbsp;$rs[quantity]&nbsp;$rs1[quantity_type]</td>
					  <td>&nbsp;<span id='calccost$i'> $rupeesymbol " . $rs[cost] * $rs[quantity] ."</span></td>					  
					</tr>";
					$i++;
					$tot = $tot + ( $rs[cost] * $rs[quantity] );
			 }
	  ?>
    <tr>
      <th height="33" scope="row">&nbsp;</th>
      <th>&nbsp;</th>
      <th>&nbsp;</th>
      <th><strong>Grand total</strong></th>
      <th>&nbsp; <?php echo $rupeesymbol; ?> <?php echo $tot; ?></th>
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