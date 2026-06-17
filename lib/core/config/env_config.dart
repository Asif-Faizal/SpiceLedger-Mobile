import 'dart:convert';

import 'package:flutter/foundation.dart';

class ApiConfig {
  static const String basicAuthUser = String.fromEnvironment('BASIC_AUTH_USER');
  static const String basicAuthPass = String.fromEnvironment('BASIC_AUTH_PASS');
  static const String _baseUrl = String.fromEnvironment('BASE_URL');
  static const String _graphQLClient = String.fromEnvironment('GRAPHQL_CLIENT');
  static const int restApiTimeout = int.fromEnvironment(
    'REST_API_TIMEOUT',
    defaultValue: 30,
  );

  /// Default gateway host when `BASE_URL` is not set (Docker `make up-full-build`).
  static String get _defaultGatewayHost {
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return 'http://127.0.0.1:8080';
      default:
        // Android emulator: 10.0.2.2 maps to host machine localhost
        return 'http://10.0.2.2:8080';
    }
  }

  static String get baseUrl {
    if (_baseUrl.isEmpty) return _defaultGatewayHost;
    if (_baseUrl.startsWith('http')) return _baseUrl;
    return 'http://$_baseUrl';
  }

  /// GraphQL on the same gateway as REST (`/graphql` on port 8080).
  static String get graphQLClient {
    if (_graphQLClient.isNotEmpty) {
      if (_graphQLClient.startsWith('http')) return _graphQLClient;
      return 'http://$_graphQLClient';
    }
    final root =
        baseUrl.endsWith('/') ? baseUrl.substring(0, baseUrl.length - 1) : baseUrl;
    return '$root/graphql';
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
