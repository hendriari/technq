import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:technq/src/core/shared/auth/presentation/auth_bloc.dart';
import 'package:technq/src/core/shared/auth/presentation/auth_event.dart';
import 'package:technq/src/core/shared/auth/presentation/auth_state.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/utils/helper.dart';
import 'package:technq/src/core/widgets/loading_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Helper _helper;

  @override
  void initState() {
    super.initState();
    _helper = Helper();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthBloc>().add(AuthEvent.checkTokenEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(successCheckToken: (_, valid) {
              if(valid){
                context.goNamed('main-menu');
              } else {
                context.goNamed('login');
              }
            }, failedCheckToken: (_, invalid, message) {
              _helper.showToast(
                  message: message, backGroundColor: CustomColors.redLight);
              context.goNamed('login');
            });
          },
          child: const Center(
            child: LoadingWidget(),
          ),
        ),
      ),
    );
  }
}
