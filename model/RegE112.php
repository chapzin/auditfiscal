<?php

class RegE112 {
    private $reg;
    private $numDa;
    private $numProc;
    private $indProc;
    private $proc;
    private $txtCompl;
    
    function __construct($reg, $numDa, $numProc, $indProc, $proc, $txtCompl) {
        $this->reg = $reg;
        $this->numDa = $numDa;
        $this->numProc = $numProc;
        $this->indProc = $indProc;
        $this->proc = $proc;
        $this->txtCompl = $txtCompl;
    }

    function getReg() {
        return $this->reg;
    }

    function getNumDa() {
        return $this->numDa;
    }

    function getNumProc() {
        return $this->numProc;
    }

    function getIndProc() {
        return $this->indProc;
    }

    function getProc() {
        return $this->proc;
    }

    function getTxtCompl() {
        return $this->txtCompl;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setNumDa($numDa) {
        $this->numDa = $numDa;
    }

    function setNumProc($numProc) {
        $this->numProc = $numProc;
    }

    function setIndProc($indProc) {
        $this->indProc = $indProc;
    }

    function setProc($proc) {
        $this->proc = $proc;
    }

    function setTxtCompl($txtCompl) {
        $this->txtCompl = $txtCompl;
    }


}
