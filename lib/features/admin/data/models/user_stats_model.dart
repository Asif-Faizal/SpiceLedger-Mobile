import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_stats.dart';

part 'user_stats_model.freezed.dart';
part 'user_stats_model.g.dart';

@freezed
class UserStatsModel with _$UserStatsModel {
  const factory UserStatsModel({
    @JsonKey(name: 'total_users') required int totalUsers,
  }) = _UserStatsModel;

  factory UserStatsModel.fromJson(Map<String, dynamic> json) =>
      _$UserStatsModelFromJson(json);
}

extension UserStatsModelX on UserStatsModel {
  UserStats toEntity() => UserStats(totalUsers: totalUsers);
}
