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
import 'package:technq/src/core/services/remote/firebase_services.dart'
    as _i899;
import 'package:technq/src/core/shared/auth/data/datasource/auth_remote_datasource.dart'
    as _i1030;
import 'package:technq/src/core/shared/auth/domain/repository/auth_repository.dart'
    as _i941;
import 'package:technq/src/core/shared/auth/domain/usecase/check_token_usecase.dart'
    as _i620;

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
    gh.singleton<_i899.FirebaseServices>(() => injectorModule.firebaseServices);
    gh.lazySingleton<_i1030.AuthRemoteDatasource>(
        () => injectorModule.authRemoteDatasource);
    gh.lazySingleton<_i941.AuthRepository>(() => injectorModule.authRepository);
    gh.lazySingleton<_i620.CheckTokenUsecase>(
        () => injectorModule.checkTokenUsecase);
    return this;
  }
}

class _$InjectorModule extends _i549.InjectorModule {
  _$InjectorModule(this._getIt);

  final _i174.GetIt _getIt;

  @override
  _i620.CheckTokenUsecase get checkTokenUsecase =>
      _i620.CheckTokenUsecase(_getIt<_i941.AuthRepository>());
}
