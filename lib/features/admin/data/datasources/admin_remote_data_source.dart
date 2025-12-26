import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../models/user_stats_model.dart';
import '../models/product_model.dart';
import '../models/daily_price_model.dart';

abstract class AdminRemoteDataSource {
  Future<UserStatsModel> getUserStats();
  Future<void> createGrade(String productId, String name, String description);
  Future<void> setDailyPrice(
    String date,
    String productId,
    String gradeId,
    double price,
  );
  Future<List<ProductModel>> getProducts();
  Future<DailyPricesResponse> getDailyPrices(String date);
}

@LazySingleton(as: AdminRemoteDataSource)
class AdminRemoteDataSourceImpl implements AdminRemoteDataSource {
  final Dio client;

  AdminRemoteDataSourceImpl(this.client);

  @override
  Future<UserStatsModel> getUserStats() async {
    try {
      final response = await client.get('/api/admin/stats');
      return UserStatsModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Failed to get stats');
    }
  }

  @override
  Future<void> createGrade(
    String productId,
    String name,
    String description,
  ) async {
    try {
      await client.post(
        '/api/grades',
        data: {
          'product_id': productId,
          'name': name,
          'description': description,
        },
      );
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Failed to create grade');
    }
  }

  @override
  Future<void> setDailyPrice(
    String date,
    String productId,
    String gradeId,
    double price,
  ) async {
    try {
      await client.post(
        '/api/prices',
        data: {
          'date': date,
          'product_id': productId,
          'grade_id': gradeId,
          'price_per_kg': price,
        },
      );
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Failed to set price');
    }
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await client.get('/api/products');
      return (response.data as List)
          .map((e) => ProductModel.fromJson(e))
          .toList();
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Failed to get products');
    }
  }

  @override
  Future<DailyPricesResponse> getDailyPrices(String date) async {
    try {
      final response = await client.get('/api/prices/$date');
      return DailyPricesResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Failed to get daily prices');
    }
  }
}
