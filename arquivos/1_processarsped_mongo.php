<?php

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

                    $reg_0000 = [
                        "reg" => $l[1],
                        "cod_ver" => $l[2],
                        "cod_fin" => $l[3],
                        "dt_ini" => new MongoDate(strtotime(convert_data($l[4]))),
                        "dt_fin" => new MongoDate(strtotime(convert_data($l[5]))),
                        "nome" => $l[6],
                        "cnpj" => $l[7],
                        "cpf" => $l[8],
                        "uf" => $l[9],
                        "ie" => $l[10],
                        "cod_mun" => $l[11],
                        "im" => $l[12],
                        "suframa" => $l[13],
                        "ind_perfil" => $l[14],
                        "ind_ativ" => $l[15]
                    ];
                    $db->reg_0000->insert($reg_0000);
                }
                if ($l[1] == '0200') { // Cadastro Produto
                    $reg_0200 = [
                        "reg" => $l[1],
                        "cod_item" => $l[2],
                        "descr_item" => $l[3],
                        "cod_barra" => $l[4],
                        "cod_ant_item" => $l[5],
                        "unid_inv" => $l[6],
                        "tipo_item" => $l[7],
                        "cod_ncm" => $l[8],
                        "ex_ipi" => $l[9],
                        "cod_gen" => $l[10],
                        "cod_lst" => $l[11],
                        "aliq_icms" => $l[12]
                    ];
                    $db->reg_0200->insert($reg_0200);
                }
                if ($l[1] == 'C100') { // Cadastro Cabeça da nota
                    $reg_c100 = [
                        'reg' => $l[1],
                        'ind_oper' => $l[2],
                        'ind_emit' => $l[3],
                        'cod_part' => $l[4],
                        'cod_mod' => $l[5],
                        'cod_sit' => $l[6],
                        'ser' => $l[7],
                        'num_doc' => $l[8],
                        'chv_nfe' => $l[9],
                        'dt_doc' => new MongoDate(strtotime(convert_data($l[10]))),
                        'dt_e_s' => new MongoDate(strtotime(convert_data($l[11]))),
                        'vl_doc' => vlp($l[12]),
                        'ind_pgto' => $l[13],
                        'vl_desc' => vlp($l[14]),
                        'vl_abat_nt' => vlp($l[15]),
                        'vl_merc' => vlp($l[16]),
                        'ind_frt' => $l[17],
                        'vl_frt' => vlp($l[18]),
                        'vl_seg' => vlp($l[19]),
                        'vl_out_da' => vlp($l[20]),
                        'vl_bc_icms' => vlp($l[21]),
                        'vl_icms' => vlp($l[22]),
                        'vl_bc_icms_st' => vlp($l[23]),
                        'vl_icms_st' => vlp($l[24]),
                        'vl_ipi' => vlp($l[25]),
                        'vl_pis' => vlp($l[26]),
                        'vl_cofins' => vlp($l[27]),
                        'vl_pis_st' => vlp($l[28]),
                        'vl_cofins_st' => vlp($l[29]),
                        'cnpj_arquivo' => $cnpj_arquivo,
                        'datafinal' => $datafinal,
                        'sped_xml' => 'sped'
                    ];
                    $db->reg_C100->insert($reg_c100);
                }
                if ($l[1] == 'C170') { // Produtos da nota
                    $reg_c170 = [
                        //id_c100 => $id_c100,
                        'REG' => $l[1],
                        'DT_E_S' =>$reg_c100["dt_e_s"],
                        'IND_OPER'=>$reg_c100["ind_oper"],
                        'IND_EMIT'=>$reg_c100["ind_emit"],
                        'NUM_ITEM' => $l[2],
                        'COD_ITEM' => $l[3],
                        'DESCR_COMPL' => $l[4],
                        'QTD' => vlp($l[5]),
                        'UNID' => $l[6],
                        'VL_ITEM' => vlp($l[7]),
                        'VL_DESC' => vlp($l[8]),
                        'IND_MOV' => $l[9],
                        'CST_ICMS' => $l[10],
                        'CFOP' => $l[11],
                        'COD_NAT' => $l[12],
                        'VL_BC_ICMS' => vlp($l[13]),
                        'ALIQ_ICMS' => vlp($l[14]),
                        'VL_ICMS' => vlp($l[15]),
                        'VL_BC_ICMS_ST' => vlp($l[16]),
                        'ALIQ_ST' => vlp($l[17]),
                        'VL_ICMS_ST' => vlp($l[18]),
                        'IND_APUR' => $l[19],
                        'CST_IPI' => $l[20],
                        'COD_ENQ' => $l[21],
                        'VL_BC_IPI' => vlp($l[22]),
                        'ALIQ_IPI' => vlp($l[23]),
                        'VL_IPI' => vlp($l[24]),
                        'CST_PIS' => $l[25],
                        'VL_BC_PIS' => vlp($l[26]),
                        'ALIQ_PIS_PERC' => vlp($l[27]),
                        'QUANT_BC_PIS' => vlp($l[28]),
                        'ALIQ_PIS_REAIS' => vlp($l[29]),
                        'VL_PIS' => vlp($l[30]),
                        'CST_COFINS' => $l[31],
                        'VL_BC_COFINS' => vlp($l[32]),
                        'ALIQ_COFINS_PERC' => vlp($l[33]),
                        'QUANT_BC_COFINS' => vlp($l[34]),
                        'ALIQ_COFINS_REAIS' => vlp($l[35]),
                        'VL_COFINS' => vlp($l[36]),
                        'COD_CTA' => $l[37],
                        'cnpj_arquivo' => $cnpj_arquivo,
                        'datafinal' => $datafinal,
                        'sped_xml' => 'sped'
                    ];
                    $db->reg_C170->insert($reg_c170);
                   
                }
                if($l[1] == 'C190'){
                    
                    
                }
                if ($l[1] == 'C405') { // Cabeça Cupon
                    $reg_c405 = [
                        'REG' => $l[1],
                        'DT_DOC' => new MongoDate(strtotime(convert_data($l[2]))),
                        'CRO' => $l[3],
                        'CRZ' => $l[4],
                        'NUM_COO_FIN' => $l[5],
                        'GT_FIN' => $l[6],
                        'VL_BRT' => $l[7],
                        'cnpj_arquivo' => $cnpj_arquivo,
                        'datafinal' => $datafinal
                    ];
                    $db->reg_C405->insert($reg_c405);
                }
                if ($l[1] == 'C425') { // Itens Cupon
                    $reg_c425 = [
                        'REG' => $l[1],
                        'COD_ITEM' => $l[2],
                        'QTD' => vlp($l[3]),
                        'UNID' => $l[4],
                        'VL_ITEM' => vlp($l[5]),
                        'VL_PIS' => vlp($l[6]),
                        'VL_COFINS' => vlp($l[7]),
                        'cnpj_arquivo' => $cnpj_arquivo,
                        'datafinal' => $datafinal
                    ];
                    $db->reg_C425->insert($reg_c425);
                }

                if ($l[1] == 'H010') { // Inventario
                    $reg_h010 = [
                        'REG' => $l[1],
                        'COD_ITEM' => $l[2],
                        'UNID' => $l[3],
                        'QTD' => vlp($l[4]),
                        'VL_UNIT' => vlp($l[5]),
                        'VL_ITEM' => vlp($l[6]),
                        'IND_PROP' => $l[7],
                        'COD_PART' => $l[8],
                        'TXT_COMPL' => $l[9],
                        'COD_CTA' => $l[10],
                        'VL_ITEM_IR' => $l[11],
                        'cnpj_arquivo' => $cnpj_arquivo,
                        'datafinal' => $datafinal
                    ];
                    $db->reg_H010->insert($reg_h010);
                }
            } // fim do arquivo
        } // Fim Foreach
    }
}


// Terminamos o "contador" e exibimos
list($usec, $sec) = explode(' ', microtime());
$script_end = (float) $sec + (float) $usec;
$elapsed_time = round($script_end - $script_start, 5);


// Exibimos uma mensagem
echo 'Elapsed time: ', $elapsed_time, ' secs. Memory usage: ', round(((memory_get_peak_usage(true) / 1024) / 1024), 2), 'Mb';

