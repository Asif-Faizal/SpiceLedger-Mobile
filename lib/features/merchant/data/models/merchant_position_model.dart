import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/merchant_position_entity.dart';

part 'merchant_position_model.freezed.dart';
part 'merchant_position_model.g.dart';

@freezed
abstract class MerchantPositionModel with _$MerchantPositionModel {
  const factory MerchantPositionModel({
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'spiceGradeId') required String spiceGradeId,
    required double totalQty,
    required double totalCost,
    required double avgCost,
    required double todayPrice,
    required double realizedPnL,
    required double unrealizedPnL,
    required String updatedAt,
  }) = _MerchantPositionModel;

  factory MerchantPositionModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantPositionModelFromJson(json);
}

extension MerchantPositionModelX on MerchantPositionModel {
  MerchantPositionEntity toEntity() => MerchantPositionEntity(
        userId: userId,
        spiceGradeId: spiceGradeId,
        totalQty: totalQty,
        totalCost: totalCost,
        avgCost: avgCost,
        todayPrice: todayPrice,
        realizedPnL: realizedPnL,
        unrealizedPnL: unrealizedPnL,
        updatedAt: updatedAt,
      );
}
