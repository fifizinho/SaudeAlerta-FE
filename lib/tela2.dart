import 'package:flutter/material.dart';

class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _HomePageState();
}

class _HomePageState extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALENDARIO"),
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
                    child: Image.asset('assets/images/calendario-setembro-2024_4229_15.png'),
                  )
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
