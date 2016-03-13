<?php

class RegC490 {
    private $reg;
    private $cstIcms;
    private $cfop;
    private $aliqIcms;
    private $vlOpr;
    private $vlBcIcms;
    private $vlIcms;
    private $codObs;
    
    function __construct($reg, $cstIcms, $cfop, $aliqIcms, $vlOpr, $vlBcIcms, $vlIcms, $codObs) {
        $this->reg = $reg;
        $this->cstIcms = $cstIcms;
        $this->cfop = $cfop;
        $this->aliqIcms = $aliqIcms;
        $this->vlOpr = $vlOpr;
        $this->vlBcIcms = $vlBcIcms;
        $this->vlIcms = $vlIcms;
        $this->codObs = $codObs;
    }
    
    function getReg() {
        return $this->reg;
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

    function getVlOpr() {
        return $this->vlOpr;
    }

    function getVlBcIcms() {
        return $this->vlBcIcms;
    }

    function getVlIcms() {
        return $this->vlIcms;
    }

    function getCodObs() {
        return $this->codObs;
    }

    function setReg($reg) {
        $this->reg = $reg;
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

    function setVlOpr($vlOpr) {
        $this->vlOpr = $vlOpr;
    }

    function setVlBcIcms($vlBcIcms) {
        $this->vlBcIcms = $vlBcIcms;
    }

    function setVlIcms($vlIcms) {
        $this->vlIcms = $vlIcms;
    }

    function setCodObs($codObs) {
        $this->codObs = $codObs;
    }



}
