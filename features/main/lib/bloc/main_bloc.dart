import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:main/bloc/main_event.dart';
import 'package:main/bloc/main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final GetUsersUseCase _getUsersUseCase;

  MainBloc(this._getUsersUseCase) : super(const UsersLoadingFromNetwork()) {
    on<GetUsersInfo>(onGetUsersInfo);
  }

  void onGetUsersInfo(GetUsersInfo event, Emitter<MainState> emit) async {
    final dataState = await _getUsersUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(UsersLoadingFromNetworkDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      print(dataState.error!.message);
      emit(UsersLoadingFromNetworkError(dataState.error!));
    }
  }
}
