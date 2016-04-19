<?php

class Reg0200 {

    public $reg;
    public $codItem;
    public $descrItem;
    public $codBarra;
    public $codAntItem;
    public $unidInv;
    public $tipoItem;
    public $codNcm;
    public $exIpi;
    public $codGen;
    public $codLst;
    public $aliqIcms;

    /**
     * @return mixed
     */
    public function getReg()
    {
        return $this->reg;
    }

    /**
     * @param mixed $reg
     */
    public function setReg($reg)
    {
        $this->reg = $reg;
    }

    /**
     * @return mixed
     */
    public function getCodItem()
    {
        return $this->codItem;
    }

    /**
     * @param mixed $codItem
     */
    public function setCodItem($codItem)
    {
        $this->codItem = $codItem;
    }

    /**
     * @return mixed
     */
    public function getDescrItem()
    {
        return $this->descrItem;
    }

    /**
     * @param mixed $descrItem
     */
    public function setDescrItem($descrItem)
    {
        $this->descrItem = $descrItem;
    }

    /**
     * @return mixed
     */
    public function getCodBarra()
    {
        return $this->codBarra;
    }

    /**
     * @param mixed $codBarra
     */
    public function setCodBarra($codBarra)
    {
        $this->codBarra = $codBarra;
    }

    /**
     * @return mixed
     */
    public function getCodAntItem()
    {
        return $this->codAntItem;
    }

    /**
     * @param mixed $codAntItem
     */
    public function setCodAntItem($codAntItem)
    {
        $this->codAntItem = $codAntItem;
    }

    /**
     * @return mixed
     */
    public function getUnidInv()
    {
        return $this->unidInv;
    }

    /**
     * @param mixed $unidInv
     */
    public function setUnidInv($unidInv)
    {
        $this->unidInv = $unidInv;
    }

    /**
     * @return mixed
     */
    public function getTipoItem()
    {
        return $this->tipoItem;
    }

    /**
     * @param mixed $tipoItem
     */
    public function setTipoItem($tipoItem)
    {
        $this->tipoItem = $tipoItem;
    }

    /**
     * @return mixed
     */
    public function getCodNcm()
    {
        return $this->codNcm;
    }

    /**
     * @param mixed $codNcm
     */
    public function setCodNcm($codNcm)
    {
        $this->codNcm = $codNcm;
    }

    /**
     * @return mixed
     */
    public function getExIpi()
    {
        return $this->exIpi;
    }

    /**
     * @param mixed $exIpi
     */
    public function setExIpi($exIpi)
    {
        $this->exIpi = $exIpi;
    }

    /**
     * @return mixed
     */
    public function getCodGen()
    {
        return $this->codGen;
    }

    /**
     * @param mixed $codGen
     */
    public function setCodGen($codGen)
    {
        $this->codGen = $codGen;
    }

    /**
     * @return mixed
     */
    public function getCodLst()
    {
        return $this->codLst;
    }

    /**
     * @param mixed $codLst
     */
    public function setCodLst($codLst)
    {
        $this->codLst = $codLst;
    }

    /**
     * @return mixed
     */
    public function getAliqIcms()
    {
        return $this->aliqIcms;
    }

    /**
     * @param mixed $aliqIcms
     */
    public function setAliqIcms($aliqIcms)
    {
        $this->aliqIcms = $aliqIcms;
    }



    public function populaSped($linha){
        $l = explode('|', $linha);
        if ($l[1] == '0200') {
            $this->reg = $l[1];
            $this->codItem = $l[2];
            $this->descrItem = str_replace("'","",$l[3]);
            $this->codBarra = $l[4];
            $this->codAntItem = $l[5];
            $this->unidInv = $l[6];
            $this->tipoItem = $l[7];
            $this->codNcm = $l[8];
            $this->exIpi = $l[9];
            $this->codGen = $l[10];
            $this->codLst = $l[11];
            $this->aliqIcms = $l[12];
        }
    }

}
