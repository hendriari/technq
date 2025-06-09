import 'package:go_router/go_router.dart';
import 'package:technq/src/core/shared/menu/presentation/widget/menu_widget.dart';
import 'package:technq/src/features/auth_ui/login_page.dart';
import 'package:technq/src/features/auth_ui/splash_page.dart';

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
          name: 'login',
          path: '/login',
          builder: (_, __) => LoginPage(),
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
