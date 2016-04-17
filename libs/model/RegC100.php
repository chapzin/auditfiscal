<?php

class RegC100
{

    private $reg;
    private $indOper;
    private $indEmit;
    private $codPart;
    private $codMod;
    private $codSit;
    private $ser;
    private $numDoc;
    private $chvNfe;
    private $dtDoc;
    private $dtES;
    private $vlDoc;
    private $indPgto;
    private $vlDesc;
    private $vlAbatNt;
    private $vlMerc;
    private $indFrt;
    private $vlFrt;
    private $vlSeg;
    private $vlOutDa;
    private $vlBcIcms;
    private $vlIcms;
    private $vlBcIcmsSt;
    private $vlIcmsSt;
    private $vlIpi;
    private $vlPis;
    private $vlCofins;
    private $vlPisSt;
    private $vlCofinsSt;
    private $c170;
    private $natOp;
    private $cnpjDest;
    private $razaoDest;
    private $razaoEmit;
    private $ieEmit;
    private $ieDest;

    public function addC170($objC170)
    {
        $this->c170[] = $objC170;
    }

    public function populaXml($xml)
    {
        $x = simplexml_load_string($xml);
        if ($x->NFe) {
            $v = $x->NFe->infNFe;
            $this->reg = 'C100';
            $this->indOper = $x->NFe->infNFe->ide->tpNF;
            $this->indEmit = '2';
            $this->codPart = $x->NFe->infNFe->emit->CNPJ;
            $this->codMod = '55';
            $this->codSit = '00';
            $this->ser = $x->NFe->infNFe->ide->serie;
            $this->numDoc = $x->NFe->infNFe->ide->nNF;
            $this->chvNfe = $x->protNFe->infProt->chNFe;
            $dtEmit = $x->NFe->infNFe->ide->dEmi;
            if ($dtEmit == '') {
                $dtEmit1 = $x->NFe->infNFe->ide->dhEmi;
                $dtEmit1 = explode('T', $dtEmit1);
                $dtEmit = $dtEmit1[0];
            }
            $this->dtDoc = $dtEmit;
            $this->dtES = $dtEmit;
            $this->vlDoc = $x->NFe->infNFe->total->ICMSTot->vNF;
            $this->indPgto = '1';
            $this->vlDesc = $x->NFe->infNFe->total->ICMSTot->vDesc;
            $this->vlAbatNt = '0';
            $this->vlMerc = $x->NFe->infNFe->total->ICMSTot->vProd;
            $this->indFrt = $x->NFe->infNFe->transp->modFrete;
            $this->vlFrt = $x->NFe->infNFe->total->ICMSTot->vFrete;
            $this->vlSeg = $x->NFe->infNFe->total->ICMSTot->vSeg;
            $this->vlOutDa = $x->NFe->infNFe->total->ICMSTot->vOutro;
            $this->vlBcIcms = $x->NFe->infNFe->total->ICMSTot->vBC;
            $this->vlIcms = $x->NFe->infNFe->total->ICMSTot->vICMS;
            $this->vlBcIcmsSt = $x->NFe->infNFe->total->ICMSTot->vBCST;
            $this->vlIcmsSt = $x->NFe->infNFe->total->ICMSTot->vST;
            $this->vlIpi = $x->NFe->infNFe->total->ICMSTot->vIPI;
            $this->vlPis = $x->NFe->infNFe->total->ICMSTot->vPIS;
            $this->vlCofins = $x->NFe->infNFe->total->ICMSTot->vCOFINS;
            $this->vlPisSt = '0';
            $this->vlCofinsSt = '0';
            $this->natOp = $x->NFe->infNFe->ide->natOp;
            $cnpj_dest = $x->NFe->infNFe->dest->CNPJ;
            if ($cnpj_dest == '') {
                $cnpj_dest = $x->NFe->infNFe->dest->CPF;
            }
            $this->cnpjDest = $cnpj_dest;

            $this->razaoDest = $x->NFe->infNFe->dest->xNome;
            $this->razaoEmit = $x->NFe->infNFe->emit->xNome;
            $this->ieEmit = $x->NFe->infNFe->emit->IE;
            $this->ieDest = $x->NFe->infNFe->dest->IE;
            return true;
        } else {
            return false;
        }
    }

