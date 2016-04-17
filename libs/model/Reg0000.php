<?php

class Reg0000 {
    public $reg;
    public $codVer;
    public $codFin;
    public $dtIni;
    public $dtFin;
    public $nome;
    public $cnpj;
    public $cpf;
    public $uf;
    public $ie;
    public $codMun;
    public $im;
    public $suframa;
    public $indPerfil;
    public $indAtiv;


    
    function __construct($linha) {
        $l = explode('|', $linha);
        if($l[1]=='0000'){
        $this->setReg($l[1]);
        $this->setCodVer($l[2]);
        $this->codFin = $l[3];
        $this->dtIni = convert_data($l[4]);
        $this->dtFin = convert_data($l[5]);
        $this->nome = $l[6];
        $this->cnpj = $l[7];
        $this->cpf = $l[8];
        $this->uf = $l[9];
        $this->ie = $l[10];
        $this->codMun = $l[11];
        $this->im = $l[12];
        $this->suframa = $l[13];
        $this->indPerfil = $l[14];
        $this->indAtiv = $l[15];
        }
    }

    
    function getReg() {
        return $this->reg;
    }

    function getCodVer() {
        return $this->codVer;
    }

    function getCodFin() {
        return $this->codFin;
    }

    function getDtIni() {
        return $this->dtIni;
    }

    function getDtFin() {
        return $this->dtFin;
    }

    function getNome() {
        return $this->nome;
    }

    function getCnpj() {
        return $this->cnpj;
    }

    function getCpf() {
        return $this->cpf;
    }

    function getUf() {
        return $this->uf;
    }

    function getIe() {
        return $this->ie;
    }

    function getCodMun() {
        return $this->codMun;
    }

    function getIm() {
        return $this->im;
    }

    function getSuframa() {
        return $this->suframa;
    }

    function getIndPerfil() {
        return $this->indPerfil;
    }

    function getIndAtiv() {
        return $this->indAtiv;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setCodVer($codVer) {
        $this->codVer = $codVer;
    }

    function setCodFin($codFin) {
        $this->codFin = $codFin;
    }

    function setDtIni($dtIni) {
        $this->dtIni = $dtIni;
    }

    function setDtFin($dtFin) {
        $this->dtFin = $dtFin;
    }

    function setNome($nome) {
        $this->nome = $nome;
    }

    function setCnpj($cnpj) {
        $this->cnpj = $cnpj;
    }

    function setCpf($cpf) {
        $this->cpf = $cpf;
    }

    function setUf($uf) {
        $this->uf = $uf;
    }

    function setIe($ie) {
        $this->ie = $ie;
    }

    function setCodMun($codMun) {
        $this->codMun = $codMun;
    }

    function setIm($im) {
        $this->im = $im;
    }

    function setSuframa($suframa) {
        $this->suframa = $suframa;
    }

    function setIndPerfil($indPerfil) {
        $this->indPerfil = $indPerfil;
    }

    function setIndAtiv($indAtiv) {
        $this->indAtiv = $indAtiv;
    }


    
    
}
