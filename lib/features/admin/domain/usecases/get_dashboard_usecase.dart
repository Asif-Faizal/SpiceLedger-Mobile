import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../data/models/dashboard_model.dart';
import '../repositories/admin_repository.dart';

@injectable
class GetDashboardUseCase {
  final AdminRepository repository;
  GetDashboardUseCase(this.repository);

  Future<Either<Failure, DashboardResponse>> call({String? date}) {
    return repository.getDashboard(date: date);
  }
}
