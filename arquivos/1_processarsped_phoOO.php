<?php
require_once '../model/Reg0000.php';
require_once '../model/Reg0200.php';
require_once '../model/RegC100.php';
require_once '../model/RegC170.php';
// Iniciamos o "contador"
list($usec, $sec) = explode(' ', microtime());
$script_start = (float) $sec + (float) $usec;

/* SEU CÓDIGO PHP */

include './conexao.php';
$dir_speds = 'speds/';
$speds = dir($dir_speds);
$conta_c170 = 0;


$db = $conn->selectDB('speds');

$db->reg_0000->remove();
$db->reg_0200->remove();
$db->reg_C100->remove();
$db->reg_C170->remove();
$db->reg_C405->remove();
$db->reg_C425->remove();
$db->reg_H010->remove();

while ($arquivo = $speds->read()) {
    if (!is_dir($arquivo)) {
        //echo $path.$arquivo."<br/>";
        $linhas = file($dir_speds . $arquivo);

        foreach ($linhas as $linha) {
            if ($linha[0] == '|') {
                $linha = utf8_encode($linha);
                $l = explode("|", $linha);

                if ($l[1] == '0000') { // Cadastro Empresa
                    $cnpj_arquivo = $l[7];
                    $datafinal = $l[5];
                    $datafinal2 = convert_data($l[5]);
                    $sped = "SPED";
                    $reg0000 = new Reg0000($linha);
                    //var_dump($reg0000);
                    $db->reg_0000->insert($reg0000);
                }
                if ($l[1] == '0200') { // Cadastro Produto
                    $reg0200 = new Reg0200($linha);
                    $db->reg_0200->insert($reg0200);
                }
                if ($l[1] == 'C100') { // Cadastro Cabeça da nota
                    $regC100 = new RegC100($linha);
                    $insere = 0;
                    
                }
                if ($l[1] == 'C170') { // Produtos da nota
                    $regC170 = new RegC170($linha);
                    $regC100->addC170($regC170);
                   
                }
                if($l[1] == 'C190' and $insere==0){
                    $insere =1;
                    $db->reg_C100->insert($regC100);
                    
                }
                if ($l[1] == 'C405') { // Cabeça Cupon
//                    $db->reg_C405->insert($reg_c405);
                }
                if ($l[1] == 'C425') { // Itens Cupon
  //                  $db->reg_C425->insert($reg_c425);
                }

                if ($l[1] == 'H010') { // Inventario
    
    //                $db->reg_H010->insert($reg_h010);
                }
            } // fim do arquivo
        } // Fim Foreach
    }
}
$db->reg_C100->remove(["indEmit" => "0"]);

// Terminamos o "contador" e exibimos
list($usec, $sec) = explode(' ', microtime());
$script_end = (float) $sec + (float) $usec;
$elapsed_time = round($script_end - $script_start, 5);


// Exibimos uma mensagem
echo 'Elapsed time: ', $elapsed_time, ' secs. Memory usage: ', round(((memory_get_peak_usage(true) / 1024) / 1024), 2), 'Mb';

