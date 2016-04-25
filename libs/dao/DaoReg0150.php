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

    public function createSped($objeto, $dtIni, $linha)
    {
        $sqlInsert0150 = "INSERT INTO reg_0150 (REG, COD_PART, NOME, COD_PAIS, CNPJ, CPF, IE, COD_MUN, SUFRAMA, ENDERECO, NUM, COMPL, BAIRRO, dtIni,linha) VALUES ('{$objeto->getReg()}','{$objeto->getCodPart()}','{$objeto->getNome()}','{$objeto->getCodPais()}','{$objeto->getCnpj()}','{$objeto->getCpf()}','{$objeto->getIe()}','{$objeto->getCodMun()}','{$objeto->getSuframa()}','{$objeto->getEnd()}','{$objeto->getNum()}','{$objeto->getCompl()}','{$objeto->getBairro()}','{$dtIni}',{$linha})";
        try {

            if ($operacao = $this->instanciaConexaoPdoAtiva->query($sqlInsert0150)) {
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
            echo $sqlInsert0150 . "<br/>";
        }
    }

    public function createXml($objeto){
        $sqlInsert0150 = "INSERT INTO reg_0150xml (REG, COD_PART, NOME, COD_PAIS, CNPJ, CPF, IE, COD_MUN, SUFRAMA, ENDERECO, NUM, COMPL, BAIRRO) VALUES ('{$objeto->getReg()}','{$objeto->getCodPart()}','{$objeto->getNome()}','{$objeto->getCodPais()}','{$objeto->getCnpj()}','{$objeto->getCpf()}','{$objeto->getIe()}','{$objeto->getCodMun()}','{$objeto->getSuframa()}','{$objeto->getEnd()}','{$objeto->getNum()}','{$objeto->getCompl()}','{$objeto->getBairro()}')";
        try {

            if ($operacao = $this->instanciaConexaoPdoAtiva->query($sqlInsert0150)) {
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
            echo $sqlInsert0150 . "<br/>";
        }
    }

    public function listaComUF()
    {
        $sql = "SELECT ibge.uf,r150.* FROM reg_0150 r150 INNER JOIN ibge_uf ibge ON r150.COD_MUN=ibge.cod_mun";
        try {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            $dados = $stm->fetchAll(PDO::FETCH_OBJ);
            return $dados;
        } catch (PDOException $e) {
            echo $e->getMessage();
            echo $sql . "<br/>";
        }
    }

    public function listaSpedVsXml(){
        $sql = "SELECT sped.CNPJ SpedCnpj,xml.CNPJ XmlCnpj,sped.NOME SpedNome,xml.NOME XmlNome,sped.IE SpedIE, xml.IE XmlIE,sped.COD_MUN SpedCodMun,xml.COD_MUN XmlCodMun,sped.linha FROM reg_0150 sped INNER JOIN reg_0150xml xml on sped.CNPJ=xml.CNPJ";
        try {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            $dados = $stm->fetchAll(PDO::FETCH_OBJ);
            return $dados;
        } catch (PDOException $e) {
            echo $e->getMessage();
            echo $sql . "<br/>";
        }
    }

}