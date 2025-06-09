import 'package:injectable/injectable.dart';
import 'package:technq/src/core/injection/injector.dart';
import 'package:technq/src/core/services/remote/firebase_services.dart';
import 'package:technq/src/core/shared/auth/data/datasource/auth_remote_datasource.dart';
import 'package:technq/src/core/shared/auth/data/repository_impl/auth_repository_impl.dart';
import 'package:technq/src/core/shared/auth/domain/repository/auth_repository.dart';
import 'package:technq/src/core/shared/auth/domain/usecase/check_token_usecase.dart';

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
}
