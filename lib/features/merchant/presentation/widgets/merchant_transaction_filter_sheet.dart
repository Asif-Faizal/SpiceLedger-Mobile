import 'package:flutter/material.dart';
import '../../domain/entities/catalog_entity.dart';
import '../../domain/entities/transaction_filter_entity.dart';

Future<TransactionFilterEntity?> showMerchantTransactionFilterSheet({
  required BuildContext context,
  required List<MerchantProductEntity> products,
  required TransactionFilterEntity initialFilter,
}) {
  return showModalBottomSheet<TransactionFilterEntity>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (context) => _TransactionFilterSheet(
      products: products,
      initialFilter: initialFilter,
    ),
  );
}

class _TransactionFilterSheet extends StatefulWidget {
  final List<MerchantProductEntity> products;
  final TransactionFilterEntity initialFilter;

  const _TransactionFilterSheet({
    required this.products,
    required this.initialFilter,
  });

  @override
  State<_TransactionFilterSheet> createState() =>
      _TransactionFilterSheetState();
}

class _TransactionFilterSheetState extends State<_TransactionFilterSheet> {
  String? _productId;
  String? _gradeId;
  TransactionSortOrder _sortOrder = TransactionSortOrder.newestFirst;
  TransactionDatePreset _datePreset = TransactionDatePreset.none;
  DateTime? _dateFrom;
  DateTime? _dateTo;

  @override
  void initState() {
    super.initState();
    _productId = widget.initialFilter.productId;
    _gradeId = widget.initialFilter.gradeId;
    _sortOrder = widget.initialFilter.sortOrder;
    _datePreset = widget.initialFilter.datePreset;
    _dateFrom = widget.initialFilter.dateFrom;
    _dateTo = widget.initialFilter.dateTo;
  }

  MerchantProductEntity? get _selectedProduct {
    if (_productId == null) return null;
    for (final product in widget.products) {
      if (product.id == _productId) return product;
    }
    return null;
  }

  List<MerchantGradeEntity> get _availableGrades =>
      _selectedProduct?.grades ?? const [];

  Future<void> _pickDate({required bool isFrom}) async {
    final initial = isFrom
        ? (_dateFrom ?? DateTime.now())
        : (_dateTo ?? DateTime.now());
    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked == null) return;
    setState(() {
      _datePreset = TransactionDatePreset.custom;
      if (isFrom) {
        _dateFrom = picked;
      } else {
        _dateTo = picked;
      }
    });
  }

  TransactionFilterEntity _buildFilter() {
    final product = _selectedProduct;
    MerchantGradeEntity? grade;
    if (_gradeId != null && product != null) {
      grade = product.grades.where((g) => g.id == _gradeId).firstOrNull;
    }

    return TransactionFilterEntity(
      productId: _productId,
      productName: product?.name,
      gradeId: _gradeId,
      gradeName: grade?.name,
      datePreset: _datePreset,
      dateFrom: _dateFrom,
      dateTo: _dateTo,
      sortOrder: _sortOrder,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: MediaQuery.viewInsetsOf(context).bottom + 24,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Filter transactions',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String?>(
              value: _productId,
              decoration: const InputDecoration(
                labelText: 'Product',
                border: OutlineInputBorder(),
              ),
              items: [
                const DropdownMenuItem<String?>(
                  value: null,
                  child: Text('All products'),
                ),
                ...widget.products.map(
                  (p) => DropdownMenuItem(
                    value: p.id,
                    child: Text(p.name),
                  ),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _productId = value;
                  _gradeId = null;
                });
              },
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String?>(
              value: _gradeId,
              decoration: InputDecoration(
                labelText: 'Grade',
                border: const OutlineInputBorder(),
                helperText: _productId == null
                    ? 'Select a product first to filter by grade'
                    : null,
              ),
              items: [
                const DropdownMenuItem<String?>(
                  value: null,
                  child: Text('All grades'),
                ),
                ..._availableGrades.map(
                  (g) => DropdownMenuItem(
                    value: g.id,
                    child: Text(g.name),
                  ),
                ),
              ],
              onChanged: _productId == null
                  ? null
                  : (value) => setState(() => _gradeId = value),
            ),
            const SizedBox(height: 20),
            Text(
              'Sort by date',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            SegmentedButton<TransactionSortOrder>(
              segments: const [
                ButtonSegment(
                  value: TransactionSortOrder.newestFirst,
                  label: Text('Newest'),
                ),
                ButtonSegment(
                  value: TransactionSortOrder.oldestFirst,
                  label: Text('Oldest'),
                ),
              ],
              selected: {_sortOrder},
              onSelectionChanged: (value) {
                setState(() => _sortOrder = value.first);
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Date range',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ChoiceChip(
                  label: const Text('Any time'),
                  selected: _datePreset == TransactionDatePreset.none,
                  onSelected: (_) => setState(() {
                    _datePreset = TransactionDatePreset.none;
                    _dateFrom = null;
                    _dateTo = null;
                  }),
                ),
                ChoiceChip(
                  label: const Text('Last week'),
                  selected: _datePreset == TransactionDatePreset.lastWeek,
                  onSelected: (_) => setState(() {
                    _datePreset = TransactionDatePreset.lastWeek;
                    _dateFrom = null;
                    _dateTo = null;
                  }),
                ),
                ChoiceChip(
                  label: const Text('Last month'),
                  selected: _datePreset == TransactionDatePreset.lastMonth,
                  onSelected: (_) => setState(() {
                    _datePreset = TransactionDatePreset.lastMonth;
                    _dateFrom = null;
                    _dateTo = null;
                  }),
                ),
                ChoiceChip(
                  label: const Text('Custom range'),
                  selected: _datePreset == TransactionDatePreset.custom,
                  onSelected: (_) => setState(
                    () => _datePreset = TransactionDatePreset.custom,
                  ),
                ),
              ],
            ),
            if (_datePreset == TransactionDatePreset.custom) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => _pickDate(isFrom: true),
                      child: Text(
                        _dateFrom == null
                            ? 'From date'
                            : _formatDate(_dateFrom!),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => _pickDate(isFrom: false),
                      child: Text(
                        _dateTo == null ? 'To date' : _formatDate(_dateTo!),
                      ),
                    ),
                  ),
                ],
              ),
            ],
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context, const TransactionFilterEntity()),
                    child: const Text('Clear'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton(
                    onPressed: () => Navigator.pop(context, _buildFilter()),
                    child: const Text('Apply'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) =>
      '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
}

extension _FirstOrNull<E> on Iterable<E> {
  E? get firstOrNull {
    final iterator = this.iterator;
    if (iterator.moveNext()) return iterator.current;
    return null;
  }
}
