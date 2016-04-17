<?php

class RegD110 {
    
    private $reg;
    private $numItem;
    private $codItem;
    private $vlServ;
    private $vlOut;
    
    function __construct($reg, $numItem, $codItem, $vlServ, $vlOut) {
        $this->reg = $reg;
        $this->numItem = $numItem;
        $this->codItem = $codItem;
        $this->vlServ = $vlServ;
        $this->vlOut = $vlOut;
    }
    
    function getReg() {
        return $this->reg;
    }

    function getNumItem() {
        return $this->numItem;
    }

    function getCodItem() {
        return $this->codItem;
    }

    function getVlServ() {
        return $this->vlServ;
    }

    function getVlOut() {
        return $this->vlOut;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setNumItem($numItem) {
        $this->numItem = $numItem;
    }

    function setCodItem($codItem) {
        $this->codItem = $codItem;
    }

    function setVlServ($vlServ) {
        $this->vlServ = $vlServ;
    }

    function setVlOut($vlOut) {
        $this->vlOut = $vlOut;
    }



}
