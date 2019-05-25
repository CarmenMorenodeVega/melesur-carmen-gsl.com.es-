<?php 

    require_once "Database.php";

    class Peliculas{

        private $titulo;
        private $puntuacion;
        private $ids;
        private $fecha;
        private $argumento;
        private $poster;

        //SETTERS
        public function setTitulo($titulo){
            $this->titulo = $titulo;
        }
        public function setPuntuacion($puntuacion){
            $this->puntuacion = $puntuacion;
        }
        public function setIds($ids){
            $this->ids = $ids;
        }
        public function setFecha($fecha){
            $this->fecha = $fecha;
        }
        public function setArgumento($argumento){
            $this->argumento = $argumento;
        }
        public function setPoster($poster){
            $this->poster = $poster;
        }

        //GETTERS
        public function getTitulo(){
            return $this->titulo;
        }
        public function getPuntuacion(){
            return $this->puntuacion;
        }
        public function getIds(){
            return $this->ids;
        }
        public function getFecha(){
            return $this->fecha;
        }
        public function getArgumento(){
            return $this->argumento;
        }
        public function getPoster(){
            return $this->poster;
        }

      

        public static function mostrar(){
            $db = Database::getInstance();
            $db->consulta("SELECT * FROM peliculas");

            $datos = [];

            while($item = $db->fila("peliculas")){
                array_push($datos,$item);
            }

            return $datos;
        }

        public static function obtenerPeliculas($ids){
            $db = Database::getInstance();
            $db->consulta("SELECT * FROM peliculas WHERE ids=:ids",
                            [":ids"=>$ids]);

            return $db->fila("peliculas");
        }

        public function editar(){
            $db = Database::getInstance();
            $db->consulta("UPDATE peliculas SET fecha=:fecha,puntuacion=:puntuacion,argumento=:argumento WHERE ids=:ids",
                        [":fecha"=>$this->fecha,
                        ":puntuacion"=>$this->puntuacion,
                        ":argumento"=>$this->argumento,
                        ":ids"=>$this->ids]);
        }

       
    }


    