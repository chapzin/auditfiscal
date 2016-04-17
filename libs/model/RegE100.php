<?php

class RegE100 {
    private $reg;
    private $dtIni;
    private $dtFin;
    
    function __construct($reg, $dtIni, $dtFin) {
        $this->reg = $reg;
        $this->dtIni = $dtIni;
        $this->dtFin = $dtFin;
    }
    
    function getReg() {
        return $this->reg;
    }

    function getDtIni() {
        return $this->dtIni;
    }

    function getDtFin() {
        return $this->dtFin;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setDtIni($dtIni) {
        $this->dtIni = $dtIni;
    }

    function setDtFin($dtFin) {
        $this->dtFin = $dtFin;
    }



}
