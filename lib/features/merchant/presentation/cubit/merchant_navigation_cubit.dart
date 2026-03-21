import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class MerchantNavigationCubit extends Cubit<int> {
  MerchantNavigationCubit() : super(0);

  void setSelectedIndex(int index) => emit(index);
}
