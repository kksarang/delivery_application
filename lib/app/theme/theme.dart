import 'dart:io';

import 'package:burger_shop_ui/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationTheme {
  static ThemeData lightThemeData = ThemeData(
    ///
    useMaterial3: true,

    ///
    primarySwatch: ColorPalette.materialPrimary,

    ///
    ///
    // fontFamily: FontPalette.themeFont,

    ///
    ///
    visualDensity: VisualDensity.adaptivePlatformDensity,

    ///
    ///
    brightness: Brightness.light,

    ///
    ///
    scaffoldBackgroundColor: Colors.white,

    ///
    ///
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return ColorPalette.primaryRed;
            } else if (states.contains(MaterialState.disabled)) {
              return ColorPalette.primaryRed;
            }
            return ColorPalette.primaryRed;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.white;
            } else if (states.contains(MaterialState.disabled)) {
              return Colors.white;
            }
            return Colors.white;
          },
        ),
      ),
    ),

    ///
    ///
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white,
          systemNavigationBarColor: Colors.white,
          statusBarBrightness:
              Platform.isIOS ? Brightness.light : Brightness.dark),
    ),

    ///
    ///
    // textSelectionTheme: TextSelectionThemeData(
    //   cursorColor: HexColor('#F0F0F2'),
    //   selectionHandleColor: HexColor('#F0F0F2'),
    //   selectionColor: HexColor('#F0F0F2').withOpacity(0.4),
    // ),

    ///
    ///
    // colorScheme:
    //     ColorScheme.fromSwatch(primarySwatch: ColorPalette.materialPrimary)
    //         .copyWith(background: Colors.white),
  );
}
