import 'package:equatable/equatable.dart';

class MerchantEntity extends Equatable {
  final String id;
  final String accountId;
  final String phoneNumber;
  final String address;
  final String city;
  final String state;
  final String pincode;

  const MerchantEntity({
    required this.id,
    required this.accountId,
    required this.phoneNumber,
    required this.address,
    required this.city,
    required this.state,
    required this.pincode,
  });

  @override
  List<Object?> get props => [
        id,
        accountId,
        phoneNumber,
        address,
        city,
        state,
        pincode,
      ];
}
