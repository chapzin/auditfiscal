<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 13:16
 */
require_once 'DaoGeneric.php';
class DaoReg0205 extends DaoGeneric
{

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

}