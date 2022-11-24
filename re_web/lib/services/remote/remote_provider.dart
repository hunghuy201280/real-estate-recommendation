import 'package:injectable/injectable.dart';
import 'package:re_web/models/house/house.dart';

import 'remote_repository.dart';

@singleton
class RemoteProvider {
  RemoteProvider({
    required RemoteRepository repo,
  }) : _repo = repo;
  final RemoteRepository _repo;

  Future<List<House>> getHouses() async {
    return await _repo.getHouses();
  }
}
