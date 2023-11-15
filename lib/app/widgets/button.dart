import 'package:burger_shop_ui/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String? title;
  final bool isLoading;
  final VoidCallback? onPressed;
  final Color? shadowColor;
  final bool? enabled;
  final TextStyle? fontStyle;
  final EdgeInsetsGeometry? padding;

  const CustomButton(
      {Key? key,
      this.height,
      this.width,
      this.title,
      this.isLoading = false,
      this.onPressed,
      this.shadowColor,
      this.enabled = true,
      this.fontStyle,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 45.h,
      width: width ?? double.maxFinite,
      child: ElevatedButton(
        onPressed: isLoading || !enabled! ? null : onPressed,
        style: ButtonStyle(
          enableFeedback: enabled,
          backgroundColor: !enabled!
              ? MaterialStateProperty.all(HexColor('#CACBD0'))
              : MaterialStateProperty.all(ColorPalette.primaryRed),
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: isLoading
              ? const SizedBox()
              : Text(
                  (title ?? ' Get started'),
                  style: const TextStyle(
                      fontFamily: 'basis',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
        ),
      ),
    );
  }
}
