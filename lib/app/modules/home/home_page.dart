import 'package:flutter/material.dart';
import 'package:project_candidato/app/modules/home/widgets/drawer_home.dart';
import 'package:project_candidato/app/repository/candidato/candidato_repository.dart';
import 'package:project_candidato/app/repository/candidato/candidato_repository_impl.dart';

class HomePage extends StatefulWidget {  
  const HomePage({super.key, });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela inicial'),
      ),
      drawer: const DrawerHome(),
      body: Wrap(children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 150,
            left: 20,
          ),
          child: Center(
            child: Text(
              'Quero apresenta a minha trajetoria, um pouco mais do ricardo. Sou formado em sistemas de informação tenho pós em Gestão de sistemas  de Informação e atualmente trabalho com Desenvolvimento de sistemas  (Delphi, PSQL, Dart & Flutter) ',
              maxLines: 300,
              style: TextStyle(color: Colors.black87),
            ),
          ),
        )
      ]),
    );
  }
}
