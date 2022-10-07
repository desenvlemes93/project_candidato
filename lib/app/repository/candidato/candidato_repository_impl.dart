import 'package:dio/dio.dart';
import 'package:project_candidato/app/entities/candidato.dart';
import 'package:project_candidato/app/repository/candidato/candidato_repository.dart';

class CandidatoRepositoryImpl implements CandidatoRepository {
  @override
  Future<List<Candidato>> findAll() async {
    final reponseCandidato =
        await Dio().get('https://192.168.0.103:8080/candidato');

    return reponseCandidato.data
        ?.map<Candidato>((candidato) => Candidato.fromMap(candidato))
        .toList();
  }
}
