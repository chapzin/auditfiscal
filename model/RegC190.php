<?php


class RegC190 {
    private $reg;
    private $cstIcms;
    private $cfop;
    private $aliqIcms;
    private $vlOpr;
    private $vlBcIcms;
    private $vlIcms;
    private $vlBcIcmsSt;
    private $vlIcmsSt;
    private $vlRedBc;
    private $vlIpi;
    private $codObs;
    
    function __construct($reg, $cstIcms, $cfop, $aliqIcms, $vlOpr, $vlBcIcms, $vlIcms, $vlBcIcmsSt, $vlIcmsSt, $vlRedBc, $vlIpi, $codObs) {
        $this->reg = $reg;
        $this->cstIcms = $cstIcms;
        $this->cfop = $cfop;
        $this->aliqIcms = $aliqIcms;
        $this->vlOpr = $vlOpr;
        $this->vlBcIcms = $vlBcIcms;
        $this->vlIcms = $vlIcms;
        $this->vlBcIcmsSt = $vlBcIcmsSt;
        $this->vlIcmsSt = $vlIcmsSt;
        $this->vlRedBc = $vlRedBc;
        $this->vlIpi = $vlIpi;
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

    function getVlBcIcmsSt() {
        return $this->vlBcIcmsSt;
    }

    function getVlIcmsSt() {
        return $this->vlIcmsSt;
    }

    function getVlRedBc() {
        return $this->vlRedBc;
    }

    function getVlIpi() {
        return $this->vlIpi;
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

    function setVlBcIcmsSt($vlBcIcmsSt) {
        $this->vlBcIcmsSt = $vlBcIcmsSt;
    }

    function setVlIcmsSt($vlIcmsSt) {
        $this->vlIcmsSt = $vlIcmsSt;
    }

    function setVlRedBc($vlRedBc) {
        $this->vlRedBc = $vlRedBc;
    }

    function setVlIpi($vlIpi) {
        $this->vlIpi = $vlIpi;
    }

    function setCodObs($codObs) {
        $this->codObs = $codObs;
    }


}
