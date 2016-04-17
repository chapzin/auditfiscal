<?php

class Reg0150 {

    private $reg;
    private $codPart;
    private $nome;
    private $codPais;
    private $cnpj;
    private $cpf;
    private $ie;
    private $codMun;
    private $suframa;
    private $end;
    private $num;
    private $compl;
    private $bairro;

    function __construct($linha) {
        $l = explode('|', $linha);
        if ($l[1] == '0150') {
            $this->reg = $l[1];
            $this->codPart = $l[2];
            $this->nome = str_replace("'","",$l[3]);
            $this->codPais = $l[4];
            $this->cnpj = $l[5];
            $this->cpf = $l[6];
            $this->ie = $l[7];
            $this->codMun = $l[8];
            $this->suframa = $l[9];
            $this->end = str_replace("'","",$l[10]);
            $this->num = $l[11];
            $this->compl = $l[12];
            $this->bairro = str_replace("'","",$l[13]);
        }
    }

    function getReg() {
        return $this->reg;
    }

    function getCodPart() {
        return $this->codPart;
    }

    function getNome() {
        return $this->nome;
    }

    function getCodPais() {
        return $this->codPais;
    }

    function getCnpj() {
        return $this->cnpj;
    }

    function getCpf() {
        return $this->cpf;
    }

    function getIe() {
        return $this->ie;
    }

    function getCodMun() {
        return $this->codMun;
    }

    function getSuframa() {
        return $this->suframa;
    }

    function getEnd() {
        return $this->end;
    }

    function getNum() {
        return $this->num;
    }

    function getCompl() {
        return $this->compl;
    }

    function getBairro() {
        return $this->bairro;
    }

    function setReg($reg) {
        $this->reg = $reg;
    }

    function setCodPart($codPart) {
        $this->codPart = $codPart;
    }

    function setNome($nome) {
        $this->nome = $nome;
    }

    function setCodPais($codPais) {
        $this->codPais = $codPais;
    }

    function setCnpj($cnpj) {
        $this->cnpj = $cnpj;
    }

    function setCpf($cpf) {
        $this->cpf = $cpf;
    }

    function setIe($ie) {
        $this->ie = $ie;
    }

    function setCodMun($codMun) {
        $this->codMun = $codMun;
    }

    function setSuframa($suframa) {
        $this->suframa = $suframa;
    }

    function setEnd($end) {
        $this->end = $end;
    }

    function setNum($num) {
        $this->num = $num;
    }

    function setCompl($compl) {
        $this->compl = $compl;
    }

    function setBairro($bairro) {
        $this->bairro = $bairro;
    }

}
