import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import '../storage/secure_storage.dart';

@module
abstract class GraphQLModule {
  @lazySingleton
  GraphQLClient getGraphQLClient(EncryptedStorage storage) {
    const String graphqlEndpoint = 'http://localhost:8081/graphql';

    final AuthLink authLink = AuthLink(
      getToken: () async {
        final token = await storage.read('access_token');
        if (token != null && token.isNotEmpty) {
          return 'Bearer $token'; // The interceptor expects this exact format based on the Go backend handling
        }
        return null;
      },
    );

    final HttpLink httpLink = HttpLink(graphqlEndpoint);

    final Link link = authLink.concat(httpLink);

    return GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
  }
}
