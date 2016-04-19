<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 11:09
 */

require_once 'DaoGeneric.php';
class DaoReg0200 extends DaoGeneric
{
    public function createDtIni($objeto, $dtIni)
    {
        $sqlInsert0200 = "INSERT INTO reg_0200(REG, COD_ITEM, DESCR_ITEM, COD_BARRA, COD_ANT_ITEM, UNID_INV, TIPO_ITEM, COD_NCM, EX_IPI, COD_GEN, COD_LST, ALIQ_ICMS,dtIni) VALUES ('{$objeto->getReg()}','{$objeto->getCodItem()}','{$objeto->getDescrItem()}','{$objeto->getCodBarra()}','{$objeto->getCodAntItem()}','{$objeto->getUnidInv()}','{$objeto->getTipoItem()}','{$objeto->getCodNcm()}','{$objeto->exIpi}','{$objeto->getCodGen()}','{$objeto->getCodLst()}','{$objeto->getAliqIcms()}','{$dtIni}')";
        try{
            if($operacao = $this->instanciaConexaoPdoAtiva->query($sqlInsert0200)){
                if($operacao->rowCount() > 0){
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }catch(PDOException $e){
            echo $e->getMessage()."<br/>";
            echo $sqlInsert0200."<br/>";
        }

    }

    public function selectDistinct()
    {
        $sql = "SELECT DISTINCT COD_ITEM from reg_0200";

        try
        {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (PDOException $e){
            echo $e->getMessage()."<br/>";
            echo $sql."<br/>";
        }
    }


}