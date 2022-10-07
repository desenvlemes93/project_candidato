import 'package:project_candidato/app/entities/candidato.dart';

abstract class CandidatoRepository {
  Future<List<Candidato>> findAll();
}
