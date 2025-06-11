import 'package:go_router/go_router.dart';
import 'package:technq/src/core/shared/menu/widget/menu_widget.dart';
import 'package:technq/src/features/auth_ui/page/landing_page.dart';
import 'package:technq/src/features/auth_ui/page/splash_page.dart';

class GoRoutersNavigator {
  late final GoRouter routeConfig;

  GoRoutersNavigator() {
    routeConfig = GoRouter(
      initialLocation: '/splash',
      routes: [
        GoRoute(
          name: 'splash',
          path: '/splash',
          builder: (_, __) => SplashPage(),
        ),
        GoRoute(
          name: 'landing-page',
          path: '/landing-page',
          builder: (_, __) => LandingPage(),
        ),
        GoRoute(
          name: 'main-menu',
          path: '/main-menu',
          builder: (_, __) => MenuWidget(),
        ),
      ],
    );
  }
}
