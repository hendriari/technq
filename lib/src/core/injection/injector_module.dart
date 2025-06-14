import 'package:flutter_decision_making/flutter_decision_making.dart';
import 'package:injectable/injectable.dart';
import 'package:technq/src/core/injection/injector.dart';
import 'package:technq/src/core/services/firebase_services.dart';
import 'package:technq/src/core/shared/auth/data/datasource/auth_remote_datasource.dart';
import 'package:technq/src/core/shared/auth/data/repository_impl/auth_repository_impl.dart';
import 'package:technq/src/core/shared/auth/domain/repository/auth_repository.dart';
import 'package:technq/src/core/shared/auth/domain/usecase/check_token_usecase.dart';
import 'package:technq/src/core/shared/auth/domain/usecase/create_account_usecase.dart';
import 'package:technq/src/core/shared/auth/domain/usecase/get_user_data.usecase.dart';
import 'package:technq/src/features/ahp/data/data/ahp_local_datasource.dart';
import 'package:technq/src/features/ahp/data/repository_impl/ahp_repository_impl.dart';
import 'package:technq/src/features/ahp/domain/repository/ahp_repository.dart';
import 'package:technq/src/features/ahp/domain/usecase/get_ahp_result_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/get_pairwise_input_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/reset_ahp_data_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/update_pairwise_alternative_input_usecase.dart';
import 'package:technq/src/features/ahp/domain/usecase/update_pairwise_criteria_input_usecase.dart';

@module
abstract class InjectorModule {
  @singleton
  FirebaseServices get firebaseServices => FirebaseServicesImpl();

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
