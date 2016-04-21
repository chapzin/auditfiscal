<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="./css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

</body>
</html>

<?php
/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 13/04/2016
 * Time: 13:09
 */
require_once '__analisar_autoload.php';
$cnpj = '41334079000255';
$valid = new DaoValidacoes();
$daoC100 = new DaoRegC100();
?>
<table border="1" class="table table-striped table-bordered">
    <thead>
    <tr>
        <th colspan="2">Situação do documento</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><b>00</b></td>
        </td>
        <td>Documento regular</td>
    </tr>
    <tr>
        <td><b>01</b></td>
        <td>Documento regular extemporâneo</td>
    </tr>
    <tr>
        <td><b>02</b></td>
        <td>Documento cancelado</td>
    </tr>
    <tr>
        <td><b>03</b></td>
        <td>Documento cancelado extemporâneo</td>
    </tr>
    <tr>
        <td><b>04</b></td>
        <td>NF-e ou CT-e - Denegado</td>
    </tr>
    <tr>
        <td><b>05</b></td>
        <td>NF-e ou CT-e - Numeração inutilizada</td>
    </tr>
    <tr>
        <td><b>06</b></td>
        <td>Documento Fiscal Complementar</td>
    </tr>
    <tr>
        <td><b>07</b></td>
        <td>Documento Fiscal Complementar extemporâneo.</td>
    </tr>
    <tr>
        <td><b>08</b></td>
        <td>Documento Fiscal emitido com base em Regime Especial ou Norma Específica</td>
    </tr>
    </tbody>
</table>
<table border="1" class="table table-striped table-bordered">
    <thead>
    <tr>
        <th colspan="5">Notas com status diferente de regular sem chave</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Nota</td>
        <td>Situação</td>
        <td>Linha</td>
        <td>Série</td>
        <td>Chave</td>
    </tr>
    <?php
    $daoC100->addIdXmlSped();

    foreach ($valid->canceladaSemChave() as $c100) {
        if (trim($c100->CHV_NFE) == '') {
            echo "<tr>
                <td>{$c100->NUM_DOC}</td>
                <td>{$c100->COD_SIT}</td>
                <td>{$c100->linha}</td>
                <td>{$c100->SER}</td>
                <td>chave está vazia</td>
              </tr>
            ";
        }
    }
    ?>
    </tbody>
</table>
<table border="1" class="table table-striped table-bordered">
    <thead>
    <tr>
        <th colspan="3">Quebra de sequencia numerica propria no SPED</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Nota</td>
        <td>Problema</td>
        <td>Obsservação</td>
    </tr>
    <?php

    foreach ($valid->quebraSequenciaSped() as $seq) {
        echo "<tr>
            <td>$seq</td>
             <td>está faltando no sped</td>
             <td>(Quebra de sequencia)</td></tr>";
    }
    ?>
    </tbody>
</table>
<table border="1" class="table table-striped table-bordered">
    <thead>
    <tr>
        <th colspan="3">Quebra de sequencia numerica notas proprias XML</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Nota</td>
        <td>Problema</td>
        <td>Obsservação</td>
    </tr>
    <?php

    foreach ($valid->quebraSequenciaXml($cnpj) as $seq) {
        echo "<tr>
            <td>$seq</td>
             <td>está faltando no xml</td>
             <td>(Quebra de sequencia)</td></tr>";
    }
    ?>
    </tbody>
</table>
<table border="1" class="table table-striped table-bordered">
    <thead>
    <tr>
        <th colspan="4">Notas não lançadas no Sped</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Nota</td>
        <td>Dt Emissao</td>
        <td>Razao</td>
        <td>Chave</td>
    </tr>
    <?php
    foreach ($valid->notasPropriasXmlsVsSped($cnpj) as $nota) {
        if (trim($nota->NfeSped) == '') {
            echo "
                <tr>
                <td>{$nota->NfeXml}</td>
                <td>{$nota->dtEmissaoXml}</td>
                <td>{$nota->razao}</td>
                <td>{$nota->ChaveXml}</td>
                </tr>";
        }
    }
    ?>
    </tbody>
</table>
<table border="1" class="table table-striped table-bordered">
    <thead>
    <tr>
        <th colspan="5">Notas no sped mais não tem xml</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Nota</td>
        <td>Dt Emissao</td>
        <td>Modelo</td>
        <td>Chave</td>
        <td>Linha</td>
    </tr>
    <?php

    foreach ($valid->notasNoSpedSemXml() as $nota) {
        if (trim($nota->NfeXml) == '') {
            echo "
        <tr>
            <td>{$nota->NfeSped}</td>
            <td>{$nota->DtEmissaoSped}</td>
            <td>{$nota->ModSped}</td>
            <td>{$nota->ChaveSped}</td>
            <td>{$nota->linha}</td>
        </tr>";
        }
    }
    ?>
    </tbody>
</table>
