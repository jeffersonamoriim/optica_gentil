class Nfe {
    String versao;
    NFe nFe;
    ProtNFe protNFe;

    Nfe({
        this.versao,
        this.nFe,
        this.protNFe,
    });
}

class NFe {
    InfNFe infNFe;
    Signature signature;

    NFe({
        this.infNFe,
        this.signature,
    });
}

class InfNFe {
    String versao;
    String id;
    Ide ide;
    Emit emit;
    Dest dest;
    List<Det> det;
    Total total;
    Transp transp;
    Cobr cobr;
    Pag pag;
    InfAdic infAdic;

    InfNFe({
        this.versao,
        this.id,
        this.ide,
        this.emit,
        this.dest,
        this.det,
        this.total,
        this.transp,
        this.cobr,
        this.pag,
        this.infAdic,
    });
}

class Cobr {
    Fat fat;
    Dup dup;

    Cobr({
        this.fat,
        this.dup,
    });
}

class Dup {
    String nDup;
    DateTime dVenc;
    String vDup;

    Dup({
        this.nDup,
        this.dVenc,
        this.vDup,
    });
}

class Fat {
    String nFat;
    String vOrig;
    String vLiq;

    Fat({
        this.nFat,
        this.vOrig,
        this.vLiq,
    });
}

class Dest {
    String cnpj;
    String xNome;
    Ender enderDest;
    String indIeDest;
    String ie;
    String email;

    Dest({
        this.cnpj,
        this.xNome,
        this.enderDest,
        this.indIeDest,
        this.ie,
        this.email,
    });
}

class Ender {
    String xLgr;
    String nro;
    String xCpl;
    String xBairro;
    String cMun;
    String xMun;
    String uf;
    String cep;
    String cPais;
    String xPais;
    String fone;

    Ender({
        this.xLgr,
        this.nro,
        this.xCpl,
        this.xBairro,
        this.cMun,
        this.xMun,
        this.uf,
        this.cep,
        this.cPais,
        this.xPais,
        this.fone,
    });
}

class Det {
    String nItem;
    Prod prod;
    Imposto imposto;

    Det({
        this.nItem,
        this.prod,
        this.imposto,
    });
}

class Imposto {
    Icms icms;
    Ipi ipi;
    Pis pis;
    Cofins cofins;

    Imposto({
        this.icms,
        this.ipi,
        this.pis,
        this.cofins,
    });
}

class Cofins {
    CofinsAliq cofinsAliq;

    Cofins({
        this.cofinsAliq,
    });
}

class CofinsAliq {
    String cst;
    String vBc;
    String pCofins;
    String vCofins;

    CofinsAliq({
        this.cst,
        this.vBc,
        this.pCofins,
        this.vCofins,
    });
}

class Icms {
    Icms00 icms00;

    Icms({
        this.icms00,
    });
}

class Icms00 {
    String orig;
    String cst;
    String modBc;
    String vBc;
    String pIcms;
    String vIcms;

    Icms00({
        this.orig,
        this.cst,
        this.modBc,
        this.vBc,
        this.pIcms,
        this.vIcms,
    });
}

class Ipi {
    String cEnq;
    IpiTrib ipiTrib;

    Ipi({
        this.cEnq,
        this.ipiTrib,
    });
}

class IpiTrib {
    String cst;
    String vBc;
    String pIpi;
    String vIpi;

    IpiTrib({
        this.cst,
        this.vBc,
        this.pIpi,
        this.vIpi,
    });
}

class Pis {
    PisAliq pisAliq;

    Pis({
        this.pisAliq,
    });
}

class PisAliq {
    String cst;
    String vBc;
    String pPis;
    String vPis;

    PisAliq({
        this.cst,
        this.vBc,
        this.pPis,
        this.vPis,
    });
}

class Prod {
    String cProd;
    String cEan;
    String xProd;
    String ncm;
    String cfop;
    String uCom;
    String qCom;
    String vUnCom;
    String vProd;
    String cEanTrib;
    String uTrib;
    String qTrib;
    String vUnTrib;
    String indTot;

    Prod({
        this.cProd,
        this.cEan,
        this.xProd,
        this.ncm,
        this.cfop,
        this.uCom,
        this.qCom,
        this.vUnCom,
        this.vProd,
        this.cEanTrib,
        this.uTrib,
        this.qTrib,
        this.vUnTrib,
        this.indTot,
    });
}

