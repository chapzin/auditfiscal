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

    function getReg() {
        return $this->reg;
    }

    function getCodItem() {
        return $this->codItem;
    }

    function getDescrItem() {
        return $this->descrItem;
    }

    function getCodBarra() {
        return $this->codBarra;
    }

    function getCodAntItem() {
        return $this->codAntItem;
    }

    function getUnidInv() {
        return $this->unidInv;
    }

    function getTipoItem() {
        return $this->tipoItem;
    }

    function getCodNcm() {
        return $this->codNcm;
    }

    function getExIpi() {
        return $this->exIpi;
    }

    function getCodGen() {
        return $this->codGen;
    }

    function getCodLst() {
        return $this->codLst;
    }

    function getAliqIcms() {
        return $this->aliqIcms;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setCodItem($codItem) {
        $this->codItem = $codItem;
    }

    function setDescrItem($descrItem) {
        $this->descrItem = $descrItem;
    }

    function setCodBarra($codBarra) {
        $this->codBarra = $codBarra;
    }

    function setCodAntItem($codAntItem) {
        $this->codAntItem = $codAntItem;
    }

    function setUnidInv($unidInv) {
        $this->unidInv = $unidInv;
    }

    function setTipoItem($tipoItem) {
        $this->tipoItem = $tipoItem;
    }

    function setCodNcm($codNcm) {
        $this->codNcm = $codNcm;
    }

    function setExIpi($exIpi) {
        $this->exIpi = $exIpi;
    }

    function setCodGen($codGen) {
        $this->codGen = $codGen;
    }

    function setCodLst($codLst) {
        $this->codLst = $codLst;
    }

    function setAliqIcms($aliqIcms) {
        $this->aliqIcms = $aliqIcms;
    }

    function __construct($linha) {
        $l = explode('|', $linha);
        if ($l[1] == '0200') {
            $this->reg = $l[1];
            $this->codItem = $l[2];
            $this->descrItem = $l[3];
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
