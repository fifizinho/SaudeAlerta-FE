import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Telafunc2(),
    );
  }
}

class Telafunc2 extends StatefulWidget {
  const Telafunc2({super.key});

  @override
  State<Telafunc2> createState() => _HomePageState();
}

class _HomePageState extends State<Telafunc2> {
  TextEditingController nomeController = new TextEditingController();
  TextEditingController doseController = new TextEditingController();
  TextEditingController dataController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar() {
    nomeController.text = "";
    doseController.text = "";
    dataController.text = "";
    setState(() {
      _textoInfo = "informa seus dados";
    });
  }

  void _cadastrar() {


    String nome = nomeController.text;
    String dose = doseController.text;
    String data = dataController.text;

    setState(() {
      if (nome.isEmpty || dose.isEmpty|| data.isEmpty) {
        _textoInfo = "Erro ao cadastrar agendamento";
      } else {
        _textoInfo = "Dados cadastrados com sucesso!";
        nomeController.text = "";
        doseController.text = "";
        dataController.text = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agendamento"),
        centerTitle: true,
        backgroundColor: Colors.teal.shade900,
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(onPressed: _limpar, icon: Icon(Icons.refresh))
        ],
      ),
      backgroundColor: Colors.lightGreen.shade50,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(color: Colors.teal.shade900),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: nomeController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Dose",
                labelStyle: TextStyle(color: Colors.teal.shade900),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: doseController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Data",
                labelStyle: TextStyle(color: Colors.teal.shade900),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: dataController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                  height: 50.0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(fontSize:23.0),
                                backgroundColor: Colors.teal.shade900,
                                foregroundColor: Colors.white),
                            onPressed: _cadastrar,
                            child: const Text("Cadastrar")),

                      ])
              ),
            ),
            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
