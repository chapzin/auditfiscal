<?php

class RegD100 {
    private $reg;
    private $indOper;
    private $indEmit;
    private $codPart;
    private $codMod;
    private $codSit;
    private $ser;
    private $sub;
    private $numDoc;
    private $chvCte;
    private $dtDoc;
    private $dtAP;
    private $tpCte;
    private $chvCteRef;
    private $vlDoc;
    private $vlDesc;
    private $indFrt;
    private $vlServ;
    private $vlBcIcms;
    private $vlIcms;
    private $vlNt;
    private $codInf;
    private $codCta;
    
    function __construct($reg, $indOper, $indEmit, $codPart, $codMod, $codSit, $ser, $sub, $numDoc, $chvCte, $dtDoc, $dtAP, $tpCte, $chvCteRef, $vlDoc, $vlDesc, $indFrt, $vlServ, $vlBcIcms, $vlIcms, $vlNt, $codInf, $codCta) {
        $this->reg = $reg;
        $this->indOper = $indOper;
        $this->indEmit = $indEmit;
        $this->codPart = $codPart;
        $this->codMod = $codMod;
        $this->codSit = $codSit;
        $this->ser = $ser;
        $this->sub = $sub;
        $this->numDoc = $numDoc;
        $this->chvCte = $chvCte;
        $this->dtDoc = $dtDoc;
        $this->dtAP = $dtAP;
        $this->tpCte = $tpCte;
        $this->chvCteRef = $chvCteRef;
        $this->vlDoc = $vlDoc;
        $this->vlDesc = $vlDesc;
        $this->indFrt = $indFrt;
        $this->vlServ = $vlServ;
        $this->vlBcIcms = $vlBcIcms;
        $this->vlIcms = $vlIcms;
        $this->vlNt = $vlNt;
        $this->codInf = $codInf;
        $this->codCta = $codCta;
    }

    function getReg() {
        return $this->reg;
    }

    function getIndOper() {
        return $this->indOper;
    }

    function getIndEmit() {
        return $this->indEmit;
    }

    function getCodPart() {
        return $this->codPart;
    }

    function getCodMod() {
        return $this->codMod;
    }

    function getCodSit() {
        return $this->codSit;
    }

    function getSer() {
        return $this->ser;
    }

    function getSub() {
        return $this->sub;
    }

    function getNumDoc() {
        return $this->numDoc;
    }

    function getChvCte() {
        return $this->chvCte;
    }

    function getDtDoc() {
        return $this->dtDoc;
    }

    function getDtAP() {
        return $this->dtAP;
    }

    function getTpCte() {
        return $this->tpCte;
    }

    function getChvCteRef() {
        return $this->chvCteRef;
    }

    function getVlDoc() {
        return $this->vlDoc;
    }

    function getVlDesc() {
        return $this->vlDesc;
    }

    function getIndFrt() {
        return $this->indFrt;
    }

    function getVlServ() {
        return $this->vlServ;
    }

    function getVlBcIcms() {
        return $this->vlBcIcms;
    }

    function getVlIcms() {
        return $this->vlIcms;
    }

    function getVlNt() {
        return $this->vlNt;
    }

    function getCodInf() {
        return $this->codInf;
    }

    function getCodCta() {
        return $this->codCta;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setIndOper($indOper) {
        $this->indOper = $indOper;
    }

    function setIndEmit($indEmit) {
        $this->indEmit = $indEmit;
    }

    function setCodPart($codPart) {
        $this->codPart = $codPart;
    }

    function setCodMod($codMod) {
        $this->codMod = $codMod;
    }

    function setCodSit($codSit) {
        $this->codSit = $codSit;
    }

    function setSer($ser) {
        $this->ser = $ser;
    }

    function setSub($sub) {
        $this->sub = $sub;
    }

    function setNumDoc($numDoc) {
        $this->numDoc = $numDoc;
    }

    function setChvCte($chvCte) {
        $this->chvCte = $chvCte;
    }

    function setDtDoc($dtDoc) {
        $this->dtDoc = $dtDoc;
    }

    function setDtAP($dtAP) {
        $this->dtAP = $dtAP;
    }

    function setTpCte($tpCte) {
        $this->tpCte = $tpCte;
    }

    function setChvCteRef($chvCteRef) {
        $this->chvCteRef = $chvCteRef;
    }

    function setVlDoc($vlDoc) {
        $this->vlDoc = $vlDoc;
    }

    function setVlDesc($vlDesc) {
        $this->vlDesc = $vlDesc;
    }

    function setIndFrt($indFrt) {
        $this->indFrt = $indFrt;
    }

    function setVlServ($vlServ) {
        $this->vlServ = $vlServ;
    }

    function setVlBcIcms($vlBcIcms) {
        $this->vlBcIcms = $vlBcIcms;
    }

    function setVlIcms($vlIcms) {
        $this->vlIcms = $vlIcms;
    }

    function setVlNt($vlNt) {
        $this->vlNt = $vlNt;
    }

    function setCodInf($codInf) {
        $this->codInf = $codInf;
    }

    function setCodCta($codCta) {
        $this->codCta = $codCta;
    }


}
