<html>
    <head>
        <title>Signin form</title>
        
        <style>
            body{
                background-image: url("https://wallpaperaccess.com/full/368845.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: top;
            }
            .nav{
                margin-left: 40%;
                padding:30px;
            }
            input{
                outline: none;
                border: 3px solid red;
                width: 300px;
                height: 30px;
                border-radius:20px;
                padding-left:10px ;
                color:black;


            }

        </style>
    </head>
    <body>
        <!--<div class="nav">
            <form action="pharmacy_php.php" target="_blank" method="post">
                <fieldset style="width: 30px; padding:30px; text-align: center;"  >
                    <legend >medicine  Form</legend>
                   
                    <input type="text" placeholder="Enter your  medicine id" name="id">  <br> <br>
                    <input type="text" placeholder="Enter the medicine name" name="name"> <br><br>
                    <input type="text" placeholder="Enter  Manufacture Date" name="mfd"> <br><br>
                    <input type="text" placeholder="Enter your Expire Date" name="expd"> <br><br>
                    <input type="text" placeholder="Enter Shop Name" name="sname"><br><br>
                    
                    <input type="submit">
                </fieldset>
        

            </form>

            
        </div>
        -->
        <!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
</head>
<body>

<h2>Modal Example</h2>

<!-- Trigger/Open The Modal -->
<button id="myBtn">Open Modal</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p>Some text in the Modal..</p>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>

    </body>
</html>