    public function populaSped($linha)
    {
        $l = explode('|', $linha);
        if ($l[1] == 'C100') {
            $this->reg = $l[1];
            $this->indOper = $l[2];
            $this->indEmit = $l[3];
            $this->codPart = $l[4];
            $this->codMod = $l[5];
            $this->codSit = $l[6];
            $this->ser = $l[7];
            $this->numDoc = $l[8];
            $this->chvNfe = $l[9];
            $this->dtDoc = convert_data($l[10]);
            $this->dtES = convert_data($l[11]);
            $this->vlDoc = vlp($l[12]);
            $this->indPgto = $l[13];
            $this->vlDesc = vlp($l[14]);
            $this->vlAbatNt = vlp($l[15]);
            $this->vlMerc = vlp($l[16]);
            $this->indFrt = $l[17];
            $this->vlFrt = vlp($l[18]);
            $this->vlSeg = vlp($l[19]);
            $this->vlOutDa = vlp($l[20]);
            $this->vlBcIcms = vlp($l[21]);
            $this->vlIcms = vlp($l[22]);
            $this->vlBcIcmsSt = vlp($l[23]);
            $this->vlIcmsSt = vlp($l[24]);
            $this->vlIpi = vlp($l[25]);
            $this->vlPis = vlp($l[26]);
            $this->vlCofins = vlp($l[27]);
            $this->vlPisSt = vlp($l[28]);
            $this->vlCofinsSt = vlp($l[29]);
        }
    }

    function getReg()
    {
        return $this->reg;
    }

    function getIndOper()
    {
        return $this->indOper;
    }

    function getIndEmit()
    {
        return $this->indEmit;
    }

    function getCodPart()
    {
        return $this->codPart;
    }

    function getCodMod()
    {
        return $this->codMod;
    }

    function getCodSit()
    {
        return $this->codSit;
    }

    function getSer()
    {
        return $this->ser;
    }

    function getNumDoc()
    {
        return $this->numDoc;
    }

    function getChvNfe()
    {
        return $this->chvNfe;
    }

    function getDtDoc()
    {
        return $this->dtDoc;
    }

    function getDtES()
    {
        return $this->dtES;
    }

    /**
     * @return mixed
     */
    public function getC170()
    {
        return $this->c170;
    }

    /**
     * @param mixed $c170
     */
    public function setC170($c170)
    {
        $this->c170 = $c170;
    }

    /**
     * @return mixed
     */
    public function getNatOp()
    {
        return $this->natOp;
    }

    /**
     * @param mixed $natOp
     */
    public function setNatOp($natOp)
    {
        $this->natOp = $natOp;
    }

    /**
     * @return mixed
     */
    public function getCnpjDest()
    {
        return $this->cnpjDest;
    }

    /**
     * @param mixed $cnpjDest
     */
    public function setCnpjDest($cnpjDest)
    {
        $this->cnpjDest = $cnpjDest;
    }

    /**
     * @return mixed
     */
    public function getRazaoDest()
    {
        return $this->razaoDest;
    }

    /**
     * @param mixed $razaoDest
     */
    public function setRazaoDest($razaoDest)
    {
        $this->razaoDest = $razaoDest;
    }

    /**
     * @return mixed
     */
    public function getRazaoEmit()
    {
        return $this->razaoEmit;
    }

    /**
     * @param mixed $razaoEmit
     */
    public function setRazaoEmit($razaoEmit)
    {
        $this->razaoEmit = $razaoEmit;
    }

    /**
     * @return mixed
     */
    public function getIeEmit()
    {
        return $this->ieEmit;
    }

    /**
     * @param mixed $ieEmit
     */
    public function setIeEmit($ieEmit)
    {
        $this->ieEmit = $ieEmit;
    }

    /**
     * @return mixed
     */
    public function getIeDest()
    {
        return $this->ieDest;
    }

    /**
     * @param mixed $ieDest
     */
    public function setIeDest($ieDest)
    {
        $this->ieDest = $ieDest;
    }


    function getVlDoc()
    {
        return $this->vlDoc;
    }

