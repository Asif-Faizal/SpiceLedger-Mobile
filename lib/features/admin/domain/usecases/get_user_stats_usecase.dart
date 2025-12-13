import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_stats.dart';
import '../repositories/admin_repository.dart';

@lazySingleton
class GetUserStatsUseCase {
  final AdminRepository repository;

  GetUserStatsUseCase(this.repository);

  Future<Either<Failure, UserStats>> call() async {
    return await repository.getUserStats();
  }
}
