<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 13:28
 */
require_once 'iDaoModeCrud.php';
require_once '../cofing/PdoConexao.php';
class DaoReg0220 implements iDaoModeCrud
{
    private $instanciaConexaoPdoAtiva;
    private $tabela;

    /**
     * DaoReg0220 constructor.
     * @param $instanciaConexaoPdoAtiva
     * @param $tabela
     */
    public function __construct()
    {
        $this->instanciaConexaoPdoAtiva = PdoConexao::getInstancia();
        $this->tabela = "reg_0220";
    }


    public function create($objeto)
    {
        // TODO: Implement create() method.
    }

    public function createDtIni($objeto, $dtIni)
    {
        $sqlInsert0220 = "INSERT INTO reg_0220 (REG, UNID_CONV, FAT_CONV,dtIni) VALUES ('{$objeto->getReg()}','{$objeto->getUnidConv()}','{$objeto->getFatConv()}','{$dtIni}')";
        try{
            if($operacao = $this->instanciaConexaoPdoAtiva->query($sqlInsert0220)){
                if($operacao->rowCount() > 0){
                    return true;
                } else {
                    return false;
                }
            }else {
                return false;
            }
        }catch (PDOException $e){
            echo $e->getMessage();
            echo $sqlInsert0220."<br/>";
        }

    }

    public function ler($param)
    {
        // TODO: Implement ler() method.
    }

    public function update($objeto)
    {
        // TODO: Implement update() method.
    }

    public function delete($param)
    {
        // TODO: Implement delete() method.
    }

    public function deleteAll($tabela){
        $sql = "TRUNCATE {$tabela}";
        try{
            if($this->instanciaConexaoPdoAtiva->query($sql)){
                return true;
            } else {
                return false;
            }
        }catch (PDOException $e){
            echo $e->getMessage();
        }
    }
}