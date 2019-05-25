<?php

    require_once "modelo/Actores.php";

    class controllerActores{

        public function delete(){

            if(isset($_GET["ids"])){
                
                Actores::borrar($_GET["idg"],$_GET["ids"]);
                header("Location: index.php");
            }
        }

        public function actores(){
            $ids = $_GET["ids"];

            if(!empty($ids)){
            
                $datos = Actores::obtenerActores($_GET["ids"]);
                require_once "vista/index.actores.php";
            }
        }
    }