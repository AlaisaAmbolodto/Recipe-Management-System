<?php
include "config.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Read Page</title>

<style>
    h1{
    text-align: center;
}

table{
    position: absolute;
    z-index: 2;
    left: 50%;
    top: 45%;
    transform: translate(-50%, -50%);
    width: 85%;
    height: 100px;
    border-radius: 12px 12px 0 0;
    overflow: hidden;
    box-shadow: 0 2px 12px rgb(185, 221, 85);
    text-align: center;
}

th, td{
    padding: 10px 15px;
    font-family: sans-serif;
}

tbody{
    border-collapse: collapse;
}

thead{
    background-color: black;
    color: #fff;
}

.addclient{
    background-color: rgb(189, 172, 20);
    border-radius: 10%;
    position: absolute;
    float: left;
    left: 10%;
    font-size: 15px;
}

.edit{
    background-color: rgb(189, 172, 20);
    border-radius: 20%;
    color: white;
}

.delete{
    background-color: rgb(223, 68, 68);
    border-radius: 15%;
    color: white;
}

a input{
    transition: .1s;
}

a input:hover{
        -ms-transform: scale(1.5); /* IE 9 */
        -webkit-transform: scale(1.5); /* Safari 3-8 */
        transform: scale(1.1); 
}

.content .btn{
    font-family: sans-serif;
    display: inline-block;
    padding: 10px 30px;
    font-size: 15px;
    background: #333;
    color: #fff;
    margin: 0 5px;
    text-transform: capitalize;
    border-radius: 3px;
    float: right;
    position: absolute;
    right: 10%;
}

.content .btn:hover{
    background: crimson;
}

</style>

</head>
<body>
    <h1>Members List</h1>
    <div>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>User Type</th> 
            </tr>
        </thead>
        <tbody>
            <?php 
            $readsql = "SELECT * FROM user_form";
            $readquery = mysqli_query($conn, $readsql);
            $row = mysqli_fetch_assoc($readquery);
            do{
            ?>
            <tr>
                <td><?php echo $row['id'];?></td>
                <td><?php echo $row['name'];?></td>
                <td><?php echo $row['email'];?></td>
                <td><?php echo $row['password'];?></td>
                <td><?php echo $row['user_type'];?></td>
            </tr>
        </tbody>
        <?php }while($row = mysqli_fetch_assoc($readquery));?>
    </table>
    </div>

    <div class="content">
        <a href="admin_page.php" class="btn">Back</a>
    </div>

</body>
</html>