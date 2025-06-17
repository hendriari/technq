// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:technq/src/core/injection/injector_module.dart' as _i549;
import 'package:technq/src/core/services/firebase_services.dart' as _i247;
import 'package:technq/src/core/services/shared_preference_services.dart'
    as _i900;
import 'package:technq/src/core/shared/features/auth/data/datasource/auth_remote_datasource.dart'
    as _i702;
import 'package:technq/src/core/shared/features/auth/domain/repository/auth_repository.dart'
    as _i143;
import 'package:technq/src/core/shared/features/auth/domain/usecase/check_token_usecase.dart'
    as _i804;
import 'package:technq/src/core/shared/features/auth/domain/usecase/create_account_usecase.dart'
    as _i822;
import 'package:technq/src/core/shared/features/auth/domain/usecase/get_user_data.usecase.dart'
    as _i818;
import 'package:technq/src/core/shared/features/auth/domain/usecase/update_user_school_usecase.dart'
    as _i1044;
import 'package:technq/src/core/shared/features/brightness_theme/data/datasource/brightness_theme_local_datasource.dart'
    as _i734;
import 'package:technq/src/core/shared/features/brightness_theme/domain/repository/brightness_theme_repository.dart'
    as _i952;
import 'package:technq/src/core/shared/features/brightness_theme/domain/usecase/get_current_theme_usecase.dart'
    as _i829;
import 'package:technq/src/core/shared/features/brightness_theme/domain/usecase/save_theme_usecase.dart'
    as _i346;
import 'package:technq/src/features/ahp/data/data/ahp_remote_datasource.dart'
    as _i994;
import 'package:technq/src/features/ahp/domain/repository/ahp_repository.dart'
    as _i959;
import 'package:technq/src/features/ahp/domain/usecase/get_ahp_result_usecase.dart'
    as _i870;
import 'package:technq/src/features/ahp/domain/usecase/get_pairwise_input_usecase.dart'
    as _i946;
import 'package:technq/src/features/ahp/domain/usecase/reset_ahp_data_usecase.dart'
    as _i460;
import 'package:technq/src/features/ahp/domain/usecase/update_pairwise_alternative_input_usecase.dart'
    as _i449;
import 'package:technq/src/features/ahp/domain/usecase/update_pairwise_criteria_input_usecase.dart'
    as _i279;
import 'package:technq/src/features/dashboard/data/datasource/dashboard_local_datasource.dart'
    as _i910;
import 'package:technq/src/features/dashboard/domain/repository/dashboard_repository.dart'
    as _i601;
