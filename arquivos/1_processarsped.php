<?php
// Iniciamos o "contador"
list($usec, $sec) = explode(' ', microtime());
$script_start = (float) $sec + (float) $usec;
 
/* SEU CÓDIGO PHP */
include './conexao.php';
$dir_speds = 'speds/';
$speds = dir($dir_speds);
$conta_c170 = 0;

$deleta_reg0000 = "DELETE FROM reg_0000";
$deleta_reg0200 = "DELETE FROM reg_0200";
$deleta_regc100 = "DELETE FROM reg_C100";
$deleta_regC170 = "DELETE FROM reg_C170";
$deleta_regC405 = "DELETE FROM reg_C405";
$deleta_regC425 = "DELETE FROM reg_C425";
$deleta_regH010 = "DELETE FROM reg_H010";

$stmt = $conn->prepare($deleta_reg0000);
try {
    $stmt->execute();
} catch (PDOException $exc) {
    echo $exc->getTraceAsString();
}
$stmt = $conn->prepare($deleta_reg0200);
try {
    $stmt->execute();
} catch (PDOException $exc) {
    echo $exc->getTraceAsString();
}

$stmt = $conn->prepare($deleta_regc100);
try {
    $stmt->execute();
} catch (PDOException $exc) {
    echo $exc->getTraceAsString();
}
$stmt = $conn->prepare($deleta_regC170);
try {
    $stmt->execute();
} catch (PDOException $exc) {
    echo $exc->getTraceAsString();
}

$stmt = $conn->prepare($deleta_regC405);
try {
    $stmt->execute();
} catch (PDOException $exc) {
    echo $exc->getTraceAsString();
}
$stmt = $conn->prepare($deleta_regC425);
try {
    $stmt->execute();
} catch (PDOException $exc) {
    echo $exc->getTraceAsString();
}

$stmt = $conn->prepare($deleta_regH010);
try {
    $stmt->execute();
} catch (PDOException $exc) {
    echo $exc->getTraceAsString();
}


