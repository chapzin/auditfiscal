<?php

// Iniciamos o "contador"
list($usec, $sec) = explode(' ', microtime());
$script_start = (float) $sec + (float) $usec;

/* SEU CÓDIGO PHP */

include '../arquivos/conexao.php';
$dir_speds = 'inventario/';
$speds = dir($dir_speds);

while ($arquivo = $speds->read()) {
    if (!is_dir($arquivo)) {
        //echo $path.$arquivo."<br/>";
        $linhas = file($dir_speds . $arquivo);

        foreach ($linhas as $linha) {
            $linha = utf8_encode($linha);
            $l = explode(";", $linha);
            $cod_item = $l[0];
            $descr = $l[10];
            $unid = $l[19];
            $inv_ini_qtd = $l[34];
            $inv_ini_vl = $l[35];
            $inv_ini_vl_tot = $inv_ini_qtd * $inv_ini_vl;
            $inv_fin_qtd = (int) $l[36];
            $inv_fin_vl = (float) vlp($l[37]);
            $inv_fin_vl_tot = (int) $inv_fin_qtd * (float) $inv_fin_vl;
            if ($inv_fin_qtd != '') {
                echo "|0200|$cod_item|$descr|||$unid|00||||||<br/>";
            }
        }
        
        foreach ($linhas as $linha) {
            $linha = utf8_encode($linha);
            $l = explode(";", $linha);
            $cod_item = $l[0];
            $unid = $l[19];
            $inv_ini_qtd = (int)$l[34];
            $inv_ini_vl = (float)vlp($l[35]);
            $inv_ini_vl_tot = (int)$inv_ini_qtd * (float)$inv_ini_vl;
            $inv_fin_qtd = (int) $l[36];
            $inv_fin_vl = (float) vlp($l[37]);
            $inv_fin_vl_tot = (int) $inv_fin_qtd * (float) $inv_fin_vl;
            if ($inv_fin_qtd != '') {
                echo "|H010|$cod_item|$unid|$inv_fin_qtd|$inv_fin_vl|$inv_fin_vl_tot|0|||||<br/>";
            }
        }
    }
    }
//}


// Terminamos o "contador" e exibimos
list($usec, $sec) = explode(' ', microtime());
$script_end = (float) $sec + (float) $usec;
$elapsed_time = round($script_end - $script_start, 5);


// Exibimos uma mensagem
echo 'Elapsed time: ', $elapsed_time, ' secs. Memory usage: ', round(((memory_get_peak_usage(true) / 1024) / 1024), 2), 'Mb';

