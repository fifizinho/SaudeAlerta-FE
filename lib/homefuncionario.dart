import 'package:flutter/material.dart';

class Homefuncionario extends StatefulWidget {
  const Homefuncionario({super.key});

  @override
  State<Homefuncionario> createState() => _HomePageState();
}

class _HomePageState extends State<Homefuncionario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FUNCIONARIO"),
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
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize:18.0),
                          backgroundColor: Colors.teal.shade900,
                          foregroundColor: Colors.white),
                      child: const Text("Cadastrar"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/sexto');
                      }),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize:18.0),
                          backgroundColor: Colors.teal.shade900,
                          foregroundColor: Colors.white),
                      child: const Text("Entrar"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/setimo');
                      }),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
