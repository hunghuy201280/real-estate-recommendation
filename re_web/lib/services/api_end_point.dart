class ApiEndPoint {
  static const kGetHouses = "/houses";
  static const kGetTopHouses = "/top-houses";
  static const kLogin = "/auth";
  static const kLogEvent = "/log-event";
  static String kGetRecommendation(String userId) =>
      "/recommendation/{$userId}";
}
