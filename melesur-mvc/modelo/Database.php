<?php

    class Database {
        private $db_host = "localhost" ;
        private $db_user = "root" ;
        private $db_pass = "" ;
        private $db_port = "3307" ;
        private $db_name = "reposito_carmen" ;

        //
        private $pdo = null;
        private $prp = null;

        private static $instancia = null;

        public static function getInstance(){
            if (is_null(self::$instancia)) {
            self::$instancia = new Database() ;
            }
            return self::$instancia ;
        }

        /**
         * Constructor de la clase DATABASE
         * Establece la conexión con el motor de bases de datos; si no es posible
         * detiene la ejecución del script.
         */
        public function __construct()
        {
            try
            {
                // Activamos las excepciones en PDO
                $opciones = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION] ;

                // Realizamos la conexión con el motor de bases de datos
                $this->pdo = new PDO("mysql:host={$this->db_host};port={$this->db_port};
										  dbname={$this->db_name};
										  charset=utf8;", $this->db_user, $this->db_pass, $opciones) ;

                // Activamos el modo de emulación de sentencias, que permitirá
                // comprobar a priori si una instrucción SQL es válida o no.
                $this->pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, 0) ;

            }
            catch(PDOException $excp)
            {
                die("[".$excp->getCode()."]: Se produjo un error en la conexión con la base de datos.<br/>".$excp->getTrace()) ;
            }
        }

        /**
         * Prepara y lanza una consulta contra la base de datos, obteniendo
         * un resultado y devolviendo verdadero/falso en función de si se
         * ha realizado la consulta con éxito.
         *
         * @param string $sql
         * @param array $params
         * @return bool
         */
        public function consulta(string $sql, array $params = []):bool
        {
            $flag = false ;

            try {
                // preparamos la consulta
                $this->prp = $this->pdo->prepare($sql);

                // ejecutamos la sentencia
                $flag = $this->prp->execute($params);

            } catch (PDOException $excp) {
                echo "[".$excp->getCode()."]: Se produjo un error en la consulta con la base de datos.<br/>" ;
                echo "<pre>".print_r($excp->getTrace(),true)."</pre>" ;
            }

            //
            return ($flag) && ($this->prp->rowCount() > 0) ;
        }

        /**
         * Obtiene un registro de la base de datos y devuelve un objeto del
         * tipo indicado.
         *
         * @param string $className
         * @return mixed
         */
        public function fila(string $className="stdClass"): ?object
        {
            //
            return ($row = $this->prp->fetchObject($className))?$row:null ;
        }

       /**
        * Devuelve el ID del último registro insertado en la base de datos.
        *
        * @return int
        */
        public function ultimoID():int
        {
            //
            return $this->pdo->lastInsertId() ;
        }
    }