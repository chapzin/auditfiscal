<?php

class RegC425 {
    private $reg;
    private $codItem;
    private $qtd;
    private $unid;
    private $vlItem;
    private $vlPis;
    private $vlCofins;
    
    function __construct($reg, $codItem, $qtd, $unid, $vlItem, $vlPis, $vlCofins) {
        $this->reg = $reg;
        $this->codItem = $codItem;
        $this->qtd = $qtd;
        $this->unid = $unid;
        $this->vlItem = $vlItem;
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

    function getUnid() {
        return $this->unid;
    }

    function getVlItem() {
        return $this->vlItem;
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

    function setUnid($unid) {
        $this->unid = $unid;
    }

    function setVlItem($vlItem) {
        $this->vlItem = $vlItem;
    }

    function setVlPis($vlPis) {
        $this->vlPis = $vlPis;
    }

    function setVlCofins($vlCofins) {
        $this->vlCofins = $vlCofins;
    }



}
