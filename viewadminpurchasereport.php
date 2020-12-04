<?php
if(!isset($_SESSION)) { session_start(); }
include("header.php");
include("dbconnection.php");
if(!isset($_SESSION[adminid]))
{
	echo "<script>window.location='adminloginpanel.php';</script>";
}
?>
  <main id="main">


    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container">

        <div class="text-center" data-aos="zoom-in">
		<br><br>
          <h3>Product Purchase Bill Report</h3>
        </div>

      </div>
    </section><!-- End Cta Section -->


    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">
        <div class="row">
		

          <div class="col-lg-12" data-aos="fade-up" data-aos-delay="100">
            <div class="info mt-4 ">

<?php
							   $sql = "SELECT * FROM product_purchase_bill ";
							  $qsql = mysqli_query($con,$sql);
							  if(mysqli_num_rows($qsql)  == 0)
									{
										echo "<center>There is no Purchase Report to display!!</center>";
									}
									else
									{
							 ?>
<table class="table table-bordered " >
<thead>
<tr>
      <th><strong>Bill Number</strong></th>
      <th><strong>Address</strong></th>
      <th><strong>Purchase Date</strong></th>
      <th><strong>Total Amount</strong></th>
      <th><strong>View</strong></th>
  </tr>
  </thead>
  <tbody>
  <?php
							  while($rs = mysqli_fetch_array($qsql))
							  {
								  $sqlsum = "select sum(cost) from product_purchase_record where product_purchase_bill_id='$rs[product_purchase_bill_id]'";
								  $qsqlsum = mysqli_query($con,$sqlsum);
								  $rssum = mysqli_fetch_array($qsqlsum);
 echo "  <tr>
      <td>&nbsp;$rs[product_purchase_bill_id]</td>
      <td>&nbsp;$rs[customer_address]</td>
      <td>&nbsp;$rs[purchase_date]</td>
      <td>&nbsp;$rssum[0]</td>
      <td>&nbsp; <a href='printbill.php?billid=$rs[0]'>View Bill</a></td>
    </tr> ";
							  }
							  ?>
  </tbody>
</table>
<?php
							}
?>		
            </div>
		  </div>
		  
        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
  
<?php
include("footer.php");
?>