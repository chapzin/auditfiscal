<?php

/**
 * Created by PhpStorm.
 * User: casa
 * Date: 17/04/2016
 * Time: 18:15
 */

class EstoqueQtd
{
    private $codigo;
    private $descricao;
    private $inv_ini;
    private $entradas;
    private $saidas_nf;
    private $saidas_cf;
    private $inv_final;
    private $vl_unit;


    /**
     * @return mixed
     */
    public function getCodigo()
    {
        return $this->codigo;
    }

    /**
     * @param mixed $codigo
     */
    public function setCodigo($codigo)
    {
        $this->codigo = $codigo;
    }

    /**
     * @return mixed
     */
    public function getDescricao()
    {
        return $this->descricao;
    }

    /**
     * @param mixed $descricao
     */
    public function setDescricao($descricao)
    {
        $this->descricao = $descricao;
    }

    /**
     * @return mixed
     */
    public function getInvIni()
    {
        return $this->inv_ini;
    }

    /**
     * @param mixed $inv_ini
     */
    public function setInvIni($inv_ini)
    {
        $this->inv_ini = $inv_ini;
    }

    /**
     * @return mixed
     */
    public function getEntradas()
    {
        return $this->entradas;
    }

    /**
     * @param mixed $entradas
     */
    public function setEntradas($entradas)
    {
        $this->entradas = $entradas;
    }

    /**
     * @return mixed
     */
    public function getSaidasNf()
    {
        return $this->saidas_nf;
    }

    /**
     * @param mixed $saidas_nf
     */
    public function setSaidasNf($saidas_nf)
    {
        $this->saidas_nf = $saidas_nf;
    }

    /**
     * @return mixed
     */
    public function getSaidasCf()
    {
        return $this->saidas_cf;
    }

    /**
     * @param mixed $saidas_cf
     */
    public function setSaidasCf($saidas_cf)
    {
        $this->saidas_cf = $saidas_cf;
    }

    /**
     * @return mixed
     */
    public function getInvFinal()
    {
        return $this->inv_final;
    }

    /**
     * @param mixed $inv_final
     */
    public function setInvFinal($inv_final)
    {
        $this->inv_final = $inv_final;
    }

    /**
     * @return mixed
     */
    public function getVlUnit()
    {
        return $this->vl_unit;
    }

    /**
     * @param mixed $vl_unit
     */
    public function setVlUnit($vl_unit)
    {
        $this->vl_unit = $vl_unit;
    }



}