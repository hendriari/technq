import 'package:flutter_decision_making/flutter_decision_making.dart';
import 'package:injectable/injectable.dart';
import 'package:technq/src/core/injection/injector.dart';
import 'package:technq/src/core/services/firebase_services.dart';
import 'package:technq/src/core/services/shared_preference_services.dart';
import 'package:technq/src/core/shared/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:technq/src/core/shared/features/auth/data/repository_impl/auth_repository_impl.dart';
import 'package:technq/src/core/shared/features/auth/domain/repository/auth_repository.dart';
import 'package:technq/src/core/shared/features/auth/domain/usecase/check_token_usecase.dart';
import 'package:technq/src/core/shared/features/auth/domain/usecase/create_account_usecase.dart';
import 'package:technq/src/core/shared/features/auth/domain/usecase/get_user_data.usecase.dart';
import 'package:technq/src/core/shared/features/auth/domain/usecase/update_user_school_usecase.dart';
import 'package:technq/src/core/shared/features/brightness_theme/data/datasource/brightness_theme_local_datasource.dart';
import 'package:technq/src/core/shared/features/brightness_theme/data/repository_impl/brightness_theme_repository_impl.dart';
import 'package:technq/src/core/shared/features/brightness_theme/domain/repository/brightness_theme_repository.dart';
import 'package:technq/src/core/shared/features/brightness_theme/domain/usecase/get_current_theme_usecase.dart';
import 'package:technq/src/core/shared/features/brightness_theme/domain/usecase/save_theme_usecase.dart';
import 'package:technq/src/features/ahp/data/data/ahp_remote_datasource.dart';
import 'package:technq/src/features/ahp/data/repository_impl/ahp_repository_impl.dart';
import 'package:technq/src/features/ahp/domain/repository/ahp_repository.dart';
import 'package:technq/src/features/ahp/domain/usecase/get_ahp_result_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/get_pairwise_input_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/reset_ahp_data_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/update_pairwise_alternative_input_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/update_pairwise_criteria_input_usecase.dart';
import 'package:technq/src/features/dashboard/data/datasource/dashboard_local_datasource.dart';
import 'package:technq/src/features/dashboard/data/datasource/dashboard_remote_datasource.dart';
import 'package:technq/src/features/dashboard/data/repository_impl/dashboard_repository_impl.dart';
import 'package:technq/src/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:technq/src/features/dashboard/domain/usecase/get_list_fakultas_usecase.dart';
import 'package:technq/src/features/dashboard/domain/usecase/get_list_review_usecase.dart';

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

  @lazySingleton
  UpdateUserSchoolUsecase get updateUserSchoolUsecase;

  /// DASHBOARD
  @lazySingleton
  DashboardLocalDatasource get dashboardLocalDatasource =>
      DashboardLocalDatasourceImpl();

  @lazySingleton
  DashboardRemoteDatasource get dashboardRemoteDatasource =>
      DashboardRemoteDatasourceImpl(getIt<FirebaseServices>());

  @lazySingleton
  DashboardRepository get dashboardRepository => DashboardRepositoryImpl(
      getIt<DashboardLocalDatasource>(), getIt<DashboardRemoteDatasource>());

  @lazySingleton
  GetListFakultasUsecase get getListFakultasUsecase;

  @lazySingleton
  GetListReviewUsecase get getListReveiwUsecase;

  /// AHP
  @lazySingleton
  AhpRemoteDatasource get ahpLocalDatasource => AhpRemoteDatasourceImpl(
      FlutterDecisionMaking(), getIt<FirebaseServices>());

  @lazySingleton
  AhpRepository get ahpRepository =>
      AhpRepositoryImpl(getIt<AhpRemoteDatasource>());

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
