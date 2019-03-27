<?php
    abstract class Conexion{

        const USERNAME="root";
        const PASSWORD="MH184dS2NZShL7";
        const HOST="localhost";
        const DB="hueplaning";

        private function getConnection(){
            $username = self::USERNAME;
            $password = self::PASSWORD;
            $host = self::HOST;
            $db = self::DB;
            try{
                $connection = new PDO("mysql:dbname=$db;host=$host", $username, $password);
                $connection->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            }catch(PDOException $ex){
                echo "ERROR".$ex->getMessage()."<br>";
            }
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