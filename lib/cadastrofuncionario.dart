import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Cadastrofuncionario(),
    );
  }
}

class Cadastrofuncionario extends StatefulWidget {
  const Cadastrofuncionario({super.key});

  @override
  State<Cadastrofuncionario> createState() => _HomePageState();
}

class _HomePageState extends State<Cadastrofuncionario> {
  TextEditingController nomeController = new TextEditingController();
  TextEditingController cpfController = new TextEditingController();
  TextEditingController telefoneController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar() {
    nomeController.text = "";
    cpfController.text = "";
    telefoneController.text = "";
    emailController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "informa seus dados";
    });
  }

  void _cadastrar() {


    String nome = nomeController.text;
    String cpf = cpfController.text;
    String tel = telefoneController.text;
    String email = emailController.text;
    String senha = senhaController.text;
    setState(() {
      if (nome.isEmpty || senha.isEmpty|| cpf.isEmpty
          || tel.isEmpty|| email.isEmpty) {
        _textoInfo = "Erro ao cadastrar funcionario";
      } else {
        _textoInfo = "Dados cadastrados com sucesso!";
        nomeController.text = "";
        cpfController.text = "";
        telefoneController.text = "";
        emailController.text = "";
        senhaController.text = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Funcionario"),
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
                labelText: "CPF",
                labelStyle: TextStyle(color: Colors.teal.shade900),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: cpfController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Telefone",
                labelStyle: TextStyle(color: Colors.teal.shade900),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: telefoneController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.teal.shade900),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: emailController,
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(color: Colors.teal.shade900),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: senhaController,
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
