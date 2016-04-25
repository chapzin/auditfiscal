<?php

require_once 'conexao.php';
require_once '__analisar_autoload.php';

$r0000 = new DaoReg0000();
$r0000->deleteAll("reg_0000");
$r0150 = new DaoReg0150();
$r0150->deleteAll("reg_0150");
$r0150->deleteAll("reg_0150xml");
$r0190 = new DaoReg0190();
$r0190->deleteAll("reg_0190");
$r0200 = new DaoReg0200();
$r0200->deleteAll("reg_0200");
$r0205 = new DaoReg0205();
$r0205->deleteAll("reg_0205");
$r0220 = new DaoReg0220();
$r0220->deleteAll("reg_0220");
$rC100 = new DaoRegC100();
$rC100->deleteAllSped();
$rC100->deleteAllXml();
$rC170 = new DaoRegC170();
$rC170->deleteAll("reg_c170");
$rC425 = new DaoRegC425();
$rC425->deleteAll("reg_C425");
$rH005 = new DaoRegH005();
$rH005->deleteAll("reg_H005");
$rH010 = new DaoRegH010();
$rH010->deleteAll("reg_H010");
$est = new DaoEstoqueQtd();
$est->deleteAll("estoque_qtd");

