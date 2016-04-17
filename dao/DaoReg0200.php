<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 11:09
 */
require_once 'iDaoModeCrud.php';
require_once '../cofing/PdoConexao.php';
class DaoReg0200 implements iDaoModeCrud
{
    private $instanciaConexaoAtiva;
    private $tabela;

    /**
     * DaoReg0200 constructor.
     * @param $instanciaConexaoAtiva
     */
    public function __construct()
    {
        $this->instanciaConexaoPdoAtiva = PdoConexao::getInstancia();
        $this->tabela = "reg_0200";
    }


    public function create($objeto)
    {
        // TODO: Implement create() method.
    }

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

    public function deleteAll(){
        $sql = "TRUNCATE reg_0200";
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