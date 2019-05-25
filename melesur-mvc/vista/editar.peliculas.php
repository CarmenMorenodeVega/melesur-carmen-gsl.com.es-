<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css">
    <script src="main.js"></script>
</head>
<body>
    
    <h1>Mis películas</h1>
    <h3><?=$titulo?></h3>

    <a href="index.php">Mis Películas</a>

    <form action="index.php" method="get">

        <input type="hidden" name="mod" value="peliculas"/>
        <input type="hidden" name="ope" value="update"/>
        <input type="hidden" name="ids" value="<?=$ids?>"/>

        <label>Fecha de estreno</label>
        <input name="fecha" value="<?=$fecha?>"/>
        <br>
        
        <label>Puntuacion</label>
        <input name="puntuacion" value="<?=$puntuacion ?>"/>
        <br>
