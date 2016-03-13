<?php

class RegC405 {
    private $reg;
    private $dtDoc;
    private $cro;
    private $crz;
    private $numCooFin;
    private $gtFin;
    private $vlBrt;
    
    function __construct($reg, $dtDoc, $cro, $crz, $numCooFin, $gtFin, $vlBrt) {
        $this->reg = $reg;
        $this->dtDoc = $dtDoc;
        $this->cro = $cro;
        $this->crz = $crz;
        $this->numCooFin = $numCooFin;
        $this->gtFin = $gtFin;
        $this->vlBrt = $vlBrt;
    }
    
    function getReg() {
        return $this->reg;
    }

    function getDtDoc() {
        return $this->dtDoc;
    }

    function getCro() {
        return $this->cro;
    }

    function getCrz() {
        return $this->crz;
    }

    function getNumCooFin() {
        return $this->numCooFin;
    }

    function getGtFin() {
        return $this->gtFin;
    }

    function getVlBrt() {
        return $this->vlBrt;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setDtDoc($dtDoc) {
        $this->dtDoc = $dtDoc;
    }

    function setCro($cro) {
        $this->cro = $cro;
    }

    function setCrz($crz) {
        $this->crz = $crz;
    }

    function setNumCooFin($numCooFin) {
        $this->numCooFin = $numCooFin;
    }

    function setGtFin($gtFin) {
        $this->gtFin = $gtFin;
    }

    function setVlBrt($vlBrt) {
        $this->vlBrt = $vlBrt;
    }



}
