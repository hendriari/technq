import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:technq/src/core/injection/injector.config.dart';

GetIt getIt = GetIt.instance;

@injectableInit
void getInjectableInit() => getIt.init();