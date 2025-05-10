<?php
session_start();

//connect to database
$db=mysqli_connect("localhost","root","","mysite");


?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Rabbani sarkar</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'>
  <style>
    body{
   background: url('https://images7.alphacoders.com/513/thumb-1920-513904.jpg');
   background-repeat: no-repeat;
   background-size: cover;
      
    }
    .bar{
      width: 100%;
      height: 5px;
      border: 2px solid red;
      margin-top:30px;
    }
    .welcome{
      color:yellow;
      font-size: 30px;
      font-family: 'Sofia'
    }
    #name{
      color:red;
      font-family: cursive;
      

    }
    #logout{
      margin-left: 40%;
      

    }
    a{
      text-decoration: none;
      color:green;
    }
    th{
      font-size: 20px;
      font-family:'Times New Roman', Times, serif;
    }
    #answer{
      font-size: 20px;
      color:blue;
    }
    </style>
  

 
</head>
<body>

<div class="container">

<div class="bar">

</div>
<br>





<main class="main-content">
 <div class="col-md-6 col-md-offset-4">
<?php
    if(isset($_SESSION['message']))
    {
         echo "<div id='error_msg'>".$_SESSION['message']."</div>";
         unset($_SESSION['message']);
    }
?>

<div>
    <h4><span class="welcome">Welcome</span> &nbsp;&nbsp; <span id="name"><?php echo $_SESSION['username']; ?></span> <span id="logout"> <button><a href="logout.php">Log Out</a></button></span></h4> 
</div>

</div>
</main>
</div>
<div>
<div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card mt-4">
                
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-7">

                                <form action="" method="GET">
                                    <div class="input-group mb-3">
                                        <input type="text" placeholder="Enter your medicion name" name="search" required value="<?php if(isset($_GET['search'])){echo $_GET['search']; } ?>" class="form-control" placeholder="Search data">
                                        <button type="submit" class="btn btn-primary">Search</button>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="card mt-4">
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Medicine ID</th>
                                    <th>Medicine  Name</th>
                                    <th>Medicine Prescription</th>
                                    <th>Medicine Avaliable shop</th> 
                                </tr>
                            </thead>
                            <tbody id="answer">
                                <?php 
                                    $con = mysqli_connect("localhost","root","","mysite");

                                    if(isset($_GET['search']))
                                    {
                                        $filtervalues = $_GET['search'];
                                        $query = "SELECT * FROM search WHERE CONCAT(name,manu_date,ex_date,shop_name) LIKE '%$filtervalues%' ";
                                        $query_run = mysqli_query($con, $query);

                                        if(mysqli_num_rows($query_run) > 0)
                                        {
                                            foreach($query_run as $items)
                                            {
                                                ?>
                                                <tr>
                                                    <td><?= $items['id']; ?></td>
                                                    <td><?= $items['name']; ?></td>
                                                    <td><?= $items['Prescription']; ?></td>
                                                    <td><?= $items['shop_name']; ?></td>
                                                </tr>
                                                <?php
                                            }
                                        }
                                        else
                                        {
                                            ?>
                                                <tr>
                                                    <td colspan="4">Sorry,No medicion available,wait some time</td>
                                                </tr>
                                            <?php
                                        }
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

  </div>

    
</body>
</html>
