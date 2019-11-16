<?php 

require_once 'dbconnect.php';

if ($_GET['id']) {
   $id = $_GET['id'];

   $sql = "SELECT * FROM AdminTable WHERE id = {$id}" ;
   $result = $conn->query($sql);

   $data = $result->fetch_assoc();

   $conn->close();

?>

<!DOCTYPE html>
<html>
<head>
<title>Welcome - <?php echo $userRow['userName' ]; ?></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Indie+Flower&display=swap" rel="stylesheet">

<style type= "text/css">
       fieldset {
           margin: auto;
            margin-top: 100px;
           width: 40% ;
           font-family: 'Indie Flower', cursive;
           font-size: 18px;
       }

       table tr th  {
           padding-top: 20px;
       }

       table tr td {
        width: 340px;
       }

       button {
          margin-top: 20px;
          border-radius: 5px;
       }

       button:hover {
          color: white;
          background-color: black;
       }

       table input  {
          border-radius: 4px;
          box-shadow: 3px 2px darkgrey;
          width: 300px;
       }

   </style>
</head>
<body >

   <?php include_once "navbar.php" ?>

<fieldset>
   <legend>Update media</legend>

   <form action="actions/a_update.php"  method="post">
       <table  cellspacing="0" cellpadding= "0">
           <tr>
               <th>Title</th>
               <td><input type="text"  name="title" placeholder ="Title" value="<?php echo $data['title'] ?>"  /></td>
           </tr>    
           <tr>
               <th>Author Name</th>
               <td><input type= "text" name="author_name"  placeholder="Author Name" value ="<?php echo $data['author_name'] ?>" /></td >
           </tr>
           <tr>
               <th>Publish date</th>
               <td><input type ="text" name= "publish_date" placeholder= "Publish Date" value= "<?php echo $data['publish_date'] ?>" /></td>
           </tr>
           <tr>
               <th>Image</th>
               <td><input type="text"  name="image" placeholder ="Image" value="<?php echo $data['image'] ?>"  /></td>
           </tr>  
           <tr>
               <th>ISBN code</th>
               <td><input type="text"  name="isbn_code" placeholder ="ISBN" value="<?php echo $data['isbn_code'] ?>"  /></td>
           </tr>  
            <tr>
               <th>Description</th>
               <td><input type="text"  name="description" placeholder ="description" value="<?php echo $data['description'] ?>"  /></td>
           </tr>  
           <tr>
               <th>Publisher Name</th>
               <td><input type="text"  name="publisher_name" placeholder ="Publisher name" value="<?php echo $data['publisher_name'] ?>"  /></td>
           </tr> 
           <tr>
               <th>Category</th>
               <td><input type="text"  name="category" placeholder ="Category" value="<?php echo $data['category'] ?>"  /></td>
           </tr>
           <tr>
               <th>Status</th>
               <td><input type="text"  name="status" placeholder ="status" value="<?php echo $data['status'] ?>"  /></td>
           </tr>      
           <tr>
               <input type= "hidden" name= "id" value= "<?php echo $data['id']?>" />
               <td><button  type= "submit">Save Changes</button ></td>
               <td><a  href= "index.php"><button  type="button" >Back</button ></a ></td >
           </tr>
       </table>
   </form >

</fieldset >

</body >
</html >

<?php
}
?>