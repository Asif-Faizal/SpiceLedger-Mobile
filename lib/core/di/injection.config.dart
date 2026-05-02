// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:graphql_flutter/graphql_flutter.dart' as _i128;
import 'package:hive_ce/hive.dart' as _i738;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/admin/data/datasources/admin_product_remote_data_source.dart'
    as _i285;
import '../../features/admin/data/repositories/admin_product_repository_impl.dart'
    as _i407;
import '../../features/admin/domain/entities/product_entity.dart' as _i222;
import '../../features/admin/domain/repositories/admin_product_repository.dart'
    as _i285;
import '../../features/admin/domain/usecases/product_usecases.dart' as _i67;
import '../../features/admin/presentation/bloc/dashboard/admin_dashboard_bloc.dart'
    as _i101;
import '../../features/admin/presentation/bloc/products/admin_products_bloc.dart'
    as _i897;
import '../../features/admin/presentation/bloc/products/product_action_bloc.dart'
    as _i1015;
import '../../features/admin/presentation/bloc/products/set_grade_price_cubit.dart'
    as _i684;
import '../../features/admin/presentation/cubit/admin_navigation_cubit.dart'
    as _i176;
import '../../features/auth/data/datasources/auth_remote_data_source.dart'
    as _i107;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/check_email_usecase.dart' as _i879;
import '../../features/auth/domain/usecases/get_profile_usecase.dart' as _i568;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i188;
import '../../features/auth/domain/usecases/logout_usecase.dart' as _i48;
import '../../features/auth/domain/usecases/register_usecase.dart' as _i941;
import '../../features/auth/presentation/bloc/login/login_bloc.dart' as _i208;
import '../../features/auth/presentation/bloc/profile/profile_bloc.dart'
    as _i228;
import '../../features/auth/presentation/bloc/register/register_bloc.dart'
    as _i210;
import '../../features/auth/presentation/cubit/check_email_cubit.dart' as _i699;
import '../../features/merchant/data/datasources/merchant_remote_data_source.dart'
    as _i542;
import '../../features/merchant/data/repositories/merchant_repository_impl.dart'
    as _i458;
import '../../features/merchant/domain/repositories/merchant_repository.dart'
    as _i90;
import '../../features/merchant/domain/usecases/get_merchant_details_usecase.dart'
    as _i814;
import '../../features/merchant/domain/usecases/save_merchant_details_usecase.dart'
    as _i144;
import '../../features/merchant/presentation/bloc/merchant_details_bloc.dart'
    as _i1050;
import '../../features/merchant/presentation/cubit/merchant_navigation_cubit.dart'
    as _i461;
import '../../features/onboarding/presentation/bloc/onboarding_cubit.dart'
    as _i153;
