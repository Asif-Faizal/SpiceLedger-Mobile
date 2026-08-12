import 'package:equatable/equatable.dart';

enum TransactionSortOrder { newestFirst, oldestFirst }

enum TransactionDatePreset { none, lastWeek, lastMonth, custom }

class TransactionFilterEntity extends Equatable {
  final String? productId;
  final String? productName;
  final String? gradeId;
  final String? gradeName;
  final TransactionDatePreset datePreset;
  final DateTime? dateFrom;
  final DateTime? dateTo;
  final TransactionSortOrder sortOrder;

  const TransactionFilterEntity({
    this.productId,
    this.productName,
    this.gradeId,
    this.gradeName,
    this.datePreset = TransactionDatePreset.none,
    this.dateFrom,
    this.dateTo,
    this.sortOrder = TransactionSortOrder.newestFirst,
  });

  bool get hasProductFilter => productId != null;
  bool get hasGradeFilter => gradeId != null;
  bool get hasDateFilter =>
      datePreset != TransactionDatePreset.none ||
      dateFrom != null ||
      dateTo != null;

  bool get hasCustomSort => sortOrder != TransactionSortOrder.newestFirst;

  bool get isActive =>
      hasProductFilter || hasGradeFilter || hasDateFilter || hasCustomSort;

  /// Backend sort token: ASC = oldest first, DESC = newest first.
  String get sortQueryValue =>
      sortOrder == TransactionSortOrder.oldestFirst ? 'ASC' : 'DESC';

  String? get dateFromQueryValue =>
      dateFrom == null ? null : _fmt(dateFrom!);

  String? get dateToQueryValue => dateTo == null ? null : _fmt(dateTo!);

  TransactionFilterEntity cleared() => const TransactionFilterEntity();

  String get summaryLabel {
    if (!isActive) return 'All transactions';
    final parts = <String>[];
    if (productName != null) {
      parts.add(gradeName != null ? '$productName · $gradeName' : productName!);
    }
    if (datePreset == TransactionDatePreset.lastWeek) {
      parts.add('Last week');
    } else if (datePreset == TransactionDatePreset.lastMonth) {
      parts.add('Last month');
    } else if (datePreset == TransactionDatePreset.custom &&
        dateFrom != null &&
        dateTo != null) {
      parts.add(
        '${_fmt(dateFrom!)} – ${_fmt(dateTo!)}',
      );
    }
    if (hasCustomSort) {
      parts.add('Oldest first');
    }
    return parts.join(' · ');
  }

  static String _fmt(DateTime d) =>
      '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  @override
  List<Object?> get props => [
        productId,
        productName,
        gradeId,
        gradeName,
        datePreset,
        dateFrom,
        dateTo,
        sortOrder,
      ];
}
