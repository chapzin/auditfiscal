<?php

class RegC420 {
    private $reg;
    private $codTotPar;
    private $vlrAcumTot;
    private $nrTot;
    private $descrNrTot;
    
    function __construct($reg, $codTotPar, $vlrAcumTot, $nrTot, $descrNrTot) {
        $this->reg = $reg;
        $this->codTotPar = $codTotPar;
        $this->vlrAcumTot = $vlrAcumTot;
        $this->nrTot = $nrTot;
        $this->descrNrTot = $descrNrTot;
    }
    
    function getReg() {
        return $this->reg;
    }

    function getCodTotPar() {
        return $this->codTotPar;
    }

    function getVlrAcumTot() {
        return $this->vlrAcumTot;
    }

    function getNrTot() {
        return $this->nrTot;
    }

    function getDescrNrTot() {
        return $this->descrNrTot;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setCodTotPar($codTotPar) {
        $this->codTotPar = $codTotPar;
    }

    function setVlrAcumTot($vlrAcumTot) {
        $this->vlrAcumTot = $vlrAcumTot;
    }

    function setNrTot($nrTot) {
        $this->nrTot = $nrTot;
    }

    function setDescrNrTot($descrNrTot) {
        $this->descrNrTot = $descrNrTot;
    }



}
