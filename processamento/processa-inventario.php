<?php

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
    if ($est->updateInvIni($produto->COD_ITEM, $produto->QTD,$produto->VL_UNIT)) {
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
    if ($est->updateInvFin($produto->COD_ITEM, $produto->QTD,$produto->VL_UNIT)) {
        $contaInvFin += 1;
    } else {
        echo "Erro ao adicionar inventario inicial <br/>";
    }
}

// Verifica diferenças de estoque e atualiza o campo diferença
$estoque = new DaoEstoqueQtd();
foreach ($estoque->selectAll("estoque_qtd") as $est){
    // Calculando
    $diferenca = ($est->inv_ini+$est->entradas+$est->entrada_terceiro) - ($est->saidas_nf+$est->saidas_cf);
    $estUp = new DaoEstoqueQtd();
    $estUp->updateDiferenca($est->codigo,$diferenca);
    if($diferenca <> $est->inv_final){
        //echo "O codigo {$est->codigo} inv_final={$est->inv_final} e correto={$diferenca}<br/>";
    }
}


// Lista estoque sem valores unitários
$estoque = new DaoEstoqueQtd();
foreach($estoque->selectAll("estoque_qtd","where vl_unit is null") as $est){
    if($est->entrada_terceiro > 0){
        $estC170 = new DaoRegC170();
        $obj = $estC170->vlUnitMedioEntradaTerceiro($est->codigo);
        //print_r($obj);
        //echo "Testeeeeeeeeeeeeee - {$obj->COD_ITEM} e valor {$obj->VL_UNIT} <br/> ";
        $estoque->updateVlUnit($obj->COD_ITEM,$obj->VL_UNIT);
    }
    if(trim($est->entrada_terceiro) =='' and $est->saidas_cf > 0){
        $estC425 = new DaoRegC425();
        $obj = $estC425->vlUnitMedioCF($est->codigo);
        $custo = $obj->VL_UNIT/2;
        $estoque->updateVlUnit($obj->COD_ITEM,$custo);
    }
}


// Atualiza estoque nos inventarios
$estoque = new DaoEstoqueQtd();
foreach($estoque->selectAll("estoque_qtd","where diferenca <> 0") as $est){
    // Atualiza o inventario inicial
    if($est->inv_ini > 0 and $est->diferenca < 0){
        $diferenca = $est->diferenca * -1;
        $novo_inv_ini = $diferenca + $est->inv_final + $est->inv_ini;
        $rH010 = new DaoRegH010();
        if($rH010->updateQtd($novo_inv_ini,$est->vl_unit,$est->codigo,'2010-12-31')){
            // Diz alguma coisa aqui rsrsrs
        }

    }

    // Adicionar Inv inicial
    if(trim($est->inv_ini) == '' and $est->diferenca < 0){
        $diferenca = $est->diferenca * -1;
        $novo_inv_ini = $diferenca + $est->inv_final + $est->inv_ini;
        $r010 = new RegH010();
        $r010->setReg('H010');
        $r010->setCodItem($est->codigo);
        $r010->setUnid('UN');
        $r010->setQtd($novo_inv_ini);
        $r010->setVlUnit($est->vl_unit);
        $r010->setVlItem($est->vl_unit*$novo_inv_ini);
        $r010->setIndProp(0);
        $r010->setCodPart('');
        $r010->setTxtCompl('');
        $r010->setCodCta('11601001');
        $r010->setVlItemIr(0);
        $r010->setDataInv('2010-12-31');
        $rH010 = new DaoRegH010();
        $rH010->createSped($r010,0,'-1');
    }

    // Atualiza o inventario final
    if($est->inv_final > 0 and $est->diferenca > 0){
        // Se o invantario final for igual a diferenca o inventario final está correto
        if($est->inv_final <> $est->diferenca){
            $rH010 = new DaoRegH010();
            if($rH010->updateQtd($est->diferenca,$est->vl_unit,$est->codigo,'2011-12-31')){
                // Diz alguma coisa tb no update inv final
            }
        }
    }
}

