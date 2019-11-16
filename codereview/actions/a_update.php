<!DOCTYPE html>
<html>
<head>
  <link href="https://fonts.googleapis.com/css?family=Indie+Flower&display=swap" rel="stylesheet">
  <style type="text/css">
    p {
      text-align: center;
      margin-top: 40px;
      font-family: 'Indie Flower', cursive;
      font-size: 26px;
    }

  a {
     margin-left: 400px;
     background: white;
    }

a button {
  padding-left: 50px;
  padding-right: 50px;
  padding-top: 10px;
  padding-bottom: 10px;
  font-family: 'Indie Flower', cursive;
  font-size: 22px;
  border-radius: 10px;
}

a button:hover {
  color: white;
  background: black;
}

  </style>
</head>
<body>









<?php 

require_once '../dbconnect.php';

if ($_POST) {
   $title = $_POST['title'];
   $author_name = $_POST['author_name'];
   $publish_date = $_POST[ 'publish_date'];
   $image = $_POST[ 'image'];
   $isbn_code = $_POST[ 'isbn_code'];
   $description = $_POST[ 'description'];
   $publisher_name = $_POST[ 'publisher_name'];
   $category = $_POST[ 'category'];
   $status = $_POST[ 'status'];

   $id = $_POST['id'];

   $sql = "UPDATE AdminTable SET title = '$title', author_name = '$author_name', publish_date = '$publish_date', publish_date = '$publish_date', image= '$image', isbn_code = '$isbn_code', description = '$description', publisher_name ='$publisher_name', category = '$category', status = '$status' WHERE id = {$id}" ;
   if($conn->query($sql) === TRUE) {
       echo  "<p>Successfully Updated</p>";
       echo "<a href='../update.php?id=" .$id."'><button type='button'>Back</button></a>";
       echo  "<a href='../adminpanel.php'><button type='button'>Home</button></a>";
   } else {
        echo "Error while updating record : ". $conn->error;
   }

   $conn->close();

}

?>


</body>
</html>