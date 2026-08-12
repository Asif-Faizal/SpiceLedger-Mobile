import '../entities/catalog_entity.dart';
import '../entities/inventory_entity.dart';
import '../entities/merchant_dashboard_entity.dart';
import '../entities/merchant_position_entity.dart';
import '../entities/transaction_filter_entity.dart';

class GradeLabelLookup {
  final Map<String, String> _byGradeId;

  GradeLabelLookup(this._byGradeId);

  factory GradeLabelLookup.fromProducts(List<MerchantProductEntity> products) {
    final map = <String, String>{};
    for (final product in products) {
      for (final grade in product.grades) {
        map[grade.id] = '${product.name} · ${grade.name}';
      }
    }
    return GradeLabelLookup(map);
  }

  String labelFor(String spiceGradeId) =>
      _byGradeId[spiceGradeId] ?? spiceGradeId;

  Set<String> gradeIdsForProduct(
    String productId,
    List<MerchantProductEntity> products,
  ) {
    final product = products.where((p) => p.id == productId).firstOrNull;
    if (product == null) return {};
    return product.grades.map((g) => g.id).toSet();
  }
}

extension _FirstOrNull<E> on Iterable<E> {
  E? get firstOrNull {
    final iterator = this.iterator;
    if (iterator.moveNext()) return iterator.current;
    return null;
  }
}

(DateTime start, DateTime end)? resolveTransactionDateRange(
  TransactionFilterEntity filter,
) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);

  switch (filter.datePreset) {
    case TransactionDatePreset.lastWeek:
      return (today.subtract(const Duration(days: 7)), today);
    case TransactionDatePreset.lastMonth:
      return (today.subtract(const Duration(days: 30)), today);
    case TransactionDatePreset.custom:
      if (filter.dateFrom != null && filter.dateTo != null) {
        return (
          DateTime(
            filter.dateFrom!.year,
            filter.dateFrom!.month,
            filter.dateFrom!.day,
          ),
          DateTime(
            filter.dateTo!.year,
            filter.dateTo!.month,
            filter.dateTo!.day,
          ),
        );
      }
      return null;
    case TransactionDatePreset.none:
      return null;
  }
}

DateTime _parseTradeDate(String tradeDate) {
  final parts = tradeDate.split('-');
  if (parts.length >= 3) {
    return DateTime(
      int.parse(parts[0]),
      int.parse(parts[1]),
      int.parse(parts[2]),
    );
  }
  return DateTime.parse(tradeDate);
}

List<MerchantTransactionEntity> applyTransactionFilters({
  required List<MerchantTransactionEntity> transactions,
  required TransactionFilterEntity filter,
  required List<MerchantProductEntity> products,
}) {
  var result = List<MerchantTransactionEntity>.from(transactions);

  if (filter.gradeId != null) {
    result = result.where((t) => t.spiceGradeId == filter.gradeId).toList();
  } else if (filter.productId != null) {
    final gradeIds = GradeLabelLookup.fromProducts(products)
        .gradeIdsForProduct(filter.productId!, products);
    result = result.where((t) => gradeIds.contains(t.spiceGradeId)).toList();
  }

  final range = resolveTransactionDateRange(filter);
  if (range != null) {
    result = result.where((t) {
      final date = _parseTradeDate(t.tradeDate);
      return !date.isBefore(range.$1) && !date.isAfter(range.$2);
    }).toList();
  }

  result.sort((a, b) {
    final da = _parseTradeDate(a.tradeDate);
    final db = _parseTradeDate(b.tradeDate);
    return filter.sortOrder == TransactionSortOrder.newestFirst
        ? db.compareTo(da)
        : da.compareTo(db);
  });

  return result;
}

List<InventoryProductItemEntity> buildInventoryItems({
  required List<MerchantProductEntity> products,
  required List<MerchantPositionEntity> positions,
}) {
  final positionByGrade = {
    for (final p in positions) p.spiceGradeId: p,
  };

  return products.map((product) {
    final grades = product.grades.map((grade) {
      return InventoryGradeItemEntity(
        grade: grade,
        position: positionByGrade[grade.id],
      );
    }).toList();

    return InventoryProductItemEntity(product: product, grades: grades);
  }).toList()
    ..sort((a, b) {
      if (a.openGradeCount != b.openGradeCount) {
        return b.openGradeCount.compareTo(a.openGradeCount);
      }
      return b.totalMarketValue.compareTo(a.totalMarketValue);
    });
}
