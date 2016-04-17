<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 10:06
 */
require_once 'iDaoModeCrud.php';
require_once '../cofing/PdoConexao.php';

class DaoReg0000 implements iDaoModeCrud
{

    private $instanciaConexaoPdoAtiva;
    private $tabela;

    /**
     * DaoReg0000 constructor.
     */
    public function __construct()
    {
        $this->instanciaConexaoPdoAtiva = PdoConexao::getInstancia();
        $this->tabela = "reg_0000";
    }

    public function createDtIni($objeto, $dtIni)
    {
        // TODO: Implement createDtIni() method.
    }

    public function create($objeto)
    {
        $sqlInsert0000 = "INSERT INTO {$this->tabela} (REG, COD_VER, COD_FIN, DT_INI, DT_FIN, NOME, CNPJ, CPF, UF, IE, COD_MUN, IM, SUFRAMA, IND_PERFIL, IND_ATIV) VALUES ('{$objeto->getReg()}','{$objeto->getCodVer()}','{$objeto->getCodFin()}','{$objeto->getDtIni()}','{$objeto->getDtFin()}','{$objeto->getNome()}','{$objeto->getCnpj()}','{$objeto->getCpf()}','{$objeto->getUf()}','{$objeto->ie}','{$objeto->getCodMun()}','{$objeto->getIm()}','{$objeto->getSuframa()}','{$objeto->getIndPerfil()}','{$objeto->getIndAtiv()}')";
        try {
            if ($operacao = $this->instanciaConexaoPdoAtiva->query($sqlInsert0000)) {
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
            echo $sqlInsert0000 . "<br/>";
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
        $sql = "TRUNCATE reg_0000";
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

    public function lerUltimoSped($cnpj){
        $sql = "Select * from reg_0000 where CNPJ='{$cnpj}' limit 1 order by dt_ini";
        try{
            $stm = $this->instanciaConexaoPdoAtiva->query($sql);
            return $stm->fetchAll(PDO::FETCH_OBJ);

        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }
}