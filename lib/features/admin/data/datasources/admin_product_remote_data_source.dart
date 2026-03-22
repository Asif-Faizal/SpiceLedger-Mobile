import 'package:dio/dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import '../models/product_model.dart';

abstract class AdminProductRemoteDataSource {
  Future<List<ProductModel>> getProducts(String? date, String? search);
  Future<ProductModel> createProduct(Map<String, dynamic> input);
  Future<GradeModel> createGrade(Map<String, dynamic> input);
  Future<void> createDailyPrice(Map<String, dynamic> input);
  Future<List<ProductModel>> getProductsRest();
}

@Injectable(as: AdminProductRemoteDataSource)
class AdminProductRemoteDataSourceImpl implements AdminProductRemoteDataSource {
  final GraphQLClient _graphQLClient;
  final Dio _dio;

  AdminProductRemoteDataSourceImpl(this._graphQLClient, this._dio);

  @override
  Future<List<ProductModel>> getProducts(String? date, String? search) async {
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
            name
            description
            status
            price
          }
        }
      }
    ''';

    final options = QueryOptions(
      document: gql(query),
      variables: {
        if (date != null) 'date': date,
        if (search != null) 'search': search,
      },
      fetchPolicy: FetchPolicy.networkOnly,
    );

    final result = await _graphQLClient.query(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final List? productsJson = result.data?['products'];
    if (productsJson == null) return [];

    return productsJson
        .map((e) => ProductModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  @override
  Future<ProductModel> createProduct(Map<String, dynamic> input) async {
    final Map<String, dynamic> cleanInput = Map.from(input);
    const String mutation = r'''
      mutation CreateProduct($input: CreateProductInput!) {
        createProduct(input: $input) {
          id
          name
          category
          description
          status
        }
      }
    ''';

    final options = MutationOptions(
      document: gql(mutation),
      variables: {'input': cleanInput},
    );

    final result = await _graphQLClient.mutate(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final data = result.data?['createProduct'];
    if (data == null) throw Exception("Failed to create product");

    return ProductModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<GradeModel> createGrade(Map<String, dynamic> input) async {
    final Map<String, dynamic> cleanInput = Map.from(input);
    const String mutation = r'''
      mutation CreateGrade($input: CreateGradeInput!) {
        createGrade(input: $input) {
          id
          productId
          name
          description
          status
        }
      }
    ''';

    final options = MutationOptions(
      document: gql(mutation),
      variables: {'input': cleanInput},
    );

    final result = await _graphQLClient.mutate(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final data = result.data?['createGrade'];
    if (data == null) throw Exception("Failed to create grade");

    return GradeModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<void> createDailyPrice(Map<String, dynamic> input) async {
    const String mutation = r'''
      mutation CreateDailyPrice($input: CreateDailyPriceInput!) {
        createDailyPrice(input: $input) {
          id
          productId
          gradeId
          price
          date
          time
        }
      }
    ''';

    final options = MutationOptions(
      document: gql(mutation),
      variables: {'input': input},
    );

    final result = await _graphQLClient.mutate(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }
  }

  @override
  Future<List<ProductModel>> getProductsRest() async {
    try {
      final response = await _dio.get('/rest/products/');
      final data = response.data;
      if (data['success'] == true && data['data'] != null) {
        final List productsJson = data['data']['products'] ?? [];
        return productsJson
            .map((e) => ProductModel.fromJson(Map<String, dynamic>.from(e)))
            .toList();
      } else {
        throw Exception(data['message'] ?? 'Failed to load products via REST');
      }
    } catch (e) {
      throw Exception('REST API Error: $e');
    }
  }
}
