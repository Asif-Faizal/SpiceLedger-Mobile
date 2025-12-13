import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../models/user_stats_model.dart';

abstract class AdminRemoteDataSource {
  Future<UserStatsModel> getUserStats();
  Future<void> createGrade(String name, String description);
  Future<void> setDailyPrice(String date, String grade, double price);
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
  Future<void> createGrade(String name, String description) async {
    try {
      await client.post(
        '/api/grades',
        data: {'name': name, 'description': description},
      );
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Failed to create grade');
    }
  }

  @override
  Future<void> setDailyPrice(String date, String grade, double price) async {
    try {
      await client.post(
        '/api/prices',
        data: {'date': date, 'grade': grade, 'price': price},
      );
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Failed to set price');
    }
  }
}
