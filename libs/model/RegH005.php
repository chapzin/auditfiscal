<?php

class RegH005 {
    private $reg;
    private $dtInv;
    private $vlInv;
    private $motInv;
    

    public function populaSped($linha,$motInv='01'){
        $l = explode('|', $linha);
        if($l[1]=='H005'){
            $this->reg = $l[1];
            $this->dtInv=convert_data($l[2]);
            $this->vlInv=vlp($l[3]);
            if(isset($l[4])){
                $this->motInv=$l[4];
            } else {
                $this->motInv=$motInv;
            }

        }

    }

    function getReg() {
        return $this->reg;
    }

    function getDtInv() {
        return $this->dtInv;
    }

    function getVlInv() {
        return $this->vlInv;
    }

    function getMotInv() {
        return $this->motInv;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setDtInv($dtInv) {
        $this->dtInv = $dtInv;
    }

    function setVlInv($vlInv) {
        $this->vlInv = $vlInv;
    }

    function setMotInv($motInv) {
        $this->motInv = $motInv;
    }


    
}
