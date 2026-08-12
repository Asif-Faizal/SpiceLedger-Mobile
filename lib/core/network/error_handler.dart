import 'dart:io';
import 'package:dio/dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart' show OperationException;
import '../error/failures.dart';
import '../network/models/api_response.dart';

class ErrorHandler {
  static const _genericMessage = 'Something went wrong. Please try again.';
  static const _connectionMessage =
      'Unable to connect to the server. Please try again later.';

  static Failure handle(dynamic error) {
    if (error is Failure) return error;

    if (error is DioException) {
      return _handleDioError(error);
    }

    if (error is OperationException) {
      return _handleGraphqlError(error);
    }

    if (error is SocketException) {
      return const NetworkFailure(_connectionMessage);
    }

    return _fromRawMessage(error.toString());
  }

  static Failure _handleGraphqlError(OperationException error) {
    final linkException = error.linkException;
    if (linkException != null) {
      final msg = linkException.toString().toLowerCase();
      if (_looksLikeConnection(msg)) {
        return const NetworkFailure(_connectionMessage);
      }
    }

    if (error.graphqlErrors.isNotEmpty) {
      final message = error.graphqlErrors.first.message;
      final lower = message.toLowerCase();
      if (lower.contains('unauthenticated') ||
          lower.contains('token is expired') ||
          lower.contains('unauthorized')) {
        return UnauthorizedFailure(_sanitize(message));
      }
      return ServerFailure(_sanitize(message));
    }

    return _fromRawMessage(error.toString());
  }

  static Failure _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return const NetworkFailure(_connectionMessage);

      case DioExceptionType.badResponse:
        final response = error.response;
        if (response != null) {
          final statusCode = response.statusCode;
          final responseData = response.data;

          var message = _genericMessage;
          if (responseData is Map<String, dynamic>) {
            try {
              final apiResponse = ApiResponse.fromJson(
                responseData,
                (json) => json,
              );
              message = apiResponse.message;
            } catch (_) {
              message =
                  responseData['message']?.toString() ??
                  responseData['error']?.toString() ??
                  message;
            }
          }
          message = _sanitize(message);

          switch (statusCode) {
            case 400:
              return ValidationFailure(message);
            case 401:
              return UnauthorizedFailure(message);
            case 403:
              return ForbiddenFailure(message);
            case 404:
              return NotFoundFailure(message);
            case 409:
              return ConflictFailure(message);
            case 500:
              return InternalServerFailure(message);
            case 503:
              return ServiceUnavailableFailure(message);
            default:
              return ServerFailure(message);
          }
        }
        return const ServerFailure('Server returned an invalid response');

      case DioExceptionType.cancel:
        return const ServerFailure('Request was cancelled');

      default:
        if (error.error is SocketException ||
            _looksLikeConnection('${error.error} ${error.message}')) {
          return const NetworkFailure(_connectionMessage);
        }
        final message = error.message;
        if (message != null && message.isNotEmpty && message.length < 160) {
          return ServerFailure(_sanitize(message));
        }
        return const ServerFailure(_genericMessage);
    }
  }

  static Failure _fromRawMessage(String raw) {
    final lower = raw.toLowerCase();
    if (_looksLikeConnection(lower)) {
      return const NetworkFailure(_connectionMessage);
    }
    if (lower.contains('unauthenticated') ||
        lower.contains('token is expired') ||
        lower.contains('unauthorized')) {
      return const UnauthorizedFailure(
        'Your session has expired. Please sign in again.',
      );
    }
    return ServerFailure(_sanitize(raw));
  }

  static bool _looksLikeConnection(String message) {
    return message.contains('socketexception') ||
        message.contains('connection refused') ||
        message.contains('connection errored') ||
        message.contains('failed host lookup') ||
        message.contains('network is unreachable') ||
        message.contains('clientexception') ||
        message.contains('timeout');
  }

  static String _sanitize(String raw) {
    final cleaned = raw
        .replaceAll(RegExp(r'OperationException\([^)]*\)'), '')
        .replaceAll(RegExp(r'ServerException:[^\n]*'), '')
        .replaceAll(RegExp(r'ClientException:[^\n]*'), '')
        .replaceAll(RegExp(r'SocketException:[^\n]*'), '')
        .replaceAll(RegExp(r'package:[^\s]+'), '')
        .replaceAll(RegExp(r'#\d+\s+'), '')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();

    if (cleaned.isEmpty ||
        cleaned.length > 180 ||
        cleaned.contains('http://') ||
        cleaned.contains('https://')) {
      return _genericMessage;
    }
    return cleaned;
  }
}
