import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/entities/merchant_dashboard_entity.dart';
import '../../../domain/entities/transaction_filter_entity.dart';
import '../../../domain/usecases/merchant_market_usecases.dart';
import '../../../domain/utils/merchant_market_utils.dart';
import 'merchant_transactions_event.dart';
import 'merchant_transactions_state.dart';

@injectable
class MerchantTransactionsBloc
    extends Bloc<MerchantTransactionsEvent, MerchantTransactionsState> {
  static const _pageSize = 50;

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
    final transactionsResult = await listMerchantTransactionsUseCase(
      skip: 0,
      take: _pageSize,
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
                displayedTransactions: applyTransactionFilters(
                  transactions: transactions,
                  filter: filter,
                  products: products,
                ),
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
    final snapshot = state.whenOrNull(
      loaded: (
        products,
        allTransactions,
        displayedTransactions,
        currentFilter,
        hasMore,
        isLoadingMore,
      ) =>
          (
            products,
            allTransactions,
            currentFilter,
            hasMore,
          ),
    );

    if (snapshot == null) {
      add(const MerchantTransactionsEvent.fetch());
      return;
    }

    final (products, _, _, _) = snapshot;

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

    List<MerchantTransactionEntity> source;

    if (filter.gradeId != null) {
      final result = await listMerchantGradeTransactionsUseCase(
        spiceGradeId: filter.gradeId!,
        skip: 0,
        take: _pageSize,
      );
      final fetched = result.fold((_) => <MerchantTransactionEntity>[], (v) => v);
      if (result.isLeft()) {
        emit(MerchantTransactionsState.error(
          message: result.fold((f) => f.message, (_) => ''),
        ));
        return;
      }
      source = fetched;
    } else {
      final result = await listMerchantTransactionsUseCase(
        skip: 0,
        take: _pageSize,
      );
      final fetched = result.fold((_) => <MerchantTransactionEntity>[], (v) => v);
      if (result.isLeft()) {
        emit(MerchantTransactionsState.error(
          message: result.fold((f) => f.message, (_) => ''),
        ));
        return;
      }
      source = fetched;
    }

    emit(
      MerchantTransactionsState.loaded(
        products: products,
        allTransactions: source,
        displayedTransactions: applyTransactionFilters(
          transactions: source,
          filter: filter,
          products: products,
        ),
        filter: filter,
        hasMore: source.length >= _pageSize,
        isLoadingMore: false,
      ),
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

    final (products, allTransactions, filter, hasMore, isLoadingMore) = snapshot;
    if (!hasMore || isLoadingMore) return;

    emit(
      MerchantTransactionsState.loaded(
        products: products,
        allTransactions: allTransactions,
        displayedTransactions: applyTransactionFilters(
          transactions: allTransactions,
          filter: filter,
          products: products,
        ),
        filter: filter,
        hasMore: hasMore,
        isLoadingMore: true,
      ),
    );

    final skip = allTransactions.length;
    final result = filter.gradeId != null
        ? await listMerchantGradeTransactionsUseCase(
            spiceGradeId: filter.gradeId!,
            skip: skip,
            take: _pageSize,
          )
        : await listMerchantTransactionsUseCase(skip: skip, take: _pageSize);

    result.fold(
      (failure) => emit(
        MerchantTransactionsState.loaded(
          products: products,
          allTransactions: allTransactions,
          displayedTransactions: applyTransactionFilters(
            transactions: allTransactions,
            filter: filter,
            products: products,
          ),
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
            displayedTransactions: applyTransactionFilters(
              transactions: merged,
              filter: filter,
              products: products,
            ),
            filter: filter,
            hasMore: more.length >= _pageSize,
            isLoadingMore: false,
          ),
        );
      },
    );
  }
}
