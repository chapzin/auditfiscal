<?php

class RegC400 {
    private $reg;
    private $codMod;
    private $ecfMod;
    private $ecfFab;
    private $ecfCx;
    
    function __construct($reg, $codMod, $ecfMod, $ecfFab, $ecfCx) {
        $this->reg = $reg;
        $this->codMod = $codMod;
        $this->ecfMod = $ecfMod;
        $this->ecfFab = $ecfFab;
        $this->ecfCx = $ecfCx;
    }
    
    function getReg() {
        return $this->reg;
    }

    function getCodMod() {
        return $this->codMod;
    }

    function getEcfMod() {
        return $this->ecfMod;
    }

    function getEcfFab() {
        return $this->ecfFab;
    }

    function getEcfCx() {
        return $this->ecfCx;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setCodMod($codMod) {
        $this->codMod = $codMod;
    }

    function setEcfMod($ecfMod) {
        $this->ecfMod = $ecfMod;
    }

    function setEcfFab($ecfFab) {
        $this->ecfFab = $ecfFab;
    }

    function setEcfCx($ecfCx) {
        $this->ecfCx = $ecfCx;
    }



}
