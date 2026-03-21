import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AdminNavigationCubit extends Cubit<int> {
  AdminNavigationCubit() : super(0);

  void setSelectedIndex(int index) => emit(index);
}
