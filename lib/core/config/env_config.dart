import 'dart:convert';

class ApiConfig {
  static const String basicAuthUser = String.fromEnvironment('BASIC_AUTH_USER');
  static const String basicAuthPass = String.fromEnvironment('BASIC_AUTH_PASS');
  static const String _baseUrl = String.fromEnvironment('BASE_URL');
  static const String _graphQLClient = String.fromEnvironment('GRAPHQL_CLIENT');
  static const int restApiTimeout = int.fromEnvironment(
    'REST_API_TIMEOUT',
    defaultValue: 30,
  );

  static String get baseUrl {
    if (_baseUrl.isEmpty) {
      // Default to 10.0.2.2 for Android emulator, 127.0.0.1 for others
      return 'http://10.0.2.2:8080'; 
    }
    if (_baseUrl.startsWith('http')) return _baseUrl;
    return 'http://$_baseUrl';
  }

  static String get graphQLClient {
    if (_graphQLClient.isEmpty) return 'http://10.0.2.2:8081/graphql';
    if (_graphQLClient.startsWith('http')) return _graphQLClient;
    return 'http://$_graphQLClient';
  }

  static Map<String, dynamic>? get basicAuthHeaders {
    if (basicAuthUser.isEmpty || basicAuthPass.isEmpty) return null;
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization':
          'Basic ${base64Encode(utf8.encode('$basicAuthUser:$basicAuthPass'))}',
    };
  }

  static const String contentType = 'application/json';
  static const String accept = 'application/json';
}

enum Environment { development, production, testing }

class EnvironmentConfig {
  static const String _env = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: 'development',
  );

  static Environment get environment {
    switch (_env.toLowerCase()) {
      case 'production':
        return Environment.production;
      case 'testing':
        return Environment.testing;
      case 'development':
      default:
        return Environment.development;
    }
  }

  static bool get isDevelopment => environment == Environment.development;
  static bool get isProduction => environment == Environment.production;
  static bool get isTesting => environment == Environment.testing;
}
