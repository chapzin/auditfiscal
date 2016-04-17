<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 10/04/2016
 * Time: 20:26
 */
require_once 'conexao.php';
require_once '../model/Reg0000.php';
require_once '../model/Reg0150.php';
require_once '../model/Reg0200.php';
require_once '../model/Reg0190.php';
require_once '../model/Reg0220.php';
require_once '../model/RegC100.php';
require_once '../model/RegC170.php';
require_once '../model/RegH005.php';
require_once '../model/RegH010.php';
require_once '../model/RegC425.php';
require_once '../dao/DaoReg0000.php';
require_once '../dao/DaoReg0150.php';
require_once '../dao/DaoReg0200.php';
require_once '../dao/DaoReg0190.php';
require_once '../dao/DaoReg0205.php';
require_once '../dao/DaoReg0220.php';
require_once '../dao/DaoRegC100.php';
require_once '../dao/DaoRegC170.php';
require_once '../dao/DaoRegC425.php';
require_once '../dao/DaoRegH005.php';
require_once '../dao/DaoRegH010.php';

$dir_speds = 'speds/';


$speds = dir($dir_speds);
while ($arquivo = $speds->read()) {
    if (!is_dir($arquivo)) {
        $linhas = file($dir_speds . $arquivo);
        $contaLinhas = 0;
        $conta0000= 0;
        $conta0150= 0;
        $conta0190= 0;
        $conta0200= 0;
        $conta0205= 0;
        $conta0220= 0;
        $contaC100= 0;
        $contaC170= 0;
        $contaH005= 0;
        $contaH010= 0;
        $contaC425= 0;
        foreach ($linhas as $linha) {
            $contaLinhas = $contaLinhas +1;
            if ($linha[0] == '|') {
                $l = explode('|', $linha);
                if($l[1]=='0000'){
                    $reg0000 = new Reg0000($linha);
                    $PersistenciaReg0000 = new DaoReg0000();
                    if($PersistenciaReg0000->create($reg0000)){
                        $conta0000 = $conta0000+1;
                    } else {
                        // TODO contagem nao adicionanda
                    }

                }
                if($l[1]=='0150'){
                    $reg0150 = new Reg0150($linha);
                    $PersistenciaReg0150 = new DaoReg0150();
                    if($PersistenciaReg0150->createDtIni($reg0150,$reg0000->getDtIni())){
                        $conta0150 = $conta0150+1;
                    } else {
                        // TODO contagem nao adicionada
                    }
                }
                if($l[1]=='0190'){
                    $reg0190 = new Reg0190($linha);
                    $PersistenciaReg0190 = new DaoReg0190();
                    if($PersistenciaReg0190->createDtIni($reg0190,$reg0000->getDtIni())){
                        $conta0190 = $conta0190+1;
                    } else {
                        // TODO contagem nao adicionada
                    }
                }
                if($l[1]=='0200'){
                    $reg0200 = new Reg0200($linha);
                    $PersistenciaReg0200 = new DaoReg0200();
                    if($PersistenciaReg0200->createDtIni($reg0200,$reg0000->getDtIni())){
                        $conta0200 = $conta0200+1;
                    } else {
                        // TODO contagem nao adicionada
                    }
                }
                if($l[1]=='0205'){
                    $reg0205 = new Reg0205($linha);
                    $PersistenciaReg0205 = new DaoReg0205();
                    if($PersistenciaReg0205->createDtIni($reg0205,$reg0000->getDtIni())){
                        $conta0205 = $conta0205+1;
                    } else {
                        // TODO contagem nao adicionada
                    }
                }
                if($l[1]=='0220'){
                    $reg0220 = new Reg0220($linha);
                    $PersistenciaReg0220 = new DaoReg0220();
                    if($PersistenciaReg0220->createDtIni($reg0220,$reg0000->getDtIni())){
                        $conta0220 = $conta0220 +1;
                    } else {
                        // TODO contagem nao adicionada
                    }
                }
                if($l[1]=='C100'){
                    $regC100 = new RegC100();
                    $regC100->populaSped($linha);
                    $PersistenciaRegC100 = new DaoRegC100();
                    $linhaC100 = $contaLinhas;
                    if($PersistenciaRegC100->createSped($regC100,$reg0000->getDtIni(),$linhaC100)){
                        $contaC100 = $contaC100 +1;
                    } else {
                        // TODO contagem nao adicionada
                    }
                }
                if($l[1]=='C170'){
                    $regC170 = new RegC170();
                    $regC170->populaSped($linha);
                    $PersistenciaRegC170 = new DaoRegC170();
                    if($PersistenciaRegC170->createSped($regC170,$reg0000->getDtIni(),$contaLinhas,$linhaC100)){
                        $contaC170 = $contaC170 +1;
                    } else {
                        // TODO contagem nao adicionada
                    }
                }

                if($l[1]=='C425'){
                    $regC425 = new RegC425();
                    $regC425->populaSped($linha);
                    $PersistenciaRegC425 = new DaoRegC425();
                    if($PersistenciaRegC425->createSped($regC425,$reg0000->getDtIni(),$contaLinhas)){
                        $contaC425 +=1;
                    } else {
                        // TODO contagem nao adicionada
                    }

                }

                if($l[1]=='H005'){
                    $regH005 = new RegH005();
                    $regH005->populaSped($linha);
                    $PersistenciaRegH005 = new DaoRegH005();
                    if($PersistenciaRegH005->createSped($regH005,$reg0000->getDtIni(),$contaLinhas)){
                        $contaH005 += 1;
                    } else {
                        // TODO contagem nao adicionada
                    }
                }

                if($l[1]=='H010'){
                    $regH010 = new RegH010();
                    $regH010->populaSped($linha,$regH005->getDtInv());
                    $PersistenciaRegH010 = new DaoRegH010();
                    if($PersistenciaRegH010->createSped($regH010,$reg0000->getDtIni(),$contaLinhas)){
                        $contaH010 += 1;
                    } else {
                        // TODO contagem nao adicionada
                    }
                }





            }
        }
        echo "Arquivo referente a {$reg0000->getNome()} do periodo {$reg0000->getDtIni()} ate {$reg0000->getDtFin()}<br/>";
        echo "Total de linhas verificadas {$contaLinhas}<br/>";
        echo "Total de Registros 0000 = {$conta0000} <br/>";
        echo "Total de Registros 0150 = {$conta0150} <br/>";
        echo "Total de Registros 0190 = {$conta0190} <br/>";
        echo "Total de Registros 0200 = {$conta0200} <br/>";
        echo "Total de Registros 0205 = {$conta0205} <br/>";
        echo "Total de Registros 0220 = {$conta0220} <br/>";
        echo "Total de Registros C100 = {$contaC100} <br/>";
        echo "Total de Registros C170 = {$contaC170} <br/>";
        echo "Total de Registros C425 = {$contaC425} <br/>";
        echo "Total de Registros H005 = {$contaH005} <br/>";
        echo "Total de Registros H010 = {$contaH010} <br/>";
    }
}

