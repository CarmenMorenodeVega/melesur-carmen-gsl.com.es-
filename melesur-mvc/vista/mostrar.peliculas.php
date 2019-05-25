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
    <a href="index.php">Mis películas</a><br>

    
        <img src="<?=$poster?>" style="height:500px">
       
        <h1><?=$titulo?></h1>
      
        <p>Fecha de estreno:     <?=$fecha?></p>
        <p>Puntuacion:           <?=$puntuacion?></p>
        <p><?=$argumento?></p>
       
        
        <a href="index.php">Volver Atras</a>
        <a href="index.php?mod=actores&ope=actores&ids=<?=$ids?>"> Gestionar Actores</a>
        <a href="index.php?mod=peliculas&ope=update&ids=<?=$ids?>"> Editar Peliculas</a>

    
</body>
</html>