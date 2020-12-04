<?php
include("header.php");
?>

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container text-center position-relative" data-aos="fade-in" data-aos-delay="200">
      <h1>AgriBazaar - Change the way you trade ...</h1>
      <h2>Bringing you the best farming experience</h2>
      <a href="customerreglogin.php" class="btn-get-started scrollto">Get Started</a>
    </div>
  </section><!-- End Hero -->

  <main id="main">



    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="row content">
          <div class="col-lg-6" data-aos-delay="100">
<img src="img/pja1.jpg" style="width: 100%;">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0" data-aos-delay="200">
            <p class="font-italic"><b>Mission :</b> To provide technology and services to farmers, merchants, and farm labourers to help them expand their business and provide them with a wider market. And to improve the present farming processes and to provide knowledge about recent agricultural issues.
            </p>
            <p class="font-italic"><b>Vision :</b> To provide a helping hand to the farmers and farm labourers in improving their lives through the medium of technology, thereby, improving the Agricultural Sector in the Indian Economy.
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> ‘Agri-Bazaar' is a model farmer management website application..</li>
              <li><i class="ri-check-double-line"></i> ‘Agri-Bazaar’ provides a concept of virtual agricultural trade to its users.</li>
              <li><i class="ri-check-double-line"></i> It helps the wholesalers and retailers in buying produce from larger number of farmers.</li>
            </ul>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Counts Section ======= -->
<!--     <section id="counts" class="counts">
      <div class="container">

        <div class="row counters">

          <div class="col-lg-2 col-4 text-center">
            <span><?php
$sql = "select * from seller";
$qsql = mysqli_query($con,$sql);
echo mysqli_num_rows($qsql);
			?></span>
            <p>Farmers</p>
          </div>

          <div class="col-lg-2 col-4 text-center">
            <span><?php
$sql = "select * from customer";
$qsql = mysqli_query($con,$sql);
echo mysqli_num_rows($qsql);
			?></span>
            <p>Customers</p>
          </div>
		  
          <div class="col-lg-2 col-4 text-center">
            <span><?php
$sql = "select * from article";
$qsql = mysqli_query($con,$sql);
echo mysqli_num_rows($qsql);
			?></span>
            <p>Blogs & Articles</p>
          </div>

          <div class="col-lg-2 col-4 text-center">
            <span><?php
$sql = "select * from product";
$qsql = mysqli_query($con,$sql);
echo mysqli_num_rows($qsql);
			?></span>
            <p>Farmer's Kit</p>
          </div>

          <div class="col-lg-2 col-4 text-center">
            <span><?php
$sql = "select * from selling_product";
$qsql = mysqli_query($con,$sql);
echo mysqli_num_rows($qsql);
			?></span>
            <p>Farmer's Market</p>
          </div>


        </div>

      </div>
    </section><!-- End Counts Section -->
 -->
    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container">

        <div class="row">

          <div class="col-lg-12 d-flex align-items-stretch">
            <div class="icon-boxes d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-xl-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                  <div class="icon-box mt-6 mt-xl-0">
                    <h4>Customer</h4>
                    <i class="bx bx-group"></i>
                    <p>Are you willing to purchase products from Farmer's?<br> <b>Login / Register as Customer</b></p>
					<div class="text-center"><button type="button" class="btn btn-info" onclick="window.location='customerreglogin.php'">Click Here</button></div>
                  </div>
                </div>
                <div class="col-xl-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="200">
                  <div class="icon-box mt-6 mt-xl-0">
                    <h4>Farmer</h4>
                    <i class="bx bx-donate-heart"></i>
                    <p>Online Market where you can Sell fruits & vegetables, agri produce, etc...<br>
					<b>Login / Register as Farmer</b></p>
					<div class="text-center"><button type="button" class="btn btn-info" onclick="window.location='farmerreglogin.php'">Click Here</button></div>
                  </div>
                </div>
              </div>
            </div><!-- End .content-->
          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->


  </main><!-- End #main -->
  
<?php
include("footer.php");
?>