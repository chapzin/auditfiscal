<?php

class RegC100 {

    public $reg;
    public $indOper;
    public $indEmit;
    public $codPart;
    public $codMod;
    public $codSit;
    public $ser;
    public $numDoc;
    public $chvNfe;
    public $dtDoc;
    public $dtES;
    public $vlDoc;
    public $indPgto;
    public $vlDesc;
    public $vlAbatNt;
    public $vlMerc;
    public $indFrt;
    public $vlFrt;
    public $vlSeg;
    public $vlOutDa;
    public $vlBcIcms;
    public $vlIcms;
    public $vlBcIcmsSt;
    public $vlIcmsSt;
    public $vlIpi;
    public $vlPis;
    public $vlCofins;
    public $vlPisSt;
    public $vlCofinsSt;
    public $c170;

    public function addC170($objC170){
        $this->c170[] = $objC170;
    }
    
    function __construct($linha) {
        $l = explode('|', $linha);
        if ($l[1] == 'C100') {
            $this->reg = $l[1];
            $this->indOper = $l[2];
            $this->indEmit = $l[3];
            $this->codPart = $l[4];
            $this->codMod = $l[5];
            $this->codSit = $l[6];
            $this->ser = $l[7];
            $this->numDoc = $l[8];
            $this->chvNfe = $l[9];
            $this->dtDoc = $l[10];
            $this->dtES = $l[11];
            $this->vlDoc = $l[12];
            $this->indPgto = $l[13];
            $this->vlDesc = $l[14];
            $this->vlAbatNt = $l[15];
            $this->vlMerc = $l[16];
            $this->indFrt = $l[17];
            $this->vlFrt = $l[18];
            $this->vlSeg = $l[19];
            $this->vlOutDa = $l[20];
            $this->vlBcIcms = $l[21];
            $this->vlIcms = $l[22];
            $this->vlBcIcmsSt = $l[23];
            $this->vlIcmsSt = $l[24];
            $this->vlIpi = $l[25];
            $this->vlPis = $l[26];
            $this->vlCofins = $l[27];
            $this->vlPisSt = $l[28];
            $this->vlCofinsSt = $l[29];
        }
    }

    function getReg() {
        return $this->reg;
    }

    function getIndOper() {
        return $this->indOper;
    }

    function getIndEmit() {
        return $this->indEmit;
    }

    function getCodPart() {
        return $this->codPart;
    }

    function getCodMod() {
        return $this->codMod;
    }

    function getCodSit() {
        return $this->codSit;
    }

    function getSer() {
        return $this->ser;
    }

    function getNumDoc() {
        return $this->numDoc;
    }

    function getChvNfe() {
        return $this->chvNfe;
    }

    function getDtDoc() {
        return $this->dtDoc;
    }

    function getDtES() {
        return $this->dtES;
    }

    function getVlDoc() {
        return $this->vlDoc;
    }

    function getIndPgto() {
        return $this->indPgto;
    }

    function getVlDesc() {
        return $this->vlDesc;
    }

    function getVlAbatNt() {
        return $this->vlAbatNt;
    }

    function getVlMerc() {
        return $this->vlMerc;
    }

    function getIndFrt() {
        return $this->indFrt;
    }

    function getVlFrt() {
        return $this->vlFrt;
    }

    function getVlSeg() {
        return $this->vlSeg;
    }

    function getVlOutDa() {
        return $this->vlOutDa;
    }

    function getVlBcIcms() {
        return $this->vlBcIcms;
    }

    function getVlIcms() {
        return $this->vlIcms;
    }

    function getVlBcIcmsSt() {
        return $this->vlBcIcmsSt;
    }

    function getVlIcmsSt() {
        return $this->vlIcmsSt;
    }

    function getVlIpi() {
        return $this->vlIpi;
    }

    function getVlPis() {
        return $this->vlPis;
    }

    function getVlCofins() {
        return $this->vlCofins;
    }

    function getVlPisSt() {
        return $this->vlPisSt;
    }

    function getVlCofinsSt() {
        return $this->vlCofinsSt;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setIndOper($indOper) {
        $this->indOper = $indOper;
    }

    function setIndEmit($indEmit) {
        $this->indEmit = $indEmit;
    }

    function setCodPart($codPart) {
        $this->codPart = $codPart;
    }

    function setCodMod($codMod) {
        $this->codMod = $codMod;
    }

    function setCodSit($codSit) {
        $this->codSit = $codSit;
    }

    function setSer($ser) {
        $this->ser = $ser;
    }

    function setNumDoc($numDoc) {
        $this->numDoc = $numDoc;
    }

    function setChvNfe($chvNfe) {
        $this->chvNfe = $chvNfe;
    }

    function setDtDoc($dtDoc) {
        $this->dtDoc = $dtDoc;
    }

    function setDtES($dtES) {
        $this->dtES = $dtES;
    }

    function setVlDoc($vlDoc) {
        $this->vlDoc = $vlDoc;
    }

    function setIndPgto($indPgto) {
        $this->indPgto = $indPgto;
    }

    function setVlDesc($vlDesc) {
        $this->vlDesc = $vlDesc;
    }

    function setVlAbatNt($vlAbatNt) {
        $this->vlAbatNt = $vlAbatNt;
    }

    function setVlMerc($vlMerc) {
        $this->vlMerc = $vlMerc;
    }

    function setIndFrt($indFrt) {
        $this->indFrt = $indFrt;
    }

    function setVlFrt($vlFrt) {
        $this->vlFrt = $vlFrt;
    }

    function setVlSeg($vlSeg) {
        $this->vlSeg = $vlSeg;
    }

    function setVlOutDa($vlOutDa) {
        $this->vlOutDa = $vlOutDa;
    }

    function setVlBcIcms($vlBcIcms) {
        $this->vlBcIcms = $vlBcIcms;
    }

    function setVlIcms($vlIcms) {
        $this->vlIcms = $vlIcms;
    }

    function setVlBcIcmsSt($vlBcIcmsSt) {
        $this->vlBcIcmsSt = $vlBcIcmsSt;
    }

    function setVlIcmsSt($vlIcmsSt) {
        $this->vlIcmsSt = $vlIcmsSt;
    }

    function setVlIpi($vlIpi) {
        $this->vlIpi = $vlIpi;
    }

    function setVlPis($vlPis) {
        $this->vlPis = $vlPis;
    }

    function setVlCofins($vlCofins) {
        $this->vlCofins = $vlCofins;
    }

    function setVlPisSt($vlPisSt) {
        $this->vlPisSt = $vlPisSt;
    }

    function setVlCofinsSt($vlCofinsSt) {
        $this->vlCofinsSt = $vlCofinsSt;
    }

}
