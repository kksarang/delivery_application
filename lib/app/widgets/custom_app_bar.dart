import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.statusBarColor,
    this.navigationBarColor,
    this.statusBarIconBrightness,
    this.systemNavigationBarIconBrightness,
    this.height,
    this.enableBackButton,
  });

  final Color? statusBarColor;
  final Color? navigationBarColor;
  final Brightness? statusBarIconBrightness;
  final Brightness? systemNavigationBarIconBrightness;
  final double? height;
  final bool? enableBackButton;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusBarColor ?? Colors.white,
        statusBarIconBrightness: statusBarIconBrightness ?? Brightness.dark,
        systemNavigationBarColor: navigationBarColor ?? Colors.white,
        systemNavigationBarIconBrightness:
            systemNavigationBarIconBrightness ?? Brightness.dark,
      ),
      child: SafeArea(
        child: SizedBox(
          height: height,
          child: Row(
            children: [
              if (enableBackButton ?? false)
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20.sp,
                  ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 0);
}
