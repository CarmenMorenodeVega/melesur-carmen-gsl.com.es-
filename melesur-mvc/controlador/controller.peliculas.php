<?php

    require_once "modelo/Peliculas.php";

    class controllerPeliculas{

        public function index(){
            $datos = Peliculas::mostrar();
            require_once "vista/index.peliculas.php";
        }

        public function peliculas(){

            $ids = $_GET["ids"];

            if(!empty($ids)){

                $peliculas = Peliculas::obtenerPeliculas($_GET["ids"]);

                $titulo = $peliculas->getTitulo();
                $fecha = $peliculas->getFecha();
                $puntuacion = $peliculas->getPuntuacion();
                $argumento = $peliculas->getArgumento();
                $poster = $peliculas->getPoster();


                require_once "vista/mostrar.peliculas.php";
            }
        }

        public function update(){

            $ids = $_GET["ids"];

            if(!empty($ids)){
            
                $peliculas = Peliculas::obtenerPeliculas($_GET["ids"]);

                if(isset($_GET["fecha"])){

                    $peliculas->setFecha($_GET["fecha"]);
                    $peliculas->setPuntuacion($_GET["puntuacion"]);
                    $peliculas->setArgumento($_GET["argumento"]);

                    $peliculas->editar();

                    header("Location: index.php");
                }else{
                    
                    $titulo = $peliculas->getTitulo();
                    $fecha = $peliculas->getFecha();
                    
                    $puntuacion = $peliculas->getPuntuacion();
                    $argumento = $peliculas->getArgumento();
                    require_once "vista/editar.peliculas.php";
                }
            
            }
        }
    }
    