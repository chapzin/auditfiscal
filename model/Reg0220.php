<?php

class Reg0220 {
    
    private $reg;
    private $unidConv;
    private $fatConv;
    
    function __construct($linha) {
        $l = explode('|', $linha);
        if ($l[1] == '0220') {
            $this->reg = $l[1];
            $this->unidConv = $l[2];
            $this->fatConv = $l[3];
        }

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
