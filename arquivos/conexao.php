<?php

ini_set('display_errors', 1);
ini_set('display_startup_erros', 1);
ini_set('max_execution_time', 1440);
error_reporting(E_ALL);

function convert_data($data) {
    $dia = substr($data, 0, 2);
    $mes = substr($data, 2, 2);
    $ano = substr($data, 4);
    $data2 = $ano . "-" . $mes . "-" . $dia;
    return $data2;
}

function vlp($valor) {
    $valor = str_replace(',', '.', $valor);
    if ($valor == '') {
        $valor = "''";
        return $valor;
    } else {
        return $valor;
    }
}
/*
$conn = new PDO(
        'mysql:host=localhost;dbname=efd', 'root', '', array(
    PDO::ATTR_PERSISTENT => true
        )
);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
*/
try {
    $conn = new MongoClient();
} catch (MongoConnectionException $exc) {
    echo $exc->getMessage();
}
