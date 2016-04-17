<?php

class RegC470 {
    private $reg;
    private $codItem;
    private $qtd;
    private $qtdCanc;
    private $unid;
    private $vlItem;
    private $cstIcms;
    private $cfop;
    private $aliqIcms;
    private $vlPis;
    private $vlCofins;
    
    function __construct($reg, $codItem, $qtd, $qtdCanc, $unid, $vlItem, $cstIcms, $cfop, $aliqIcms, $vlPis, $vlCofins) {
        $this->reg = $reg;
        $this->codItem = $codItem;
        $this->qtd = $qtd;
        $this->qtdCanc = $qtdCanc;
        $this->unid = $unid;
        $this->vlItem = $vlItem;
        $this->cstIcms = $cstIcms;
        $this->cfop = $cfop;
        $this->aliqIcms = $aliqIcms;
        $this->vlPis = $vlPis;
        $this->vlCofins = $vlCofins;
    }

    function getReg() {
        return $this->reg;
    }

    function getCodItem() {
        return $this->codItem;
    }

    function getQtd() {
        return $this->qtd;
    }

    function getQtdCanc() {
        return $this->qtdCanc;
    }

    function getUnid() {
        return $this->unid;
    }

    function getVlItem() {
        return $this->vlItem;
    }

    function getCstIcms() {
        return $this->cstIcms;
    }

    function getCfop() {
        return $this->cfop;
    }

    function getAliqIcms() {
        return $this->aliqIcms;
    }

    function getVlPis() {
        return $this->vlPis;
    }

    function getVlCofins() {
        return $this->vlCofins;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setCodItem($codItem) {
        $this->codItem = $codItem;
    }

    function setQtd($qtd) {
        $this->qtd = $qtd;
    }

    function setQtdCanc($qtdCanc) {
        $this->qtdCanc = $qtdCanc;
    }

    function setUnid($unid) {
        $this->unid = $unid;
    }

    function setVlItem($vlItem) {
        $this->vlItem = $vlItem;
    }

    function setCstIcms($cstIcms) {
        $this->cstIcms = $cstIcms;
    }

    function setCfop($cfop) {
        $this->cfop = $cfop;
    }

    function setAliqIcms($aliqIcms) {
        $this->aliqIcms = $aliqIcms;
    }

    function setVlPis($vlPis) {
        $this->vlPis = $vlPis;
    }

    function setVlCofins($vlCofins) {
        $this->vlCofins = $vlCofins;
    }


}
