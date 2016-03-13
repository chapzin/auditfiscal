<?php

class RegE210 {
    
    private $reg;
    private $indMovSt;
    private $vlSldCredAntSt;
    private $vlDevolSt;
    private $vlRessarcSt;
    private $vlOutCredSt;
    private $vlAjCreditosSt;
    private $vlRetencaoSt;
    private $vlOutDebSt;
    private $vlAjDebitosSt;
    private $vlSldDevAntSt;
    private $vlDeducoesSt;
    private $vlIcmsRecolSt;
    private $vlSldCredStTransportar;
    private $debEspSt;
    
    function __construct($reg, $indMovSt, $vlSldCredAntSt, $vlDevolSt, $vlRessarcSt, $vlOutCredSt, $vlAjCreditosSt, $vlRetencaoSt, $vlOutDebSt, $vlAjDebitosSt, $vlSldDevAntSt, $vlDeducoesSt, $vlIcmsRecolSt, $vlSldCredStTransportar, $debEspSt) {
        $this->reg = $reg;
        $this->indMovSt = $indMovSt;
        $this->vlSldCredAntSt = $vlSldCredAntSt;
        $this->vlDevolSt = $vlDevolSt;
        $this->vlRessarcSt = $vlRessarcSt;
        $this->vlOutCredSt = $vlOutCredSt;
        $this->vlAjCreditosSt = $vlAjCreditosSt;
        $this->vlRetencaoSt = $vlRetencaoSt;
        $this->vlOutDebSt = $vlOutDebSt;
        $this->vlAjDebitosSt = $vlAjDebitosSt;
        $this->vlSldDevAntSt = $vlSldDevAntSt;
        $this->vlDeducoesSt = $vlDeducoesSt;
        $this->vlIcmsRecolSt = $vlIcmsRecolSt;
        $this->vlSldCredStTransportar = $vlSldCredStTransportar;
        $this->debEspSt = $debEspSt;
    }
    
    function getReg() {
        return $this->reg;
    }

    function getIndMovSt() {
        return $this->indMovSt;
    }

    function getVlSldCredAntSt() {
        return $this->vlSldCredAntSt;
    }

    function getVlDevolSt() {
        return $this->vlDevolSt;
    }

    function getVlRessarcSt() {
        return $this->vlRessarcSt;
    }

    function getVlOutCredSt() {
        return $this->vlOutCredSt;
    }

    function getVlAjCreditosSt() {
        return $this->vlAjCreditosSt;
    }

    function getVlRetencaoSt() {
        return $this->vlRetencaoSt;
    }

    function getVlOutDebSt() {
        return $this->vlOutDebSt;
    }

    function getVlAjDebitosSt() {
        return $this->vlAjDebitosSt;
    }

    function getVlSldDevAntSt() {
        return $this->vlSldDevAntSt;
    }

    function getVlDeducoesSt() {
        return $this->vlDeducoesSt;
    }

    function getVlIcmsRecolSt() {
        return $this->vlIcmsRecolSt;
    }

    function getVlSldCredStTransportar() {
        return $this->vlSldCredStTransportar;
    }

    function getDebEspSt() {
        return $this->debEspSt;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setIndMovSt($indMovSt) {
        $this->indMovSt = $indMovSt;
    }

    function setVlSldCredAntSt($vlSldCredAntSt) {
        $this->vlSldCredAntSt = $vlSldCredAntSt;
    }

    function setVlDevolSt($vlDevolSt) {
        $this->vlDevolSt = $vlDevolSt;
    }

    function setVlRessarcSt($vlRessarcSt) {
        $this->vlRessarcSt = $vlRessarcSt;
    }

    function setVlOutCredSt($vlOutCredSt) {
        $this->vlOutCredSt = $vlOutCredSt;
    }

    function setVlAjCreditosSt($vlAjCreditosSt) {
        $this->vlAjCreditosSt = $vlAjCreditosSt;
    }

    function setVlRetencaoSt($vlRetencaoSt) {
        $this->vlRetencaoSt = $vlRetencaoSt;
    }

    function setVlOutDebSt($vlOutDebSt) {
        $this->vlOutDebSt = $vlOutDebSt;
    }

    function setVlAjDebitosSt($vlAjDebitosSt) {
        $this->vlAjDebitosSt = $vlAjDebitosSt;
    }

    function setVlSldDevAntSt($vlSldDevAntSt) {
        $this->vlSldDevAntSt = $vlSldDevAntSt;
    }

    function setVlDeducoesSt($vlDeducoesSt) {
        $this->vlDeducoesSt = $vlDeducoesSt;
    }

    function setVlIcmsRecolSt($vlIcmsRecolSt) {
        $this->vlIcmsRecolSt = $vlIcmsRecolSt;
    }

    function setVlSldCredStTransportar($vlSldCredStTransportar) {
        $this->vlSldCredStTransportar = $vlSldCredStTransportar;
    }

    function setDebEspSt($debEspSt) {
        $this->debEspSt = $debEspSt;
    }



}
