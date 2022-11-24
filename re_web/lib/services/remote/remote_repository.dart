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
}
