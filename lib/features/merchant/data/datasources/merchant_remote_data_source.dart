import 'package:dio/dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart' hide ErrorHandler;
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/error_handler.dart';
import '../../../../core/network/models/api_response.dart';
import '../models/merchant_dashboard_model.dart';
import '../models/merchant_model.dart';

abstract class MerchantRemoteDataSource {
  Future<MerchantModel?> getMerchantDetails();
  Future<MerchantModel> saveMerchantDetails(MerchantModel model);
  Future<MerchantDashboardModel> getDashboard({int days});
}

@LazySingleton(as: MerchantRemoteDataSource)
class MerchantRemoteDataSourceImpl implements MerchantRemoteDataSource {
  final Dio client;
  final GraphQLClient _graphQLClient;

  MerchantRemoteDataSourceImpl(this.client, this._graphQLClient);

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

  @override
  Future<MerchantDashboardModel> getDashboard({int days = 7}) async {
    const String query = r'''
      query MerchantDashboard($days: Int) {
        merchantDashboard(days: $days) {
          summary {
            portfolioValue
            totalCost
            totalRealizedPnL
            totalUnrealizedPnL
            netPnL
            openPositions
            totalQuantityKg
            tradesInPeriod
            buyVolumeInPeriod
            sellVolumeInPeriod
          }
          holdings {
            spiceGradeId
            productName
            gradeName
            quantity
            avgCost
            todayPrice
            marketValue
            costBasis
            unrealizedPnL
            unrealizedPnLPercent
            realizedPnL
            weightPercent
          }
          portfolioMix {
            label
            value
            quantity
          }
          pnlTrend {
            date
            dailyRealizedPnL
            cumulativeRealizedPnL
          }
          activityTrend {
            date
            buyQuantity
            sellQuantity
            buyCount
            sellCount
          }
          recentTransactions {
            id
            userId
            spiceGradeId
            type
            quantity
            price
            tradeDate
            createdAt
          }
          insights {
            kind
            title
            body
            spiceGradeId
            severity
          }
          movers {
            spiceGradeId
            productName
            gradeName
            todayPrice
            previousPrice
            changePercent
            direction
          }
        }
      }
    ''';

    final options = QueryOptions(
      document: gql(query),
      variables: {'days': days},
      fetchPolicy: FetchPolicy.networkOnly,
    );

    final result = await _graphQLClient.query(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final data = result.data?['merchantDashboard'];
    if (data == null) throw Exception('Failed to load merchant dashboard data');

    return MerchantDashboardModel.fromJson(Map<String, dynamic>.from(data));
  }
}
