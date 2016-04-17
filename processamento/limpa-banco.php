<?php

require_once 'conexao.php';
require_once '../dao/DaoReg0000.php';
require_once '../dao/DaoReg0150.php';
require_once '../dao/DaoReg0190.php';
require_once '../dao/DaoReg0200.php';
require_once '../dao/DaoReg0205.php';
require_once '../dao/DaoReg0220.php';
require_once '../dao/DaoRegC100.php';
require_once '../dao/DaoRegC170.php';


$r0000 = new DaoReg0000();
$r0000->deleteAll();
$r0150 = new DaoReg0150();
$r0150->deleteAll();
$r0190 = new DaoReg0190();
$r0190->deleteAll();
$r0200 = new DaoReg0200();
$r0200->deleteAll();
$r0205 = new DaoReg0205();
$r0205->deleteAll();
$r0220 = new DaoReg0220();
$r0220->deleteAll();
$rC100 = new DaoRegC100();
$rC100->deleteAllSped();
$rC100->deleteAllXml();
$rC170 = new DaoRegC170();
$rC170->deleteAll();


