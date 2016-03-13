<?php

class RegE116 {
    private $reg;
    private $codOr;
    private $vlOr;
    private $dtVcto;
    private $codRec;
    private $numDoc;
    private $indProc;
    private $proc;
    private $txtCompl;
    private $mesRef;
    
    function __construct($reg, $codOr, $vlOr, $dtVcto, $codRec, $numDoc, $indProc, $proc, $txtCompl, $mesRef) {
        $this->reg = $reg;
        $this->codOr = $codOr;
        $this->vlOr = $vlOr;
        $this->dtVcto = $dtVcto;
        $this->codRec = $codRec;
        $this->numDoc = $numDoc;
        $this->indProc = $indProc;
        $this->proc = $proc;
        $this->txtCompl = $txtCompl;
        $this->mesRef = $mesRef;
    }
    
    function getReg() {
        return $this->reg;
    }

    function getCodOr() {
        return $this->codOr;
    }

    function getVlOr() {
        return $this->vlOr;
    }

    function getDtVcto() {
        return $this->dtVcto;
    }

    function getCodRec() {
        return $this->codRec;
    }

    function getNumDoc() {
        return $this->numDoc;
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

    function getMesRef() {
        return $this->mesRef;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setCodOr($codOr) {
        $this->codOr = $codOr;
    }

    function setVlOr($vlOr) {
        $this->vlOr = $vlOr;
    }

    function setDtVcto($dtVcto) {
        $this->dtVcto = $dtVcto;
    }

    function setCodRec($codRec) {
        $this->codRec = $codRec;
    }

    function setNumDoc($numDoc) {
        $this->numDoc = $numDoc;
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

    function setMesRef($mesRef) {
        $this->mesRef = $mesRef;
    }



}
