import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../domain/entities/merchant_position_entity.dart';
import '../bloc/transactions/merchant_transactions_bloc.dart';
import '../bloc/transactions/merchant_transactions_event.dart';
import '../bloc/transactions/merchant_transactions_state.dart';
import '../widgets/merchant_market_widgets.dart';

class MerchantTransactionsPage extends StatelessWidget {
  const MerchantTransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MerchantTransactionsBloc>()
        ..add(const MerchantTransactionsEvent.fetch()),
      child: const _MerchantTransactionsView(),
    );
  }
}

class _MerchantTransactionsView extends StatelessWidget {
  const _MerchantTransactionsView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MerchantTransactionsBloc, MerchantTransactionsState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          loading: (_) => const Center(child: CircularProgressIndicator()),
          error: (e) => Center(child: Text('Error: ${e.message}')),
          loaded: (s) => RefreshIndicator(
            onRefresh: () async {
              context.read<MerchantTransactionsBloc>().add(
                    const MerchantTransactionsEvent.fetch(),
                  );
            },
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Filter by grade',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        _GradeFilterChips(
                          positions: s.positions,
                          selectedGradeId: s.selectedGradeId,
                        ),
                      ],
                    ),
                  ),
                ),
                if (s.transactions.isEmpty)
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(child: Text('No transactions found')),
                  )
                else
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index == s.transactions.length) {
                            if (s.hasMore && !s.isLoadingMore) {
                              context.read<MerchantTransactionsBloc>().add(
                                    const MerchantTransactionsEvent.loadMore(),
                                  );
                            }
                            return s.isLoadingMore
                                ? const Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  )
                                : const SizedBox(height: 24);
                          }

                          final txn = s.transactions[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: MerchantTransactionCard(txn: txn),
                          );
                        },
                        childCount: s.transactions.length + 1,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _GradeFilterChips extends StatelessWidget {
  final List<MerchantPositionEntity> positions;
  final String? selectedGradeId;

  const _GradeFilterChips({
    required this.positions,
    required this.selectedGradeId,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FilterChip(
              label: const Text('All'),
              selected: selectedGradeId == null,
              onSelected: (_) {
                context.read<MerchantTransactionsBloc>().add(
                      const MerchantTransactionsEvent.filterByGrade(null),
                    );
              },
            ),
          ),
          ...positions.map((position) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: FilterChip(
                label: Text(shortGradeId(position.spiceGradeId)),
                selected: selectedGradeId == position.spiceGradeId,
                onSelected: (_) {
                  context.read<MerchantTransactionsBloc>().add(
                        MerchantTransactionsEvent.filterByGrade(
                          position.spiceGradeId,
                        ),
                      );
                },
              ),
            );
          }),
          if (selectedGradeId != null)
            TextButton.icon(
              onPressed: () => openGradePositionDetail(
                context,
                selectedGradeId!,
              ),
              icon: const Icon(Icons.info_outline, size: 16),
              label: const Text('Position detail'),
            ),
        ],
      ),
    );
  }
}
