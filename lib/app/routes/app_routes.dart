import 'package:burger_shop_ui/app/routes/app_pages.dart';
import 'package:burger_shop_ui/app/src/allow_permissions/views/allow_location_access_screen.dart';
import 'package:burger_shop_ui/app/src/get_started/view/get_started_screen.dart';
import 'package:burger_shop_ui/app/src/login/views/login_get_otp_screen.dart';
import 'package:burger_shop_ui/app/src/login/views/login_verify_otp_screen.dart';
import 'package:burger_shop_ui/app/src/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static AppRoutes? _instance;

  static AppRoutes get instance {
    _instance ??= AppRoutes();
    return _instance!;
  }

  Route generateRoute(RouteSettings settings, {var routeBuilders}) {
    switch (settings.name) {
      case AppPages.initial:
        return _buildRoute(
          AppPages.initial,
          const SplashScreen(),
        );
      case AppPages.routeGetStartedScreen:
        return _buildRoute(
            AppPages.routeGetStartedScreen, const GetStartedScreen(),
            materialRoute: true);
      case AppPages.routeLoginScreen:
        return _buildRoute(
          AppPages.routeLoginScreen,
          const LoginGetOtpScreen(),
          materialRoute: true,
        );
      case AppPages.routeLoginVerifyOtpScreen:
        return _buildRoute(
          AppPages.routeLoginVerifyOtpScreen,
          const LoginVerifyOtpScreen(),
        );
      case AppPages.routeAllowLocationAccessScreen:
        return _buildRoute(
          AppPages.routeAllowLocationAccessScreen,
          const AllowLocationAccessScreen(),
        );
      default:
        return _buildRoute(
          AppPages.routeErrorScreen,
          const ErrorView(),
        );
    }
  }

  Route _buildRoute(String route, Widget widget,
      {bool enableFullScreen = false, bool materialRoute = false}) {
    return !materialRoute
        ? CupertinoPageRoute(
            fullscreenDialog: enableFullScreen,
            settings: RouteSettings(name: route),
            builder: (_) => widget)
        : MaterialPageRoute(
            fullscreenDialog: enableFullScreen,
            settings: RouteSettings(name: route),
            builder: (_) => widget);
  }
}

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Page Not Found')));
  }
}
