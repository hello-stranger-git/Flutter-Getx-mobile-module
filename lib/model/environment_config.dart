class EnvironmentConfig {
  static const String devApiBaseUrl = 'https://dev-api.example1.com';
  static const String prodApiBaseUrl = 'https://api.example1.com';
  static const bool isDebug = bool.fromEnvironment('dart.vm.product') == false;

  static String get apiBaseUrl => isDebug ? devApiBaseUrl : prodApiBaseUrl;
}