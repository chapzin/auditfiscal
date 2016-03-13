<?php

class RegC170 {

    public $reg;
    public $numItem;
    public $CodItem;
    public $descrCompl;
    public $qtd;
    public $unid;
    public $vlItem;
    public $vlDesc;
    public $indMov;
    public $cstIcms;
    public $cfop;
    public $codNat;
    public $vlBcIcms;
    public $aliqIcms;
    public $vlIcms;
    public $vlBcIcmsSt;
    public $aliqSt;
    public $vlIcmsSt;
    public $indApur;
    public $cstIpi;
    public $codEnq;
    public $vlBcIpi;
    public $aliqIpi;
    public $vlIpi;
    public $cstPis;
    public $vlBcPis;
    public $aliqPisPerc;
    public $quantBcPis;
    public $aliqPisReais;
    public $vlPis;
    public $cstCofins;
    public $vlBcCofins;
    public $aliqCofinsPerc;
    public $quantBcCofins;
    public $aliqCofinsReais;
    public $vlCofins;
    public $codCta;

    function __construct($linha) {
        $l = explode('|', $linha);
        if ($l[1] == 'C170') {
            $this->reg = $l[1];
            $this->numItem = $l[2];
            $this->CodItem = $l[3];
            $this->descrCompl = $l[4];
            $this->qtd = $l[5];
            $this->unid = $l[6];
            $this->vlItem = $l[7];
            $this->vlDesc = $l[8];
            $this->indMov = $l[9];
            $this->cstIcms = $l[10];
            $this->cfop = $l[11];
            $this->codNat = $l[12];
            $this->vlBcIcms = $l[13];
            $this->aliqIcms = $l[14];
            $this->vlIcms = $l[15];
            $this->vlBcIcmsSt = $l[16];
            $this->aliqSt = $l[17];
            $this->vlIcmsSt = $l[18];
            $this->indApur = $l[19];
            $this->cstIpi = $l[20];
            $this->codEnq = $l[21];
            $this->vlBcIpi = $l[22];
            $this->aliqIpi = $l[23];
            $this->vlIpi = $l[24];
            $this->cstPis = $l[25];
            $this->vlBcPis = $l[26];
            $this->aliqPisPerc = $l[27];
            $this->quantBcPis = $l[28];
            $this->aliqPisReais = $l[29];
            $this->vlPis = $l[30];
            $this->cstCofins = $l[31];
            $this->vlBcCofins = $l[32];
            $this->aliqCofinsPerc = $l[33];
            $this->quantBcCofins = $l[34];
            $this->aliqCofinsReais = $l[35];
            $this->vlCofins = $l[36];
            $this->codCta = $l[37];
        }
    }

    function getReg() {
        return $this->reg;
    }

    function getNumItem() {
        return $this->numItem;
    }

    function getCodItem() {
        return $this->CodItem;
    }

