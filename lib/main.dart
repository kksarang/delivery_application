import 'package:burger_shop_ui/app/routes/app_routes.dart';
import 'package:burger_shop_ui/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Burger UI Sample',
          theme: ApplicationTheme.lightThemeData,
          onGenerateRoute: AppRoutes.instance.generateRoute,
        );
      },
    );
  }
}
