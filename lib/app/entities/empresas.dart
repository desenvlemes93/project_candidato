import 'dart:convert';

class Empresas {
  final int id;
  final String nome;
  final String funcao;
  final List<String> atividades;
  Empresas({
    required this.id,
    required this.nome,
    required this.funcao,
    required this.atividades,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'funcao': funcao,
      'atividades': atividades,
    };
  }

  factory Empresas.fromMap(Map<String, dynamic> map) {
    return Empresas(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
      funcao: map['funcao'] ?? '',
      atividades: List<String>.from(map['atividades']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Empresas.fromJson(String source) =>
      Empresas.fromMap(json.decode(source));
}
