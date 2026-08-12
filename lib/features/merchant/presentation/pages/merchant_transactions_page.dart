import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/utils/merchant_market_utils.dart';
import '../bloc/transactions/merchant_transactions_bloc.dart';
import '../bloc/transactions/merchant_transactions_event.dart';
import '../bloc/transactions/merchant_transactions_state.dart';
import '../widgets/merchant_market_widgets.dart';
import '../widgets/merchant_transaction_filter_sheet.dart';

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
          loaded: (s) {
            final labels = GradeLabelLookup.fromProducts(s.products);

            return RefreshIndicator(
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
                          Row(
                            children: [
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () async {
                                    final filter =
                                        await showMerchantTransactionFilterSheet(
                                      context: context,
                                      products: s.products,
                                      initialFilter: s.filter,
                                    );
                                    if (!context.mounted || filter == null) {
                                      return;
                                    }
                                    if (filter.isActive) {
                                      context
                                          .read<MerchantTransactionsBloc>()
                                          .add(
                                            MerchantTransactionsEvent
                                                .applyFilter(filter),
                                          );
                                    } else {
                                      context
                                          .read<MerchantTransactionsBloc>()
                                          .add(
                                            const MerchantTransactionsEvent
                                                .clearFilter(),
                                          );
                                    }
                                  },
                                  icon: const Icon(Icons.tune, size: 18),
                                  label: const Text('Filters & sort'),
                                ),
                              ),
                              if (s.filter.isActive) ...[
                                const SizedBox(width: 8),
                                IconButton(
                                  tooltip: 'Clear filters',
                                  onPressed: () {
                                    context.read<MerchantTransactionsBloc>().add(
                                          const MerchantTransactionsEvent
                                              .clearFilter(),
                                        );
                                  },
                                  icon: const Icon(Icons.close),
                                ),
                              ],
                            ],
                          ),
                          if (s.filter.isActive) ...[
                            const SizedBox(height: 8),
                            Text(
                              s.filter.summaryLabel,
                              style: const TextStyle(
                                fontSize: 13,
                                color: AppColors.neutralGray,
                              ),
                            ),
                          ],
                          const SizedBox(height: 4),
                          Text(
                            '${s.displayedTransactions.length} transaction(s)',
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.neutralGray,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (s.displayedTransactions.isEmpty)
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
                            if (index == s.displayedTransactions.length) {
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

                            final txn = s.displayedTransactions[index];
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: MerchantTransactionCard(
                                txn: txn,
                                gradeLabel: labels.labelFor(txn.spiceGradeId),
                              ),
                            );
                          },
                          childCount: s.displayedTransactions.length + 1,
                        ),
                      ),
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
