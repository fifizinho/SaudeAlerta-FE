import 'package:flutter/material.dart';
import 'package:saudealerta/cadastrofuncionario.dart';
import 'menu1.dart';
import 'homefuncionario.dart';
import 'homeusuario.dart';
import 'cadastrousuario.dart';
import 'cadastrofuncionario.dart';
import 'entrarfuncionario.dart';
import 'entrarusuario.dart';
import 'menu2.dart';
import 'menu3.dart';
import 'tela.dart';
import 'tela2.dart';
import 'tela3.dart';
import 'tela4.dart';
import 'telafunc.dart';
import 'telafunc2.dart';
import 'telafunc3.dart';
import 'telafunc4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas Nomeadas',
      initialRoute: '/',
      routes: {'/':(context) => const Menu1(),
        '/segundo':(context) => const Homeusuario(),
        '/terceiro':(context) => const Homefuncionario(),
        '/quarto':(context) => const Cadastrousuario(),
        '/sexto':(context) => const Cadastrofuncionario(),
        '/quinto':(context) => const Entrarusuario(),
        '/setimo':(context) => const Entrarfuncionario(),
        '/oitavo':(context) => const Menu2(),
        '/nono':(context) => const Menu3(),
        '/decimo':(context) => const Tela(),
        '/decimoprim':(context) => const Tela2(),
        '/decimosegun':(context) => const Tela3(),
        '/decimoterc':(context) => const Tela4(),
        '/decimoquarto':(context) => const Telafunc(),
        '/decimosexto':(context) => const Telafunc2(),
        '/decimoquinto':(context) => const Telafunc3(),
        '/decimosetimo':(context) => const Telafunc4(),
      },
    );
  }
}