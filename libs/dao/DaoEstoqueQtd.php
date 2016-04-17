<?php

/**
 * Created by PhpStorm.
 * User: casa
 * Date: 17/04/2016
 * Time: 18:52
 */
require_once 'DaoGeneric.php';
class DaoEstoqueQtd extends DaoGeneric
{
    public function insertCodigo($codigo){
        $sql = "INSERT into estoque_qtd (codigo) VALUES ('{$codigo}')";
        try
        {
            if($operacao = $this->instanciaConexaoPdoAtiva->query($sql)){
                if($operacao->rowCount()){
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } catch (PDOException $e){
            echo $e->getMessage()."<br/>";
            echo $sql."<br/>";
        }
    }

    public function updateDescricao($codigo,$descricao){
        $sql = "UPDATE estoque_qtd set descricao='{$descricao}' where codigo='{$codigo}'";
        try
        {
            if($operacao = $this->instanciaConexaoPdoAtiva->query($sql)){
                if($operacao->rowCount()){
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } catch (PDOException $e){
            echo $e->getMessage()."<br/>";
            echo $sql."<br/>";
        }
    }

    public function updateInvIni($codigo,$qtd){
        $sql = "UPDATE estoque_qtd set inv_ini='{$qtd}' where codigo='{$codigo}'";
        try
        {
            if($operacao = $this->instanciaConexaoPdoAtiva->query($sql)){
                if($operacao->rowCount()){
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } catch (PDOException $e){
            echo $e->getMessage()."<br/>";
            echo $sql."<br/>";
        }
    }

    public function updateInvFin($codigo,$qtd)
    {
        $sql = "UPDATE estoque_qtd set inv_final='{$qtd}' where codigo='{$codigo}'";
        try {
            if ($operacao = $this->instanciaConexaoPdoAtiva->query($sql)) {
                if ($operacao->rowCount()) {
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

    public function updateEntrada($codigo,$qtd)
    {
        $sql = "UPDATE estoque_qtd set entradas='{$qtd}' where codigo='{$codigo}'";
        try {
            if ($operacao = $this->instanciaConexaoPdoAtiva->query($sql)) {
                if ($operacao->rowCount()) {
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

    public function updateSaidaNF($codigo,$qtd)
    {
        $sql = "UPDATE estoque_qtd set saidas_nf='{$qtd}' where codigo='{$codigo}'";
        try {
            if ($operacao = $this->instanciaConexaoPdoAtiva->query($sql)) {
                if ($operacao->rowCount()) {
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

    public function updateSaidaCF($codigo,$qtd)
    {
        $sql = "UPDATE estoque_qtd set saidas_cf='{$qtd}' where codigo='{$codigo}'";
        try {
            if ($operacao = $this->instanciaConexaoPdoAtiva->query($sql)) {
                if ($operacao->rowCount()) {
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