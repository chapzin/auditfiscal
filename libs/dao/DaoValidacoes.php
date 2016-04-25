<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 13/04/2016
 * Time: 12:59
 */
require_once 'DaoGeneric.php';

class DaoValidacoes extends DaoGeneric
{


    // Verificar notas sem ser regular


    public function divergenciasNfeXSped()
    {
        $sql = "SELECT c100.NUM_DOC SpedNumDoc,xml.NUM_DOC XmlNumDoc,c100.DT_DOC SpedDtDoc,xml.DT_DOC XmlDtDoc,c100.VL_DOC SpedVlDoc,xml.VL_DOC XmlVlDoc,c100.CHV_NFE SpedChave,c100.linha,c100.COD_SIT FROM reg_c100 c100 INNER JOIN reg_c100xml xml ON c100.CHV_NFE=xml.CHV_NFE where c100.COD_SIT='00'";
        try {
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            $dados = $stm->fetchAll(PDO::FETCH_OBJ);
            return $dados;
        } catch (PDOException $e) {
            echo $e->getMessage();
            echo $sql . "<br/>";
        }
    }



public
function canceladaSemChave()
{
    $sql = "SELECT * FROM reg_c100 WHERE COD_SIT<>'00' AND ind_emit=0";
    try {
        $stm = $this->instanciaConexaoPdoAtiva->query($sql);
        $dados = $stm->fetchAll(PDO::FETCH_OBJ);
        return $dados;
    } catch (PDOException $e) {
        echo $e->getMessage();
        echo $sql . "<br/>";
    }
}

// Verificar quebra de sequencia
public
function quebraSequenciaSped()
{
    $sql = "SELECT NUM_DOC FROM reg_c100 WHERE IND_EMIT=0 ORDER BY NUM_DOC";
    try {
        $stm = $this->instanciaConexaoPdoAtiva->query($sql);
        $seq = $stm->fetchAll(PDO::FETCH_OBJ);
        $sequencia2 = 0;
        $quebra = array();
        foreach ($seq as $numero) {
            $sequencia = $numero->NUM_DOC;
            if ($sequencia2 == 0) {
                $sequencia2 = $sequencia;
            } else {
                $sequencia2 = $sequencia2 + 1;
                if ($sequencia2 == $sequencia) {
                    $sequencia2 = $sequencia;
                } else {
                    array_push($quebra, $sequencia2);
                    $sequencia2 = $sequencia;
                }
            }

        }
        return $quebra;
    } catch (PDOException $e) {
        $e->getMessage();
    }
}

public
function quebraSequenciaXml($cnpjEmit)
{
    $sql = "select NUM_DOC from reg_c100xml where IND_EMIT=0 and COD_PART='{$cnpjEmit}' order by NUM_DOC";
    try {
        $stm = $this->instanciaConexaoPdoAtiva->query($sql);
        $seq = $stm->fetchAll(PDO::FETCH_OBJ);
        $sequencia2 = 0;
        $quebra = array();
        foreach ($seq as $numero) {
            $sequencia = $numero->NUM_DOC;
            if ($sequencia2 == 0) {
                $sequencia2 = $sequencia;
            } else {
                $sequencia2 = $sequencia2 + 1;
                if ($sequencia2 == $sequencia) {
                    $sequencia2 = $sequencia;
                } else {
                    array_push($quebra, $sequencia2);
                    $sequencia2 = $sequencia;
                }
            }
        }
        return $quebra;
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
}

public
function notasPropriasXmlsVsSped($cnpj)
{
    $sql = "SELECT xml.NUM_DOC NfeXml,xml.DT_DOC dtEmissaoXml,xml.RazaoEmit razao,xml.CHV_NFE ChaveXml,xml.VL_DOC VlDocXml,sped.NUM_DOC NfeSped,sped.CHV_NFE ChaveSped,sped.VL_DOC VlDocSped FROM reg_c100xml xml left join reg_c100 sped on xml.CHV_NFE=sped.CHV_NFE where xml.COD_PART='{$cnpj}'";
    try {
        $stm = $this->instanciaConexaoPdoAtiva->query($sql);
        return $stm->fetchAll(PDO::FETCH_OBJ);
    } catch (PDOException $e) {
        echo $e->getMessage();
    }

}

public
function notasNoSpedSemXml()
{
    $sql = "SELECT xml.NUM_DOC NfeXml,xml.COD_MOD ModXml,xml.CHV_NFE ChaveXml,xml.VL_DOC VlDocXml,xml.DT_DOC DtEmissaoXml,sped.NUM_DOC NfeSped,sped.COD_MOD ModSped,sped.CHV_NFE ChaveSped,sped.VL_DOC VlDocSped,sped.DT_DOC DtEmissaoSped,sped.linha linha FROM reg_c100xml xml RIGHT JOIN reg_c100 sped ON xml.CHV_NFE=sped.CHV_NFE WHERE idXml=0 AND sped.COD_SIT='00'";
    try {
        $stm = $this->instanciaConexaoPdoAtiva->query($sql);
        return $stm->fetchAll(PDO::FETCH_OBJ);

    } catch (PDOException $e) {
        echo $e->getMessage();
    }
}


}