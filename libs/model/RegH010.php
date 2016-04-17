<?php

class RegH010 {
    private $reg;
    private $codItem;
    private $unid;
    private $qtd;
    private $vlUnit;
    private $vlItem;
    private $indProp;
    private $codPart;
    private $txtCompl;
    private $codCta;
    private $vlItemIr;
    private $dataInv;

    public function populaSped($linha,$dataInv){
        $l = explode('|', $linha);
        if($l[1]=='H010'){
            $this->reg = $l[1];
            $this->codItem = $l[2];
            $this->unid = $l[3];
            $this->qtd = vlp($l[4]);
            $this->vlUnit = vlp($l[5]);
            $this->vlItem = vlp($l[6]);
            $this->indProp = $l[7];
            $this->codPart = $l[8];
            $this->txtCompl = $l[9];
            $this->codCta = $l[10];
            $this->vlItemIr = vlp($l[11]);
            $this->dataInv = convert_data($dataInv);
        }
    }

    /**
     * @return mixed
     */
    public function getDataInv()
    {
        return $this->dataInv;
    }

    /**
     * @param mixed $dataInv
     */
    public function setDataInv($dataInv)
    {
        $this->dataInv = $dataInv;
    }



    function getReg() {
        return $this->reg;
    }

    function getCodItem() {
        return $this->codItem;
    }

    function getUnid() {
        return $this->unid;
    }

    function getQtd() {
        return $this->qtd;
    }

    function getVlUnit() {
        return $this->vlUnit;
    }

    function getVlItem() {
        return $this->vlItem;
    }

    function getIndProp() {
        return $this->indProp;
    }

    function getCodPart() {
        return $this->codPart;
    }

    function getTxtCompl() {
        return $this->txtCompl;
    }

    function getCodCta() {
        return $this->codCta;
    }

    function getVlItemIr() {
        return $this->vlItemIr;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setCodItem($codItem) {
        $this->codItem = $codItem;
    }

    function setUnid($unid) {
        $this->unid = $unid;
    }

    function setQtd($qtd) {
        $this->qtd = $qtd;
    }

    function setVlUnit($vlUnit) {
        $this->vlUnit = $vlUnit;
    }

    function setVlItem($vlItem) {
        $this->vlItem = $vlItem;
    }

    function setIndProp($indProp) {
        $this->indProp = $indProp;
    }

    function setCodPart($codPart) {
        $this->codPart = $codPart;
    }

    function setTxtCompl($txtCompl) {
        $this->txtCompl = $txtCompl;
    }

    function setCodCta($codCta) {
        $this->codCta = $codCta;
    }

    function setVlItemIr($vlItemIr) {
        $this->vlItemIr = $vlItemIr;
    }


}
