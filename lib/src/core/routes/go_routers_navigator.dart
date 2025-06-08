import 'package:go_router/go_router.dart';
import 'package:technq/src/features/splash/presentation/splash_page.dart';

class GoRoutersNavigator {
  late final GoRouter routeConfig;

  GoRoutersNavigator() {
    routeConfig = GoRouter(
      initialLocation: '/splash',
      routes: [
        GoRoute(
          path: '/splash',
          builder: (_, __) => SplashPage(),
        ),
      ],
    );
  }
}
