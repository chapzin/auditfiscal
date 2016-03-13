<?php

class RegE110 {
    private $reg;
    private $vlTotDebitos;
    private $vlAjDebitos;
    private $vlTotAjDebitos;
    private $vlEstornosCred;
    private $vlTotCreditos;
    private $vlAjCreditos;
    private $vlTotAjCreditos;
    private $vlEstornosDeb;
    private $vlSldCredorAnt;
    private $vlSldApurado;
    private $vlTotDeb;
    private $vlIcmsRecolher;
    private $vlSldCredorTransportar;
    private $debEsp;
    
    function __construct($reg, $vlTotDebitos, $vlAjDebitos, $vlTotAjDebitos, $vlEstornosCred, $vlTotCreditos, $vlAjCreditos, $vlTotAjCreditos, $vlEstornosDeb, $vlSldCredorAnt, $vlSldApurado, $vlTotDeb, $vlIcmsRecolher, $vlSldCredorTransportar, $debEsp) {
        $this->reg = $reg;
        $this->vlTotDebitos = $vlTotDebitos;
        $this->vlAjDebitos = $vlAjDebitos;
        $this->vlTotAjDebitos = $vlTotAjDebitos;
        $this->vlEstornosCred = $vlEstornosCred;
        $this->vlTotCreditos = $vlTotCreditos;
        $this->vlAjCreditos = $vlAjCreditos;
        $this->vlTotAjCreditos = $vlTotAjCreditos;
        $this->vlEstornosDeb = $vlEstornosDeb;
        $this->vlSldCredorAnt = $vlSldCredorAnt;
        $this->vlSldApurado = $vlSldApurado;
        $this->vlTotDeb = $vlTotDeb;
        $this->vlIcmsRecolher = $vlIcmsRecolher;
        $this->vlSldCredorTransportar = $vlSldCredorTransportar;
        $this->debEsp = $debEsp;
    }
    
    function getReg() {
        return $this->reg;
    }

    function getVlTotDebitos() {
        return $this->vlTotDebitos;
    }

    function getVlAjDebitos() {
        return $this->vlAjDebitos;
    }

    function getVlTotAjDebitos() {
        return $this->vlTotAjDebitos;
    }

    function getVlEstornosCred() {
        return $this->vlEstornosCred;
    }

    function getVlTotCreditos() {
        return $this->vlTotCreditos;
    }

    function getVlAjCreditos() {
        return $this->vlAjCreditos;
    }

    function getVlTotAjCreditos() {
        return $this->vlTotAjCreditos;
    }

    function getVlEstornosDeb() {
        return $this->vlEstornosDeb;
    }

    function getVlSldCredorAnt() {
        return $this->vlSldCredorAnt;
    }

    function getVlSldApurado() {
        return $this->vlSldApurado;
    }

    function getVlTotDeb() {
        return $this->vlTotDeb;
    }

    function getVlIcmsRecolher() {
        return $this->vlIcmsRecolher;
    }

    function getVlSldCredorTransportar() {
        return $this->vlSldCredorTransportar;
    }

    function getDebEsp() {
        return $this->debEsp;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setVlTotDebitos($vlTotDebitos) {
        $this->vlTotDebitos = $vlTotDebitos;
    }

    function setVlAjDebitos($vlAjDebitos) {
        $this->vlAjDebitos = $vlAjDebitos;
    }

    function setVlTotAjDebitos($vlTotAjDebitos) {
        $this->vlTotAjDebitos = $vlTotAjDebitos;
    }

    function setVlEstornosCred($vlEstornosCred) {
        $this->vlEstornosCred = $vlEstornosCred;
    }

    function setVlTotCreditos($vlTotCreditos) {
        $this->vlTotCreditos = $vlTotCreditos;
    }

    function setVlAjCreditos($vlAjCreditos) {
        $this->vlAjCreditos = $vlAjCreditos;
    }

    function setVlTotAjCreditos($vlTotAjCreditos) {
        $this->vlTotAjCreditos = $vlTotAjCreditos;
    }

    function setVlEstornosDeb($vlEstornosDeb) {
        $this->vlEstornosDeb = $vlEstornosDeb;
    }

    function setVlSldCredorAnt($vlSldCredorAnt) {
        $this->vlSldCredorAnt = $vlSldCredorAnt;
    }

    function setVlSldApurado($vlSldApurado) {
        $this->vlSldApurado = $vlSldApurado;
    }

    function setVlTotDeb($vlTotDeb) {
        $this->vlTotDeb = $vlTotDeb;
    }

    function setVlIcmsRecolher($vlIcmsRecolher) {
        $this->vlIcmsRecolher = $vlIcmsRecolher;
    }

    function setVlSldCredorTransportar($vlSldCredorTransportar) {
        $this->vlSldCredorTransportar = $vlSldCredorTransportar;
    }

    function setDebEsp($debEsp) {
        $this->debEsp = $debEsp;
    }



}
