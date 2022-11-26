import 'package:injectable/injectable.dart';
import 'package:re_web/models/house/house.dart';
import 'package:re_web/models/prefs/configspref.dart';

import 'remote_repository.dart';

@singleton
class RemoteProvider {
  RemoteProvider({
    required RemoteRepository repo,
    required this.configsPref,
  }) : _repo = repo;
  final RemoteRepository _repo;
  final ConfigsPref configsPref;

  Future<List<House>> getHouses() async {
    return _repo.getHouses();
  }

  Future<List<House>> getTopHouses() async {
    return _repo.getTopHouses();
  }

  Future<String> login(
      {required String username, required String password}) async {
    final uid = await _repo.login(username: username, password: password);
    configsPref.setUserId(uid);
    return uid;
  }

  Future<void> logEvent({
    required String eventName,
    required String itemId,
  }) async {
    return _repo.logEvent(
        userId: configsPref.userId!, eventName: eventName, itemId: itemId);
  }

  Future<List<House>> getRecommendation() async {
    return _repo.getRecommendation(configsPref.userId!);
  }
}
