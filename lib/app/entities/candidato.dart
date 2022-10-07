import 'dart:convert';

import 'package:project_candidato/app/entities/empresas.dart';

class Candidato {
  final int id;
  final String nome;
  final String telefone;
  final String uf;
  final List<Empresas> empresa;
  final List<String> saudacao;
  Candidato(
      {required this.id,
      required this.nome,
      required this.telefone,
      required this.uf,
      required this.empresa,
      required this.saudacao});

  Candidato copyWith(
      {int? id,
      String? nome,
      String? telefone,
      String? uf,
      List<Empresas>? empresa,
      List<String>? saudacao}) {
    return Candidato(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        telefone: telefone ?? this.telefone,
        uf: uf ?? this.uf,
        empresa: empresa ?? this.empresa,
        saudacao: saudacao ?? this.saudacao);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'telefone': telefone,
      'uf': uf,
      'empresa': empresa.map((x) => x.toMap()).toList(),
      'saudacao': saudacao,
    };
  }

  factory Candidato.fromMap(Map<String, dynamic> map) {
    return Candidato(
        id: map['id']?.toInt() ?? 0,
        nome: map['nome'] ?? '',
        telefone: map['telefone'] ?? '',
        uf: map['uf'] ?? '',
        empresa: List<Empresas>.from(
            map['empresa']?.map((x) => Empresas.fromMap(x))),
        saudacao: map['saudacao'] ?? '');
  }

  String toJson() => json.encode(toMap());

  factory Candidato.fromJson(String source) =>
      Candidato.fromMap(json.decode(source));
}
