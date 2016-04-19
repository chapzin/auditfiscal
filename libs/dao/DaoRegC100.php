<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 13:48
 */
require_once 'DaoGeneric.php';
class DaoRegC100 extends DaoGeneric
{

    public function createXml($objeto)
    {
        $sqlInsertC100 = "INSERT into reg_c100xml(REG, IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, NUM_DOC, CHV_NFE, DT_DOC, DT_E_S, VL_DOC, IND_PGTO, VL_DESC, VL_ABAT_NT, VL_MERC, IND_FRT, VL_FRT, VL_SEG, VL_OUT_DA, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_IPI, VL_PIS, VL_COFINS, VL_PIS_ST, VL_COFINS_ST,natOp,cnpjDest,RazaoDest,RazaoEmit,IeEmit,IeDest) VALUES ('{$objeto->getReg()}','{$objeto->getIndOper()}','{$objeto->getIndEmit()}','{$objeto->getCodPart()}','{$objeto->getCodMod()}','{$objeto->getCodSit()}','{$objeto->getSer()}','{$objeto->getNumDoc()}','{$objeto->getChvNfe()}','{$objeto->getDtDoc()}','{$objeto->getDtES()}','{$objeto->getVlDoc()}','{$objeto->getIndPgto()}','{$objeto->getVlDesc()}','{$objeto->getVlAbatNt()}','{$objeto->getVlMerc()}','{$objeto->getIndFrt()}','{$objeto->getVlFrt()}','{$objeto->getVlSeg()}','{$objeto->getVlOutDa()}','{$objeto->getVlBcIcms()}','{$objeto->getVlIcms()}','{$objeto->getVlBcIcmsSt()}','{$objeto->getVlIcmsSt()}','{$objeto->getVlIpi()}','{$objeto->getVlPis()}','{$objeto->getVlCofins()}','{$objeto->getVlPisSt()}','{$objeto->getVlCofinsSt()}','{$objeto->getNatOp()}','{$objeto->getCnpjDest()}','{$objeto->getRazaoDest()}','{$objeto->getRazaoEmit()}','{$objeto->getIeEmit()}','{$objeto->getIeDest()}')";

        try {
            if ($operacao = $this->instanciaConexaoPdoAtiva->query($sqlInsertC100)) {
                if ($operacao->rowCount() > 0) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }

        } catch (PDOException $e) {
            echo $e->getMessage();
            echo $sqlInsertC100 . "<br/>";
        }
    }

    public function createSped($objeto, $dtIni,$linha)
    {
        $sqlInsertC100 = "INSERT into reg_c100(REG, IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, NUM_DOC, CHV_NFE, DT_DOC, DT_E_S, VL_DOC, IND_PGTO, VL_DESC, VL_ABAT_NT, VL_MERC, IND_FRT, VL_FRT, VL_SEG, VL_OUT_DA, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_IPI, VL_PIS, VL_COFINS, VL_PIS_ST, VL_COFINS_ST,dtIni,linha) VALUES ('{$objeto->getReg()}','{$objeto->getIndOper()}','{$objeto->getIndEmit()}','{$objeto->getCodPart()}','{$objeto->getCodMod()}','{$objeto->getCodSit()}','{$objeto->getSer()}','{$objeto->getNumDoc()}','{$objeto->getChvNfe()}','{$objeto->getDtDoc()}','{$objeto->getDtES()}','{$objeto->getVlDoc()}','{$objeto->getIndPgto()}','{$objeto->getVlDesc()}','{$objeto->getVlAbatNt()}','{$objeto->getVlMerc()}','{$objeto->getIndFrt()}','{$objeto->getVlFrt()}','{$objeto->getVlSeg()}','{$objeto->getVlOutDa()}','{$objeto->getVlBcIcms()}','{$objeto->getVlIcms()}','{$objeto->getVlBcIcmsSt()}','{$objeto->getVlIcmsSt()}','{$objeto->getVlIpi()}','{$objeto->getVlPis()}','{$objeto->getVlCofins()}','{$objeto->getVlPisSt()}','{$objeto->getVlCofinsSt()}','{$dtIni}',{$linha})";
        try {
            if ($operacao = $this->instanciaConexaoPdoAtiva->query($sqlInsertC100)) {
                if ($operacao->rowCount() > 0) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }

        } catch (PDOException $e) {
            echo $e->getMessage();
            echo $sqlInsertC100 . "<br/>";
        }
    }

    public function deleteAllSped(){
        $sql = "TRUNCATE reg_C100";
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
    public function deleteAllXml(){
        $sql = "TRUNCATE reg_C100xml";
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

    private function updateIdXml($idXml,$chvNfe){
        $sql = "update reg_c100 set idxml='{$idXml}' where CHV_NFE='{$chvNfe}'";
        try
        {
            if($this->instanciaConexaoPdoAtiva->query($sql))
            {
                return true;
            } else {
                return false;
            }
        }catch (PDOException $e)
        {
            echo $e->getMessage();
        }
    }

    public function addIdXmlSped()
    {
        $sql = "SELECT xml.id id,xml.NUM_DOC NfeXml,xml.CHV_NFE ChaveXml,xml.VL_DOC VlDocXml,sped.NUM_DOC NfeSped,sped.CHV_NFE ChaveSped,sped.VL_DOC VlDocSped FROM reg_c100xml xml RIGHT join reg_c100 sped on xml.CHV_NFE=sped.CHV_NFE where sped.idxml=0";
        try
        {
            if($stm = $this->instanciaConexaoPdoAtiva->query($sql)){
                foreach ($stm->fetchAll(PDO::FETCH_OBJ) as $nota){
                    $this->updateIdXml($nota->id,$nota->ChaveXml);
                }
            }
        }catch (PDOException $e)
        {
            echo $e->getMessage();
        }
    }
}