import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technq/src/core/shared/menu/bloc/menu_event.dart';
import 'package:technq/src/core/shared/menu/bloc/menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc() : super(MenuState.init()) {
    on<ChangeIndexMenuEvent>(_changeIndex);
    on<ExitAppEvent>(_exitApp);
  }

  void _changeIndex(ChangeIndexMenuEvent event, Emitter<MenuState> emit) {
    try {
      emit(MenuState.changedIndex(indexMenu: event.index));
    } catch (e) {
      emit(MenuState.failed(message: e.toString(), indexMenu: state.indexMenu));
    }
  }

  Future<void> _exitApp(ExitAppEvent event, Emitter<MenuState> emit) async {
    try {
      final now = DateTime.now();

      state.maybeWhen(exitApp: (_, exit, time) {
        if (!exit && now.difference(time) > const Duration(seconds: 2)) {
          emit(MenuState.exitApp(exit: false, timeExit: now));
        } else {
          emit(MenuState.exitApp(exit: true, timeExit: now));
        }
      }, orElse: () {
        emit(MenuState.exitApp(exit: true, timeExit: now));
      });
    } catch (e) {
      emit(MenuState.failed(message: e.toString(), indexMenu: state.indexMenu));
    }
  }
}
