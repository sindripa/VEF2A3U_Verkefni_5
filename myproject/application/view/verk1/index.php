<?php require_once("connection.php"); include("query.php"); ?>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
        <title>Verkefni 4</title>
        <style>
        table, th , td {
            border: 1px solid grey;
            border-collapse: collapse;
            padding: 5px;
        }
        table tr:nth-child(odd) {
            background-color: #f1f1f1;
        }
        table tr:nth-child(even) {
            background-color: #ffffff;
        }
    </style>
    </head>
    <body>

        <table border="1">  
        <tr>
            <th>Image Name</th>
            <th>Image</th>
            </tr>
            <?php 
                foreach ($highscores as $entry) {
                    echo '<tr><td>'.$entry[0].'</td><td><img src="'.$entry[1].'" width="420px" height="420px"></td></tr>';
                }
             ?>
        </table>

        <div style="border: 3px solid black; padding: 2px; margin: 2px; width: 500px;">
        <form action="insert.php" method="post">

        <label>Image Name: </label>
        <input type="text" name="imageName" required ><br>
        
        <label>Image URL: </label>
        <input type="text" name="imagePath" required ><br>

        <input type="submit">

        </form>
        </div>

    </body>
</html>