import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technq/src/core/failure/failure.dart';
import 'package:technq/src/core/shared/brightness_theme/domain/usecase/get_current_theme_usecase.dart';
import 'package:technq/src/core/shared/brightness_theme/domain/usecase/save_theme_usecase.dart';
import 'package:technq/src/core/shared/brightness_theme/presentation/bloc/brightness_theme_event.dart';
import 'package:technq/src/core/shared/brightness_theme/presentation/bloc/brightness_theme_state.dart';

class BrightnessThemeBloc
    extends Bloc<BrightnessThemeEvent, BrightnessThemeState> {
  final GetCurrentThemeUsecase getCurrentThemeUsecase;
  final SaveThemeUsecase saveThemeUsecase;

  BrightnessThemeBloc({
    required this.getCurrentThemeUsecase,
    required this.saveThemeUsecase,
  }) : super(BrightnessThemeState.init()) {
    on<SaveCurrentThemeEvent>(_saveCurrentTheme);
    on<GetCurrentThemeEvent>(_getCurrentTheme);
  }

  Future<void> _saveCurrentTheme(
      SaveCurrentThemeEvent event, Emitter<BrightnessThemeState> emit) async {
    Either<Failure, String?> result = await saveThemeUsecase.call(event.isDark);

    result.fold(
        (failure) {
          emit(BrightnessThemeState.failed(
              message: failure.message, isDark: state.isDark));
          debugPrint(failure.message);
        },
        (data) {
          emit(BrightnessThemeState.changedBrightness(isDark: event.isDark));
        });
  }

  Future<void> _getCurrentTheme(
      GetCurrentThemeEvent event, Emitter<BrightnessThemeState> emit) async {
    final isDark = await getCurrentThemeUsecase.execute();
    emit(BrightnessThemeState.loadedBrightness(isDark: isDark));
  }
}
