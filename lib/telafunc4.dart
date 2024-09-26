import 'package:flutter/material.dart';

class Telafunc4 extends StatefulWidget {
  const Telafunc4({super.key});

  @override
  State<Telafunc4> createState() => _HomePageState();
}

class _HomePageState extends State<Telafunc4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOTICIAS"),
        centerTitle: true,
        backgroundColor: Colors.teal.shade900,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.lightGreen.shade50,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
                width: 170,
                height: 170,
                child: Image.asset('assets/images/7822235.png')
            ),
            Text(
              "SaudeAlerta",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.teal.shade900, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.teal.shade900, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Vacinas Causam Autismo:"
                        " Esclarecimento Científico: Vacinas NÃO causam autismo. O mito de que vacinas estão relacionadas ao autismo foi amplamente desmentido por estudos científicos rigorosos. "
                        "A teoria foi originalmente proposta por um estudo fraudulento publicado em 1998, que foi posteriormente retratado e desmentido. Pesquisas extensas e revisões por pares confirmaram que não há vínculo entre vacinas e autismo. As vacinas são seguras e eficazes, e continuam a ser uma das ferramentas mais importantes na proteção contra doenças infecciosas.",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black, fontSize: 12.0),
                  ),
                  Text(
                    "Mito Desfeito:"
                        " Mercúrio nas Vacinas É Seguro. Há uma preocupação persistente sobre o mercúrio em vacinas, particularmente no timerosal, um conservante. No entanto, o timerosal contém etilmercúrio, que é diferente do metilmercúrio encontrado em peixes e conhecido por ser tóxico. O etilmercúrio é eliminado do corpo muito rapidamente e em quantidades muito menores. "
                        "A Organização Mundial da Saúde (OMS) e os Centros de Controle e Prevenção de Doenças (CDC) afirmam que o timerosal nas vacinas não representa um risco para a saúde e que as vacinas são seguras.",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black, fontSize: 12.0,),
                  ),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
