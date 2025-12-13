import 'package:hive_ce/hive.dart';
import 'package:injectable/injectable.dart';

@module
abstract class StorageModule {
  @preResolve
  @lazySingleton
  Future<Box> get cacheBox async {
    return await Hive.openBox('spice_cache');
  }
}
