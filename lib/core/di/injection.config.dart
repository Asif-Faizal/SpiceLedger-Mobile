// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_ce/hive.dart' as _i738;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/admin/data/datasources/admin_remote_data_source.dart'
    as _i517;
import '../../features/admin/data/repositories/admin_repository_impl.dart'
    as _i335;
import '../../features/admin/domain/repositories/admin_repository.dart'
    as _i583;
import '../../features/admin/domain/usecases/create_grade_usecase.dart'
    as _i442;
import '../../features/admin/domain/usecases/get_user_stats_usecase.dart'
    as _i348;
import '../../features/admin/domain/usecases/set_daily_price_usecase.dart'
    as _i495;
import '../../features/admin/presentation/bloc/admin_bloc.dart' as _i55;
import '../../features/auth/data/datasources/auth_remote_data_source.dart'
    as _i107;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i188;
import '../../features/auth/domain/usecases/register_usecase.dart' as _i941;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../network/network_module.dart' as _i200;
import '../network/token_interceptor.dart' as _i34;
import '../storage/hive_module.dart' as _i824;
import '../storage/secure_storage.dart' as _i619;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final storageModule = _$StorageModule();
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i619.EncryptedStorage>(() => _i619.EncryptedStorage());
    await gh.lazySingletonAsync<_i738.Box<dynamic>>(
      () => storageModule.cacheBox,
      preResolve: true,
    );
    gh.factory<_i34.TokenInterceptor>(
      () => _i34.TokenInterceptor(gh<_i619.EncryptedStorage>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.dio(gh<_i34.TokenInterceptor>()),
    );
    gh.lazySingleton<_i517.AdminRemoteDataSource>(
      () => _i517.AdminRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i107.AuthRemoteDataSource>(
      () => _i107.AuthRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        gh<_i107.AuthRemoteDataSource>(),
        gh<_i619.EncryptedStorage>(),
      ),
    );
    gh.lazySingleton<_i941.RegisterUseCase>(
      () => _i941.RegisterUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i188.LoginUseCase>(
      () => _i188.LoginUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i583.AdminRepository>(
      () => _i335.AdminRepositoryImpl(gh<_i517.AdminRemoteDataSource>()),
    );
    gh.lazySingleton<_i442.CreateGradeUseCase>(
      () => _i442.CreateGradeUseCase(gh<_i583.AdminRepository>()),
    );
    gh.lazySingleton<_i495.SetDailyPriceUseCase>(
      () => _i495.SetDailyPriceUseCase(gh<_i583.AdminRepository>()),
    );
    gh.lazySingleton<_i348.GetUserStatsUseCase>(
      () => _i348.GetUserStatsUseCase(gh<_i583.AdminRepository>()),
    );
    gh.factory<_i797.AuthBloc>(
      () =>
          _i797.AuthBloc(gh<_i188.LoginUseCase>(), gh<_i941.RegisterUseCase>()),
    );
    gh.factory<_i55.AdminBloc>(
      () => _i55.AdminBloc(
        gh<_i348.GetUserStatsUseCase>(),
        gh<_i442.CreateGradeUseCase>(),
        gh<_i495.SetDailyPriceUseCase>(),
      ),
    );
    return this;
  }
}

class _$StorageModule extends _i824.StorageModule {}

class _$NetworkModule extends _i200.NetworkModule {}
