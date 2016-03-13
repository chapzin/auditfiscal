<?php

class RegH005 {
    private $reg;
    private $dtInv;
    private $vlInv;
    private $motInv;
    
    function __construct($reg, $dtInv, $vlInv, $motInv) {
        $this->reg = $reg;
        $this->dtInv = $dtInv;
        $this->vlInv = $vlInv;
        $this->motInv = $motInv;
    }

    function getReg() {
        return $this->reg;
    }

    function getDtInv() {
        return $this->dtInv;
    }

    function getVlInv() {
        return $this->vlInv;
    }

    function getMotInv() {
        return $this->motInv;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setDtInv($dtInv) {
        $this->dtInv = $dtInv;
    }

    function setVlInv($vlInv) {
        $this->vlInv = $vlInv;
    }

    function setMotInv($motInv) {
        $this->motInv = $motInv;
    }


    
}
