<?php

class Reg0205 {
    private $reg;
    private $descrAntItem;
    private $dtIni;
    private $dtFim;
    private $codAntItem;
    
    function getReg() {
        return $this->reg;
    }

    function getDescrAntItem() {
        return $this->descrAntItem;
    }

    function getDtIni() {
        return $this->dtIni;
    }

    function getDtFim() {
        return $this->dtFim;
    }

    function getCodAntItem() {
        return $this->codAntItem;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setDescrAntItem($descrAntItem) {
        $this->descrAntItem = $descrAntItem;
    }

    function setDtIni($dtIni) {
        $this->dtIni = $dtIni;
    }

    function setDtFim($dtFim) {
        $this->dtFim = $dtFim;
    }

    function setCodAntItem($codAntItem) {
        $this->codAntItem = $codAntItem;
    }

    function __construct($linha) {
        $l = explode('|',$linha);
        if($l[1]=='0205'){
            $this->reg = $l[1];
            $this->descrAntItem = $l[2];
            $this->dtIni = convert_data($l[3]);
            $this->dtFim = convert_data($l[4]);
            $this->codAntItem = $l[5];
        }

    }

}