    function getDescrCompl() {
        return $this->descrCompl;
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

    function getVlDesc() {
        return $this->vlDesc;
    }

    function getIndMov() {
        return $this->indMov;
    }

    function getCstIcms() {
        return $this->cstIcms;
    }

    function getCfop() {
        return $this->cfop;
    }

    function getCodNat() {
        return $this->codNat;
    }

    function getVlBcIcms() {
        return $this->vlBcIcms;
    }

    function getAliqIcms() {
        return $this->aliqIcms;
    }

    function getVlIcms() {
        return $this->vlIcms;
    }

    function getVlBcIcmsSt() {
        return $this->vlBcIcmsSt;
    }

    function getAliqSt() {
        return $this->aliqSt;
    }

    function getVlIcmsSt() {
        return $this->vlIcmsSt;
    }

    function getIndApur() {
        return $this->indApur;
    }

    function getCstIpi() {
        return $this->cstIpi;
    }

    function getCodEnq() {
        return $this->codEnq;
    }

    function getVlBcIpi() {
        return $this->vlBcIpi;
    }

    function getAliqIpi() {
        return $this->aliqIpi;
    }

    function getVlIpi() {
        return $this->vlIpi;
    }

    function getCstPis() {
        return $this->cstPis;
    }

    function getVlBcPis() {
        return $this->vlBcPis;
    }

    function getAliqPisPerc() {
        return $this->aliqPisPerc;
    }

    function getQuantBcPis() {
        return $this->quantBcPis;
    }

    function getAliqPisReais() {
        return $this->aliqPisReais;
    }

    function getVlPis() {
        return $this->vlPis;
    }

    function getCstCofins() {
        return $this->cstCofins;
    }

    function getVlBcCofins() {
        return $this->vlBcCofins;
    }

    function getAliqCofinsPerc() {
        return $this->aliqCofinsPerc;
    }

    function getQuantBcCofins() {
        return $this->quantBcCofins;
    }

    function getAliqCofinsReais() {
        return $this->aliqCofinsReais;
    }

    function getVlCofins() {
        return $this->vlCofins;
    }

    function getCodCta() {
        return $this->codCta;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setNumItem($numItem) {
        $this->numItem = $numItem;
    }

    function setCodItem($CodItem) {
        $this->CodItem = $CodItem;
    }

    function setDescrCompl($descrCompl) {
        $this->descrCompl = $descrCompl;
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

    function setVlDesc($vlDesc) {
        $this->vlDesc = $vlDesc;
    }

    function setIndMov($indMov) {
        $this->indMov = $indMov;
    }

    function setCstIcms($cstIcms) {
        $this->cstIcms = $cstIcms;
    }

    function setCfop($cfop) {
        $this->cfop = $cfop;
    }

    function setCodNat($codNat) {
        $this->codNat = $codNat;
    }

    function setVlBcIcms($vlBcIcms) {
        $this->vlBcIcms = $vlBcIcms;
    }

    function setAliqIcms($aliqIcms) {
        $this->aliqIcms = $aliqIcms;
    }

    function setVlIcms($vlIcms) {
        $this->vlIcms = $vlIcms;
    }

    function setVlBcIcmsSt($vlBcIcmsSt) {
        $this->vlBcIcmsSt = $vlBcIcmsSt;
    }

    function setAliqSt($aliqSt) {
        $this->aliqSt = $aliqSt;
    }

    function setVlIcmsSt($vlIcmsSt) {
        $this->vlIcmsSt = $vlIcmsSt;
    }

    function setIndApur($indApur) {
        $this->indApur = $indApur;
    }

    function setCstIpi($cstIpi) {
        $this->cstIpi = $cstIpi;
    }

    function setCodEnq($codEnq) {
        $this->codEnq = $codEnq;
    }

    function setVlBcIpi($vlBcIpi) {
        $this->vlBcIpi = $vlBcIpi;
    }

    function setAliqIpi($aliqIpi) {
        $this->aliqIpi = $aliqIpi;
    }

    function setVlIpi($vlIpi) {
        $this->vlIpi = $vlIpi;
    }

    function setCstPis($cstPis) {
        $this->cstPis = $cstPis;
    }

    function setVlBcPis($vlBcPis) {
        $this->vlBcPis = $vlBcPis;
    }

    function setAliqPisPerc($aliqPisPerc) {
        $this->aliqPisPerc = $aliqPisPerc;
    }

    function setQuantBcPis($quantBcPis) {
        $this->quantBcPis = $quantBcPis;
    }

    function setAliqPisReais($aliqPisReais) {
        $this->aliqPisReais = $aliqPisReais;
    }

    function setVlPis($vlPis) {
        $this->vlPis = $vlPis;
    }

    function setCstCofins($cstCofins) {
        $this->cstCofins = $cstCofins;
    }

    function setVlBcCofins($vlBcCofins) {
        $this->vlBcCofins = $vlBcCofins;
    }

    function setAliqCofinsPerc($aliqCofinsPerc) {
        $this->aliqCofinsPerc = $aliqCofinsPerc;
    }

    function setQuantBcCofins($quantBcCofins) {
        $this->quantBcCofins = $quantBcCofins;
    }

    function setAliqCofinsReais($aliqCofinsReais) {
        $this->aliqCofinsReais = $aliqCofinsReais;
    }

    function setVlCofins($vlCofins) {
        $this->vlCofins = $vlCofins;
    }

    function setCodCta($codCta) {
        $this->codCta = $codCta;
    }

}
