import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../models/grade_model.dart';
import '../models/inventory_model.dart';

abstract class InventoryRemoteDataSource {
  Future<List<GradeModel>> getGrades();
  Future<void> addPurchaseLot(
    String date,
    String gradeId,
    double quantity,
    double unitCost,
  );
  Future<void> addSale(
    String date,
    String gradeId,
    double quantity,
    double unitPrice,
  );
  Future<InventoryModel> getCurrentInventory();
}

@LazySingleton(as: InventoryRemoteDataSource)
class InventoryRemoteDataSourceImpl implements InventoryRemoteDataSource {
  final Dio client;

  InventoryRemoteDataSourceImpl(this.client);

  @override
  Future<List<GradeModel>> getGrades() async {
    try {
      final response = await client.get('/api/grades');
      return (response.data as List)
          .map((e) => GradeModel.fromJson(e))
          .toList();
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Failed to get grades');
    }
  }

  @override
  Future<void> addPurchaseLot(
    String date,
    String gradeId,
    double quantity,
    double unitCost,
  ) async {
    try {
      await client.post(
        '/api/lots',
        data: {
          'date': date,
          'grade_id': gradeId,
          'quantity_kg': quantity,
          'unit_cost': unitCost,
        },
      );
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Failed to add purchase lot');
    }
  }

  @override
  Future<void> addSale(
    String date,
    String gradeId,
    double quantity,
    double unitPrice,
  ) async {
    try {
      await client.post(
        '/api/sales',
        data: {
          'date': date,
          'grade_id': gradeId,
          'quantity_kg': quantity,
          'unit_price': unitPrice,
        },
      );
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Failed to add sale');
    }
  }

  @override
  Future<InventoryModel> getCurrentInventory() async {
    try {
      final response = await client.get('/api/inventory/current');
      return InventoryModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Failed to get inventory');
    }
  }
}
