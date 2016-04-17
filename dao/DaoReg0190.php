<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 13:02
 */
require_once 'iDaoModeCrud.php';
require_once '../cofing/PdoConexao.php';
class DaoReg0190 implements iDaoModeCrud
{

    private $instanciaConexaoPdoAtiva;
    private $tabela;

    /**
     * DaoReg0190 constructor.
     * @param $instanciaConexaoPdoAtiva
     * @param $tabela
     */
    public function __construct()
    {
        $this->instanciaConexaoPdoAtiva = PdoConexao::getInstancia();
        $this->tabela = "reg_0190";
    }


    public function create($objeto)
    {
        // TODO: Implement create() method.
    }

    public function createDtIni($objeto, $dtIni)
    {
        $sqlInsert0190 = "INSERT INTO reg_0190 (REG, UNID, DESCR,dtIni) VALUES ('{$objeto->getReg()}','{$objeto->getUnid()}','{$objeto->getDescr()}','{$dtIni}')";
        try{
          if($operacao =  $this->instanciaConexaoPdoAtiva->query($sqlInsert0190)){
                if($operacao->rowCount()>0){
                    return true;
                } else {
                    return false;
                }
          }else {
              return false;
          }
        }catch (PDOException $e){
            echo $e->getMessage();
            echo $sqlInsert0190."<br/>";
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

    public function deleteAll(){
        $sql = "TRUNCATE reg_0190";
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