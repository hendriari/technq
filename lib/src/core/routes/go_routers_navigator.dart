import 'dart:convert';

import 'package:go_router/go_router.dart';
import 'package:technq/src/core/shared/features/menu/widget/menu_widget.dart';
import 'package:technq/src/core/shared/mapper/ahp_result_mapper.dart';
import 'package:technq/src/core/shared/presentation/result_ahp_page.dart';
import 'package:technq/src/features/ahp/presentation/pages/detail_ahp_page.dart';
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
            GoRoute(
              name: 'detail-ahp',
              path: 'detail-ahp',
              builder: (_, __) => DetailAhpPage(),
            ),
            GoRoute(
              name: 'result-ahp',
              path: 'result-ahp',
              builder: (_, state) {
                final jsonString = state.uri.queryParameters['data'];
                final result = AhpResultEntitiesFromMap.fromMap(jsonDecode(jsonString!));
                return ResultAhpPage(
                  data: result,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
