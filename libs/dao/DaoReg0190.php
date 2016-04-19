<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 13:02
 */
require_once 'DaoGeneric.php';
class DaoReg0190 extends DaoGeneric
{

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

}