import 'package:flutter_decision_making/flutter_decision_making.dart';
import 'package:injectable/injectable.dart';
import 'package:technq/src/core/injection/injector.dart';
import 'package:technq/src/core/services/firebase_services.dart';
import 'package:technq/src/core/services/shared_preference_services.dart';
import 'package:technq/src/core/shared/auth/data/datasource/auth_remote_datasource.dart';
import 'package:technq/src/core/shared/auth/data/repository_impl/auth_repository_impl.dart';
import 'package:technq/src/core/shared/auth/domain/repository/auth_repository.dart';
import 'package:technq/src/core/shared/auth/domain/usecase/check_token_usecase.dart';
import 'package:technq/src/core/shared/auth/domain/usecase/create_account_usecase.dart';
import 'package:technq/src/core/shared/auth/domain/usecase/get_user_data.usecase.dart';
import 'package:technq/src/core/shared/brightness_theme/data/datasource/brightness_theme_local_datasource.dart';
import 'package:technq/src/core/shared/brightness_theme/data/repository_impl/brightness_theme_repository_impl.dart';
import 'package:technq/src/core/shared/brightness_theme/domain/repository/brightness_theme_repository.dart';
import 'package:technq/src/core/shared/brightness_theme/domain/usecase/get_current_theme_usecase.dart';
import 'package:technq/src/core/shared/brightness_theme/domain/usecase/save_theme_usecase.dart';
import 'package:technq/src/features/ahp/data/data/ahp_local_datasource.dart';
import 'package:technq/src/features/ahp/data/repository_impl/ahp_repository_impl.dart';
import 'package:technq/src/features/ahp/domain/repository/ahp_repository.dart';
import 'package:technq/src/features/ahp/domain/usecase/get_ahp_result_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/get_pairwise_input_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/reset_ahp_data_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/update_pairwise_alternative_input_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/update_pairwise_criteria_input_usecase.dart';
import 'package:technq/src/features/dashboard/data/datasource/dashboard_local_datasource.dart';
import 'package:technq/src/features/dashboard/data/repository_impl/dashboard_repository_impl.dart';
import 'package:technq/src/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:technq/src/features/dashboard/domain/usecase/get_list_fakultas_usecase.dart';

@module
abstract class InjectorModule {
  @singleton
  FirebaseServices get firebaseServices => FirebaseServicesImpl();

  @singleton
  SharedPreferenceService get sharedPreferenceService =>
      SharedPreferenceServiceImpl();

  /// THEME
  @lazySingleton
  BrightnessThemeLocalDatasource get brightnessThemeLocalDatasource =>
      BrightnessThemeLocalDatasourceImpl(getIt<SharedPreferenceService>());

  @lazySingleton
  BrightnessThemeRepository get brightnessThemeRepository =>
      BrightnessThemeRepositoryImpl(getIt<BrightnessThemeLocalDatasource>());

  @lazySingleton
  GetCurrentThemeUsecase get getCurrentThemeUsecase;

  @lazySingleton
  SaveThemeUsecase get saveThemeUsecase;

  /// AUTH
  @lazySingleton
  AuthRemoteDatasource get authRemoteDatasource =>
      AuthRemoteDatasourceImpl(getIt<FirebaseServices>());

  @lazySingleton
  AuthRepository get authRepository =>
      AuthRepositoryImpl(getIt<AuthRemoteDatasource>());

  @lazySingleton
  CheckTokenUsecase get checkTokenUsecase;

  @lazySingleton
  CreateAccountUsecase get createAccountUsecase;

  @lazySingleton
  GetUserDataUsecase get getUserDataUsecase;

  /// DASHBOARD

  @lazySingleton
  DashboardLocalDatasource get dashboardLocalDatasource =>
      DashboardLocalDatasourceImpl();

  @lazySingleton
  DashboardRepository get dashboardRepository =>
      DashboardRepositoryImpl(getIt<DashboardLocalDatasource>());

  @lazySingleton
  GetListFakultasUsecase get getListFakultasUsecase;

  /// AHP
  @lazySingleton
  AhpLocalDatasource get ahpLocalDatasource =>
      AhpLocalDatasourceImpl(FlutterDecisionMaking());

  @lazySingleton
  AhpRepository get ahpRepository =>
      AhpRepositoryImpl(getIt<AhpLocalDatasource>());

  @lazySingleton
  GetPairwiseInputUsecase get getPairwiseInputUsecase;

  @lazySingleton
  UpdatePairwiseCriteriaInputUsecase get updatePairwiseCriteriaInputUsecase;

  @lazySingleton
  UpdatePairwiseAlternativeInputUsecase
      get updatePairwiseAlternativeInputUsecase;

  @lazySingleton
  GetAhpResultUsecase get getAhpResultUsecase;

  @lazySingleton
  ResetAhpDataUsecase get resetAhpDataUsecase;
}
