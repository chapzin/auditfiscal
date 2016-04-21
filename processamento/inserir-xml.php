<?php
/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 12/04/2016
 * Time: 09:37
 */
require_once '__analisar_autoload.php';
require_once 'conexao.php';
$caminho = 'xmls/';
$xmls = dir($caminho);
while($arquivo = $xmls->read()){
    if(!is_dir($arquivo)){
        $ext = pathinfo($arquivo,PATHINFO_EXTENSION);
        if($ext == 'xml'){
            $conteudo_xml = file_get_contents($caminho.$arquivo);
            $regC100xml = new RegC100();
            $PersistenciaC100Xml = new DaoRegC100();
            if($regC100xml->populaXml($conteudo_xml)){
                $PersistenciaC100Xml->createXml($regC100xml);
            }

        }
    }
}