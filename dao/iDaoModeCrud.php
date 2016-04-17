<?php

/**
 * Created by PhpStorm.
 * User: DELLTI
 * Date: 11/04/2016
 * Time: 10:18
 */
interface iDaoModeCrud
{
    public function create ($objeto);
    public function createDtIni($objeto,$dtIni);
    public function ler ($param);
    public function update ($objeto);
    public function delete ($param);

}