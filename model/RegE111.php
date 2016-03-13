<?php

class RegE111 {
    private $reg;
    private $codAjApur;
    private $descrComplAj;
    private $vlAjApur;
    
    function __construct($reg, $codAjApur, $descrComplAj, $vlAjApur) {
        $this->reg = $reg;
        $this->codAjApur = $codAjApur;
        $this->descrComplAj = $descrComplAj;
        $this->vlAjApur = $vlAjApur;
    }
    
    function getReg() {
        return $this->reg;
    }

    function getCodAjApur() {
        return $this->codAjApur;
    }

    function getDescrComplAj() {
        return $this->descrComplAj;
    }

    function getVlAjApur() {
        return $this->vlAjApur;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setCodAjApur($codAjApur) {
        $this->codAjApur = $codAjApur;
    }

    function setDescrComplAj($descrComplAj) {
        $this->descrComplAj = $descrComplAj;
    }

    function setVlAjApur($vlAjApur) {
        $this->vlAjApur = $vlAjApur;
    }



}
