<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>

<body>
   <div class="container">
    <?php require_once'process.php'?> 
    <?php
    if (isset($_SESSION['message'])): ?>
    <div class="alert alert-<?=$_SESSION['msg_type']?>">
        <?php
    echo $_SESSION['message'];
    unset( $_SESSION['message']);
    ?>
    
    </div>
    <?php endif ?>
    <?php 
        $mysqli = new mysqli('localhost','root','','form_builder') or die(mysql_errno($mysqli));
    $result =$mysqli->query("select * from positions") or die($mysqli->error);
    ?>
    <div class="row justfy-content-center">
        <table class="table">
            <thead>
                <tr>
                <th>Name</th>
                <th>Emails</th>
                <th colspan="2">Actions</th>
                </tr>
            </thead>
        <?php
          while ($row = $result->fetch_assoc()): ?>
            <tr>
                <td><?php echo $row['name'];?></td>
                <td><?php echo $row['email'];?></td>
                <td>
                    <a href="emails.php?edit=<?php echo $row['id'];?>"class="btn btn-info">Edit</a>
                    <a href="process.php?delete=<?php echo $row['id'];?>"class="btn btn-danger">Delete</a>
                </td>
            </tr> 
            <?php endwhile; ?>       
        </table>
    
    </div>
    <div class="row justify-content-center">
    <form action="process.php" method="post">
        <input type="hidden" name ="id" value="<?php echo $id;?>">
        <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" class="form-control" placeholder="Enter the users name" value="<?php echo $firstname; ?>">
        </div>
        <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" class="form-control" value="<?php echo $email; ?>" placeholder="Enter the email">
        </div>
        <div class="form-group">
                        <?php
            if($update==true):
            ?>
                        <button type="submit" class="btn btn-info" name="update">Update</button>
                        <?php else: ?>
                        <button type="submit" class="btn btn-primary" name="save">Save</button><?php endif; ?>
                    </div>
    </form>
        </div>  
       </div>
</body>
</html>
