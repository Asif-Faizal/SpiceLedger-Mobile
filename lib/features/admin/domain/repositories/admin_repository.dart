import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_stats.dart';

abstract class AdminRepository {
  Future<Either<Failure, UserStats>> getUserStats();
  Future<Either<Failure, void>> createGrade(String name, String description);
  Future<Either<Failure, void>> setDailyPrice(
    String date,
    String grade,
    double price,
  );
}
