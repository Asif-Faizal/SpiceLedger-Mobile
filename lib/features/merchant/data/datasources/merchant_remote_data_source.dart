import 'package:dio/dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart' hide ErrorHandler;
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/error_handler.dart';
import '../../../../core/network/models/api_response.dart';
import '../../domain/entities/merchant_dashboard_entity.dart';
import '../models/catalog_product_model.dart';
import '../models/merchant_dashboard_model.dart';
import '../models/merchant_model.dart';
import '../models/merchant_position_model.dart';

abstract class MerchantRemoteDataSource {
  Future<MerchantModel?> getMerchantDetails();
  Future<MerchantModel> saveMerchantDetails(MerchantModel model);
  Future<MerchantDashboardModel> getDashboard({int days});
  Future<MerchantPnlTrendEntity> getPnlTrend({int days});
  Future<MerchantActivityTrendEntity> getActivityTrend({int days});
  Future<List<MerchantProductModel>> getProducts({String? date, String? search});
  Future<List<MerchantPositionModel>> getPositions();
  Future<MerchantPositionModel> getGradePosition(String spiceGradeId);
  Future<List<MerchantTransactionModel>> listTransactions({
    int skip,
    int take,
    String? spiceGradeId,
    String? productId,
    String? sort,
    String? dateFrom,
    String? dateTo,
  });
  Future<List<MerchantTransactionModel>> listGradeTransactions({
    required String spiceGradeId,
    int skip,
    int take,
    String? sort,
    String? dateFrom,
    String? dateTo,
  });
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
      throw ErrorHandler.handle(result.exception!);
    }

    final data = result.data?['merchantDashboard'];
    if (data == null) throw Exception('Failed to load merchant dashboard data');

    return MerchantDashboardModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<MerchantPnlTrendEntity> getPnlTrend({int days = 7}) async {
    const String query = r'''
      query MerchantPnlTrend($days: Int) {
        merchantPnlTrend(days: $days) {
          days
          periodRealizedPnL
          points {
            date
            dailyRealizedPnL
            cumulativeRealizedPnL
            products {
              spiceGradeId
              productName
              gradeName
              realizedPnL
            }
          }
        }
      }
    ''';

    final result = await _graphQLClient.query(
      QueryOptions(
        document: gql(query),
        variables: {'days': days},
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
    if (result.hasException) {
      throw ErrorHandler.handle(result.exception!);
    }
    final data = result.data?['merchantPnlTrend'];
    if (data == null) {
      throw const ServerFailure('Failed to load P&L trend');
    }
    final map = Map<String, dynamic>.from(data as Map);
    final points = (map['points'] as List<dynamic>? ?? [])
        .map((e) {
          final p = Map<String, dynamic>.from(e as Map);
          final products = (p['products'] as List<dynamic>? ?? [])
              .map((raw) {
                final pr = Map<String, dynamic>.from(raw as Map);
                return PnlProductDayEntity(
                  spiceGradeId: pr['spiceGradeId']?.toString() ?? '',
                  productName: pr['productName']?.toString() ?? '',
                  gradeName: pr['gradeName']?.toString() ?? '',
                  realizedPnL: (pr['realizedPnL'] as num?)?.toDouble() ?? 0,
                );
              })
              .toList();
          return PnlTrendPointEntity(
            date: p['date']?.toString() ?? '',
            dailyRealizedPnL: (p['dailyRealizedPnL'] as num?)?.toDouble() ?? 0,
            cumulativeRealizedPnL:
                (p['cumulativeRealizedPnL'] as num?)?.toDouble() ?? 0,
            products: products,
          );
        })
        .toList();
    return MerchantPnlTrendEntity(
      days: (map['days'] as num?)?.toInt() ?? days,
      periodRealizedPnL: (map['periodRealizedPnL'] as num?)?.toDouble() ?? 0,
      points: points,
    );
  }

  @override
  Future<MerchantActivityTrendEntity> getActivityTrend({int days = 7}) async {
    const String query = r'''
      query MerchantActivityTrend($days: Int) {
        merchantActivityTrend(days: $days) {
          days
          totalBuyQuantity
          totalSellQuantity
          totalTrades
          points {
            date
            buyQuantity
            sellQuantity
            buyCount
            sellCount
            products {
              spiceGradeId
              productName
              gradeName
              buyQuantity
              sellQuantity
              buyCount
              sellCount
            }
          }
        }
      }
    ''';

    final result = await _graphQLClient.query(
      QueryOptions(
        document: gql(query),
        variables: {'days': days},
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
    if (result.hasException) {
      throw ErrorHandler.handle(result.exception!);
    }
    final data = result.data?['merchantActivityTrend'];
    if (data == null) {
      throw const ServerFailure('Failed to load activity trend');
    }
    final map = Map<String, dynamic>.from(data as Map);
    final points = (map['points'] as List<dynamic>? ?? [])
        .map((e) {
          final p = Map<String, dynamic>.from(e as Map);
          final products = (p['products'] as List<dynamic>? ?? [])
              .map((raw) {
                final pr = Map<String, dynamic>.from(raw as Map);
                return ActivityProductDayEntity(
                  spiceGradeId: pr['spiceGradeId']?.toString() ?? '',
                  productName: pr['productName']?.toString() ?? '',
                  gradeName: pr['gradeName']?.toString() ?? '',
                  buyQuantity: (pr['buyQuantity'] as num?)?.toDouble() ?? 0,
                  sellQuantity: (pr['sellQuantity'] as num?)?.toDouble() ?? 0,
                  buyCount: (pr['buyCount'] as num?)?.toInt() ?? 0,
                  sellCount: (pr['sellCount'] as num?)?.toInt() ?? 0,
                );
              })
              .toList();
          return ActivityTrendPointEntity(
            date: p['date']?.toString() ?? '',
            buyQuantity: (p['buyQuantity'] as num?)?.toDouble() ?? 0,
            sellQuantity: (p['sellQuantity'] as num?)?.toDouble() ?? 0,
            buyCount: (p['buyCount'] as num?)?.toInt() ?? 0,
            sellCount: (p['sellCount'] as num?)?.toInt() ?? 0,
            products: products,
          );
        })
        .toList();
    return MerchantActivityTrendEntity(
      days: (map['days'] as num?)?.toInt() ?? days,
      totalBuyQuantity: (map['totalBuyQuantity'] as num?)?.toDouble() ?? 0,
      totalSellQuantity: (map['totalSellQuantity'] as num?)?.toDouble() ?? 0,
      totalTrades: (map['totalTrades'] as num?)?.toInt() ?? 0,
      points: points,
    );
  }

  @override
  Future<List<MerchantProductModel>> getProducts({
    String? date,
    String? search,
  }) async {
    const String query = r'''
      query GetProducts($date: String, $search: String) {
        products(date: $date, search: $search) {
          id
          name
          category
          description
          status
          grades {
            id
            productId
            name
            description
            status
            price
          }
        }
      }
    ''';

    final result = await _graphQLClient.query(
      QueryOptions(
        document: gql(query),
        variables: {
          if (date != null) 'date': date,
          if (search != null && search.isNotEmpty) 'search': search,
        },
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    if (result.hasException) {
      throw ErrorHandler.handle(result.exception!);
    }

    final data = result.data?['products'] as List<dynamic>?;
    if (data == null) throw Exception('Failed to load products');

    return data
        .map((e) => MerchantProductModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  @override
  Future<List<MerchantPositionModel>> getPositions() async {
    const String query = r'''
      query GetPositions {
        getPositions {
          userId
          spiceGradeId
          totalQty
          totalCost
          avgCost
          todayPrice
          realizedPnL
          unrealizedPnL
          updatedAt
        }
      }
    ''';

    final result = await _graphQLClient.query(
      QueryOptions(
        document: gql(query),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    if (result.hasException) {
      throw ErrorHandler.handle(result.exception!);
    }

    final data = result.data?['getPositions'] as List<dynamic>?;
    if (data == null) throw Exception('Failed to load positions');

    return data
        .map((e) => MerchantPositionModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  @override
  Future<MerchantPositionModel> getGradePosition(String spiceGradeId) async {
    const String query = r'''
      query GetGradePosition($spiceGradeId: ID!) {
        getGradePosition(spiceGradeId: $spiceGradeId) {
          userId
          spiceGradeId
          totalQty
          totalCost
          avgCost
          todayPrice
          realizedPnL
          unrealizedPnL
          updatedAt
        }
      }
    ''';

    final result = await _graphQLClient.query(
      QueryOptions(
        document: gql(query),
        variables: {'spiceGradeId': spiceGradeId},
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    if (result.hasException) {
      throw ErrorHandler.handle(result.exception!);
    }

    final data = result.data?['getGradePosition'];
    if (data == null) throw Exception('Failed to load grade position');

    return MerchantPositionModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<List<MerchantTransactionModel>> listTransactions({
    int skip = 0,
    int take = 10,
    String? spiceGradeId,
    String? productId,
    String? sort,
    String? dateFrom,
    String? dateTo,
  }) async {
    const String query = r'''
      query ListTransactions(
        $skip: Int
        $take: Int
        $spiceGradeId: ID
        $productId: ID
        $sort: String
        $dateFrom: String
        $dateTo: String
      ) {
        listTransactions(
          skip: $skip
          take: $take
          spiceGradeId: $spiceGradeId
          productId: $productId
          sort: $sort
          dateFrom: $dateFrom
          dateTo: $dateTo
        ) {
          id
          userId
          spiceGradeId
          type
          quantity
          price
          tradeDate
          createdAt
        }
      }
    ''';

    final result = await _graphQLClient.query(
      QueryOptions(
        document: gql(query),
        variables: {
          'skip': skip,
          'take': take,
          if (spiceGradeId != null && spiceGradeId.isNotEmpty)
            'spiceGradeId': spiceGradeId,
          if (productId != null && productId.isNotEmpty) 'productId': productId,
          if (sort != null && sort.isNotEmpty) 'sort': sort,
          if (dateFrom != null && dateFrom.isNotEmpty) 'dateFrom': dateFrom,
          if (dateTo != null && dateTo.isNotEmpty) 'dateTo': dateTo,
        },
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    if (result.hasException) {
      throw ErrorHandler.handle(result.exception!);
    }

    final data = result.data?['listTransactions'] as List<dynamic>?;
    if (data == null) throw Exception('Failed to load transactions');

    return data
        .map(
          (e) => MerchantTransactionModel.fromJson(Map<String, dynamic>.from(e)),
        )
        .toList();
  }

  @override
  Future<List<MerchantTransactionModel>> listGradeTransactions({
    required String spiceGradeId,
    int skip = 0,
    int take = 10,
    String? sort,
    String? dateFrom,
    String? dateTo,
  }) async {
    const String query = r'''
      query ListGradeTransactions(
        $spiceGradeId: ID!
        $skip: Int
        $take: Int
        $sort: String
        $dateFrom: String
        $dateTo: String
      ) {
        listGradeTransactions(
          spiceGradeId: $spiceGradeId
          skip: $skip
          take: $take
          sort: $sort
          dateFrom: $dateFrom
          dateTo: $dateTo
        ) {
          id
          userId
          spiceGradeId
          type
          quantity
          price
          tradeDate
          createdAt
        }
      }
    ''';

    final result = await _graphQLClient.query(
      QueryOptions(
        document: gql(query),
        variables: {
          'spiceGradeId': spiceGradeId,
          'skip': skip,
          'take': take,
          if (sort != null && sort.isNotEmpty) 'sort': sort,
          if (dateFrom != null && dateFrom.isNotEmpty) 'dateFrom': dateFrom,
          if (dateTo != null && dateTo.isNotEmpty) 'dateTo': dateTo,
        },
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    if (result.hasException) {
      throw ErrorHandler.handle(result.exception!);
    }

    final data = result.data?['listGradeTransactions'] as List<dynamic>?;
    if (data == null) throw Exception('Failed to load grade transactions');

    return data
        .map(
          (e) => MerchantTransactionModel.fromJson(Map<String, dynamic>.from(e)),
        )
        .toList();
  }
}
