import 'package:injectable/injectable.dart';
import 'package:re_web/configs/app_config.dart';
import 'package:re_web/models/house/house.dart';
import 'package:re_web/services/api_end_point.dart';
import 'package:re_web/services/api_remote.dart';

@singleton
class RemoteRepository {
  static const baseUrl = AppConfigs.kServerUri;
  final ApiRemote client;

  RemoteRepository(this.client);

  Future<List<House>> getHouses() async {
    final response = await client.get(ApiEndPoint.kGetHouses);
    return (response.data["data"] as List)
        .map((e) => House.fromJson(e))
        .toList();
  }

  Future<List<House>> getTopHouses() async {
    final response = await client.get(ApiEndPoint.kGetTopHouses);
    return (response.data["data"] as List)
        .map((e) => House.fromJson(e))
        .toList();
  }

  Future<String> login(
      {required String username, required String password}) async {
    final response = await client.post(ApiEndPoint.kLogin, data: {
      "username": username,
      "password": password,
    });
    return response.data["data"];
  }

  Future<void> logEvent(
      {required String userId,
      required String eventName,
      required String itemId}) async {
    final response = await client.post(ApiEndPoint.kLogEvent, data: {
      "user_id": userId,
      "item_id": itemId,
      "event": eventName,
    });
  }

  Future<List<House>> getRecommendation(String userId) async {
    final response = await client.get(ApiEndPoint.kGetRecommendation(userId));
    return (response.data["data"] as List)
        .map((e) => House.fromJson(e))
        .toList();
  }
}
