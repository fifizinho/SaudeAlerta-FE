import 'package:flutter/material.dart';

class Tela3 extends StatefulWidget {
  const Tela3({super.key});

  @override
  State<Tela3> createState() => _HomePageState();
}

class _HomePageState extends State<Tela3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AGENDAMENTO"),
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
                  Container(
                    width: 300,
                    height: 300,
                    child: Image.asset('assets/images/SVTDZKJ5FNPEZHPKYIHUSC26QQ.jpg'),
                  )
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
