<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Info Serie</title>
</head>
<style type="text/css">
    img{
       
        height: 50px;
    }
    .izq{
        display: flex;
        float: left;
        
        margin-right: 20px;
        
    }
    .contenido{
        
        height: 50px;
    }
    span, p{
        
    }
</style>
<body>
    <h1>Mis películas</h1>
    <a href="index.php">Mis películas</a>

    <?php foreach($datos as $item){ ?>
        
    <ul>
        <li>
            <?=$item->getTitulo()?>
            <?=$item->getPuntuacion()?>
           
            <a href="index.php?mod=peliculas&ope=peliculas&ids=<?=$item->getIds() ?>">+info</a>
        </li>

        
     </ul>   
    <?php } ?>
</body>
</html>