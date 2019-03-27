<?php
    abstract class Conexion{

        const USERNAME="root";
        const PASSWORD="";
        const HOST="localhost";
        const DB="hueplaning";

        private function getConnection(){
            $username = self::USERNAME;
            $password = self::PASSWORD;
            $host = self::HOST;
            $db = self::DB;
            $connection = new PDO("mysql:dbname=$db;host=$host", $username, $password);
            return $connection;
        }
        
        protected function query($sql){
            $connection = $this->getConnection();
            $stmt = $connection->prepare($sql);
            $stmt->execute();
            return $stmt;
        }
    }
?>