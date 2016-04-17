<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 13:16
 */
require_once 'iDaoModeCrud.php';
require_once '../cofing/PdoConexao.php';
class DaoReg0205 implements iDaoModeCrud
{

    private $instanciaConexaoPdoAtiva;
    private $tabela;

    /**
     * DaoReg0205 constructor.
     * @param $instanciaConexaoPdoAtiva
     * @param $tabela
     */
    public function __construct()
    {
        $this->instanciaConexaoPdoAtiva = PdoConexao::getInstancia();
        $this->tabela = "reg_0205";
    }


    public function create($objeto)
    {
        // TODO: Implement create() method.
    }

    public function createDtIni($objeto, $dtIni)
    {
        $sqlInsert0205 = "INSERT INTO reg_0205 (REG, DESCR_ANT_ITEM, DT_INI, DT_FIM, COD_ANT_ITEM, dtIni) VALUES ('{$objeto->getReg()}','{$objeto->getDescrAntItem()}','{$objeto->getDtIni()}','{$objeto->getDtFim()}','{$objeto->getCodAntItem()}','{$dtIni}')";
        try{
            if($operacao = $this->instanciaConexaoPdoAtiva->query($sqlInsert0205)){
                if($operacao->rowCount()> 0){
                    return true;
                } else {
                    return false;
                }
            }else {
                return false;
            }
        }catch (PDOException $e){
            echo $e->getMessage();
            echo $sqlInsert0205."<br/>";
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