<?php

/**
 * Created by PhpStorm.
 * User: casa
 * Date: 17/04/2016
 * Time: 17:13
 */
require_once 'DaoGeneric.php';
class DaoRegC425 extends DaoGeneric
{

    public function createSped($objeto,$dtIni,$linha){

        $sql = "INSERT INTO reg_c425 (REG, COD_ITEM, QTD, UNID, VL_ITEM, VL_PIS, VL_COFINS, dtIni, linha) VALUES ('{$objeto->getReg()}','{$objeto->getCodItem()}','{$objeto->getQtd()}','{$objeto->getUnid()}','{$objeto->getVlItem()}','{$objeto->getVlPis()}','{$objeto->getVlCofins()}','$dtIni',$linha)";
        try
        {
            if($operacao = $this->instanciaConexaoPdoAtiva->query($sql)){
                if($operacao->rowCount()>0){
                    return true;
                } else {
                    return false;
                }
            }else {
                return false;
            }
        } catch (PDOException $e){
            echo $e->getMessage()."<br/>";
            echo $sql."<br/>";
        }
    }
}