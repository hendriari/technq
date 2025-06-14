import 'package:go_router/go_router.dart';
import 'package:technq/src/core/shared/menu/widget/menu_widget.dart';
import 'package:technq/src/features/auth_ui/page/landing_page.dart';
import 'package:technq/src/features/auth_ui/page/splash_page.dart';
import 'package:technq/src/features/dashboard/data/mapper/fakultas_mapper.dart';
import 'package:technq/src/features/dashboard/presentation/pages/detail_fakultas_page.dart';

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
          builder: (_, state) {
            final indexPage = state.uri.queryParameters["index"] ?? "0";
            final index = int.tryParse(indexPage) ?? 0;
            return MenuWidget(
              indexMenu: index,
            );
          },
          routes: [
            GoRoute(
              name: 'detail-fakultas',
              path: 'detail-fakultas',
              builder: (_, state) {
                final params = state.uri.queryParameters;
                final fakultas = FakultasEntitiesFromMap.fromMap(params);
                return DetailFakultasPage(fakultas: fakultas);
              },
            ),
          ],
        ),
      ],
    );
  }
}
