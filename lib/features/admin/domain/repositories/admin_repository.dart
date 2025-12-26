import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_stats.dart';
import '../entities/product.dart';
import '../../data/models/daily_price_model.dart';

abstract class AdminRepository {
  Future<Either<Failure, UserStats>> getUserStats();
  Future<Either<Failure, void>> createGrade(
    String productId,
    String name,
    String description,
  );
  Future<Either<Failure, void>> setDailyPrice(
    String date,
    String productId,
    String gradeId,
    double price,
  );
  Future<Either<Failure, List<Product>>> getProducts();
  Future<Either<Failure, DailyPricesResponse>> getDailyPrices(String date);
}
