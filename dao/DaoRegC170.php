<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 14/04/2016
 * Time: 01:37
 */
require_once 'iDaoModeCrud.php';
require_once '../model/RegC170.php';
class DaoRegC170 implements iDaoModeCrud
{
    private $instanciaConexaoPdoAtiva;

    /**
     * DaoRegC170 constructor.
     * @param $instanciaConexaoPdoAtiva
     */
    public function __construct()
    {
        $this->instanciaConexaoPdoAtiva = PdoConexao::getInstancia();
    }

    public function createSped($objeto,$dtIni,$numLinha)
    {

        $sql = "Insert into reg_c170 (REG, NUM_ITEM, COD_ITEM, DESCR_COMPL, QTD, UNID, VL_ITEM, VL_DESC, IND_MOV, CST_ICMS, CFOP, COD_NAT, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST, ALIQ_ST, VL_ICMS_ST, IND_APUR, CST_IPI, COD_ENQ, VL_BC_IPI, ALIQ_IPI, VL_IPI, CST_PIS, VL_BC_PIS, ALIQ_PIS_PERC, QUANT_BC_PIS, ALIQ_PIS_REAIS, VL_PIS, CST_COFINS, VL_BC_COFINS, ALIQ_COFINS_PERC, QUANT_BC_COFINS, ALIQ_COFINS_REAIS, VL_COFINS, COD_CTA,dtIni,linha) VALUES ('{$objeto->getReg()}','{$objeto->getNumItem()}','{$objeto->getCodItem()}','{$objeto->getDescrCompl()}','{$objeto->getQtd()}','{$objeto->getUnid()}','{$objeto->getVlItem()}','{$objeto->getVlDesc()}','{$objeto->getIndMov()}','{$objeto->getCstIcms()}','{$objeto->getCfop()}','{$objeto->getCodNat()}','{$objeto->getVlBcIcms()}','{$objeto->getAliqIcms()}','{$objeto->getVlIcms()}','{$objeto->getVlBcIcmsSt()}','{$objeto->getAliqSt()}','{$objeto->getVlIcmsSt()}','{$objeto->getIndApur()}','{$objeto->getCstIpi()}','{$objeto->getCodEnq()}','{$objeto->getVlBcIpi()}','{$objeto->getAliqIpi()}','{$objeto->getVlIpi()}','{$objeto->getCstPis()}','{$objeto->getVlBcPis()}','{$objeto->getAliqPisPerc()}','{$objeto->getQuantBcCofins()}','{$objeto->getAliqPisReais()}','{$objeto->getVlPis()}','{$objeto->getCstCofins()}','{$objeto->getVlBcCofins()}','{$objeto->getAliqCofinsPerc()}','{$objeto->getQuantBcCofins()}','{$objeto->getAliqCofinsReais()}','{$objeto->getVlCofins()}','{$objeto->getCodCta()}','{$dtIni}',$numLinha)";
        try
        {
            if($operacao = $this->instanciaConexaoPdoAtiva->query($sql)) {
                if ($operacao->rowCount() > 0)
                {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }

    public function create($objeto)
    {
        // TODO: Implement create() method.
    }

    public function createDtIni($objeto, $dtIni)
    {
        // TODO: Implement createDtIni() method.
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

    public function deleteAll()
    {
        $sql = "TRUNCATE reg_C170";
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