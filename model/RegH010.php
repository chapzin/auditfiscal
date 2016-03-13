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
    
    function __construct($reg, $codItem, $unid, $qtd, $vlUnit, $vlItem, $indProp, $codPart, $txtCompl, $codCta, $vlItemIr) {
        $this->reg = $reg;
        $this->codItem = $codItem;
        $this->unid = $unid;
        $this->qtd = $qtd;
        $this->vlUnit = $vlUnit;
        $this->vlItem = $vlItem;
        $this->indProp = $indProp;
        $this->codPart = $codPart;
        $this->txtCompl = $txtCompl;
        $this->codCta = $codCta;
        $this->vlItemIr = $vlItemIr;
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
