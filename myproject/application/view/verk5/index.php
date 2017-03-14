<?php require_once("connection.php"); include("query.php"); ?>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
        <title>Verkefni 5</title>
        <style>body{margin:0 auto;width:800px;}ul{list-style-type:none;}</style>
    </head>
    <body>
        <p>Number of images: <?php echo($numRows); ?></p>

        <ul>
            <?php 
                foreach ($Images as $entry) {
                    echo('<li><a href="verk5/nanar/'.$entry[0].'"><img src="/img/'.$entry[1].'" width="100px" height="100px"></a></li>');
                }
             ?>
        </ul>

    </body>
</html>