    function getIndPgto()
    {
        return $this->indPgto;
    }

    function getVlDesc()
    {
        return $this->vlDesc;
    }

    function getVlAbatNt()
    {
        return $this->vlAbatNt;
    }

    function getVlMerc()
    {
        return $this->vlMerc;
    }

    function getIndFrt()
    {
        return $this->indFrt;
    }

    function getVlFrt()
    {
        return $this->vlFrt;
    }

    function getVlSeg()
    {
        return $this->vlSeg;
    }

    function getVlOutDa()
    {
        return $this->vlOutDa;
    }

    function getVlBcIcms()
    {
        return $this->vlBcIcms;
    }

    function getVlIcms()
    {
        return $this->vlIcms;
    }

    function getVlBcIcmsSt()
    {
        return $this->vlBcIcmsSt;
    }

    function getVlIcmsSt()
    {
        return $this->vlIcmsSt;
    }

    function getVlIpi()
    {
        return $this->vlIpi;
    }

    function getVlPis()
    {
        return $this->vlPis;
    }

    function getVlCofins()
    {
        return $this->vlCofins;
    }

    function getVlPisSt()
    {
        return $this->vlPisSt;
    }

    function getVlCofinsSt()
    {
        return $this->vlCofinsSt;
    }

    function setReg($reg)
    {
        $this->reg = $reg;
    }

    function setIndOper($indOper)
    {
        $this->indOper = $indOper;
    }

    function setIndEmit($indEmit)
    {
        $this->indEmit = $indEmit;
    }

    function setCodPart($codPart)
    {
        $this->codPart = $codPart;
    }

    function setCodMod($codMod)
    {
        $this->codMod = $codMod;
    }

    function setCodSit($codSit)
    {
        $this->codSit = $codSit;
    }

    function setSer($ser)
    {
        $this->ser = $ser;
    }

    function setNumDoc($numDoc)
    {
        $this->numDoc = $numDoc;
    }

    function setChvNfe($chvNfe)
    {
        $this->chvNfe = $chvNfe;
    }

    function setDtDoc($dtDoc)
    {
        $this->dtDoc = $dtDoc;
    }

    function setDtES($dtES)
    {
        $this->dtES = $dtES;
    }

    function setVlDoc($vlDoc)
    {
        $this->vlDoc = $vlDoc;
    }

    function setIndPgto($indPgto)
    {
        $this->indPgto = $indPgto;
    }

    function setVlDesc($vlDesc)
    {
        $this->vlDesc = $vlDesc;
    }

    function setVlAbatNt($vlAbatNt)
    {
        $this->vlAbatNt = $vlAbatNt;
    }

    function setVlMerc($vlMerc)
    {
        $this->vlMerc = $vlMerc;
    }

    function setIndFrt($indFrt)
    {
        $this->indFrt = $indFrt;
    }

    function setVlFrt($vlFrt)
    {
        $this->vlFrt = $vlFrt;
    }

    function setVlSeg($vlSeg)
    {
        $this->vlSeg = $vlSeg;
    }

    function setVlOutDa($vlOutDa)
    {
        $this->vlOutDa = $vlOutDa;
    }

    function setVlBcIcms($vlBcIcms)
    {
        $this->vlBcIcms = $vlBcIcms;
    }

    function setVlIcms($vlIcms)
    {
        $this->vlIcms = $vlIcms;
    }

    function setVlBcIcmsSt($vlBcIcmsSt)
    {
        $this->vlBcIcmsSt = $vlBcIcmsSt;
    }

    function setVlIcmsSt($vlIcmsSt)
    {
        $this->vlIcmsSt = $vlIcmsSt;
    }

    function setVlIpi($vlIpi)
    {
        $this->vlIpi = $vlIpi;
    }

    function setVlPis($vlPis)
    {
        $this->vlPis = $vlPis;
    }

    function setVlCofins($vlCofins)
    {
        $this->vlCofins = $vlCofins;
    }

    function setVlPisSt($vlPisSt)
    {
        $this->vlPisSt = $vlPisSt;
    }

    function setVlCofinsSt($vlCofinsSt)
    {
        $this->vlCofinsSt = $vlCofinsSt;
    }

}
