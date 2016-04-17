<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 10:54
 */
require_once '../cofing/PdoConexao.php';
require_once 'iDaoModeCrud.php';
class DaoReg0150 implements iDaoModeCrud
{

    private $instanciaConexaoPdoAtiva;
    private $tabela;
    /**
     * DaoReg0150 constructor.
     */
    public function __construct()
    {
        $this->instanciaConexaoPdoAtiva = PdoConexao::getInstancia();
        $this->tabela="reg_0150";
    }

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

    public function create($objeto)
    {
        // TODO: Implement create() method.
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

    public function deleteAll($tabela){
        $sql = "TRUNCATE {$tabela}";
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