class Emit {
    String cnpj;
    String xNome;
    String xFant;
    Ender enderEmit;
    String ie;
    String crt;

    Emit({
        this.cnpj,
        this.xNome,
        this.xFant,
        this.enderEmit,
        this.ie,
        this.crt,
    });
}

class Ide {
    String cUf;
    String cNf;
    String natOp;
    String mod;
    String serie;
    String nNf;
    DateTime dhEmi;
    String tpNf;
    String idDest;
    String cMunFg;
    String tpImp;
    String tpEmis;
    String cDv;
    String tpAmb;
    String finNFe;
    String indFinal;
    String indPres;
    String procEmi;
    String verProc;

    Ide({
        this.cUf,
        this.cNf,
        this.natOp,
        this.mod,
        this.serie,
        this.nNf,
        this.dhEmi,
        this.tpNf,
        this.idDest,
        this.cMunFg,
        this.tpImp,
        this.tpEmis,
        this.cDv,
        this.tpAmb,
        this.finNFe,
        this.indFinal,
        this.indPres,
        this.procEmi,
        this.verProc,
    });
}

class InfAdic {
    String infCpl;

    InfAdic({
        this.infCpl,
    });
}

class Pag {
    DetPag detPag;

    Pag({
        this.detPag,
    });
}

class DetPag {
    String tPag;
    String vPag;

    DetPag({
        this.tPag,
        this.vPag,
    });
}

class Total {
    IcmsTot icmsTot;

    Total({
        this.icmsTot,
    });
}

class IcmsTot {
    String vBc;
    String vIcms;
    String vIcmsDeson;
    String vFcp;
    String vBcst;
    String vSt;
    String vFcpst;
    String vFcpstRet;
    String vProd;
    String vFrete;
    String vSeg;
    String vDesc;
    String vIi;
    String vIpi;
    String vIpiDevol;
    String vPis;
    String vCofins;
    String vOutro;
    String vNf;

    IcmsTot({
        this.vBc,
        this.vIcms,
        this.vIcmsDeson,
        this.vFcp,
        this.vBcst,
        this.vSt,
        this.vFcpst,
        this.vFcpstRet,
        this.vProd,
        this.vFrete,
        this.vSeg,
        this.vDesc,
        this.vIi,
        this.vIpi,
        this.vIpiDevol,
        this.vPis,
        this.vCofins,
        this.vOutro,
        this.vNf,
    });
}

class Transp {
    String modFrete;

    Transp({
        this.modFrete,
    });
}

class Signature {
    SignedInfo signedInfo;
    String signatureValue;
    KeyInfo keyInfo;

    Signature({
        this.signedInfo,
        this.signatureValue,
        this.keyInfo,
    });
}

class KeyInfo {
    X509Data x509Data;

    KeyInfo({
        this.x509Data,
    });
}

class X509Data {
    String x509Certificate;

    X509Data({
        this.x509Certificate,
    });
}

class SignedInfo {
    CanonicalizationMethod canonicalizationMethod;
    CanonicalizationMethod signatureMethod;
    Reference reference;

    SignedInfo({
        this.canonicalizationMethod,
        this.signatureMethod,
        this.reference,
    });
}

class CanonicalizationMethod {
    String algorithm;

    CanonicalizationMethod({
        this.algorithm,
    });
}

class Reference {
    String uri;
    Transforms transforms;
    CanonicalizationMethod digestMethod;
    String digestValue;

    Reference({
        this.uri,
        this.transforms,
        this.digestMethod,
        this.digestValue,
    });
}

class Transforms {
    List<CanonicalizationMethod> transform;

    Transforms({
        this.transform,
    });
}

class ProtNFe {
    String versao;
    InfProt infProt;

    ProtNFe({
        this.versao,
        this.infProt,
    });
}

class InfProt {
    String tpAmb;
    String verAplic;
    String chNFe;
    DateTime dhRecbto;
    String nProt;
    String digVal;
    String cStat;
    String xMotivo;

    InfProt({
        this.tpAmb,
        this.verAplic,
        this.chNFe,
        this.dhRecbto,
        this.nProt,
        this.digVal,
        this.cStat,
        this.xMotivo,
    });
}
