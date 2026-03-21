import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/error_handler.dart';
import '../../../../core/network/models/api_response.dart';
import '../models/merchant_model.dart';

abstract class MerchantRemoteDataSource {
  Future<MerchantModel?> getMerchantDetails();
  Future<MerchantModel> saveMerchantDetails(MerchantModel model);
}

@LazySingleton(as: MerchantRemoteDataSource)
class MerchantRemoteDataSourceImpl implements MerchantRemoteDataSource {
  final Dio client;

  MerchantRemoteDataSourceImpl(this.client);

  @override
  Future<MerchantModel?> getMerchantDetails() async {
    try {
      final response = await client.get('/rest/accounts/merchant-info');
      final responseData = response.data as Map<String, dynamic>;
      final dataContent = responseData['data'];

      if (dataContent == null || (dataContent is Map && dataContent.isEmpty)) {
        return null;
      }

      final apiResponse = ApiResponse<MerchantModel>.fromJson(
        responseData,
        (json) => MerchantModel.fromJson(json),
      );

      if (apiResponse.success && apiResponse.data != null) {
        return apiResponse.data;
      }

      return null;
    } catch (e) {
      throw ErrorHandler.handle(e);
    }
  }

  @override
  Future<MerchantModel> saveMerchantDetails(MerchantModel model) async {
    try {
      final response = await client.post(
        '/rest/accounts/merchant-info',
        data: model.toJson(),
      );

      final apiResponse = ApiResponse<MerchantModel>.fromJson(
        response.data as Map<String, dynamic>,
        (json) => MerchantModel.fromJson(json),
      );

      if (apiResponse.success && apiResponse.data != null) {
        return apiResponse.data!;
      } else {
        throw ServerFailure(apiResponse.message);
      }
    } catch (e) {
      throw ErrorHandler.handle(e);
    }
  }
}