import 'package:technq/src/features/dashboard/domain/usecase/get_list_fakultas_usecase.dart'
    as _i528;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectorModule = _$InjectorModule(this);
    gh.singleton<_i247.FirebaseServices>(() => injectorModule.firebaseServices);
    gh.singleton<_i900.SharedPreferenceService>(
        () => injectorModule.sharedPreferenceService);
    gh.lazySingleton<_i734.BrightnessThemeLocalDatasource>(
        () => injectorModule.brightnessThemeLocalDatasource);
    gh.lazySingleton<_i952.BrightnessThemeRepository>(
        () => injectorModule.brightnessThemeRepository);
    gh.lazySingleton<_i702.AuthRemoteDatasource>(
        () => injectorModule.authRemoteDatasource);
    gh.lazySingleton<_i143.AuthRepository>(() => injectorModule.authRepository);
    gh.lazySingleton<_i910.DashboardLocalDatasource>(
        () => injectorModule.dashboardLocalDatasource);
    gh.lazySingleton<_i601.DashboardRepository>(
        () => injectorModule.dashboardRepository);
    gh.lazySingleton<_i994.AhpRemoteDatasource>(
        () => injectorModule.ahpLocalDatasource);
    gh.lazySingleton<_i959.AhpRepository>(() => injectorModule.ahpRepository);
    gh.lazySingleton<_i829.GetCurrentThemeUsecase>(
        () => injectorModule.getCurrentThemeUsecase);
    gh.lazySingleton<_i804.CheckTokenUsecase>(
        () => injectorModule.checkTokenUsecase);
    gh.lazySingleton<_i822.CreateAccountUsecase>(
        () => injectorModule.createAccountUsecase);
    gh.lazySingleton<_i818.GetUserDataUsecase>(
        () => injectorModule.getUserDataUsecase);
    gh.lazySingleton<_i1044.UpdateUserSchoolUsecase>(
        () => injectorModule.updateUserSchoolUsecase);
    gh.lazySingleton<_i528.GetListFakultasUsecase>(
        () => injectorModule.getListFakultasUsecase);
    gh.lazySingleton<_i346.SaveThemeUsecase>(
        () => injectorModule.saveThemeUsecase);
    gh.lazySingleton<_i946.GetPairwiseInputUsecase>(
        () => injectorModule.getPairwiseInputUsecase);
    gh.lazySingleton<_i279.UpdatePairwiseCriteriaInputUsecase>(
        () => injectorModule.updatePairwiseCriteriaInputUsecase);
    gh.lazySingleton<_i449.UpdatePairwiseAlternativeInputUsecase>(
        () => injectorModule.updatePairwiseAlternativeInputUsecase);
    gh.lazySingleton<_i870.GetAhpResultUsecase>(
        () => injectorModule.getAhpResultUsecase);
    gh.lazySingleton<_i460.ResetAhpDataUsecase>(
        () => injectorModule.resetAhpDataUsecase);
    return this;
  }
}

class _$InjectorModule extends _i549.InjectorModule {
  _$InjectorModule(this._getIt);

  final _i174.GetIt _getIt;

  @override
  _i829.GetCurrentThemeUsecase get getCurrentThemeUsecase =>
      _i829.GetCurrentThemeUsecase(_getIt<_i952.BrightnessThemeRepository>());

  @override
  _i804.CheckTokenUsecase get checkTokenUsecase =>
      _i804.CheckTokenUsecase(_getIt<_i143.AuthRepository>());

  @override
  _i822.CreateAccountUsecase get createAccountUsecase =>
      _i822.CreateAccountUsecase(_getIt<_i143.AuthRepository>());

  @override
  _i818.GetUserDataUsecase get getUserDataUsecase =>
      _i818.GetUserDataUsecase(_getIt<_i143.AuthRepository>());

  @override
  _i1044.UpdateUserSchoolUsecase get updateUserSchoolUsecase =>
      _i1044.UpdateUserSchoolUsecase(_getIt<_i143.AuthRepository>());

  @override
  _i528.GetListFakultasUsecase get getListFakultasUsecase =>
      _i528.GetListFakultasUsecase(_getIt<_i601.DashboardRepository>());

  @override
  _i346.SaveThemeUsecase get saveThemeUsecase =>
      _i346.SaveThemeUsecase(_getIt<_i952.BrightnessThemeRepository>());

  @override
  _i946.GetPairwiseInputUsecase get getPairwiseInputUsecase =>
      _i946.GetPairwiseInputUsecase(_getIt<_i959.AhpRepository>());

  @override
  _i279.UpdatePairwiseCriteriaInputUsecase
      get updatePairwiseCriteriaInputUsecase =>
          _i279.UpdatePairwiseCriteriaInputUsecase(
              _getIt<_i959.AhpRepository>());

  @override
  _i449.UpdatePairwiseAlternativeInputUsecase
      get updatePairwiseAlternativeInputUsecase =>
          _i449.UpdatePairwiseAlternativeInputUsecase(
              _getIt<_i959.AhpRepository>());

  @override
  _i870.GetAhpResultUsecase get getAhpResultUsecase =>
      _i870.GetAhpResultUsecase(_getIt<_i959.AhpRepository>());

  @override
  _i460.ResetAhpDataUsecase get resetAhpDataUsecase =>
      _i460.ResetAhpDataUsecase(_getIt<_i959.AhpRepository>());
}
