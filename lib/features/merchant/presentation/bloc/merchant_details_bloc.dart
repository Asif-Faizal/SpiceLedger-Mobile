import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_merchant_details_usecase.dart';
import '../../domain/usecases/save_merchant_details_usecase.dart';
import 'merchant_details_event.dart';
import 'merchant_details_state.dart';

@injectable
class MerchantDetailsBloc extends Bloc<MerchantDetailsEvent, MerchantDetailsState> {
  final GetMerchantDetailsUseCase getMerchantDetailsUseCase;
  final SaveMerchantDetailsUseCase saveMerchantDetailsUseCase;

  MerchantDetailsBloc(
    this.getMerchantDetailsUseCase,
    this.saveMerchantDetailsUseCase,
  ) : super(const MerchantDetailsState.initial()) {
    on<MerchantDetailsEvent>((event, emit) async {
      await event.when(
        fetchRequested: () async {
          emit(const MerchantDetailsState.loading());
          final result = await getMerchantDetailsUseCase();
          result.fold(
            (failure) => emit(MerchantDetailsState.failure(failure.message)),
            (details) {
              if (details == null) {
                emit(const MerchantDetailsState.noDetails());
              } else {
                emit(MerchantDetailsState.success(details));
              }
            },
          );
        },
        saveRequested: (entity) async {
          final currentDetails = state.maybeWhen(
            success: (d) => d,
            saveLoading: (d) => d,
            orElse: () => null,
          );
          emit(MerchantDetailsState.saveLoading(currentDetails));
          
          final result = await saveMerchantDetailsUseCase(entity);
          result.fold(
            (failure) => emit(MerchantDetailsState.failure(failure.message)),
            (savedDetails) => emit(MerchantDetailsState.success(savedDetails)),
          );
        },
      );
    });
  }
}
