import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Entrarfuncionario(),
    );
  }
}

class Entrarfuncionario extends StatefulWidget {
  const Entrarfuncionario({super.key});

  @override
  State<Entrarfuncionario> createState() => _HomePageState();
}

class _HomePageState extends State<Entrarfuncionario> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar() {
    emailController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "informa seus dados";
    });
  }

  void _cadastrar() {


    String user = emailController.text;
    String senha = senhaController.text;
    setState(() {
      if (user.isEmpty || senha.isEmpty) {
        _textoInfo = "Erro ao logar funcionario";
      } else {
        Navigator.pushNamed(context, '/nono');
        _textoInfo = "";
        emailController.text = "";
        senhaController.text = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login de Funcionario"),
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
            Container(
                padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
                width: 170,
                height: 170,
                child: Image.asset('assets/images/7822235.png')
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
                            child: const Text("Entrar")),
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
