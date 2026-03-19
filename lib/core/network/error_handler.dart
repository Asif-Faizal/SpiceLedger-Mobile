import 'dart:io';
import 'package:dio/dio.dart';
import '../error/failures.dart';
import '../network/models/api_response.dart';

class ErrorHandler {
  static Failure handle(dynamic error) {
    if (error is Failure) return error;

    if (error is DioException) {
      return _handleDioError(error);
    }

    if (error is SocketException) {
      return const NetworkFailure('No internet connection');
    }

    return ServerFailure(error.toString());
  }

  static Failure _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return const NetworkFailure(
          'Unable to connect to the server. Please try again later.',
        );

      case DioExceptionType.badResponse:
        final response = error.response;
        if (response != null) {
          final statusCode = response.statusCode;
          final responseData = response.data;

          String message = 'Something went wrong';
          if (responseData is Map<String, dynamic>) {
            try {
              final apiResponse = ApiResponse.fromJson(
                responseData,
                (json) => json,
              );
              message = apiResponse.message;
            } catch (_) {
              message =
                  responseData['message'] ?? responseData['error'] ?? message;
            }
          }

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
        if (error.error is SocketException) {
          return const NetworkFailure('No internet connection');
        }
        return ServerFailure(error.message ?? 'Unknown error occurred');
    }
  }
}
