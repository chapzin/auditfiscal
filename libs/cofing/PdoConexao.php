<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 10:11
 */
class PdoConexao
{
    private static $instancia;

    // Impedir instaciação
    private function __construct(){}

    // Impedir clonar
    private function __clone(){}

    // Impedir utilizacao do Unserialize
    private function __wakeup(){}


    public static function getInstancia()
    {
        if(!isset(self::$instancia)){
            try{
                $dsn = "mysql:host=localhost;dbname=efd";
                $usuario = "root";
                $senha = "";
                self::$instancia = new PDO($dsn,$usuario,$senha);
                self::$instancia->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            } catch (PDOException $e){
                echo $e->getMessage();
                exit();
            }
        }
        return self::$instancia;
    }
}