while ($arquivo = $speds->read()) {
    if (!is_dir($arquivo)) {
        //echo $path.$arquivo."<br/>";
        $linhas = file($dir_speds . $arquivo);

        foreach ($linhas as $linha) {
            if ($linha[0] == '|') {
                $l = explode("|", $linha);

                if ($l[1] == '0000') { // Cadastro Empresa
                    $cnpj_arquivo = $l[7];
                    $datafinal = $l[5];
                    $datafinal2 = convert_data($l[5]);
                    $sped = "SPED";

                    $reg_0000 = array(
                        ':reg' => $l[1],
                        ':cod_ver' => $l[2],
                        ':cod_fin' => $l[3],
                        ':dt_ini' => convert_data($l[4]),
                        ':dt_fin' => convert_data($l[5]),
                        ':nome' => $l[6],
                        ':cnpj' => $l[7],
                        ':cpf' => $l[8],
                        ':uf' => $l[9],
                        ':ie' => $l[10],
                        ':cod_mun' => $l[11],
                        ':im' => $l[12],
                        ':suframa' => $l[13],
                        ':ind_perfil' => $l[14],
                        ':ind_ativ' => $l[15]
                    );
                    $insert_0000 = 'INSERT INTO reg_0000 (REG,COD_VER,COD_FIN,DT_INI,DT_FIN,NOME,CNPJ,CPF,UF,IE,COD_MUN,IM,SUFRAMA,IND_PERFIL,IND_ATIV) VALUES (:reg,:cod_ver,:cod_fin,:dt_ini,:dt_fin,:nome,:cnpj,:cpf,:uf,:ie,:cod_mun,:im,:suframa,:ind_perfil,:ind_ativ)';
                    $stmt = $conn->prepare($insert_0000);
                    try {
                        $stmt->execute($reg_0000);
                    } catch (PDOException $exc) {
                        echo $exc->getTraceAsString();
                    }
                }
                if ($l[1] == '0200') { // Cadastro Produto
                    $reg_0200 = array(
                        ':reg' => $l[1],
                        ':cod_item' => $l[2],
                        ':descr_item' => $l[3],
                        ':cod_barra' => $l[4],
                        ':cod_ant_item' => $l[5],
                        ':unid_inv' => $l[6],
                        ':tipo_item' => $l[7],
                        ':cod_ncm' => $l[8],
                        ':ex_ipi' => $l[9],
                        ':cod_gen' => $l[10],
                        ':cod_lst' => $l[11],
                        ':aliq_icms' => $l[12]
                    );
                    $insert_0200 = 'INSERT INTO reg_0200 (REG,COD_ITEM,DESCR_ITEM,COD_BARRA,COD_ANT_ITEM,UNID_INV,TIPO_ITEM,COD_NCM,EX_IPI,COD_GEN,COD_LST,ALIQ_ICMS) VALUES (:reg,:cod_item,:descr_item,:cod_barra,:cod_ant_item,:unid_inv,:tipo_item,:cod_ncm,:ex_ipi,:cod_gen,:cod_lst,:aliq_icms)';
                    $stmt = $conn->prepare($insert_0200);
                    try {
                        $stmt->execute($reg_0200);
                    } catch (PDOException $exc) {
                        echo $exc->getTraceAsString();
                    }
                }
                if ($l[1] == 'C100') { // Cadastro Cabeça da nota
                    $reg_c100 = array(
                        ':reg' => $l[1],
                        ':ind_oper' => $l[2],
                        ':ind_emit' => $l[3],
                        ':cod_part' => $l[4],
                        ':cod_mod' => $l[5],
                        ':cod_sit' => $l[6],
                        ':ser' => $l[7],
                        ':num_doc' => $l[8],
                        ':chv_nfe' => $l[9],
                        ':dt_doc' => convert_data($l[10]),
                        ':dt_e_s' => convert_data($l[11]),
                        ':vl_doc' => vlp($l[12]),
                        ':ind_pgto' => $l[13],
                        ':vl_desc' => vlp($l[14]),
                        ':vl_abat_nt' => vlp($l[15]),
                        ':vl_merc' => vlp($l[16]),
                        ':ind_frt' => $l[17],
                        ':vl_frt' => vlp($l[18]),
                        ':vl_seg' => vlp($l[19]),
                        ':vl_out_da' => vlp($l[20]),
                        ':vl_bc_icms' => vlp($l[21]),
                        ':vl_icms' => vlp($l[22]),
                        ':vl_bc_icms_st' => vlp($l[23]),
                        ':vl_icms_st' => vlp($l[24]),
                        ':vl_ipi' => vlp($l[25]),
                        ':vl_pis' => vlp($l[26]),
                        ':vl_cofins' => vlp($l[27]),
                        ':vl_pis_st' => vlp($l[28]),
                        ':vl_cofins_st' => vlp($l[29]),
                        ':cnpj_arquivo' => $cnpj_arquivo,
                        ':datafinal' => $datafinal,
                        ':sped_xml' => 'sped'
                    );

                    $insert_c100 = 'INSERT INTO reg_c100 (REG,IND_OPER,IND_EMIT,COD_PART,COD_MOD,COD_SIT,SER,NUM_DOC,CHV_NFE,DT_DOC,DT_E_S,VL_DOC,IND_PGTO,VL_DESC,VL_ABAT_NT,VL_MERC,IND_FRT,VL_FRT,VL_SEG,VL_OUT_DA,VL_BC_ICMS,VL_ICMS,VL_BC_ICMS_ST,VL_ICMS_ST,VL_IPI,VL_PIS,VL_COFINS,VL_PIS_ST,VL_COFINS_ST,cnpj_arquivo,datafinal,sped_xml) VALUES (:reg,:ind_oper,:ind_emit,:cod_part,:cod_mod,:cod_sit,:ser,:num_doc,:chv_nfe,:dt_doc,:dt_e_s,:vl_doc,:ind_pgto,:vl_desc,:vl_abat_nt,:vl_merc,:ind_frt,:vl_frt,:vl_seg,:vl_out_da,:vl_bc_icms,:vl_icms,:vl_bc_icms_st,:vl_icms_st,:vl_ipi,:vl_pis,:vl_cofins,:vl_pis_st,:vl_cofins_st,:cnpj_arquivo, :datafinal, :sped_xml)';
                    $stmt = $conn->prepare($insert_c100);
                    try {
                        $stmt->execute($reg_c100);
                        $id_c100 = $conn->lastInsertId();
                    } catch (PDOException $exc) {
                        echo $exc->getTraceAsString();
                    }
                }
                if ($l[1] == 'C170') { // Produtos da nota
                    $reg_c170 = array(
                        ':id_c100' => $id_c100,
                        ':REG' => $l[1],
                        ':NUM_ITEM' => $l[2],
                        ':COD_ITEM' => $l[3],
                        ':DESCR_COMPL' => $l[4],
                        ':QTD' => vlp($l[5]),
                        ':UNID' => $l[6],
                        ':VL_ITEM' => vlp($l[7]),
                        ':VL_DESC' => vlp($l[8]),
                        ':IND_MOV' => $l[9],
                        ':CST_ICMS' => $l[10],
                        ':CFOP' => $l[11],
                        ':COD_NAT' => $l[12],
                        ':VL_BC_ICMS' => vlp($l[13]),
                        ':ALIQ_ICMS' => vlp($l[14]),
                        ':VL_ICMS' => vlp($l[15]),
                        ':VL_BC_ICMS_ST' => vlp($l[16]),
                        ':ALIQ_ST' => vlp($l[17]),
                        ':VL_ICMS_ST' => vlp($l[18]),
                        ':IND_APUR' => $l[19],
                        ':CST_IPI' => $l[20],
                        ':COD_ENQ' => $l[21],
                        ':VL_BC_IPI' => vlp($l[22]),
                        ':ALIQ_IPI' => vlp($l[23]),
                        ':VL_IPI' => vlp($l[24]),
                        ':CST_PIS' => $l[25],
                        ':VL_BC_PIS' => vlp($l[26]),
                        ':ALIQ_PIS_PERC' => vlp($l[27]),
                        ':QUANT_BC_PIS' => vlp($l[28]),
                        ':ALIQ_PIS_REAIS' => vlp($l[29]),
                        ':VL_PIS' => vlp($l[30]),
                        ':CST_COFINS' => $l[31],
                        ':VL_BC_COFINS' => vlp($l[32]),
                        ':ALIQ_COFINS_PERC' => vlp($l[33]),
                        ':QUANT_BC_COFINS' => vlp($l[34]),
                        ':ALIQ_COFINS_REAIS' => vlp($l[35]),
                        ':VL_COFINS' => vlp($l[36]),
                        ':COD_CTA' => $l[37],
                        ':cnpj_arquivo' => $cnpj_arquivo,
                        ':datafinal' => $datafinal,
                        ':sped_xml' => 'sped'
                    );
                    $insert_c170 = "INSERT INTO reg_c170 (id_c100,`REG`, `NUM_ITEM`, `COD_ITEM`, `DESCR_COMPL`, `QTD`, `UNID`, `VL_ITEM`, `VL_DESC`, `IND_MOV`, `CST_ICMS`, `CFOP`, `COD_NAT`, `VL_BC_ICMS`, `ALIQ_ICMS`, `VL_ICMS`, `VL_BC_ICMS_ST`, `ALIQ_ST`, `VL_ICMS_ST`, `IND_APUR`, `CST_IPI`, `COD_ENQ`, `VL_BC_IPI`, `ALIQ_IPI`, `VL_IPI`, `CST_PIS`, `VL_BC_PIS`, `ALIQ_PIS_PERC`, `QUANT_BC_PIS`, `ALIQ_PIS_REAIS`, `VL_PIS`, `CST_COFINS`, `VL_BC_COFINS`, `ALIQ_COFINS_PERC`, `QUANT_BC_COFINS`, `ALIQ_COFINS_REAIS`, `VL_COFINS`, `COD_CTA`,cnpj_arquivo,datafinal,sped_xml) VALUES (:id_c100, :REG, :NUM_ITEM, :COD_ITEM, :DESCR_COMPL, :QTD, :UNID, :VL_ITEM, :VL_DESC, :IND_MOV, :CST_ICMS, :CFOP, :COD_NAT, :VL_BC_ICMS, :ALIQ_ICMS, :VL_ICMS, :VL_BC_ICMS_ST, :ALIQ_ST, :VL_ICMS_ST, :IND_APUR, :CST_IPI, :COD_ENQ, :VL_BC_IPI, :ALIQ_IPI, :VL_IPI, :CST_PIS, :VL_BC_PIS, :ALIQ_PIS_PERC, :QUANT_BC_PIS, :ALIQ_PIS_REAIS, :VL_PIS, :CST_COFINS, :VL_BC_COFINS, :ALIQ_COFINS_PERC, :QUANT_BC_COFINS, :ALIQ_COFINS_REAIS, :VL_COFINS, :COD_CTA,:cnpj_arquivo,:datafinal,:sped_xml)";
                    $stmt = $conn->prepare($insert_c170);
                    $conta_c170 = $conta_c170 + 1;
                    try {
                        $stmt->execute($reg_c170);
                    } catch (PDOException $exc) {
                        echo $exc->getMessage();
                    }
                }
                if ($l[1] == 'C405') { // Cabeça Cupon
                    $reg_c405 = array(
                        ':REG' => $l[1],
                        ':DT_DOC' => convert_data($l[2]),
                        ':CRO' => $l[3],
                        ':CRZ' => $l[4],
                        ':NUM_COO_FIN' => $l[5],
                        ':GT_FIN' => $l[6],
                        ':VL_BRT' => $l[7],
                        ':cnpj_arquivo' => $cnpj_arquivo,
                        ':datafinal' => $datafinal
                    );
                }
                if ($l[1] == 'C425') { // Itens Cupon
                    $reg_c425 = array(
                        ':REG' => $l[1],
                        ':COD_ITEM' => $l[2],
                        ':QTD' => vlp($l[3]),
                        ':UNID' => $l[4],
                        ':VL_ITEM' => vlp($l[5]),
                        ':VL_PIS' => vlp($l[6]),
                        ':VL_COFINS' => vlp($l[7]),
                        ':cnpj_arquivo' => $cnpj_arquivo,
                        ':datafinal' => $datafinal
                    );
                    $insert_c425 = "INSERT INTO reg_c425 (REG,COD_ITEM,QTD,UNID,VL_ITEM,VL_PIS,VL_COFINS,cnpj_arquivo,datafinal) VALUES (:REG,:COD_ITEM,:QTD,:UNID,:VL_ITEM,:VL_PIS,:VL_COFINS,:cnpj_arquivo,:datafinal)";
                    $stmt = $conn->prepare($insert_c425);

                    try {
                        $stmt->execute($reg_c425);
                    } catch (PDOException $exc) {
                        echo $exc->getMessage();
                    }
                }

                if ($l[1] == 'H010') { // Inventario
                    $reg_h010 = array(
                        ':REG' => $l[1],
                        ':COD_ITEM' => $l[2],
                        ':UNID' => $l[3],
                        ':QTD' => $l[4],
                        ':VL_UNIT' => $l[5],
                        ':VL_ITEM' => $l[6],
                        ':IND_PROP' => $l[7],
                        ':COD_PART' => $l[8],
                        ':TXT_COMPL' => $l[9],
                        ':COD_CTA' => $l[10],
                        ':VL_ITEM_IR' => $l[11],
                        ':cnpj_arquivo' => $cnpj_arquivo,
                        ':datafinal' => $datafinal
                    );
                    $insert_h010 = "INSERT INTO REG_H010 (REG,COD_ITEM,UNID,QTD,VL_UNIT,VL_ITEM,IND_PROP,COD_PART,TXT_COMPL,COD_CTA,VL_ITEM_IR,cnpj_arquivo,datafinal) VALUES (:REG,:COD_ITEM,:UNID,:QTD,:VL_UNIT,:VL_ITEM,:IND_PROP,:COD_PART,:TXT_COMPL,:COD_CTA,:VL_ITEM_IR,:cnpj_arquivo,:datafinal)";
                    $stmt = $conn->prepare($insert_h010);

                    try {
                        $stmt->execute($reg_h010);
                    } catch (PDOException $exc) {
                        echo $exc->getMessage();
                    }
                }
            } // fim do arquivo
        } // Fim Foreach
    }
}
echo "Total de registro c170: $conta_c170<br/>";
// Terminamos o "contador" e exibimos
list($usec, $sec) = explode(' ', microtime());
$script_end = (float) $sec + (float) $usec;
$elapsed_time = round($script_end - $script_start, 5);


// Exibimos uma mensagem
echo 'Elapsed time: ', $elapsed_time, ' secs. Memory usage: ', round(((memory_get_peak_usage(true) / 1024) / 1024), 2), 'Mb';

