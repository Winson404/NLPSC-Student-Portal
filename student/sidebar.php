<?php
  session_start();
  include '../config.php';
  if(isset($_SESSION['student']) && isset($_SESSION['student_id'])) {
    $id = $_SESSION['student_id'];

    $student = mysqli_query($conn, "SELECT * FROM student WHERE Id='$id'");
    while($row = mysqli_fetch_array($student)) {
?>



<!doctype html>
<html lang="en">
  <head>
  	<title>NLPSC</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		<!-- CSS FOR DATATABLES -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- BOOTSTRAP ICONS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
		<link rel="stylesheet" href="../css/style.css">

    <style>
        #img {
          height: 80px;
          width: 80px;
          border-radius: 50%;
          margin-right: auto;
          margin-left: auto;
          display: block;
          border:  2px solid white;
        }
    </style>

  </head>
  <body>
		
		<div class="wrapper d-flex align-items-stretch">
      <nav id="sidebar">
        <div class="custom-menu">
          <button type="button" id="sidebarCollapse" class="btn btn-primary">
            <i class="fa fa-bars"></i>
            <span class="sr-only">Toggle Menu</span>
          </button>
        </div>
        <h1><a href="dashboard.php" class="logo"><i class="bi bi-house-fill"></i> NLPSC</a></h1>
         <div class="p-1 mb-1">
              <ul class="list-unstyled components">
                <li>
                  <a href="dashboard.php">
                    <img id="img" class="img-responsive" src="../images-students/<?php echo $row['images'];?>" alt="image">
                    <i class="bi bi-people-fill"></i> Welcome, <?php echo $row['firstname']; ?> !
                  </a>
                </li>
              </ul>
        </div>
        <ul class="list-unstyled components mb-5">
          <li>
              <a href="my_grades.php"><i class="bi bi-puzzle"></i> My Remarks</a>
          </li>
          <li>
              <a href="schoolcalendar.php"><i class="bi bi-house-fill"></i> School Calendar</a>
          </li>
          <li>
              <a href="announcement.php"><i class="bi bi-speedometer2"></i> Dept. announcement</a>
          </li>
          <li>
              <a href="semester.php"><i class="bi bi-puzzle"></i> Semester</a>
          </li>
          <li>
              <a href="subject_schedule.php"><i class="bi bi-puzzle"></i> My schedule</a>
          </li>
          <li>  
            <a href="about_me.php"><i class="bi bi-info-circle-fill"></i> About me</a>
          </li>
          <li>
            <a href="../logout.php"><i class="bi bi-door-closed-fill"></i> Logout</a>
          </li>
        </ul>

      </nav>
<?php } ?>
       

		

    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/main.js"></script>
  </body>
</html>


<?php
// ------------------------------CLOSING THE SESSION OF THE LOGGED IN USER WITH else statement----------//
    } else {
     header('Location: ./index.php');
    }
?>