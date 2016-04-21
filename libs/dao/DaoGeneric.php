<?php

/**
 * Created by PhpStorm.
 * User: casa
 * Date: 17/04/2016
 * Time: 15:38
 */
require_once __DIR__.'/../cofing/PdoConexao.php';
class DaoGeneric
{

    protected $instanciaConexaoPdoAtiva;

    public function __construct()
    {
        $this->instanciaConexaoPdoAtiva = PdoConexao::getInstancia();
    }

    public function deleteAll($tabela)
    {
        $sql = "TRUNCATE {$tabela}";
        try {
            if ($this->instanciaConexaoPdoAtiva->query($sql)) {
                return true;
            } else {
                return false;
            }
        } catch (PDOException $e) {
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";
        }

    }

    public function selectAll($tabela, $argumento = '')
    {
        $sql = "Select * from {$tabela} {$argumento}";
       // echo "$sql teste <br/>";
        try {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            return $stm->fetchAll(PDO::FETCH_OBJ);

        } catch (PDOException $e) {
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";
        }


    }

    public function deleteArgumento($tabela, $argumento = '')
    {
        $sql = "delete from {$tabela} {$argumento}";
        // echo "$sql teste <br/>";
        try {
            if ($this->instanciaConexaoPdoAtiva->query($sql)) {
                return true;
            } else {
                return false;
            }
        } catch (PDOException $e) {
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";
        }


    }

}