part of 'admin_bloc.dart';

@freezed
class AdminEvent with _$AdminEvent {
  const factory AdminEvent.loadStats() = _LoadStats;
  const factory AdminEvent.createGrade(String name, String description) =
      _CreateGrade;
  const factory AdminEvent.setPrice(String date, String grade, double price) =
      _SetPrice;
}
