<?php

include_once './conexao.php';

$delete_entrada = "TRUNCATE TABLE entradas";
$delete_saida = "TRUNCATE TABLE saidas";
$delete_inventario = "TRUNCATE TABLE inventario";
$stmt = $conn->prepare($delete_entrada);
try {
    $stmt->execute();
} catch (PDOException $exc) {
    echo $exc->getTraceAsString();
}

$stmt = $conn->prepare($delete_saida);
try {
    $stmt->execute();
} catch (PDOException $exc) {
    echo $exc->getTraceAsString();
}

$stmt = $conn->prepare($delete_inventario);
try {
    $stmt->execute();
} catch (PDOException $exc) {
    echo $exc->getTraceAsString();
}


$sql_entrada = "select c100.IND_OPER,c170.COD_ITEM,c170.DESCR_COMPL,SUM(c170.QTD) QTD,c170.cfop,AVG(c170.VL_ITEM) VL_MEDIO from reg_c170 c170 inner join reg_c100 c100 on c170.id_c100=c100.id where c100.IND_OPER='0' GROUP by C170.CFOP,C170.COD_ITEM";
$sql_saida = "select c100.IND_OPER,c170.COD_ITEM,c170.DESCR_COMPL,SUM(c170.QTD) QTD,c170.cfop,AVG(c170.VL_ITEM) VL_MEDIO from reg_c170 c170 inner join reg_c100 c100 on c170.id_c100=c100.id where c100.IND_OPER='1' GROUP by C170.CFOP,C170.COD_ITEM";
$tEntra = 0;
$tSai = 0;
$consulta_entrada = $conn->query($sql_entrada);
while ($ent = $consulta_entrada->fetch(PDO::FETCH_ASSOC)) {
    //echo $ent['COD_ITEM'] . "<br/>";
    $tEntra = $tEntra + 1;
    $entrada = array(
        ':cod_item' => $ent['COD_ITEM'],
        ':descr_item' => $ent['DESCR_COMPL'],
        ':qtd' => $ent['QTD'],
        ':cfop' => $ent['cfop']
    );
    $insert_entradas = "INSERT INTO entradas (cod_item,descr_item,qtd,cfop) VALUES (:cod_item,:descr_item,:qtd,:cfop)";
    $stmt = $conn->prepare($insert_entradas);
    try {
        $stmt->execute($entrada);
    } catch (PDOException $exc) {
        echo $exc->getMessage();
    }
}

$consulta_saida = $conn->query($sql_saida);
while ($sai = $consulta_saida->fetch(PDO::FETCH_ASSOC)) {
    $tSai = $tSai + 1;
    $saida = array(
        ':cod_item' => $sai['COD_ITEM'],
        ':descr_item' => $sai['DESCR_COMPL'],
        ':qtd' => $sai['QTD'],
        ':cfop' => $sai['cfop']
    );
    $insert_saidas = "INSERT INTO saidas (cod_item,descr_item,qtd,cfop) VALUES (:cod_item,:descr_item,:qtd,:cfop)";
    $stmt = $conn->prepare($insert_saidas);
    try {
        $stmt->execute($saida);
    } catch (PDOException $exc) {
        echo $exc->getMessage();
    }
}
// Cadastra produtos no inventario
$sql_produtos = "SELECT DISTINCT COD_ITEM,DESCR_ITEM,UNID_INV FROM reg_0200";
$consulta_produto = $conn->query($sql_produtos);
$tProd = 0;
while ($prod = $consulta_produto->fetch(PDO::FETCH_ASSOC)) {
    $tProd = $tProd + 1;
    $produto = array(
        ':cod_item' => $prod['COD_ITEM'],
        ':descr_item' => $prod['DESCR_ITEM'],
        ':unid_inv' => $prod['UNID_INV']
    );
    $insert_inv_prod = "INSERT INTO inventario (cod_item,descr_item,unid) VALUES (:cod_item,:descr_item,:unid_inv)";
    $stmt = $conn->prepare($insert_inv_prod);
    try {
        $stmt->execute($produto);
    } catch (PDOException $exc) {
        echo $exc->getMessage();
    }
}

$sql_entrada2 = "SELECT cod_item,sum(qtd)qtd FROM `entradas` where cfop <>'1556' and cfop <>'2556' GROUP BY cod_item";
$consulta_prod_entrada = $conn->query($sql_entrada2);
$tProdEntrada = 0;
while ($prodEntrada = $consulta_prod_entrada->fetch(PDO::FETCH_ASSOC)){
    $tProdEntrada = $tProdEntrada+1;
    $entrada_insert = array(
        ':cod_item' => (string)$prodEntrada['cod_item'],
        ':qtd' => $prodEntrada['qtd']
    );
    $updateEntInv = "UPDATE inventario set entrada=:qtd where cod_item=:cod_item";
    $stmt = $conn->prepare($updateEntInv);
    try {
        $stmt->execute($entrada_insert);
    } catch (PDOException $exc) {
        echo $exc->getMessage();
    }

}



echo "Total de entradas: $tEntra <br/>";
echo "Total de saidas: $tSai <br/>";
echo "Total de produtos inventario: $tProd <br/>";
echo "Total de entradas atualizadas no inventário: $tProdEntrada<br/>";

// criar tabela de levantamento inventario
// criar processamento da tabela inventario