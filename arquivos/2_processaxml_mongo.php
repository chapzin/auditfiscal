<?php

// Iniciamos o "contador"
list($usec, $sec) = explode(' ', microtime());
$script_start = (float) $sec + (float) $usec;

/* SEU CÓDIGO PHP */

ini_set('display_errors', 1);
ini_set('display_startup_erros', 1);
error_reporting(E_ALL);
date_default_timezone_set('America/Fortaleza');
$cnpj_ativo = '23720808000149';
$ano = '2015';
include_once './conexao.php';

$db = $conn->selectDB('speds');
$db->reg_C100->remove(["ind_emit" => "0"]);
/*
  $delete_propria = "DELETE FROM reg_c100 where ind_emit='0'";
  $stmt = $conn->prepare($delete_propria);
  $stmt->execute();
 */
for ($index = 1; $index < 13; $index++) {
    if ($index <= 9) {
        $index2 = '0' . $index;
    } else {
        $index2 = $index;
    }
    $caminho = "xmls/$cnpj_ativo/Propria/$ano/$index2/";
    $diretorio = dir($caminho);

    while ($arquivo = $diretorio->read()) {
        if (!is_dir($arquivo)) {
            $extensao = explode(".", $arquivo);
            if ($extensao[1] == "xml") {
                $conteudo_xml = file_get_contents($caminho . $arquivo);
                // echo "<a href='" . $caminho . $arquivo . "'>" . $arquivo . "</a><br/>";
                $xml = simplexml_load_string($conteudo_xml);
                $nfe = $xml->NFe->infNFe->ide->nNF;
                $natOp = $xml->NFe->infNFe->ide->natOp;
                $serie = $xml->NFe->infNFe->ide->serie;
                $dtEmit = $xml->NFe->infNFe->ide->dEmi;
                $cnpj_dest = $xml->NFe->infNFe->dest->CNPJ;
                if ($dtEmit == '') {
                    $dtEmit1 = $xml->NFe->infNFe->ide->dhEmi;
                    $dtEmit1 = explode('T', $dtEmit1);
                    $dtEmit = $dtEmit1[0];
                }
                $tipo = $xml->NFe->infNFe->ide->tpNF;
                //echo "Nota Fiscal $nfe da data $dtEmit e cnpj: $cnpj_dest <br/>";
                // $cnpj_dest = $xml->NFe->infNFe->dest->CNPJ;
                if ($cnpj_dest == '') {
                    $cnpj_dest = $xml->NFe->infNFe->dest->CPF;
                }
                //$cpf_dest = $xml->NFe->infNFe->dest->CPF;
                $cnpj_emit = $xml->NFe->infNFe->emit->CNPJ;
                $razao_dest = $xml->NFe->infNFe->dest->xNome;
                $razao_emit = $xml->NFe->infNFe->emit->xNome;
                $chave = $xml->protNFe->infProt->chNFe;
                $ie_emit = $xml->NFe->infNFe->emit->IE;
                $ie_dest = $xml->NFe->infNFe->dest->IE;
                $vNF = $xml->NFe->infNFe->total->ICMSTot->vNF;
                $vDesc = $xml->NFe->infNFe->total->ICMSTot->vDesc;
                $vProd = $xml->NFe->infNFe->total->ICMSTot->vProd;
                $vFrete = $xml->NFe->infNFe->total->ICMSTot->vFrete;
                $vSeg = $xml->NFe->infNFe->total->ICMSTot->vSeg;
                $vOutro = $xml->NFe->infNFe->total->ICMSTot->vOutro;
                $vBC = $xml->NFe->infNFe->total->ICMSTot->vBC;
                $vICMS = $xml->NFe->infNFe->total->ICMSTot->vICMS;
                $vBCST = $xml->NFe->infNFe->total->ICMSTot->vBCST;
                $vST = $xml->NFe->infNFe->total->ICMSTot->vST;
                $vIPI = $xml->NFe->infNFe->total->ICMSTot->vIPI;
                $vPIS = $xml->NFe->infNFe->total->ICMSTot->vPIS;
                $vCOFINS = $xml->NFe->infNFe->total->ICMSTot->vCOFINS;
                $frete_tipo = $xml->NFe->infNFe->transp->modFrete;

                $reg_c100 = [
                    'reg' => 'C100',
                    'ind_oper' => (string)$tipo,
                    'ind_emit' => '0',
                    'cod_part' => (string)$cnpj_dest,
                    'cod_mod' => '55',
                    'cod_sit' => '00',
                    'ser' => (string)$serie,
                    'num_doc' => (string)$nfe,
                    'chv_nfe' => (string)$chave,
                    'dt_doc' => (string)$dtEmit,
                    'dt_e_s' => (string)$dtEmit,
                    'vl_doc' => (float)$vNF,
                    'ind_pgto' => '1',
                    'vl_desc' => (float)$vDesc,
                    'vl_abat_nt' => '0',
                    'vl_merc' => (float)$vProd,
                    'ind_frt' => (string)$frete_tipo,
                    'vl_frt' => (float)$vFrete,
                    'vl_seg' => (float)$vSeg,
                    'vl_out_da' => (float)$vOutro,
                    'vl_bc_icms' => (float)$vBC,
                    'vl_icms' => (float)$vICMS,
                    'vl_bc_icms_st' => (float)$vBCST,
                    'vl_icms_st' => (float)$vST,
                    'vl_ipi' => (float)$vIPI,
                    'vl_pis' => (float)$vPIS,
                    'vl_cofins' => (float)$vCOFINS,
                    'vl_pis_st' => '0',
                    'vl_cofins_st' => '0',
                    'cnpj_arquivo' => $cnpj_ativo,
                    'datafinal' => '0',
                    'sped_xml' => 'xml'
                ];
                $db->reg_C100->insert($reg_c100);
                /*
                  $insert_c100 = 'INSERT INTO reg_c100 (REG,IND_OPER,IND_EMIT,COD_PART,COD_MOD,COD_SIT,SER,NUM_DOC,CHV_NFE,DT_DOC,DT_E_S,VL_DOC,IND_PGTO,VL_DESC,VL_ABAT_NT,VL_MERC,IND_FRT,VL_FRT,VL_SEG,VL_OUT_DA,VL_BC_ICMS,VL_ICMS,VL_BC_ICMS_ST,VL_ICMS_ST,VL_IPI,VL_PIS,VL_COFINS,VL_PIS_ST,VL_COFINS_ST,cnpj_arquivo,datafinal,sped_xml) VALUES (:reg,:ind_oper,:ind_emit,:cod_part,:cod_mod,:cod_sit,:ser,:num_doc,:chv_nfe,:dt_doc,:dt_e_s,:vl_doc,:ind_pgto,:vl_desc,:vl_abat_nt,:vl_merc,:ind_frt,:vl_frt,:vl_seg,:vl_out_da,:vl_bc_icms,:vl_icms,:vl_bc_icms_st,:vl_icms_st,:vl_ipi,:vl_pis,:vl_cofins,:vl_pis_st,:vl_cofins_st,:cnpj_arquivo, :datafinal, :sped_xml)';
                  $stmt = $conn->prepare($insert_c100);
                  try {
                  $stmt->execute($reg_c100);
                  $id_c100 = $conn->lastInsertId();
                  } catch (PDOException $exc) {
                  echo $exc->getTraceAsString();
                  }
                 * 
                 */
                $itens = $xml->NFe->infNFe->det;
                $numero_item = 0;
                foreach ($itens as $item) {
                    $numero_item = $numero_item + 1;
                    $cod_item = $item->prod->cProd;
                    $descr_item = $item->prod->xProd;
                    $cod_barra = $item->prod->cEAN;
                    $unid_inv = $item->prod->uCom;
                    $cod_ncm = $item->prod->NCM;
                    $qtd = $item->prod->qCom;
                    $vl_item = $item->prod->vUnCom;
                    $vDescItem = $item->prod->vDesc;
                    $cst_icms = $item->imposto->ICMS->ICMS60->orig . $item->imposto->ICMS->ICMS60->CST;
                    $cst_pis = $item->imposto->PIS->PISAliq->CST;
                    $cst_cofins = $item->imposto->COFINS->COFINSAliq->CST;
                    $cfop = $item->prod->CFOP;


                    $reg_0200 = [
                        'reg' => '0200',
                        'cod_item' => (string)$cod_item,
                        'descr_item' => (string)$descr_item,
                        'cod_barra' => (string)$cod_barra,
                        'cod_ant_item' => '',
                        'unid_inv' => (string)$unid_inv,
                        'tipo_item' => '00',
                        'cod_ncm' => (string)$cod_ncm,
                        'ex_ipi' => '',
                        'cod_gen' => '',
                        'cod_lst' => '',
                        'aliq_icms' => '',
                        'cnpj_arquivo' => $cnpj_ativo,
                        'datafinal' => '0',
                        'xmlsped' => 'xml'
                    ];
                    $db->reg_0200->insert($reg_0200);
                    /*
                      $insert_0200 = 'INSERT INTO reg_0200 (REG,COD_ITEM,DESCR_ITEM,COD_BARRA,COD_ANT_ITEM,UNID_INV,TIPO_ITEM,COD_NCM,EX_IPI,COD_GEN,COD_LST,ALIQ_ICMS,cnpj_arquivo,datafinal,xmlsped) VALUES (:reg,:cod_item,:descr_item,:cod_barra,:cod_ant_item,:unid_inv,:tipo_item,:cod_ncm,:ex_ipi,:cod_gen,:cod_lst,:aliq_icms, :cnpj_arquivo, :datafinal, :xmlsped)';
                      $stmt = $conn->prepare($insert_0200);
                      try {
                      $stmt->execute($reg_0200);
                      } catch (PDOException $exc) {
                      echo $exc->getTraceAsString();
                      }

                     * 
                     */
                    $reg_c170 = [
                        //'id_c100' => $id_c100,
                        'REG' => 'C170',
                        'NFE' =>$reg_c100['num_doc'],
                        'DT_E_S' => $reg_c100['dt_e_s'],
                        'IND_OPER' => (string)$reg_c100['ind_oper'],
                        'IND_EMIT' => (string)$reg_c100['ind_emit'],
                        'NUM_ITEM' => (string)$numero_item,
                        'COD_ITEM' => (string)$cod_item,
                        'DESCR_COMPL' => (string)$descr_item,
                        'QTD' => (float)vlp($qtd),
                        'UNID' => (string)$unid_inv,
                        'VL_ITEM' => (float)vlp($vl_item),
                        'VL_DESC' => (float)vlp($vDescItem),
                        'IND_MOV' => '0',
                        'CST_ICMS' => (string)$cst_icms,
                        'CFOP' => (string)$cfop,
                        'COD_NAT' => '',
                        'VL_BC_ICMS' => '',
                        'ALIQ_ICMS' => '',
                        'VL_ICMS' => '',
                        'VL_BC_ICMS_ST' => '',
                        'ALIQ_ST' => '',
                        'VL_ICMS_ST' => '',
                        'IND_APUR' => '0',
                        'CST_IPI' => '',
                        'COD_ENQ' => '',
                        'VL_BC_IPI' => '',
                        'ALIQ_IPI' => '',
                        'VL_IPI' => '',
                        'CST_PIS' => (string)$cst_pis,
                        'VL_BC_PIS' => '',
                        'ALIQ_PIS_PERC' => '',
                        'QUANT_BC_PIS' => '',
                        'ALIQ_PIS_REAIS' => '',
                        'VL_PIS' => '',
                        'CST_COFINS' => (string)$cst_cofins,
                        'VL_BC_COFINS' => '',
                        'ALIQ_COFINS_PERC' => '',
                        'QUANT_BC_COFINS' => '',
                        'ALIQ_COFINS_REAIS' => '',
                        'VL_COFINS' => '',
                        'COD_CTA' => '',
                        'cnpj_arquivo' => $cnpj_ativo,
                        'datafinal' => '0',
                        'sped_xml' => 'xml'
                    ];
                    $db->reg_C170->insert($reg_c170);
                    /*
                      $insert_c170 = "INSERT INTO reg_c170 (id_c100,`REG`, `NUM_ITEM`, `COD_ITEM`, `DESCR_COMPL`, `QTD`, `UNID`, `VL_ITEM`, `VL_DESC`, `IND_MOV`, `CST_ICMS`, `CFOP`, `COD_NAT`, `VL_BC_ICMS`, `ALIQ_ICMS`, `VL_ICMS`, `VL_BC_ICMS_ST`, `ALIQ_ST`, `VL_ICMS_ST`, `IND_APUR`, `CST_IPI`, `COD_ENQ`, `VL_BC_IPI`, `ALIQ_IPI`, `VL_IPI`, `CST_PIS`, `VL_BC_PIS`, `ALIQ_PIS_PERC`, `QUANT_BC_PIS`, `ALIQ_PIS_REAIS`, `VL_PIS`, `CST_COFINS`, `VL_BC_COFINS`, `ALIQ_COFINS_PERC`, `QUANT_BC_COFINS`, `ALIQ_COFINS_REAIS`, `VL_COFINS`, `COD_CTA`,cnpj_arquivo,datafinal,sped_xml) VALUES (:id_c100, :REG, :NUM_ITEM, :COD_ITEM, :DESCR_COMPL, :QTD, :UNID, :VL_ITEM, :VL_DESC, :IND_MOV, :CST_ICMS, :CFOP, :COD_NAT, :VL_BC_ICMS, :ALIQ_ICMS, :VL_ICMS, :VL_BC_ICMS_ST, :ALIQ_ST, :VL_ICMS_ST, :IND_APUR, :CST_IPI, :COD_ENQ, :VL_BC_IPI, :ALIQ_IPI, :VL_IPI, :CST_PIS, :VL_BC_PIS, :ALIQ_PIS_PERC, :QUANT_BC_PIS, :ALIQ_PIS_REAIS, :VL_PIS, :CST_COFINS, :VL_BC_COFINS, :ALIQ_COFINS_PERC, :QUANT_BC_COFINS, :ALIQ_COFINS_REAIS, :VL_COFINS, :COD_CTA,:cnpj_arquivo,:datafinal,:sped_xml)";
                      $stmt = $conn->prepare($insert_c170);

                      try {
                      $stmt->execute($reg_c170);
                      } catch (PDOException $exc) {
                      echo $exc->getMessage();
                      }
                     * 
                     */
                }
            } // Fim de arquivo xml
        }
    }
    $diretorio->close();
}
// Terminamos o "contador" e exibimos
list($usec, $sec) = explode(' ', microtime());
$script_end = (float) $sec + (float) $usec;
$elapsed_time = round($script_end - $script_start, 5);


// Exibimos uma mensagem
echo 'Elapsed time: ', $elapsed_time, ' secs. Memory usage: ', round(((memory_get_peak_usage(true) / 1024) / 1024), 2), 'Mb';


