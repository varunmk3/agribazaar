<?php
include("header.php");
if(isset($_POST[submit]))
{
	$to = "apel35-1669@diu.edu.bd";
		$subject = "Message from AgriBuzz";
		
		$message = "
		<html>
		<head>
		<title>AgriBuzz Contact Us form</title>
		</head>
		<body>
		<p>AgriBuzz Contact Us form</p>
		<table>
		<tr>
		<th>Name</th>
		<td>$_POST[name]</td>
		</tr>
		<tr>
		<th>Email ID</th>
		<td>$_POST[emailid]</td>
		</tr>
		<tr>
		<th>Contact Number</th>
		<td>$_POST[contctno]</td>
		</tr>
		<tr>
		<th>Website</th>
		<td>$_POST[web]</td>
		</tr>
		<tr>
		<th>Subject</th>
		<td>$_POST[subject]</td>
		</tr>
		<tr>
		<th>Message</th>
		<td>$_POST[textarea]</td>
		</tr>
		</table>
		</body>
		</html>
		";
		
		// Always set content-type when sending HTML email
		$headers = "MIME-Version: 1.0" . "\r\n";
		$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
		
		// More headers
		$headers .= 'From: <$_POST[emailid]>' . "\r\n";
		
echo "<script>alert('Thank You For Dropping A Mail!! We'll Get Back To You Soon..');</script>";
		sendemailmsg($to,$subject,$message);
}
?>

  <main id="main">


    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">
        <div class="row">

          <div class="col-lg-12" data-aos="fade-up" data-aos-delay="100">
            
            <div class="info mt-4">
              <i class="icofont-google-map"></i>
              <h4>Location:</h4>
              <p>Mira Road, Mumbai - 400705, Maharashtra, India</p>
            </div>
            <div class="row">
              <div class="col-lg-6 mt-4">
                <div class="info">
                  <i class="icofont-envelope"></i>
                  <h4>Email:</h4>
                  <p>kale@gmail.com</p>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="info w-100 mt-4">
                  <i class="icofont-phone"></i>
                  <h4>Call:</h4>
                  <p>+91 9348389320</p>
                </div>
              </div>
            </div>

            <form action="forms/contact.php" method="post" role="form" class="php-email-form mt-4">
              <div class="form-row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validate"></div>
                </div>
                <div class="col-md-6 form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                  <div class="validate"></div>
                </div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                <div class="validate"></div>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                <div class="validate"></div>
              </div>
              <div class="mb-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
          </div>
        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
  
<?php
include("footer.php");
?>