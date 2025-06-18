import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TechnqBlocObserver extends BlocObserver{
  @override
  void onTransition(Bloc bloc, Transition transition){
    super.onTransition(bloc, transition);
    debugPrint("==>> BLOC : ${bloc.runtimeType}, TRANSITION : $transition <<==\n");
  }
}