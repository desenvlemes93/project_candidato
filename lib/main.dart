import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_candidato/app/modules/home/home_page.dart';
import 'package:project_candidato/app/modules/home/widgets/empresas_candidato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/empresas', page: () => const EmpresasCandidato()),
      ],
    );
  }
}
