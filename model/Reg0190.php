<?php

class Reg0190 {

    private $reg;
    private $unid;
    private $descr;

    function getReg() {
        return $this->reg;
    }

    function getUnid() {
        return $this->unid;
    }

    function getDescr() {
        return $this->descr;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setUnid($unid) {
        $this->unid = $unid;
    }

    function setDescr($descr) {
        $this->descr = $descr;
    }

    function __construct($linha) {
        $l = explode('|', $linha);
        if ($l[1] == '0190') {
            $this->reg = $l[1];
            $this->unid = $l[2];
            $this->descr = $l[3];
        }
    }

}
