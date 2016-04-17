<?php
/**
 * Created by PhpStorm.
 * User: casa
 * Date: 17/04/2016
 * Time: 15:29
 */
require_once '../autoload.php';
$contaCodigo = 0;
$r0200 = new DaoReg0200();
foreach ($r0200->selectDistinct() as $produto){
    $est = new DaoEstoqueQtd();
    if($est->insertCodigo($produto->COD_ITEM)){
        $contaCodigo += 1;
    } else {
        echo "Erro ao adicionar codigo do produto<br/>";
    }
}

$rH010 = new DaoRegH010();
foreach ($rH010->selectAll("reg_h010","where dtInv='2010-12-31'") as $produto){
    $est = new DaoEstoqueQtd();
    if($est->updateInvIni($produto->COD_ITEM,$produto->QTD)){
        $contaInvIni += 1;
    } else {
        echo "Erro ao adicionar inventario inicial <br/>";
    }
}

