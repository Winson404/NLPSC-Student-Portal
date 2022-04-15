<?php 
	include 'topbar.php';
?>

<style>
	#content{
		  border-radius: 10px; 
		  min-height: 450px; 
		  margin-top: 30px; 
		  margin-right: auto; 
		  margin-left: auto; 
		  display: block; 
		  border: 1px solid lightgrey; 
		  margin-bottom: 20px; 
		  padding: 35px;
	}
	h5 {
		 color: white;
	}

	.success {
		background-color: #198754; 
	}
	.invalid {
		background-color: #d64242; 
	}
	.exists {
		background-color: #fa9f47; 
	}
</style>

	<section id="inner-headline">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2 class="pageTitle">Register</h2>
				</div>
			</div>
		</div>
	</section>

	
	<div class="container" id="content">
		<?php if(isset($_SESSION['success'])) { ?> 
            <h5 class="alert bg-success success"role="alert"><strong>Success!</strong> <?php echo $_SESSION['success']; ?></h5> 
        <?php unset($_SESSION['success']); } ?>
        <?php if(isset($_SESSION['invalid']) && isset($_SESSION['error'])) { ?>
            <h5 class="alert bg-danger invalid"  role="alert"><strong>Sorry,</strong> <?php echo $_SESSION['invalid']; ?>  <?php echo $_SESSION['error']; ?></h5>
        <?php unset($_SESSION['invalid']);  unset($_SESSION['error']);  } ?>
        <?php  if(isset($_SESSION['exists'])) { ?>
            <h5 class="alert bg-danger exists"  role="alert"><strong>Sorry,</strong> <?php echo $_SESSION['exists']; ?></h5>
        <?php unset($_SESSION['exists']); } ?>
		<form action="register_process.php" method="POST" enctype="multipart/form-data">
		<div class="row">
			<div class="col-md-4" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Student ID No:</b></label>
						<input type="text" class="form-control" name="id_no">
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>First name</b></label>
						<input type="text" class="form-control" name="firstname" required>
					</div>
				</div>
			</div>
			<div class="col-md-4" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Middle name</b></label>
						<input type="text" class="form-control" name="middlename" required>
					</div>
				</div>
			</div>
			<div class="col-md-4" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Last name</b></label>
						<input type="text" class="form-control" name="lastname" required>
					</div>
				</div>
			</div>
		
			<div class="col-md-4" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Date of Birth</b></label>
						<input type="date" class="form-control" name="dob" required>
					</div>
				</div>
			</div>
			<div class="col-md-2" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Age</b></label>
						<input type="number" class="form-control" name="age" required>
					</div>
				</div>
			</div>
			<div class="col-md-6" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Address</b></label>
						<input type="text" class="form-control" name="address" required>
					</div>
				</div>
			</div>
			<div class="col-md-3" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Email</b></label>
						<input type="email" class="form-control" name="email" required>
					</div>
				</div>
			</div>
			<div class="col-md-2" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Contact</b></label>
						<input type="text" class="form-control" name="contact" required>
					</div>
				</div>
			</div>
			<div class="col-md-4" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<?php 
							include 'config.php';
							$dept = mysqli_query($conn, "SELECT * FROM department");
						 ?>
							<label for=""><b>Department</b></label>
							<select class="form-select form-control" aria-label="Default select example" name="department" required>
							  <option selected>Select department</option>
							  <?php 
							  	 	while($row = mysqli_fetch_array($dept)) { 
							  ?>
							  <option value="<?php echo $row['Id']; ?>"> <?php echo $row['dept_name']; ?> </option>
							  <?php 
									} 
							  ?>
							</select>
					</div>
				</div>
			</div>

			<div class="col-md-3" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Year level</b></label>
							<select class="form-select form-control" aria-label="Default select example" name="level" required>
							  <option selected>Select year level</option>
							  <option value="1st year">1st year</option>
							  <option value="2nd year">2nd year</option>
							  <option value="3rd year">3rd year</option>
							  <option value="4th year">4th year</option>
							</select>
					</div>
				</div>
			</div>
			<div class="col-md-4" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Username</b></label>
						<input type="text" class="form-control" name="username" required>
					</div>
				</div>
			</div>
			<div class="col-md-4" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Password</b></label>
						<input type="password" class="form-control" name="password" required>
					</div>
				</div>
			</div>
			<div class="col-md-4" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Confirm password</b></label>
						<input type="password" class="form-control" name="cpassword" required>
					</div>
				</div>
			</div>
			<div class="col-md-4" >
				<div class="contact-form">
					<div class="form-group has-feedback">
						<label for=""><b>Images</b></label>
						<input type="file" class="form-control" name="fileToUpload" required>	
					</div>
				</div>
			</div>
			<div class="col-md-12">
				<button type="submit" class="btn btn-primary" name="register">Register</button>
			</div>

		</div>
		<span>Already have an account? <a href="login.php"><b>Click here!</b></a></span>
	</form>
	</div>
 
<script>
//-----------------------------ALERT TIMEOUT-------------------------//
  $(document).ready(function() {
      setTimeout(function() {
          $('.alert').hide();
      } ,6000);
  }
  );
//-----------------------------END ALERT TIMEOUT---------------------//
</script>


	<?php
		include 'footer.php';
	?>
