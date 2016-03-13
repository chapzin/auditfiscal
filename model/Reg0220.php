<?php

class Reg0220 {
    
    private $reg;
    private $unidConv;
    private $fatConv;
    
    function __construct($reg, $unidConv, $fatConv) {
        $this->reg = $reg;
        $this->unidConv = $unidConv;
        $this->fatConv = $fatConv;
    }

    function getReg() {
        return $this->reg;
    }

    function getUnidConv() {
        return $this->unidConv;
    }

    function getFatConv() {
        return $this->fatConv;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setUnidConv($unidConv) {
        $this->unidConv = $unidConv;
    }

    function setFatConv($fatConv) {
        $this->fatConv = $fatConv;
    }


}
