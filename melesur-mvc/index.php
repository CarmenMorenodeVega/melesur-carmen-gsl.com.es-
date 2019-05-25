<?php

    //Mostar errores
    ini_set("display_errors",1);
    error_reporting(E_ALL);

    $mod=$_GET["mod"]??"peliculas";
    $ope=$_GET["ope"]??"index";

    require_once "controlador/controller.$mod.php";

    $nc = "controller$mod";

    $controlador = new $nc();

    if(method_exists($controlador,$ope)){

        $controlador->$ope();
    }else{

        die("Error controlador");
    }