import 'package:burger_shop_ui/app/routes/app_pages.dart';
import 'package:burger_shop_ui/app/utils/extensions.dart';
import 'package:burger_shop_ui/app/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: SizedBox(
        width: context.sw(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svgs/sample_logo_red.svg',
              height: 100.r,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Functions.afterInit(() {
      precacheImage(
          const AssetImage("assets/images/get_started_background.jpg"),
          context);
      Future.delayed(const Duration(seconds: 3)).then(
        (_) => Navigator.of(context)
            .pushReplacementNamed(AppPages.routeGetStartedScreen),
      );
    });
  }
}
