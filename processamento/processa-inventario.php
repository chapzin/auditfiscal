<?php
/**
 * Created by PhpStorm.
 * User: casa
 * Date: 17/04/2016
 * Time: 15:29
 */
/*
require_once '../libs/DaoReg0200.php';
require_once '../libs/DaoRegC170.php';
require_once '../libs/DaoRegC425.php';
require_once '../libs/DaoEstoqueQtd.php';
require_once '../libs/DaoRegH010.php';
*/
require_once '__analisar_autoload.php';
$contaCodigo = 0;
$contaInvIni = 0;
$contaEntradaPropria = 0;
$contaEntradaTerceiros = 0;
$contaSaidaPropriaNF = 0;
$contaSaidaPropriaCF = 0;
$contaInvFin = 0;

// Removendo tudo
$limpa = new DaoEstoqueQtd();
$limpa->deleteAll("estoque_qtd");
$limpa->deleteArgumento("reg_c170","where dtIni > '2011-12-31'");
$limpa->deleteArgumento("reg_c425","where dtIni > '2011-12-31'");

// Adiciona todos produtos distintos do 0200
$r0200 = new DaoReg0200();
foreach ($r0200->selectDistinct() as $produto) {
    $est = new DaoEstoqueQtd();
    if ($est->insertCodigo($produto->COD_ITEM)) {
        $contaCodigo += 1;
    } else {
        echo "Erro ao adicionar codigo do produto<br/>";
    }
}

// Adiciona inventario inicial
$rH010 = new DaoRegH010();
foreach ($rH010->selectAll("reg_h010", "where dtInv='2010-12-31'") as $produto) {
    $est = new DaoEstoqueQtd();
    if ($est->updateInvIni($produto->COD_ITEM, $produto->QTD)) {
        $contaInvIni += 1;
    } else {
        echo "Erro ao adicionar inventario inicial <br/>";
    }
}

// Adicionar entradas proprias
$rC170EntProprias = new DaoRegC170();
foreach ($rC170EntProprias->selectEntradasPropriasTotais() as $entradas){
    $est = new DaoEstoqueQtd();
    if($est->updateEntrada($entradas->COD_ITEM,$entradas->QTD)){
        $contaEntradaPropria +=1;
    } else {
        echo "Erro ao adicionar entrada propria <br/>";
    }
}

// Adicionar entradas terceiros
$rC170EntTerceiros = new DaoRegC170();
foreach ($rC170EntTerceiros->selectEntradasTerceirosTotais() as $entradasT){
    $est = new DaoEstoqueQtd();
    if($est->updateEntradaTerceiro($entradasT->COD_ITEM,$entradasT->QTD)){
        $contaEntradaTerceiros +=1;
    } else {
        echo "Erro ao adicionar entrada propria <br/>";
    }
}

// Adicionar Saidas NF
$rC170SaidasProprias = new DaoRegC170();
foreach ($rC170SaidasProprias->selectSaidasPropriasTotais() as $saidas){
    $est = new DaoEstoqueQtd();
    if($est->updateSaidaNF($saidas->COD_ITEM,$saidas->QTD)){
        $contaSaidaPropriaNF +=1;
    } else {
        echo "Erro ao adicionar saida propria NF <br/>";
    }
}

// Adicionar Saidas CF
$rC425 = new DaoRegC425();
foreach ($rC425->selectTotalCF() as $saidasCF){
    $est = new DaoEstoqueQtd();
    if($est->updateSaidaCF($saidasCF->COD_ITEM,$saidasCF->QTD)){
        $contaSaidaPropriaCF +=1;
    } else {
        echo "Erro ao adicionar saida propria CF <br/>";
    }
}


// Adiciona inventario Final
$rH010 = new DaoRegH010();
foreach ($rH010->selectAll("reg_h010", "where dtInv='2011-12-31'") as $produto) {
    $est = new DaoEstoqueQtd();
    if ($est->updateInvFin($produto->COD_ITEM, $produto->QTD)) {
        $contaInvFin += 1;
    } else {
        echo "Erro ao adicionar inventario inicial <br/>";
    }
}

// Verifica diferenças de estoque
$estoque = new DaoEstoqueQtd();
foreach ($estoque->selectAll("estoque_qtd") as $est){
    // Calculando
    $diferenca = ($est->inv_ini+$est->entradas+$est->entrada_terceiro) - ($est->saidas_nf+$est->saidas_cf);
    if($diferenca <> $est->inv_final){
        echo "O codigo {$est->codigo} inv_final={$est->inv_final} e correto={$diferenca}<br/>";
    }
}