import '../../features/onboarding/presentation/bloc/splash_cubit.dart' as _i128;
import '../network/graphql_module.dart' as _i122;
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
    final graphQLModule = _$GraphQLModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i176.AdminNavigationCubit>(() => _i176.AdminNavigationCubit());
    gh.factory<_i461.MerchantNavigationCubit>(
      () => _i461.MerchantNavigationCubit(),
    );
    await gh.lazySingletonAsync<_i738.Box<dynamic>>(
      () => storageModule.cacheBox,
      preResolve: true,
    );
    gh.lazySingleton<_i619.EncryptedStorage>(() => _i619.EncryptedStorage());
    gh.factory<_i128.SplashCubit>(
      () => _i128.SplashCubit(
        gh<_i619.EncryptedStorage>(),
        gh<_i738.Box<dynamic>>(),
      ),
    );
    gh.factory<_i34.TokenInterceptor>(
      () => _i34.TokenInterceptor(gh<_i619.EncryptedStorage>()),
    );
    gh.lazySingleton<_i128.GraphQLClient>(
      () => graphQLModule.getGraphQLClient(gh<_i619.EncryptedStorage>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.dio(gh<_i34.TokenInterceptor>()),
    );
    gh.factory<_i153.OnboardingCubit>(
      () => _i153.OnboardingCubit(gh<_i738.Box<dynamic>>()),
    );
    gh.factory<_i285.AdminProductRemoteDataSource>(
      () => _i285.AdminProductRemoteDataSourceImpl(
        gh<_i128.GraphQLClient>(),
        gh<_i361.Dio>(),
      ),
    );
    gh.lazySingleton<_i107.AuthRemoteDataSource>(
      () => _i107.AuthRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i542.MerchantRemoteDataSource>(
      () => _i542.MerchantRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        gh<_i107.AuthRemoteDataSource>(),
        gh<_i619.EncryptedStorage>(),
      ),
    );
    gh.lazySingleton<_i879.CheckEmailUseCase>(
      () => _i879.CheckEmailUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i568.GetProfileUseCase>(
      () => _i568.GetProfileUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i188.LoginUseCase>(
      () => _i188.LoginUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i48.LogoutUseCase>(
      () => _i48.LogoutUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i941.RegisterUseCase>(
      () => _i941.RegisterUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i90.MerchantRepository>(
      () => _i458.MerchantRepositoryImpl(gh<_i542.MerchantRemoteDataSource>()),
    );
    gh.factory<_i285.AdminProductRepository>(
      () => _i407.AdminProductRepositoryImpl(
        gh<_i285.AdminProductRemoteDataSource>(),
      ),
    );
    gh.factory<_i228.ProfileBloc>(
      () => _i228.ProfileBloc(
        gh<_i568.GetProfileUseCase>(),
        gh<_i48.LogoutUseCase>(),
        gh<_i941.RegisterUseCase>(),
      ),
    );
    gh.factory<_i208.LoginBloc>(
      () => _i208.LoginBloc(gh<_i188.LoginUseCase>()),
    );
    gh.factory<_i699.CheckEmailCubit>(
      () => _i699.CheckEmailCubit(gh<_i879.CheckEmailUseCase>()),
    );
    gh.lazySingleton<_i814.GetMerchantDetailsUseCase>(
      () => _i814.GetMerchantDetailsUseCase(gh<_i90.MerchantRepository>()),
    );
    gh.lazySingleton<_i144.SaveMerchantDetailsUseCase>(
      () => _i144.SaveMerchantDetailsUseCase(gh<_i90.MerchantRepository>()),
    );
    gh.factory<_i210.RegisterBloc>(
      () => _i210.RegisterBloc(gh<_i941.RegisterUseCase>()),
    );
    gh.factory<_i67.GetAdminDashboardUseCase>(
      () => _i67.GetAdminDashboardUseCase(gh<_i285.AdminProductRepository>()),
    );
    gh.factory<_i67.GetProductsUseCase>(
      () => _i67.GetProductsUseCase(gh<_i285.AdminProductRepository>()),
    );
    gh.factory<_i67.CreateProductUseCase>(
      () => _i67.CreateProductUseCase(gh<_i285.AdminProductRepository>()),
    );
    gh.factory<_i67.CreateGradeUseCase>(
      () => _i67.CreateGradeUseCase(gh<_i285.AdminProductRepository>()),
    );
    gh.factory<_i67.CreateDailyPriceUseCase>(
      () => _i67.CreateDailyPriceUseCase(gh<_i285.AdminProductRepository>()),
    );
    gh.factory<_i67.GetProductsRestUseCase>(
      () => _i67.GetProductsRestUseCase(gh<_i285.AdminProductRepository>()),
    );
    gh.factory<_i897.AdminProductsBloc>(
      () => _i897.AdminProductsBloc(gh<_i67.GetProductsUseCase>()),
    );
    gh.factory<_i1050.MerchantDetailsBloc>(
      () => _i1050.MerchantDetailsBloc(
        gh<_i814.GetMerchantDetailsUseCase>(),
        gh<_i144.SaveMerchantDetailsUseCase>(),
      ),
    );
    gh.factory<_i101.AdminDashboardBloc>(
      () => _i101.AdminDashboardBloc(gh<_i67.GetAdminDashboardUseCase>()),
    );
    gh.factory<_i1015.ProductActionBloc>(
      () => _i1015.ProductActionBloc(
        gh<_i67.CreateProductUseCase>(),
        gh<_i67.CreateGradeUseCase>(),
        gh<_i67.GetProductsRestUseCase>(),
      ),
    );
    gh.factoryParam<_i684.SetGradePriceCubit, _i222.ProductEntity, dynamic>(
      (product, _) => _i684.SetGradePriceCubit(
        gh<_i67.CreateDailyPriceUseCase>(),
        product: product,
      ),
    );
    return this;
  }
}

class _$StorageModule extends _i824.StorageModule {}

class _$GraphQLModule extends _i122.GraphQLModule {}

class _$NetworkModule extends _i200.NetworkModule {}
