import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:spice_ledger/core/config/env_config.dart';
import '../storage/secure_storage.dart';
import 'graphql_error_link.dart';

@module
abstract class GraphQLModule {
  @lazySingleton
  GraphQLClient getGraphQLClient(EncryptedStorage storage) {
    final HttpLink httpLink = HttpLink(ApiConfig.graphQLClient);

    final AuthLink authLink = AuthLink(
      getToken: () async {
        final token = await storage.read('access_token');
        if (token != null && token.isNotEmpty) {
          return 'Bearer $token';
        }
        return null;
      },
    );

    final GraphQLErrorLink errorLink = GraphQLErrorLink(storage);

    // Order: errorLink -> authLink -> httpLink
    // This way, if errorLink retries, authLink re-runs its getToken logic.
    final Link link = errorLink.concat(authLink).concat(httpLink);

    return GraphQLClient(cache: GraphQLCache(), link: link);
  }
}
