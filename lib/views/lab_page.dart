import 'package:firebase/firebase.dart';
import 'package:xml/xml.dart' as xml;
import 'package:flutter/material.dart';
import 'package:optica_gentil/widgets/custom_drawer.dart';
import 'dart:io';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class LabPage extends StatefulWidget {
  static const String routeName = '/lab';
  final Storage storage = new Storage();
  @override
  _LabPageState createState() => _LabPageState();
}

class _LabPageState extends State<LabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Optica Gentil'),
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _readXml();
            },
            icon: Icon(Icons.refresh),
            padding: EdgeInsets.only(right: 10.0),
          )
        ],
      ),
      drawer: CustomDrawer(),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void _readXml() {
    var dados =
        '''<?xml version="1.0" encoding="UTF-8"?><nfeProc versao="4.00" xmlns="http://www.portalfiscal.inf.br/nfe"><NFe xmlns="http://www.portalfiscal.inf.br/nfe"><infNFe versao="4.00" Id="NFe35191119400707000113550010000420491008118715"><ide><cUF>35</cUF><cNF>00811871</cNF><natOp>VENDA DE MERCADORIA</natOp><mod>55</mod><serie>1</serie><nNF>42049</nNF><dhEmi>2019-11-08T12:08:00-02:00</dhEmi><tpNF>1</tpNF><idDest>1</idDest><cMunFG>3505708</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis><cDV>5</cDV><tpAmb>1</tpAmb><finNFe>1</finNFe><indFinal>0</indFinal><indPres>9</indPres><procEmi>0</procEmi><verProc>12.1.017 | 3.0</verProc></ide><emit><CNPJ>19400707000113</CNPJ><xNome>SILHOUETTE DO BRASIL PRODUTOS OPTICOS LTDA</xNome><xFant>SILHOUETTE DO BRASIL PRODUTOS OPTICOS</xFant><enderEmit><xLgr>AV.ENIDA ARUANA</xLgr><nro>280</nro><xCpl>CONJ. 11 PAV. 2</xCpl><xBairro>TAMBORE</xBairro><cMun>3505708</cMun><xMun>BARUERI</xMun><UF>SP</UF><CEP>06460010</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>551126801000</fone></enderEmit><IE>206332879112</IE><CRT>3</CRT></emit><dest><CNPJ>02307559000194</CNPJ><xNome>EMPORIO BRASIL IMP. E EXP. LTDA ME</xNome><enderDest><xLgr>RUA MARIA MONTEIRO</xLgr><nro>656</nro><xCpl>SALA 1</xCpl><xBairro>CAMBUI</xBairro><cMun>3509502</cMun><xMun>CAMPINAS</xMun><UF>SP</UF><CEP>13025151</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>1932545012</fone></enderDest><indIEDest>1</indIEDest><IE>795760500114</IE><email>CIDA@IRISGENTIL.COM.BR</email></dest><det nItem="1"><prod><cProd>05097FU62105200</cProd><cEAN>888465393987</cEAN><xProd>DECOR ANEL 5097/FU 6210 52</xProd><NCM>90039090</NCM><CFOP>5102</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>71.0000000000</vUnCom><vProd>71.00</vProd><cEANTrib>888465393987</cEANTrib><uTrib>UN</uTrib><qTrib>1.0000</qTrib><vUnTrib>71.0000000000</vUnTrib><indTot>1</indTot></prod><imposto><ICMS><ICMS00><orig>1</orig><CST>00</CST><modBC>3</modBC><vBC>71.00</vBC><pICMS>18.0000</pICMS><vICMS>12.78</vICMS></ICMS00></ICMS><IPI><cEnq>999</cEnq><IPITrib><CST>50</CST><vBC>71.00</vBC><pIPI>5.0000</pIPI><vIPI>3.55</vIPI></IPITrib></IPI><PIS><PISAliq><CST>01</CST><vBC>71.00</vBC><pPIS>1.6500</pPIS><vPIS>1.17</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>71.00</vBC><pCOFINS>7.6000</pCOFINS><vCOFINS>5.40</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="2"><prod><cProd>05097FU35105200</cProd><cEAN>8884652980468</cEAN><xProd>DECOR ANEL 5097/FU 3510 52</xProd><NCM>90039090</NCM><CFOP>5102</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>71.0000000000</vUnCom><vProd>71.00</vProd><cEANTrib>8884652980468</cEANTrib><uTrib>UN</uTrib><qTrib>1.0000</qTrib><vUnTrib>71.0000000000</vUnTrib><indTot>1</indTot></prod><imposto><ICMS><ICMS00><orig>1</orig><CST>00</CST><modBC>3</modBC><vBC>71.00</vBC><pICMS>18.0000</pICMS><vICMS>12.78</vICMS></ICMS00></ICMS><IPI><cEnq>999</cEnq><IPITrib><CST>50</CST><vBC>71.00</vBC><pIPI>5.0000</pIPI><vIPI>3.55</vIPI></IPITrib></IPI><PIS><PISAliq><CST>01</CST><vBC>71.00</vBC><pPIS>1.6500</pPIS><vPIS>1.17</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>71.00</vBC><pCOFINS>7.6000</pCOFINS><vCOFINS>5.39</vCOFINS></COFINSAliq></COFINS></imposto></det><total><ICMSTot><vBC>142.00</vBC><vICMS>25.56</vICMS><vICMSDeson>0.00</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>142.00</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>7.10</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>2.34</vPIS><vCOFINS>10.79</vCOFINS><vOutro>0.00</vOutro><vNF>149.10</vNF></ICMSTot></total><transp><modFrete>0</modFrete></transp><cobr><fat><nFat>1042049</nFat><vOrig>149.10</vOrig><vLiq>149.10</vLiq></fat><dup><nDup>001</nDup><dVenc>2019-12-07</dVenc><vDup>149.10</vDup></dup></cobr><pag><detPag><tPag>15</tPag><vPag>149.10</vPag></detPag></pag><infAdic><infCpl>1</infCpl></infAdic></infNFe><Signature xmlns="http://www.w3.org/2000/09/xmldsig#"><SignedInfo><CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" /><SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1" /><Reference URI="#NFe35191119400707000113550010000420491008118715"><Transforms><Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature" /><Transform Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" /></Transforms><DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1" /><DigestValue>TyivyQzu7M6Z0KVakoaSTDOhETY=</DigestValue></Reference></SignedInfo><SignatureValue>bS8W7LUpBZgNHMbhd2zjokdpFipbTnuFLPZl/jdlSIJt2eISEn31aaFkZFUw1SId1T1fu5W62l6v96qfH4LwWq7BbyDMHO4yDRDm5DKpk+xK3V3kXdPJ+DI+YdhlPd7HAgD/2yRnaHr/+AwBIIBXXXSLN+IEm2tgd+obGbi0XUs=</SignatureValue><KeyInfo><X509Data><X509Certificate>MIICOTCCAaKgAwIBAgIQJpLn3fwH17RNXJHw5VenaDANBgkqhkiG9w0BAQUFADBbMVkwVwYDVQQDHlAAdwB3AHcALgBmAHMAaQBzAHQALgBjAG8AbQAuAGIAcgAgACgAUwBFAE0AIABWAEEATABJAEQAQQBEAEUAIABKAFUAUgDNAEQASQBDAEEAKTAeFw0xNTEyMjQwODI1MjVaFw0xODEyMjQwODI1MjVaMFsxWTBXBgNVBAMeUAB3AHcAdwAuAGYAcwBpAHMAdAAuAGMAbwBtAC4AYgByACAAKABTAEUATQAgAFYAQQBMAEkARABBAEQARQAgAEoAVQBSAM0ARABJAEMAQQApMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDX4BYmJiNwrPz9At2ioXYkMuMWAOf669VPS3SAzIKkJLhSE7Bf9sbTjGHRFZhs6STxKkMBKKnx6dqAEMGlQwDSU42/kqhGya28SUn3HigH2w3dR/536Gt4eAxyLp9ODNXUqWTpnraWCeT41kcnJ27cmOAUMxzxDcsA93n32L4u8wIDAQABMA0GCSqGSIb3DQEBBQUAA4GBAAN89zf+wSFL+4+2Ic8mGva8Z51EzYzNgYEqXwEMHxw4jCxxbsuxewQWedSGWi3SFZla6zmNUEA+UO95tSZ353klTvWDzut2BFSJOPLcMu8HPTTdnMt4ofVeVqKyi2vp+3t78vjqDAAfSAu5C9wT7stoUx41Nok+L6WbmpOIgvHy</X509Certificate></X509Data></KeyInfo></Signature></NFe><protNFe versao="4.00"><infProt><tpAmb>1</tpAmb><verAplic>12.1.017 | 3.0</verAplic><chNFe>35191119400707000113550010000420491008118715</chNFe><dhRecbto>2019-11-08T12:10:00-02:00</dhRecbto><nProt>135190834351553</nProt><digVal>ZvzzUxBy2vJjfa204ZXBdfp5Z5k=</digVal><cStat>100</cStat><xMotivo>Autorizado o uso da NF-e</xMotivo></infProt></protNFe></nfeProc>
''';
    var document = xml.parse(dados);
    print(document.toString());
    print(document.toXmlString(pretty: true, indent: '\t'));
  }
}

class Storage {
  Future<String> get localPath async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  Future<File> get localFile async {
    final path = await localPath;
    return File('$path/db.txt');
  }

  Future<String> readData() async {
    try {
      final file = await localFile;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<File> writeData(String data) async {
    final file = await localFile;
    return file.writeAsString("$data");
  }
}
