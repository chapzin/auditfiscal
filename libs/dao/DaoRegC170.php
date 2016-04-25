<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 14/04/2016
 * Time: 01:37
 */
require_once 'DaoGeneric.php';

class DaoRegC170 extends DaoGeneric
{

    public function createSped($objeto, $dtIni, $numLinha, $linhaC100)
    {

        if ($objeto->getQtd() <> 0){
            $vl_unit = $objeto->getVlItem() / $objeto->getQtd();
        } else {
            $vl_unit = 0;
        }

        $sql = "Insert into reg_c170 (REG, NUM_ITEM, COD_ITEM, DESCR_COMPL, QTD, UNID, VL_ITEM, VL_UNIT, VL_DESC, IND_MOV, CST_ICMS, CFOP, COD_NAT, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST, ALIQ_ST, VL_ICMS_ST, IND_APUR, CST_IPI, COD_ENQ, VL_BC_IPI, ALIQ_IPI, VL_IPI, CST_PIS, VL_BC_PIS, ALIQ_PIS_PERC, QUANT_BC_PIS, ALIQ_PIS_REAIS, VL_PIS, CST_COFINS, VL_BC_COFINS, ALIQ_COFINS_PERC, QUANT_BC_COFINS, ALIQ_COFINS_REAIS, VL_COFINS, COD_CTA,dtIni,linha,linhaC100) VALUES ('{$objeto->getReg()}','{$objeto->getNumItem()}','{$objeto->getCodItem()}','{$objeto->getDescrCompl()}','{$objeto->getQtd()}','{$objeto->getUnid()}','{$objeto->getVlItem()}','{$vl_unit}','{$objeto->getVlDesc()}','{$objeto->getIndMov()}','{$objeto->getCstIcms()}','{$objeto->getCfop()}','{$objeto->getCodNat()}','{$objeto->getVlBcIcms()}','{$objeto->getAliqIcms()}','{$objeto->getVlIcms()}','{$objeto->getVlBcIcmsSt()}','{$objeto->getAliqSt()}','{$objeto->getVlIcmsSt()}','{$objeto->getIndApur()}','{$objeto->getCstIpi()}','{$objeto->getCodEnq()}','{$objeto->getVlBcIpi()}','{$objeto->getAliqIpi()}','{$objeto->getVlIpi()}','{$objeto->getCstPis()}','{$objeto->getVlBcPis()}','{$objeto->getAliqPisPerc()}','{$objeto->getQuantBcCofins()}','{$objeto->getAliqPisReais()}','{$objeto->getVlPis()}','{$objeto->getCstCofins()}','{$objeto->getVlBcCofins()}','{$objeto->getAliqCofinsPerc()}','{$objeto->getQuantBcCofins()}','{$objeto->getAliqCofinsReais()}','{$objeto->getVlCofins()}','{$objeto->getCodCta()}','{$dtIni}',$numLinha,$linhaC100)";
        try {
            if ($operacao = $this->instanciaConexaoPdoAtiva->query($sql)) {
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
        }
    }

    public function selectEntradasProprias()
    {
        $sql = "SELECT c100.NUM_DOC,c170.* FROM reg_c170 c170 LEFT JOIN reg_c100 c100 ON c170.linhaC100=c100.linha AND c170.dtIni=c100.dtIni WHERE c100.IND_OPER=0 AND c100.IND_EMIT=0";
        try {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (PDOException $e) {
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";
        }

    }

    public function selectEntradasPropriasTotais()
    {
        $sql = "SELECT C170.COD_ITEM,SUM(c170.QTD)QTD FROM reg_c170 c170 LEFT JOIN reg_c100 c100 ON c170.linhaC100=c100.linha AND c170.dtIni=c100.dtIni WHERE c100.IND_OPER=0 AND c100.IND_EMIT=0 GROUP BY c170.COD_ITEM";
        try {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (PDOException $e) {
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";
        }
    }

    public function selectSaidasProprias()
    {
        $sql = "SELECT c100.NUM_DOC,c170.* FROM reg_c170 c170 LEFT JOIN reg_c100 c100 ON c170.linhaC100=c100.linha AND c170.dtIni=c100.dtIni WHERE c100.IND_OPER=1 AND c100.IND_EMIT=0";
        try {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (PDOException $e) {
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";
        }

    }

    public function selectSaidasPropriasTotais()
    {
        $sql = "SELECT C170.COD_ITEM,SUM(c170.QTD)QTD FROM reg_c170 c170 LEFT JOIN reg_c100 c100 ON c170.linhaC100=c100.linha AND c170.dtIni=c100.dtIni WHERE c100.IND_OPER=1 AND c100.IND_EMIT=0 GROUP BY c170.COD_ITEM";
        try {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (PDOException $e) {
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";
        }
    }

    public function selectEntradasTerceiros()
    {
        $sql = "SELECT c100.NUM_DOC,c170.* FROM `reg_c170` c170 LEFT JOIN reg_c100 c100 ON c170.linhaC100=c100.linha AND c170.dtIni=c100.dtIni WHERE c100.IND_OPER=0 AND c100.IND_EMIT=1";
        try {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (PDOException $e) {
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";
        }

    }

    public function vlUnitMedioEntradaTerceiro($codigo){
        $sql = "SELECT c170.COD_ITEM,AVG(C170.VL_UNIT) VL_UNIT FROM `reg_c170` c170 LEFT JOIN reg_c100 c100 ON c170.linhaC100=c100.linha AND c170.dtIni=c100.dtIni WHERE c100.IND_OPER=0 AND c100.IND_EMIT=1 AND c170.COD_ITEM='{$codigo}' GROUP BY c170.COD_ITEM";
        try {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);

                foreach ($stm->fetchAll(PDO::FETCH_OBJ) as $obj){
                    return $obj;
                }

        } catch (PDOException $e) {
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";
        }
    }

    public function selectEntradasTerceirosTotais()
    {
        $sql = "SELECT C170.COD_ITEM,SUM(c170.QTD)QTD FROM reg_c170 c170 LEFT JOIN reg_c100 c100 ON c170.linhaC100=c100.linha AND c170.dtIni=c100.dtIni WHERE c100.IND_OPER=0 AND c100.IND_EMIT=1 GROUP BY c170.COD_ITEM";
        try {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (PDOException $e) {
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";
        }
    }


}