import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:jobspot/src/core/config/router/app_router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnBoardingRoute.page, initial: true),
        CustomRoute(
          path: '/signIn',
          page: SignInRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
      ];
}