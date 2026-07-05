import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/merchant_market_usecases.dart';
import 'merchant_transactions_event.dart';
import 'merchant_transactions_state.dart';

@injectable
class MerchantTransactionsBloc
    extends Bloc<MerchantTransactionsEvent, MerchantTransactionsState> {
  static const _pageSize = 20;

  final GetMerchantPositionsUseCase getMerchantPositionsUseCase;
  final ListMerchantTransactionsUseCase listMerchantTransactionsUseCase;
  final ListMerchantGradeTransactionsUseCase
      listMerchantGradeTransactionsUseCase;

  MerchantTransactionsBloc(
    this.getMerchantPositionsUseCase,
    this.listMerchantTransactionsUseCase,
    this.listMerchantGradeTransactionsUseCase,
  ) : super(const MerchantTransactionsState.initial()) {
    on<MerchantTransactionsEvent>((event, emit) async {
      await event.map(
        fetch: (_) async => _onFetch(emit),
        filterByGrade: (e) async => _onFilter(emit, e.spiceGradeId),
        loadMore: (_) async => _onLoadMore(emit),
      );
    });
  }

  Future<void> _onFetch(Emitter<MerchantTransactionsState> emit) async {
    emit(const MerchantTransactionsState.loading());

    final positionsResult = await getMerchantPositionsUseCase();
    final transactionsResult = await listMerchantTransactionsUseCase(
      skip: 0,
      take: _pageSize,
    );

    positionsResult.fold(
      (failure) =>
          emit(MerchantTransactionsState.error(message: failure.message)),
      (positions) {
        transactionsResult.fold(
          (failure) =>
              emit(MerchantTransactionsState.error(message: failure.message)),
          (transactions) => emit(
            MerchantTransactionsState.loaded(
              transactions: transactions,
              positions: positions,
              selectedGradeId: null,
              hasMore: transactions.length >= _pageSize,
              isLoadingMore: false,
            ),
          ),
        );
      },
    );
  }

  Future<void> _onFilter(
    Emitter<MerchantTransactionsState> emit,
    String? spiceGradeId,
  ) async {
    final snapshot = state.whenOrNull(
      loaded: (transactions, positions, selectedGradeId, hasMore, isLoadingMore) =>
          (transactions, positions, selectedGradeId, hasMore, isLoadingMore),
    );

    if (snapshot == null) {
      add(const MerchantTransactionsEvent.fetch());
      return;
    }

    final (transactions, positions, _, hasMore, _) = snapshot;

    emit(
      MerchantTransactionsState.loaded(
        transactions: transactions,
        positions: positions,
        selectedGradeId: spiceGradeId,
        hasMore: hasMore,
        isLoadingMore: true,
      ),
    );

    final result = spiceGradeId == null
        ? await listMerchantTransactionsUseCase(skip: 0, take: _pageSize)
        : await listMerchantGradeTransactionsUseCase(
            spiceGradeId: spiceGradeId,
            skip: 0,
            take: _pageSize,
          );

    result.fold(
      (failure) =>
          emit(MerchantTransactionsState.error(message: failure.message)),
      (filtered) => emit(
        MerchantTransactionsState.loaded(
          transactions: filtered,
          positions: positions,
          selectedGradeId: spiceGradeId,
          hasMore: filtered.length >= _pageSize,
          isLoadingMore: false,
        ),
      ),
    );
  }

  Future<void> _onLoadMore(Emitter<MerchantTransactionsState> emit) async {
    final snapshot = state.whenOrNull(
      loaded: (transactions, positions, selectedGradeId, hasMore, isLoadingMore) =>
          (transactions, positions, selectedGradeId, hasMore, isLoadingMore),
    );

    if (snapshot == null) return;

    final (transactions, positions, selectedGradeId, hasMore, isLoadingMore) =
        snapshot;

    if (!hasMore || isLoadingMore) return;

    emit(
      MerchantTransactionsState.loaded(
        transactions: transactions,
        positions: positions,
        selectedGradeId: selectedGradeId,
        hasMore: hasMore,
        isLoadingMore: true,
      ),
    );

    final skip = transactions.length;
    final result = selectedGradeId == null
        ? await listMerchantTransactionsUseCase(skip: skip, take: _pageSize)
        : await listMerchantGradeTransactionsUseCase(
            spiceGradeId: selectedGradeId,
            skip: skip,
            take: _pageSize,
          );

    result.fold(
      (failure) => emit(
        MerchantTransactionsState.loaded(
          transactions: transactions,
          positions: positions,
          selectedGradeId: selectedGradeId,
          hasMore: hasMore,
          isLoadingMore: false,
        ),
      ),
      (more) {
        final merged = [...transactions, ...more];
        emit(
          MerchantTransactionsState.loaded(
            transactions: merged,
            positions: positions,
            selectedGradeId: selectedGradeId,
            hasMore: more.length >= _pageSize,
            isLoadingMore: false,
          ),
        );
      },
    );
  }
}
