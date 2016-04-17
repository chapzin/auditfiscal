<?php

/**
 * Created by PhpStorm.
 * User: casa
 * Date: 17/04/2016
 * Time: 12:03
 */
require_once '../model/RegH005.php';
require_once '../cofing/PdoConexao.php';
class DaoRegH005
{

    private $instaciaConexaoPdoAtiva;

    /**
     * DaoRegH005 constructor.
     * @param $instaciaConexaoPdoAtiva
     */
    public function __construct()
    {
        $this->instaciaConexaoPdoAtiva = PdoConexao::getInstancia();
    }

    public function createSped($objeto,$dtIni,$linha){
        $sql = "Insert into reg_h005 (REG, DT_INV, VL_INV, MOT_INV, dtIni, linha) VALUE ('{$objeto->getReg()}','{$objeto->getDtInv()}','{$objeto->getVlInv()}','{$objeto->getMotInv()}','$dtIni',$linha)";
        echo "$sql <br/>";
        try
        {
            if($operacao = $this->instaciaConexaoPdoAtiva->query($sql)){
                if($operacao->rowCount()>0){
                    return true;
                } else {
                    return false;
                }
            }else {
                return false;
            }
        }catch (PDOException $e){
            echo $e->getMessage()."<br/>";
            echo $sql."<br/>";
        }
    }

    public function deleteAll($tabela){
        $sql = "TRUNCATE {$tabela}";
        try{
            if($this->instaciaConexaoPdoAtiva->query($sql)){
                return true;
            } else {
                return false;
            }
        }catch (PDOException $e){
            echo $e->getMessage();
        }
    }


}