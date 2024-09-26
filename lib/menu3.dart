import 'package:flutter/material.dart';

class Menu3 extends StatefulWidget {
  const Menu3({super.key});

  @override
  State<Menu3> createState() => _HomePageState();
}

class _HomePageState extends State<Menu3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SaúdeAlerta"),
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
              "Menu",
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
                     child: const Text("Cadastrar Posto"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/decimoquarto');
                      }),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize:18.0),
                          backgroundColor: Colors.teal.shade900,
                          foregroundColor: Colors.white),
                      child: const Text("Calendario"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/decimoquinto');
                      }),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize:18.0),
                          backgroundColor: Colors.teal.shade900,
                          foregroundColor: Colors.white),
                     child: const Text("Cadastrar Agendamento"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/decimosexto');
                      }),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize:18.0),
                          backgroundColor: Colors.teal.shade900,
                          foregroundColor: Colors.white),
                      child: const Text("Notícias"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/decimosetimo');
                      }),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
