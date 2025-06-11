import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:technq/src/core/shared/auth/presentation/auth_bloc.dart';
import 'package:technq/src/core/shared/auth/presentation/auth_event.dart';
import 'package:technq/src/core/shared/auth/presentation/auth_state.dart';
import 'package:technq/src/core/widgets/loading_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
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
              if (valid) {
                context.read<AuthBloc>().add(GetDetailUserEvent());
              } else {
                context.goNamed('landing-page');
              }
            }, successGetAccount: (user) {
              if (user != null) {
                context.goNamed('main-menu');
              } else {
                context.goNamed('landing-page');
              }
            }, failed: (_, message) {
              debugPrint(message);
              context.goNamed('landing-page');
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
