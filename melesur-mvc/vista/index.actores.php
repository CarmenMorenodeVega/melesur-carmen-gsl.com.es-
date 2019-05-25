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
    <h1>Actores</h1>
    <a href="index.php">Mis películas</a>
    <a href="index.php">Volver</a>
    <br>
    
 
    
    <?php foreach($datos as $item){ ?>
        
    <ul>
        <li>
            <?=$item->getActores();?>
            <a href="index.php?mod=actores&ope=delete&idg=<?=$item->getIdg();?>&ids=<?=$item->getIds();?>">Borrar</a>
        </li>

        
     </ul>   
    <?php } ?>

    
</body>
</html>