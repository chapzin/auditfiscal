<?php

/**
 * Created by PhpStorm.
 * User: casa
 * Date: 17/04/2016
 * Time: 10:42
 */
require_once 'DaoGeneric.php';

class DaoRegH010 extends DaoGeneric
{

    public function createSped($objeto, $dtIni, $linha)
    {
        $sql = "insert into reg_h010 (REG, COD_ITEM, UNID, QTD, VL_UNIT, VL_ITEM, IND_PROP, COD_PART, TXT_COMPL, COD_CTA, VL_ITEM_IR, dtInv, dtIni, linha) VALUE ('{$objeto->getReg()}','{$objeto->getCodItem()}','{$objeto->getUnid()}','{$objeto->getQtd()}','{$objeto->getVlUnit()}','{$objeto->getVlItem()}','{$objeto->getIndProp()}','{$objeto->getCodPart()}','{$objeto->getTxtCompl()}','{$objeto->getCodCta()}','{$objeto->getVlItemIr()}','{$objeto->getDataInv()}','$dtIni',$linha)";
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
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";
        }
    }

    public function updateQtd($qtd, $vlUnit, $codItem, $dtInv)
    {
        $vlItem = $qtd * $vlUnit;
        $sql = "UPDATE reg_h010 set QTD='{$qtd}', VL_UNIT='{$vlUnit}',VL_ITEM='{$vlItem}',alterado='1' WHERE COD_ITEM='{$codItem}' AND dtInv='{$dtInv}'";
        echo $sql . "<br/>";
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
            echo $e->getMessage() . "<br/>";
            echo $sql . "<br/>";

        }
    }



}