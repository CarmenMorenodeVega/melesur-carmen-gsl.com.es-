<?php

    require_once "Database.php";

    class Actores{

        private $idg;
        private $actores;

        private $ids;

        public function setIds($ids){
            $this->ids = $ids;
        }

        public function getIds(){
            return $this->ids;
        }

        public function setIdg($idg){
            $this->idg = $idg;
        }
        public function setActores($actores){
            $this->actores = $actores;
        }

        public function getIdg(){
            return $this->idg;
        }
        public function getActores(){
            return $this->actores;
        }

       

        public function borrar($idg,$ids){

            $db = Database::getInstance();
            $db->consulta("DELETE FROM actores AS gen INNER JOIN peli_has_actor as per ON per.idg = gen.idg WHERE ids=:ids AND idg=:idg",
            [":ids"=>$ids,
            ":idg"=>$idg]);
            
        }

        public static function obtenerActores($ids){

            $db = Database::getInstance();
            $db->consulta("SELECT * FROM actores AS gen INNER JOIN peli_has_actor as per ON per.idg = gen.idg WHERE ids=:ids",
                            [":ids"=>$ids]);
            
            $datos = [];

            while($item = $db->fila("actores")){
                array_push($datos,$item);
            }

            return $datos;

        }
    }