<?php
include_once '../processamento/conexao.php';
class RegC425 {
    private $reg;
    private $codItem;
    private $qtd;
    private $unid;
    private $vlItem;
    private $vlPis;
    private $vlCofins;
    

    public function populaSped($linha){
        $l = explode('|', $linha);
        if ($l[1] == 'C425') {
            $this->reg=$l[1];
            $this->codItem=$l[2];
            $this->qtd=vlp($l[3]);
            $this->unid=$l[4];
            $this->vlItem=vlp($l[5]);
            $this->vlPis=vlp($l[6]);
            $this->vlCofins=vlp($l[7]);
        }
    }

    function getReg() {
        return $this->reg;
    }

    function getCodItem() {
        return $this->codItem;
    }

    function getQtd() {
        return $this->qtd;
    }

    function getUnid() {
        return $this->unid;
    }

    function getVlItem() {
        return $this->vlItem;
    }

    function getVlPis() {
        return $this->vlPis;
    }

    function getVlCofins() {
        return $this->vlCofins;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setCodItem($codItem) {
        $this->codItem = $codItem;
    }

    function setQtd($qtd) {
        $this->qtd = $qtd;
    }

    function setUnid($unid) {
        $this->unid = $unid;
    }

    function setVlItem($vlItem) {
        $this->vlItem = $vlItem;
    }

    function setVlPis($vlPis) {
        $this->vlPis = $vlPis;
    }

    function setVlCofins($vlCofins) {
        $this->vlCofins = $vlCofins;
    }



}
