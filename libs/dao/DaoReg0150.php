<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 10:54
 */
require_once 'DaoGeneric.php';
class DaoReg0150 extends DaoGeneric
{

    public function createDtIni($objeto,$dtIni)
    {
        $sqlInsert0150 = "INSERT INTO reg_0150 (REG, COD_PART, NOME, COD_PAIS, CNPJ, CPF, IE, COD_MUN, SUFRAMA, ENDERECO, NUM, COMPL, BAIRRO, dtIni) VALUES ('{$objeto->getReg()}','{$objeto->getCodPart()}','{$objeto->getNome()}','{$objeto->getCodPais()}','{$objeto->getCnpj()}','{$objeto->getCpf()}','{$objeto->getIe()}','{$objeto->getCodMun()}','{$objeto->getSuframa()}','{$objeto->getEnd()}','{$objeto->getNum()}','{$objeto->getCompl()}','{$objeto->getBairro()}','{$dtIni}')";
        try{

            if($operacao = $this->instanciaConexaoPdoAtiva->query($sqlInsert0150)){
                if($operacao->rowCount() > 0){
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }catch(PDOException $e){
            echo $e->getMessage();
            echo $sqlInsert0150."<br/>";
        }
    }

}