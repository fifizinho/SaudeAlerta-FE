import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Telafunc(),
    );
  }
}

class Telafunc extends StatefulWidget {
  const Telafunc({super.key});

  @override
  State<Telafunc> createState() => _HomePageState();
}

class _HomePageState extends State<Telafunc> {
  TextEditingController nomeController = new TextEditingController();
  TextEditingController ruaController = new TextEditingController();
  TextEditingController bairroController = new TextEditingController();
  TextEditingController numeroController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar() {
    nomeController.text = "";
    ruaController.text = "";
    bairroController.text = "";
    numeroController.text = "";
    setState(() {
      _textoInfo = "informa seus dados";
    });
  }

  void _cadastrar() {


    String nome = nomeController.text;
    String rua = ruaController.text;
    String bairro = bairroController.text;
    String num = numeroController.text;

    setState(() {
      if (nome.isEmpty || rua.isEmpty|| bairro.isEmpty
          || num.isEmpty) {
        _textoInfo = "Erro ao cadastrar posto de saúde";
      } else {
        _textoInfo = "Dados cadastrados com sucesso!";
        nomeController.text = "";
        ruaController.text = "";
        bairroController.text = "";
        numeroController.text = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Posto"),
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
                labelText: "Rua",
                labelStyle: TextStyle(color: Colors.teal.shade900),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: ruaController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Bairro",
                labelStyle: TextStyle(color: Colors.teal.shade900),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: bairroController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Numero",
                labelStyle: TextStyle(color: Colors.teal.shade900),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: numeroController,
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
