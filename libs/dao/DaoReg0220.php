<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 13:28
 */
require_once 'DaoGeneric.php';
class DaoReg0220 extends DaoGeneric
{

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

}