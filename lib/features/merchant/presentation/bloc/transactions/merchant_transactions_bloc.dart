import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/error/failures.dart';
import '../../../domain/entities/merchant_dashboard_entity.dart';
import '../../../domain/entities/transaction_filter_entity.dart';
import '../../../domain/usecases/merchant_market_usecases.dart';
import 'merchant_transactions_event.dart';
import 'merchant_transactions_state.dart';

@injectable
class MerchantTransactionsBloc
    extends Bloc<MerchantTransactionsEvent, MerchantTransactionsState> {
  static const _pageSize = 10;

  final GetMerchantProductsUseCase getMerchantProductsUseCase;
  final ListMerchantTransactionsUseCase listMerchantTransactionsUseCase;
  final ListMerchantGradeTransactionsUseCase listMerchantGradeTransactionsUseCase;

  MerchantTransactionsBloc(
    this.getMerchantProductsUseCase,
    this.listMerchantTransactionsUseCase,
    this.listMerchantGradeTransactionsUseCase,
  ) : super(const MerchantTransactionsState.initial()) {
    on<MerchantTransactionsEvent>((event, emit) async {
      await event.map(
        fetch: (_) async => _onFetch(emit),
        applyFilter: (e) async => _onApplyFilter(emit, e.filter),
        clearFilter: (_) async => _onClearFilter(emit),
        loadMore: (_) async => _onLoadMore(emit),
      );
    });
  }

  Future<void> _onFetch(Emitter<MerchantTransactionsState> emit) async {
    emit(const MerchantTransactionsState.loading());

    final productsResult = await getMerchantProductsUseCase();
    final transactionsResult = await _fetchPage(
      filter: const TransactionFilterEntity(),
      skip: 0,
    );

    await productsResult.fold(
      (failure) async =>
          emit(MerchantTransactionsState.error(message: failure.message)),
      (products) async {
        await transactionsResult.fold(
          (failure) async =>
              emit(MerchantTransactionsState.error(message: failure.message)),
          (transactions) async {
            const filter = TransactionFilterEntity();
            emit(
              MerchantTransactionsState.loaded(
                products: products,
                allTransactions: transactions,
                displayedTransactions: transactions,
                filter: filter,
                hasMore: transactions.length >= _pageSize,
                isLoadingMore: false,
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _onApplyFilter(
    Emitter<MerchantTransactionsState> emit,
    TransactionFilterEntity filter,
  ) async {
    final products = state.whenOrNull(
      loaded: (products, a, b, c, d, e) => products,
    );

    if (products == null) {
      add(const MerchantTransactionsEvent.fetch());
      return;
    }

    emit(
      MerchantTransactionsState.loaded(
        products: products,
        allTransactions: const [],
        displayedTransactions: const [],
        filter: filter,
        hasMore: false,
        isLoadingMore: true,
      ),
    );

    final result = await _fetchPage(filter: filter, skip: 0);
    result.fold(
      (failure) =>
          emit(MerchantTransactionsState.error(message: failure.message)),
      (source) {
        emit(
          MerchantTransactionsState.loaded(
            products: products,
            allTransactions: source,
            displayedTransactions: source,
            filter: filter,
            hasMore: source.length >= _pageSize,
            isLoadingMore: false,
          ),
        );
      },
    );
  }

  Future<void> _onClearFilter(Emitter<MerchantTransactionsState> emit) async {
    add(const MerchantTransactionsEvent.fetch());
  }

  Future<void> _onLoadMore(Emitter<MerchantTransactionsState> emit) async {
    final snapshot = state.whenOrNull(
      loaded: (
        products,
        allTransactions,
        displayedTransactions,
        filter,
        hasMore,
        isLoadingMore,
      ) =>
          (
            products,
            allTransactions,
            filter,
            hasMore,
            isLoadingMore,
          ),
    );

    if (snapshot == null) return;

    final (products, allTransactions, filter, hasMore, isLoadingMore) =
        snapshot;
    if (!hasMore || isLoadingMore) return;

    emit(
      MerchantTransactionsState.loaded(
        products: products,
        allTransactions: allTransactions,
        displayedTransactions: allTransactions,
        filter: filter,
        hasMore: hasMore,
        isLoadingMore: true,
      ),
    );

    final result = await _fetchPage(
      filter: filter,
      skip: allTransactions.length,
    );

    result.fold(
      (failure) => emit(
        MerchantTransactionsState.loaded(
          products: products,
          allTransactions: allTransactions,
          displayedTransactions: allTransactions,
          filter: filter,
          hasMore: hasMore,
          isLoadingMore: false,
        ),
      ),
      (more) {
        final merged = [...allTransactions, ...more];
        emit(
          MerchantTransactionsState.loaded(
            products: products,
            allTransactions: merged,
            displayedTransactions: merged,
            filter: filter,
            hasMore: more.length >= _pageSize,
            isLoadingMore: false,
          ),
        );
      },
    );
  }

  Future<Either<Failure, List<MerchantTransactionEntity>>> _fetchPage({
    required TransactionFilterEntity filter,
    required int skip,
  }) {
    final sort = filter.sortQueryValue;
    final dateFrom = filter.dateFromQueryValue;
    final dateTo = filter.dateToQueryValue;

    if (filter.gradeId != null) {
      return listMerchantGradeTransactionsUseCase(
        spiceGradeId: filter.gradeId!,
        skip: skip,
        take: _pageSize,
        sort: sort,
        dateFrom: dateFrom,
        dateTo: dateTo,
      );
    }

    return listMerchantTransactionsUseCase(
      skip: skip,
      take: _pageSize,
      productId: filter.productId,
      sort: sort,
      dateFrom: dateFrom,
      dateTo: dateTo,
    );
  }
}
