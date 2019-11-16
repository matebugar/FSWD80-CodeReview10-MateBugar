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

        table td a {
          text-decoration: none;
        }
   </style>
</head>
<body >

   <?php include_once "navbar.php" ?>

   



<fieldset>
   <legend>Insert media</legend>

   <form  action="actions/a_create.php" method= "post">
       <table cellspacing= "0" cellpadding="0">
           <tr>
               <th>Title</th >
               <td><input  type="text" name="title"  placeholder="Title" /></td >
           </tr>    
           <tr>
               <th>Author Name</th>
               <td><input  type="text" name= "author_name" placeholder="Author Name" /></td>
           </tr>
            <tr>
               <th>Publish date</th>
               <td><input  type="date" name= "publish_date" placeholder="Publish date" /></td>
           </tr>
            <tr>
               <th>ISBN code</th>
               <td><input  type="text" name= "isbn_code" placeholder="ISBN code" /></td>
           </tr>
           <tr>
               <th>Description</ th>
               <td><input type="text"  name="description" placeholder ="Description" /></td>
           </tr>
           <tr>
               <th>Publisher name</ th>
               <td><input type="text"  name="publisher_name" placeholder ="Publisher Name" /></td>
           </tr>
           <tr>
               <th>Category</ th>
               <td><input type="text"  name="category" placeholder ="Category" /></td>
           </tr>
            <tr>
               <th>Status</ th>
               <td><input type="text"  name="status" placeholder ="Status" /></td>
           </tr>


           <tr>
               <th>Image</ th>
               <td><input type="text"  name="image" placeholder ="Image" /></td>
           </tr>
           <tr>
               <td><button type ="submit">Insert media</button></td>
               <td><a href= "home.php"><button  type="button">Back</button></a></td>
           </tr >
       </table>
   </form>

</fieldset >

</body>
</html>